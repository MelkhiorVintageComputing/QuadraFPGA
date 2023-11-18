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

from VintageBusFPGA_Common.ztex_21x_common import ZTexPlatform

# IOs ----------------------------------------------------------------------------------------------

# QuadraFPGA I/O
# I/O
_pds040_io_v1_0 = [
    # HDMI
    ("hdmi", 0,
        Subsignal("clk_p",   Pins("L1"), IOStandard("TMDS_33")),
        Subsignal("clk_n",   Pins("M1"), IOStandard("TMDS_33")),
        Subsignal("data0_p", Pins("K3"), IOStandard("TMDS_33")),
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
    ("user_led", 0, Pins("P5"),  IOStandard("lvcmos33")), # pretend LED0, pmod #12
    ("user_led", 1, Pins("N5"),  IOStandard("lvcmos33")), # pretend LED1, pmod #11
    ("user_led", 2, Pins("P4"),  IOStandard("lvcmos33")), # pretend LED0, pmod #10
    ("user_led", 3, Pins("P3"),  IOStandard("lvcmos33")), # pretend LED1, pmod #9
    ("user_led", 4, Pins("T1"),  IOStandard("lvcmos33")), # pretend LED0, pmod #8
    ("user_led", 5, Pins("R1"),  IOStandard("lvcmos33")), # pretend LED1, pmod #7
    ("user_led", 6, Pins("R2"),  IOStandard("lvcmos33")), # pretend LED0, pmod #6
    ("user_led", 7, Pins("P2"),  IOStandard("lvcmos33")), # pretend LED1, pmod #5
    ]

# PDS
_pds040_pds040_v1_0 = [
    ("aux_cpuclk_3v3",     0, Pins("H16"), IOStandard("lvttl")),
    ("A_3v3",              0, Pins("V9  U9  V7  U8  V6  V5  U7  U6  "
                                   "J18 K16 V4  J17 K15 T8  K13 J15 "
                                   "T5  J13 H15 R8  H14 J14 T4  G14 "
                                   "H17 R7  G16 G17 T6  U4  U3  G18"), IOStandard("lvttl")),
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

class Platform(ZTexPlatform):

    def __init__(self, variant="ztex2.13a", version="V1.0"):
        
        pds040_io = {
            "V1.0" : _pds040_io_v1_0,
        }[version]
        pds040_pds040 = {
            "V1.0" : _pds040_pds040_v1_0,
        }[version]
        connectors = {
            "V1.0" : connectors_v1_0,
        }[version]
        
        ZTexPlatform.__init__(self, variant=variant, version=version, connectors=connectors)
        
        self.add_extension(pds040_io)
        self.add_extension(pds040_pds040)
