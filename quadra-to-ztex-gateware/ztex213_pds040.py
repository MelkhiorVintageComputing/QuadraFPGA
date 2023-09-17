#
# This file is part of LiteX-Boards.
#
# Support for the ZTEX USB-FGPA Module 2.13:
# <https://www.ztex.de/usb-fpga-2/usb-fpga-2.13.e.html>
# With (no-so-optional) expansion, either the ZTEX Debug board:
# <https://www.ztex.de/usb-fpga-2/debug.e.html>
# Or the NuBusFPGA adapter board:
# <https://github.com/rdolbeau/NuBusFPGA>
#
# Copyright (c) 2015 Yann Sionneau <yann.sionneau@gmail.com>
# Copyright (c) 2015-2019 Florent Kermarrec <florent@enjoy-digital.fr>
# Copyright (c) 2020-2021 Romain Dolbeau <romain@dolbeau.org>
# SPDX-License-Identifier: BSD-2-Clause

from litex.build.generic_platform import *
from litex.build.xilinx import XilinxPlatform
from litex.build.openocd import OpenOCD

# IOs ----------------------------------------------------------------------------------------------

# FPGA daughterboard I/O

_io = [
    ## 48 MHz clock reference
    ("clk48", 0, Pins("P15"), IOStandard("LVCMOS33")),
    ## embedded 256 MiB DDR3 DRAM
    ("ddram", 0,
        Subsignal("a", Pins("C5 B6 C7 D5 A3 E7 A4 C6", "A6 D8 B2 A5 B3 B7"),
            IOStandard("SSTL135")),
        Subsignal("ba",    Pins("E5 A1 E6"), IOStandard("SSTL135")),
        Subsignal("ras_n", Pins("E3"), IOStandard("SSTL135")),
        Subsignal("cas_n", Pins("D3"), IOStandard("SSTL135")),
        Subsignal("we_n",  Pins("D4"), IOStandard("SSTL135")),
#        Subsignal("cs_n",  Pins(""), IOStandard("SSTL135")),
        Subsignal("dm", Pins("G1 G6"), IOStandard("SSTL135")),
        Subsignal("dq", Pins(
            "H1 F1 E2 E1 F4 C1 F3 D2",
            "G4 H5 G3 H6 J2 J3 K1 K2"),
            IOStandard("SSTL135"),
            Misc("IN_TERM=UNTUNED_SPLIT_40")),
        Subsignal("dqs_p", Pins("H2 J4"),
            IOStandard("DIFF_SSTL135"),
            Misc("IN_TERM=UNTUNED_SPLIT_40")),
        Subsignal("dqs_n", Pins("G2 H4"),
            IOStandard("DIFF_SSTL135"),
            Misc("IN_TERM=UNTUNED_SPLIT_40")),
        Subsignal("clk_p", Pins("C4"), IOStandard("DIFF_SSTL135")),
        Subsignal("clk_n", Pins("B4"), IOStandard("DIFF_SSTL135")),
        Subsignal("cke",   Pins("B1"), IOStandard("SSTL135")),
        Subsignal("odt",   Pins("F5"), IOStandard("SSTL135")),
        Subsignal("reset_n", Pins("J5"), IOStandard("SSTL135")),
        Misc("SLEW=FAST"),
    ),
]

# QuadraFPGA I/O
# I/O
_pds040_io_v1_0 = [
    # HDMI
    ("hdmi", 0,
        Subsignal("clk_p",   Pins("L1"), IOStandard("TMDS_33")),
        Subsignal("clk_n",   Pins("M1"), IOStandard("TMDS_33")),
        Subsignal("data0_p", Pins("L3"), IOStandard("TMDS_33")),
        Subsignal("data0_n", Pins("L3"), IOStandard("TMDS_33")), 
        Subsignal("data1_p", Pins("N2"), IOStandard("TMDS_33")),
        Subsignal("data1_n", Pins("N1"), IOStandard("TMDS_33")),
        Subsignal("data2_p", Pins("K5"), IOStandard("TMDS_33")),
        Subsignal("data2_n", Pins("L4"), IOStandard("TMDS_33")),
        #Subsignal("hpd",     Pins(""), IOStandard("LVCMOS33")),
        #Subsignal("sda",     Pins(""), IOStandard("LVCMOS33")),
        #Subsignal("scl",     Pins(""), IOStandard("LVCMOS33")),
        #Subsignal("cec",     Pins(""), IOStandard("LVCMOS33")),
    ),
    ("user_led", 1, Pins("N5"),  IOStandard("lvcmos33")), # pretend LED0, pmod #11
    ("user_led", 0, Pins("P5"),  IOStandard("lvcmos33")), # pretend LED1, pmod #12
    ("user_led", 3, Pins("P3"),  IOStandard("lvcmos33")), # pretend LED0, pmod #9
    ("user_led", 2, Pins("P4"),  IOStandard("lvcmos33")), # pretend LED1, pmod #10
    ("user_led", 5, Pins("R1"),  IOStandard("lvcmos33")), # pretend LED0, pmod #7
    ("user_led", 4, Pins("T1"),  IOStandard("lvcmos33")), # pretend LED1, pmod #8
    ("user_led", 7, Pins("R2"),  IOStandard("lvcmos33")), # pretend LED0, pmod #5
    ("user_led", 6, Pins("P2"),  IOStandard("lvcmos33")), # pretend LED1, pmod #6
    ]

