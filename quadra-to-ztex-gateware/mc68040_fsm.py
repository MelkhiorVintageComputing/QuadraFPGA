from migen import *
from migen.genlib.fifo import *
from migen.genlib.cdc import *
from migen.fhdl.specials import Tristate

import litex
from litex.soc.interconnect import wishbone

class MC68040_FSM(Module):
    def __init__(self, soc, wb_read, wb_write, dram_native_r, cd_cpu="cpu", trace_inst_fifo = None):

        platform = soc.platform

        sync_cpu = getattr(self.sync, cd_cpu)
        
        # 68040
        A = platform.request("A_3v3") # 32 # address, I[O]
        D = platform.request("D_3v3") # 32 # data, IO
        RW_n = platform.request("rw_3v3_n") #  direction of bus transfer with respect to the main processor, I [three-state, high read, write low]
        SIZ = platform.request("siz_3v3") # 2, I
        # CIOUT_n = platform.request("ciout_3v3_n") # cache inhibit out (from cpu), I
        TBI_n = platform.request("tbi_3v3_n") # Transfer Burst Inhibit, O
        TIP_CPU_n = platform.request("tip_cpu_3v3_n") #  I
        TA_n = platform.request("ta_3v3_n") # Transfer Acknowledge, O
        TEA_n = platform.request("tea_3v3_n") # Transfer Error Acknowledge, O
        TS_n = platform.request("ts_3v3_n") # Transfer Start, I
        TT = platform.request("tt_3v3") # 2, I
        TM = platform.request("tm_3v3") # 3 Transfer Modifier , I

        A_i = Signal(32)
        A_latch = Signal(32)
        self.comb += [ A_i.eq(A) ]
        
        D_i = Signal(32)
        D_o = Signal(32)
        D_oe = Signal(reset = 0)
        self.specials += Tristate(D, D_o, D_oe, D_i)

        D_rev_i = Signal(32)
        D_rev_o = Signal(32)

        # ugly-as-F byte reversal, invert endianess to match NuBusFPGA ...
        self.comb += [
            D_rev_i[ 0: 8].eq(D_i[24:32]),
            D_rev_i[ 8:16].eq(D_i[16:24]),
            D_rev_i[16:24].eq(D_i[ 8:16]),
            D_rev_i[24:32].eq(D_i[ 0: 8]),
            
            D_o[ 0: 8].eq(D_rev_o[24:32]),
            D_o[ 8:16].eq(D_rev_o[16:24]),
            D_o[16:24].eq(D_rev_o[ 8:16]),
            D_o[24:32].eq(D_rev_o[ 0: 8]),
        ]
        
        RW_i_n = Signal(1)
        self.comb += [ RW_i_n.eq(RW_n) ]
        
        SIZ_i = Signal(2)
        self.comb += [ SIZ_i.eq(SIZ) ]
        
        TM_i = Signal(3)
        self.comb += [ TM_i.eq(TM) ]
        
        TT_i = Signal(2)
        self.comb += [ TT_i.eq(TT) ]
        
        TS_i_n = Signal()
        self.comb += [ TS_i_n.eq(TS_n) ]
        
        TIP_CPU_i_n = Signal()
        self.comb += [ TIP_CPU_i_n.eq(TIP_CPU_n) ]
        
        #CIOUT_i_n = Signal(1)
        #self.comb += [ CIOUT_i_n.eq(CIOUT_n) ]

        # force tristate
        TEA_i_n = Signal(1)
        TEA_o_n = Signal(1, reset = 1)
        TEA_oe = Signal(reset = 0)
        self.specials += Tristate(TEA_n, TEA_o_n, TEA_oe, TEA_i_n)

        # force tristate
        TA_i_n = Signal(1)
        TA_o_n = Signal(1, reset = 1)
        TA_oe = Signal(reset = 0)
        self.specials += Tristate(TA_n, TA_o_n, TA_oe, TA_i_n)

        # force tristate
        TBI_i_n = Signal(1)
        TBI_o_n = Signal(1, reset = 1)
        TBI_oe = Signal(reset = 0)
        self.specials += Tristate(TBI_n, TBI_o_n, TBI_oe, TBI_i_n)

        # 23 first bits not rewritten (8 MiB)
        # address rewriting (slot)
        slot_processed_ad = Signal(32)
        self.comb += [
            If(~A_i[23], # first 8 MiB of slot space: remap to last 8 Mib of SDRAM
               slot_processed_ad[23:32].eq(Cat(Signal(1, reset=1), Signal(8, reset = 0x8f))), # 0x8f8...
            ).Else( # second 8 MiB: direct access
                slot_processed_ad[23:32].eq((Cat(Signal(1, reset=1), Signal(8, reset = 0xf0)))), # 24 bits, a.k.a 22 bits of words
            )
        ]

        # address rewriting (mem)
        mem_processed_ad = Signal(32)
        self.comb += [
            #mem_processed_ad[23:27].eq(A_i[23:27]),
            #mem_processed_ad[27:32].eq(Signal(5, reset=0x10)), # 0x80 >> 3 == 0x10
            mem_processed_ad[23:28].eq(A_i[23:28]),
            mem_processed_ad[28:32].eq(Signal(4, reset=0x8)), # 0x80 >> 4 == 0x8
            ##mem_processed_ad[23:26].eq(A_i[23:26]),
            ##mem_processed_ad[26:32].eq(Signal(6, reset=0x20)), # 0x80 >> 2 == 0x20
        ]

        # address rewriting (superslot)
        superslot_processed_ad = Signal(32)
        self.comb += [
            superslot_processed_ad[23:28].eq(A_i[23:28]),
            superslot_processed_ad[28:32].eq(Signal(4, reset=0x8)), # 0x80 >> 4 == 0x8
        ]

        # selection logic
        my_slot_space = Signal()
        self.comb += [ my_slot_space.eq((A_i[24:32] == 0xfe)) ] # fixme: abstract slot $E
        
        my_mem_space = Signal()
        self.comb += [ my_mem_space.eq((A_i[28:32] == 0x2)) ] # 0x20 >> 4 == 0x2
        
        my_superslot_space = Signal()
        self.comb += [ my_superslot_space.eq((A_i[28:32] == 0xE)) ] # 0xE0 >> 4 == 0xE # fixme: abstract slot $E
        
        my_device_space = Signal() # all three above

        # more selection logic
        processed_ad = Signal(32)
        self.comb += [
            processed_ad[ 0:23].eq(A_i[ 0:23]),
            If(my_slot_space,
               processed_ad[23:32].eq(slot_processed_ad[23:32]),
            ).Elif(my_mem_space,
                   processed_ad[23:32].eq(mem_processed_ad[23:32]),
            ).Elif(my_superslot_space,
                   processed_ad[23:32].eq(superslot_processed_ad[23:32]),
            ).Else(
                processed_ad[23:32].eq(A_i[23:32]),
            ),
            my_device_space.eq(my_slot_space | my_mem_space | my_superslot_space),
        ]

        # write FIFO to speed up bus turnaround on CPU side
        write_fifo_layout = [
            ("adr", 32),
            ("data", 32),
            ("sel", 4),
        ]
        self.submodules.write_fifo = write_fifo = ClockDomainsRenamer({"read": "sys", "write": "cpu"})(AsyncFIFOBuffered(width=layout_len(write_fifo_layout), depth=16))
        write_fifo_dout = Record(write_fifo_layout)
        self.comb += write_fifo_dout.raw_bits().eq(write_fifo.dout)
        write_fifo_din = Record(write_fifo_layout)
        self.comb += write_fifo.din.eq(write_fifo_din.raw_bits())

        # back-pressure from sys to cpu clock domain
        self.submodules.write_fifo_readable_sync = BusSynchronizer(width = 1, idomain = "sys", odomain = "cpu")
        write_fifo_readable_in_cpu = Signal()
        self.comb += self.write_fifo_readable_sync.i.eq(self.write_fifo.readable)
        self.comb += write_fifo_readable_in_cpu.eq(self.write_fifo_readable_sync.o)

        self.submodules.slave_fsm = slave_fsm = ClockDomainsRenamer(cd_cpu)(FSM(reset_state="Reset"))

        ### dram_native_r
        self.comb += [
            dram_native_r.cmd.we.eq(0), # never write
            dram_native_r.cmd.addr.eq(processed_ad[4:]), # assume 128 bits (16 bytes)
        ]
        ## dram_native_r.cmd.valid ->
        ## dram_native_r.cmd.ready <-
        ## dram_native_r.rdata.valid <-
        ## self.dram_native_r.rdata.data <-
        burst_counter = Signal(2)
        burst_buffer = Signal(128)
        
        slave_fsm.act("Reset",
                      NextState("Idle")
        )
        slave_fsm.act("Idle",
                      D_oe.eq(0),
                      If(my_mem_space & ~TS_i_n & RW_i_n & SIZ_i[0] & ~SIZ_i[1], # Burst read to memory
                         TA_oe.eq(1),
                         TA_o_n.eq(1),
                         TEA_oe.eq(1),
                         TEA_o_n.eq(1),
                         TBI_oe.eq(1),
                         TBI_o_n.eq(1),
                         NextValue(burst_counter, 0), # '040 burst are aligned
                         If(~write_fifo_readable_in_cpu, # previous write(s) done
                            dram_native_r.cmd.valid.eq(1),
                            If(dram_native_r.cmd.ready, # interface available
                               NextState("BurstReadWait"),
                            ),
                         ),
                      ).Elif(my_mem_space & ~TS_i_n & ~RW_i_n & SIZ_i[0] & ~SIZ_i[1], # Burst write to memory
                             TA_oe.eq(1),
                             TA_o_n.eq(1),
                             TEA_oe.eq(1),
                             TEA_o_n.eq(1),
                             TBI_oe.eq(1),
                             TBI_o_n.eq(1),
                             NextValue(A_latch, processed_ad),
                             write_fifo_din.adr.eq(processed_ad),
                             write_fifo_din.sel.eq(0xF),
                             If(write_fifo.writable,
                                NextValue(burst_counter, 1), # '040 burst are aligned
                                write_fifo.we.eq(1), # write if there's space
                                TA_o_n.eq(0), 
                                NextState("BurstWrite"),
                             ),
                      ).Elif((my_device_space & ~TS_i_n & RW_i_n & (~SIZ_i[0] | ~SIZ_i[1])), # non-line Read
                         TA_oe.eq(1),
                         TA_o_n.eq(1),
                         TEA_oe.eq(1),
                         TEA_o_n.eq(1),
                         TBI_oe.eq(1),
                         TBI_o_n.eq(1),
                         If(~write_fifo_readable_in_cpu, # previous write(s) done
                            wb_read.cyc.eq(1),
                            wb_read.stb.eq(1),
                            wb_read.we.eq(0),
                            wb_read.sel.eq(0xf), # always read 32-bits for cache
                            wb_read.adr.eq(processed_ad[2:32]),
                            NextValue(A_latch, processed_ad),
                            NextState("Read"),
                         ),
                      ).Elif((my_device_space & ~TS_i_n & ~RW_i_n & (~SIZ_i[0] | ~SIZ_i[1])), # non-line Write
                             TA_oe.eq(1),
                             TA_o_n.eq(1),
                             TEA_oe.eq(1),
                             TEA_o_n.eq(1),
                             TBI_oe.eq(1),
                             TBI_o_n.eq(1),
                             write_fifo_din.adr.eq(processed_ad),
                             Case(SIZ_i, {
                                 0x0: [ # long word
                                     Case(processed_ad[0:2], {
                                         0x0: [
                                              write_fifo_din.sel.eq(0xF),
                                         ],
                                         #0x1: [
                                         #     write_fifo_din.sel.eq(0xE), # not on '040
                                         #],
                                         #0x2: [
                                         #     write_fifo_din.sel.eq(0xC), # not on '040
                                         #],
                                         #0x3: [
                                         #     write_fifo_din.sel.eq(0x8), # not on '040
                                         #],
                                     }),
                                 ],
                                 0x1: [ # byte
                                     Case(processed_ad[0:2], {
                                         0x0: [
                                              write_fifo_din.sel.eq(0x1),
                                         ],
                                         0x1: [
                                              write_fifo_din.sel.eq(0x2),
                                         ],
                                         0x2: [
                                              write_fifo_din.sel.eq(0x4),
                                         ],
                                         0x3: [
                                              write_fifo_din.sel.eq(0x8),
                                         ],
                                     }),
                                 ],
                                 0x2: [ # word
                                     Case(processed_ad[0:2], {
                                         0x0: [
                                              write_fifo_din.sel.eq(0x3),
                                         ],
                                         #0x1: [
                                         #     write_fifo_din.sel.eq(0x6), # not on '040
                                         #],
                                         0x2: [
                                              write_fifo_din.sel.eq(0xC),
                                         ],
                                         #0x3: [
                                         #     write_fifo_din.sel.eq(0x8), # not on '040
                                         #],
                                     }),
                                 ],
                                 #0x3: [ # 3-bytes  # not on '040 where it's a full line
                                 #    Case(processed_ad[0:2], {
                                 #        0x0: [
                                 #             write_fifo_din.sel.eq(0x7),
                                 #        ],
                                 #        0x1: [
                                 #             write_fifo_din.sel.eq(0xE),
                                 #        ],
                                 #        0x2: [
                                 #             write_fifo_din.sel.eq(0xC),
                                 #        ],
                                 #        0x3: [
                                 #             write_fifo_din.sel.eq(0x8),
                                 #        ],
                                 #    }),
                                 #],
                                 0x3: [ # line
                                     Case(processed_ad[0:2], {
                                         0x0: [
                                              write_fifo_din.sel.eq(0xF),
                                             TBI_o_n.eq(0), # don't burst write for now
                                         ],
                                         #0x1: [
                                         #     write_fifo_din.sel.eq(0xE),
                                         #],
                                         #0x2: [
                                         #     write_fifo_din.sel.eq(0xC),
                                         #],
                                         #0x3: [
                                         #     write_fifo_din.sel.eq(0x8),
                                         #],
                                     }),
                                 ],
                             }),
                             If(write_fifo.writable,
                                write_fifo.we.eq(1), # write if there's space
                                TA_o_n.eq(0), 
                                NextState("Finish"),
                             ),
                      )
        )
        slave_fsm.act("Read",
                      wb_read.cyc.eq(1),
                      wb_read.stb.eq(1),
                      wb_read.we.eq(0),
                      wb_read.sel.eq(0xf),
                      wb_read.adr.eq(A_latch[2:32]),
                      TA_oe.eq(1),
                      TA_o_n.eq(1),
                      TEA_oe.eq(1),
                      TEA_o_n.eq(1),
                      TBI_oe.eq(1),
                      TBI_o_n.eq(1),
                      If(wb_read.ack,
                         D_oe.eq(1),
                         D_rev_o.eq(wb_read.dat_r),
                         TA_o_n.eq(0), # ACK
                         If (SIZ_i == 0x3, # line
                             TBI_o_n.eq(0), # do not burst here
                         ),
                         NextState("Finish"),
                      )
        )
        slave_fsm.act("Finish",
                      TA_oe.eq(1),
                      TA_o_n.eq(1),
                      TEA_oe.eq(1),
                      TEA_o_n.eq(1),
                      TBI_oe.eq(1),
                      TBI_o_n.eq(1),
                      NextState("Idle"),
        )
        slave_fsm.act("BurstReadWait",
                      TA_oe.eq(1),
                      TA_o_n.eq(1),
                      TEA_oe.eq(1),
                      TEA_o_n.eq(1),
                      TBI_oe.eq(1),
                      TBI_o_n.eq(1),
                      D_oe.eq(1),
                      dram_native_r.rdata.ready.eq(1),
                      D_rev_o.eq(0), # too early for the CPU to get
                      NextValue(burst_buffer, dram_native_r.rdata.data),
                      If(dram_native_r.rdata.valid,
                         TA_o_n.eq(0),
                         D_rev_o.eq(dram_native_r.rdata.data[  0: 32]),
                         NextValue(burst_counter, 1), 
                         NextState("BurstRead"),
                      ),
        )
        slave_fsm.act("BurstRead",
                      TA_oe.eq(0),
                      TA_o_n.eq(1),
                      TEA_oe.eq(1),
                      TEA_o_n.eq(1),
                      TBI_oe.eq(1),
                      TBI_o_n.eq(1),
                      D_oe.eq(1),
                      Case(burst_buffer, {
                          #0x0: D_rev_o.eq(dram_native_r.rdata.data[  0: 32]),
                          0x1: D_rev_o.eq(dram_native_r.rdata.data[ 32: 64]),
                          0x2: D_rev_o.eq(dram_native_r.rdata.data[ 64: 96]),
                          0x3: D_rev_o.eq(dram_native_r.rdata.data[ 96:128]),
                      }),
                      NextValue(burst_buffer, burst_buffer + 1),
                      If(burst_buffer == 0x3,
                         NextState("Finish"),
                      ),
        )
        slave_fsm.act("BurstWrite",
                      TA_oe.eq(1),
                      TA_o_n.eq(1),
                      TEA_oe.eq(1),
                      TEA_o_n.eq(1),
                      TBI_oe.eq(1),
                      TBI_o_n.eq(1),
                      write_fifo_din.adr.eq(processed_ad + burst_counter),
                      write_fifo_din.sel.eq(0xF),
                      If(write_fifo.writable,
                         NextValue(burst_counter, burst_counter + 1),
                         write_fifo.we.eq(1), # write if there's space
                         TA_o_n.eq(0),
                         If(burst_counter == 0x3,
                             NextState("Finish"),
                         )
                      ),
        )
        
        # connect the write FIFO inputs
        self.comb += [ write_fifo_din.data.eq(D_rev_i), # live
        ]
        # deal with emptying the Write FIFO to the write WB
        self.comb += [ wb_write.cyc.eq(write_fifo.readable),
                       wb_write.stb.eq(write_fifo.readable),
                       wb_write.we.eq(1),
                       wb_write.adr.eq(write_fifo_dout.adr[2:32]),
                       wb_write.dat_w.eq(write_fifo_dout.data),
                       wb_write.sel.eq(write_fifo_dout.sel),
                       write_fifo.re.eq(wb_write.ack),
        ]