# PDS
_pds040_pds040_v1_0 = [
    ("aux_cpuclk_3v3",     0, Pins("H16"), IOStandard("lvttl")),
    ("A_3v3",              0, Pins("V9  U9  V7  U8  V6  V5  U7  U6  "
                                   "J18 K16 V4  J17 K15 T8  K13 J15 "
                                   "T5  J13 H15 R8  H14 J14 T4  G14 "
                                   "H17 R7  G16 G17 U4  T6  U3  G18"), IOStandard("lvttl")),
    ("D_3v3",              0, Pins("B16 L5  C15 D15 L6  A18 B18 M6  "
                                   "C17 C16 N6  E16 E15 R3  F14 F13 "
                                   "K6  T3  U2  U1  V2  G13 D17 V1  "
                                   "D18 E17 R5  E18 F15 R6  F18 F16"), IOStandard("lvttl")),
    ("nmrq6_3v3_n",        0, Pins("B11"), IOStandard("lvttl")),
    ("tm_3v3",             0, Pins("A13 A14 A11"), IOStandard("lvttl")),
    ("tt_3v3",             0, Pins("B14 M2"), IOStandard("lvttl")),
    ("bb_3v3_n",           0, Pins("C12"), IOStandard("lvttl")),
    ("br_40slot_3v3_n",    0, Pins("B13"), IOStandard("lvttl")),
    ("mi_3v3_n",           0, Pins("A16"), IOStandard("lvttl")),
    ("ts_3v3_n",           0, Pins("A15"), IOStandard("lvttl")),
    ("tea_3v3_n",          0, Pins("D13"), IOStandard("lvttl")),
    ("ta_3v3_n",           0, Pins("D12"), IOStandard("lvttl")),
    ("tbi_3v3_n",          0, Pins("C14"), IOStandard("lvttl")),
    ("rw_3v3_n",           0, Pins("D14"), IOStandard("lvttl")),
    ("siz_3v3",            0, Pins("B17 N4"), IOStandard("lvttl")),
    ("tip_cpu_3v3_n",      0, Pins("M4"), IOStandard("lvttl")),
    ("bg_40slot_3v3_n",    0, Pins("M3"), IOStandard("lvttl")),
    ("rstq_3v3_n",         0, Pins("B12"), IOStandard("lvttl")),
]

# Connectors ---------------------------------------------------------------------------------------
connectors_v1_0 = [
    ("P1", "P2 R2 R1 T1 P3 P4 N5 P5"), # check sequence! currently in pmod-* order
    ]

# Platform -----------------------------------------------------------------------------------------

class Platform(XilinxPlatform):
    default_clk_name   = "clk48"
    default_clk_period = 1e9/48e6

    def __init__(self, variant="ztex2.13a", version="V1.0"):
        device = {
            "ztex2.13a":  "xc7a35tcsg324-1",
            "ztex2.13b":  "xc7a50tcsg324-1", #untested
            "ztex2.13b2": "xc7a50tcsg324-1", #untested
            "ztex2.13c":  "xc7a75tcsg324-2", #untested
            "ztex2.13d":  "xc7a100tcsg324-2" #untested
        }[variant]
        pds040_io = {
            "V1.0" : _pds040_io_v1_0,
        }[version]
        pds040_pds040 = {
            "V1.0" : _pds040_pds040_v1_0,
        }[version]
        connectors = {
            "V1.0" : connectors_v1_0,
        }[version]
        self.speedgrade = -1
        if (device[-1] == '2'):
            self.speedgrade = -2
        
        XilinxPlatform.__init__(self, device, _io, connectors, toolchain="vivado")
        self.add_extension(pds040_io)
        print(pds040_pds040)
        self.add_extension(pds040_pds040)
        
        self.toolchain.bitstream_commands = \
            ["set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR No [current_design]",
             "set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 2 [current_design]",
             "set_property BITSTREAM.CONFIG.CONFIGRATE 66 [current_design]",
             "set_property BITSTREAM.GENERAL.COMPRESS true [current_design]",
             "set_property BITSTREAM.GENERAL.CRC DISABLE [current_design]",
             "set_property STEPS.SYNTH_DESIGN.ARGS.RETIMING true [get_runs synth_1]",
             "set_property CONFIG_VOLTAGE 3.3 [current_design]",
             "set_property CFGBVS VCCO [current_design]"
#             , "set_property STEPS.SYNTH_DESIGN.ARGS.DIRECTIVE AreaOptimized_high [get_runs synth_1]"
             ]

    def create_programmer(self):
        bscan_spi = "bscan_spi_xc7a35t.bit"
        return OpenOCD("openocd_xc7_ft2232.cfg", bscan_spi) #FIXME

    def do_finalize(self, fragment):
        XilinxPlatform.do_finalize(self, fragment)
        #self.add_period_constraint(self.lookup_request("clk48", loose=True), 1e9/48e6)
