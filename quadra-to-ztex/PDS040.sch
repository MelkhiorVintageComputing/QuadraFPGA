EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 14175 2650 2    50   Input ~ 0
~CIOUT
Text GLabel 14175 5650 2    50   Input ~ 0
A29
Text GLabel 12675 5550 0    50   Input ~ 0
A28
Text GLabel 12675 2450 0    50   Input ~ 0
~BG_CPU
Text GLabel 12675 5450 0    50   Input ~ 0
A30
Text GLabel 14175 5450 2    50   Input ~ 0
D31
Text GLabel 12675 5250 0    50   Input ~ 0
D28
Text GLabel 14175 5150 2    50   Input ~ 0
D25
Text GLabel 14175 4950 2    50   Input ~ 0
D22
Text GLabel 14175 4750 2    50   Input ~ 0
D19
Text GLabel 12675 4550 0    50   Input ~ 0
D16
Text GLabel 14175 4350 2    50   Input ~ 0
D13
Text GLabel 12675 4150 0    50   Input ~ 0
D10
Text GLabel 14175 7250 2    50   Input ~ 0
A1
Text GLabel 14175 5750 2    50   Input ~ 0
A26
Text GLabel 14175 5950 2    50   Input ~ 0
A23
Text GLabel 14175 1450 2    50   Input ~ 0
IPL0
Text GLabel 12675 3650 0    50   Input ~ 0
D2
Text GLabel 14175 3650 2    50   Input ~ 0
D1
Text GLabel 14175 7050 2    50   Input ~ 0
A4
Text GLabel 14175 6950 2    50   Input ~ 0
A6
Text GLabel 14175 6650 2    50   Input ~ 0
A11
Text GLabel 14175 6750 2    50   Input ~ 0
A9
Text GLabel 12675 6350 0    50   Input ~ 0
A16
Text GLabel 14175 6250 2    50   Input ~ 0
A18
$Comp
L power:+12V #PWR0101
U 1 1 631F2920
P 12675 1150
F 0 "#PWR0101" H 12675 1000 50  0001 C CNN
F 1 "+12V" V 12690 1278 50  0000 L CNN
F 2 "" H 12675 1150 50  0001 C CNN
F 3 "" H 12675 1150 50  0001 C CNN
	1    12675 1150
	0    -1   -1   0   
$EndComp
Text GLabel 14175 3350 2    50   Input ~ 0
~RW
Text GLabel 14175 3450 2    50   Input ~ 0
SIZ1
Text GLabel 12675 5350 0    50   Input ~ 0
D30
Text GLabel 14175 5250 2    50   Input ~ 0
D27
Text GLabel 14175 5050 2    50   Input ~ 0
D24
Text GLabel 12675 4850 0    50   Input ~ 0
D21
Text GLabel 12675 4650 0    50   Input ~ 0
D18
Text GLabel 12675 4450 0    50   Input ~ 0
D15
Text GLabel 12675 4250 0    50   Input ~ 0
D12
Text GLabel 14175 4150 2    50   Input ~ 0
D9
Text GLabel 14175 2450 2    50   Input ~ 0
~BR_CPU
Text GLabel 14175 5550 2    50   Input ~ 0
A31
Text GLabel 12675 5750 0    50   Input ~ 0
A25
Text GLabel 12675 5950 0    50   Input ~ 0
A22
Text GLabel 14175 1250 2    50   Input ~ 0
IPL2
Text GLabel 12675 3750 0    50   Input ~ 0
D3
Text GLabel 12675 3850 0    50   Input ~ 0
D5
Text GLabel 12675 3550 0    50   Input ~ 0
D0
Text GLabel 12675 7150 0    50   Input ~ 0
A2
Text GLabel 12675 6550 0    50   Input ~ 0
A12
Text GLabel 14175 6550 2    50   Input ~ 0
A13
Text GLabel 12675 6750 0    50   Input ~ 0
A8
Text GLabel 14175 6450 2    50   Input ~ 0
A15
Text GLabel 12675 6250 0    50   Input ~ 0
A17
Text GLabel 12675 3450 0    50   Input ~ 0
SIZ0
Text GLabel 14175 5350 2    50   Input ~ 0
D29
Text GLabel 12675 5150 0    50   Input ~ 0
D26
Text GLabel 12675 4950 0    50   Input ~ 0
D23
Text GLabel 12675 4750 0    50   Input ~ 0
D20
Text GLabel 14175 4650 2    50   Input ~ 0
D17
Text GLabel 14175 4450 2    50   Input ~ 0
D14
Text GLabel 14175 4250 2    50   Input ~ 0
D11
Text GLabel 14175 4050 2    50   Input ~ 0
D8
Text GLabel 12675 7250 0    50   Input ~ 0
A0
Text GLabel 12675 5650 0    50   Input ~ 0
A27
Text GLabel 14175 5850 2    50   Input ~ 0
A24
Text GLabel 14175 1350 2    50   Input ~ 0
IPL1
Text GLabel 14175 3850 2    50   Input ~ 0
D4
Text GLabel 14175 3950 2    50   Input ~ 0
D6
Text GLabel 12675 3950 0    50   Input ~ 0
D7
Text GLabel 14175 7150 2    50   Input ~ 0
A3
Text GLabel 12675 6850 0    50   Input ~ 0
A5
Text GLabel 14175 6850 2    50   Input ~ 0
A7
Text GLabel 12675 6650 0    50   Input ~ 0
A10
Text GLabel 12675 6450 0    50   Input ~ 0
A14
$Comp
L power:+3V3 #PWR0103
U 1 1 63223559
P 875 2600
F 0 "#PWR0103" H 875 2450 50  0001 C CNN
F 1 "+3V3" V 890 2728 50  0000 L CNN
F 2 "" H 875 2600 50  0001 C CNN
F 3 "" H 875 2600 50  0001 C CNN
	1    875  2600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6322F267
P 725 2600
AR Path="/618F532C/6322F267" Ref="C?"  Part="1" 
AR Path="/618E8C75/6322F267" Ref="C?"  Part="1" 
AR Path="/631F3844/6322F267" Ref="C?"  Part="1" 
AR Path="/631EF9BC/6322F267" Ref="C4"  Part="1" 
AR Path="/6432B33E/6322F267" Ref="C6"  Part="1" 
AR Path="/64F7E9BF/6322F267" Ref="C1"  Part="1" 
F 0 "C1" H 750 2700 50  0000 L CNN
F 1 "100nF" H 750 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 763 2450 50  0001 C CNN
F 3 "" H 725 2600 50  0000 C CNN
F 4 "www.yageo.com" H 725 2600 50  0001 C CNN "MNF1_URL"
F 5 "CL05B104KO5NNNC" H 725 2600 50  0001 C CNN "MPN"
F 6 "" H 725 2600 50  0001 C CNN "Mouser"
F 7 "?" H 725 2600 50  0001 C CNN "Digikey"
F 8 "?" H 725 2600 50  0001 C CNN "LCSC"
F 9 "?" H 725 2600 50  0001 C CNN "Koncar"
F 10 "TB" H 725 2600 50  0001 C CNN "Side"
F 11 "https://www.lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_YAGEO-CC0603KRX7R9BB104_C14663.html" H 725 2600 50  0001 C CNN "URL"
	1    725  2600
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6322F27B
P 575 2600
F 0 "#PWR0104" H 575 2350 50  0001 C CNN
F 1 "GND" H 580 2427 50  0000 C CNN
F 2 "" H 575 2600 50  0001 C CNN
F 3 "" H 575 2600 50  0001 C CNN
	1    575  2600
	0    1    -1   0   
$EndComp
$Comp
L power:-12V #PWR0136
U 1 1 64456710
P 14175 1150
F 0 "#PWR0136" H 14175 1250 50  0001 C CNN
F 1 "-12V" V 14190 1278 50  0000 L CNN
F 2 "" H 14175 1150 50  0001 C CNN
F 3 "" H 14175 1150 50  0001 C CNN
	1    14175 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 64478CBA
P 14175 6350
F 0 "#PWR0139" H 14175 6100 50  0001 C CNN
F 1 "GND" V 14180 6222 50  0000 R CNN
F 2 "" H 14175 6350 50  0001 C CNN
F 3 "" H 14175 6350 50  0001 C CNN
	1    14175 6350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 6447AF14
P 12675 5850
F 0 "#PWR0140" H 12675 5600 50  0001 C CNN
F 1 "GND" V 12680 5722 50  0000 R CNN
F 2 "" H 12675 5850 50  0001 C CNN
F 3 "" H 12675 5850 50  0001 C CNN
	1    12675 5850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 6447C6EC
P 12675 6950
F 0 "#PWR0141" H 12675 6700 50  0001 C CNN
F 1 "GND" V 12680 6822 50  0000 R CNN
F 2 "" H 12675 6950 50  0001 C CNN
F 3 "" H 12675 6950 50  0001 C CNN
	1    12675 6950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0145
U 1 1 64484CC0
P 14175 4850
F 0 "#PWR0145" H 14175 4700 50  0001 C CNN
F 1 "+5V" V 14190 4978 50  0000 L CNN
F 2 "" H 14175 4850 50  0001 C CNN
F 3 "" H 14175 4850 50  0001 C CNN
	1    14175 4850
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0146
U 1 1 64485295
P 12675 7050
F 0 "#PWR0146" H 12675 6900 50  0001 C CNN
F 1 "+5V" V 12690 7178 50  0000 L CNN
F 2 "" H 12675 7050 50  0001 C CNN
F 3 "" H 12675 7050 50  0001 C CNN
	1    12675 7050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0147
U 1 1 6448744C
P 12675 6150
F 0 "#PWR0147" H 12675 6000 50  0001 C CNN
F 1 "+5V" V 12690 6278 50  0000 L CNN
F 2 "" H 12675 6150 50  0001 C CNN
F 3 "" H 12675 6150 50  0001 C CNN
	1    12675 6150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 64476A87
P 14175 7350
F 0 "#PWR0138" H 14175 7100 50  0001 C CNN
F 1 "GND" V 14180 7222 50  0000 R CNN
F 2 "" H 14175 7350 50  0001 C CNN
F 3 "" H 14175 7350 50  0001 C CNN
	1    14175 7350
	0    -1   -1   0   
$EndComp
Text GLabel 12675 7350 0    50   Input ~ 0
AUX_CPUCLK
$Comp
L 8807-140-170LH:8807-140-170LH U14
U 1 1 64F94140
P 13425 3900
F 0 "U14" H 13425 85  50  0000 C CNN
F 1 "8807-140-170LH" H 13425 176 50  0000 C CNN
F 2 "KEL:8807-140-170LH" H 13425 3900 50  0001 C CNN
F 3 "DOCUMENTATION" H 13425 3900 50  0001 C CNN
F 4 "DNP" H 13425 3900 50  0001 C CNN "DNP"
F 5 "8807-140-170LH" H 13425 3900 50  0001 C CNN "MPN"
	1    13425 3900
	-1   0    0    1   
$EndComp
Text GLabel 14175 6150 2    50   Input ~ 0
A19
Text GLabel 14175 6050 2    50   Input ~ 0
A21
Text GLabel 12675 6050 0    50   Input ~ 0
A20
$Comp
L power:GND #PWR0179
U 1 1 64FC2B03
P 12675 5050
F 0 "#PWR0179" H 12675 4800 50  0001 C CNN
F 1 "GND" V 12680 4922 50  0000 R CNN
F 2 "" H 12675 5050 50  0001 C CNN
F 3 "" H 12675 5050 50  0001 C CNN
	1    12675 5050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0180
U 1 1 64FC6480
P 14175 4550
F 0 "#PWR0180" H 14175 4300 50  0001 C CNN
F 1 "GND" V 14180 4422 50  0000 R CNN
F 2 "" H 14175 4550 50  0001 C CNN
F 3 "" H 14175 4550 50  0001 C CNN
	1    14175 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0181
U 1 1 64FC6F11
P 12675 4350
F 0 "#PWR0181" H 12675 4200 50  0001 C CNN
F 1 "+5V" V 12690 4478 50  0000 L CNN
F 2 "" H 12675 4350 50  0001 C CNN
F 3 "" H 12675 4350 50  0001 C CNN
	1    12675 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0182
U 1 1 64FC7C27
P 12675 4050
F 0 "#PWR0182" H 12675 3800 50  0001 C CNN
F 1 "GND" V 12680 3922 50  0000 R CNN
F 2 "" H 12675 4050 50  0001 C CNN
F 3 "" H 12675 4050 50  0001 C CNN
	1    12675 4050
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0183
U 1 1 64FC8592
P 14175 3750
F 0 "#PWR0183" H 14175 3600 50  0001 C CNN
F 1 "+5V" V 14190 3878 50  0000 L CNN
F 2 "" H 14175 3750 50  0001 C CNN
F 3 "" H 14175 3750 50  0001 C CNN
	1    14175 3750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0184
U 1 1 64FC902F
P 14175 3550
F 0 "#PWR0184" H 14175 3300 50  0001 C CNN
F 1 "GND" V 14180 3422 50  0000 R CNN
F 2 "" H 14175 3550 50  0001 C CNN
F 3 "" H 14175 3550 50  0001 C CNN
	1    14175 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0185
U 1 1 64FCA4D4
P 12675 3350
F 0 "#PWR0185" H 12675 3200 50  0001 C CNN
F 1 "+5V" V 12690 3478 50  0000 L CNN
F 2 "" H 12675 3350 50  0001 C CNN
F 3 "" H 12675 3350 50  0001 C CNN
	1    12675 3350
	0    -1   -1   0   
$EndComp
Text GLabel 12675 3250 0    50   Input ~ 0
~TBI
Text GLabel 14175 3250 2    50   Input ~ 0
~TIP_CPU
Text GLabel 12675 3150 0    50   Input ~ 0
~TA
NoConn ~ 14175 3150
$Comp
L power:GND #PWR0186
U 1 1 64FCE2FB
P 12675 3050
F 0 "#PWR0186" H 12675 2800 50  0001 C CNN
F 1 "GND" V 12680 2922 50  0000 R CNN
F 2 "" H 12675 3050 50  0001 C CNN
F 3 "" H 12675 3050 50  0001 C CNN
	1    12675 3050
	0    1    1    0   
$EndComp
Text GLabel 14175 3050 2    50   Input ~ 0
~TEA
Text GLabel 12675 2950 0    50   Input ~ 0
~TS
Text GLabel 14175 2950 2    50   Input ~ 0
~DLE
Text GLabel 12675 2850 0    50   Input ~ 0
SC0
Text GLabel 14175 2850 2    50   Input ~ 0
SC1
Text GLabel 12675 2750 0    50   Input ~ 0
~MI
Text GLabel 14175 2750 2    50   Input ~ 0
~TRST
Text GLabel 12675 2650 0    50   Input ~ 0
~MI_SLOT
Text GLabel 12675 2550 0    50   Input ~ 0
~BG_40SLOT
$Comp
L power:GND #PWR0187
U 1 1 64FD6BFA
P 14175 2550
F 0 "#PWR0187" H 14175 2300 50  0001 C CNN
F 1 "GND" V 14180 2422 50  0000 R CNN
F 2 "" H 14175 2550 50  0001 C CNN
F 3 "" H 14175 2550 50  0001 C CNN
	1    14175 2550
	0    -1   -1   0   
$EndComp
Text GLabel 14175 2350 2    50   Input ~ 0
~BR_40SLOT
$Comp
L power:+5V #PWR0188
U 1 1 64FD7697
P 12675 2350
F 0 "#PWR0188" H 12675 2200 50  0001 C CNN
F 1 "+5V" V 12690 2478 50  0000 L CNN
F 2 "" H 12675 2350 50  0001 C CNN
F 3 "" H 12675 2350 50  0001 C CNN
	1    12675 2350
	0    -1   -1   0   
$EndComp
Text GLabel 12675 2250 0    50   Input ~ 0
TT0
Text GLabel 12675 2150 0    50   Input ~ 0
TT1
$Comp
L power:GND #PWR0189
U 1 1 64FD9242
P 12675 2050
F 0 "#PWR0189" H 12675 1800 50  0001 C CNN
F 1 "GND" V 12680 1922 50  0000 R CNN
F 2 "" H 12675 2050 50  0001 C CNN
F 3 "" H 12675 2050 50  0001 C CNN
	1    12675 2050
	0    1    1    0   
$EndComp
Text GLabel 14175 2250 2    50   Input ~ 0
~BB
Text GLabel 14175 2150 2    50   Input ~ 0
~LOCK
Text GLabel 14175 2050 2    50   Input ~ 0
~MEMRESET
Text GLabel 12675 1950 0    50   Input ~ 0
TLN0
Text GLabel 12675 1850 0    50   Input ~ 0
TLN1
Text GLabel 14175 1950 2    50   Input ~ 0
~RSTQ
$Comp
L power:+5V #PWR0190
U 1 1 64FDEFFA
P 14175 1850
F 0 "#PWR0190" H 14175 1700 50  0001 C CNN
F 1 "+5V" V 14190 1978 50  0000 L CNN
F 2 "" H 14175 1850 50  0001 C CNN
F 3 "" H 14175 1850 50  0001 C CNN
	1    14175 1850
	0    1    1    0   
$EndComp
NoConn ~ 14175 1750
Text GLabel 12675 1750 0    50   Input ~ 0
~ANALOGRESET
Text GLabel 12675 1650 0    50   Input ~ 0
TM0
Text GLabel 12675 1550 0    50   Input ~ 0
TM1
Text GLabel 12675 1450 0    50   Input ~ 0
TM2
Text GLabel 14175 1650 2    50   Input ~ 0
~NMRQ6
$Comp
L power:GND #PWR0191
U 1 1 64FE383E
P 14175 1550
F 0 "#PWR0191" H 14175 1300 50  0001 C CNN
F 1 "GND" V 14180 1422 50  0000 R CNN
F 2 "" H 14175 1550 50  0001 C CNN
F 3 "" H 14175 1550 50  0001 C CNN
	1    14175 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0192
U 1 1 64FE58F6
P 12675 1350
F 0 "#PWR0192" H 12675 1200 50  0001 C CNN
F 1 "+5V" V 12690 1478 50  0000 L CNN
F 2 "" H 12675 1350 50  0001 C CNN
F 3 "" H 12675 1350 50  0001 C CNN
	1    12675 1350
	0    -1   -1   0   
$EndComp
Text GLabel 12675 1250 0    50   Input ~ 0
~PDS_SLOT_E_EN
$Comp
L power:GND #PWR0193
U 1 1 64FE7A57
P 14175 1050
F 0 "#PWR0193" H 14175 800 50  0001 C CNN
F 1 "GND" V 14180 922 50  0000 R CNN
F 2 "" H 14175 1050 50  0001 C CNN
F 3 "" H 14175 1050 50  0001 C CNN
	1    14175 1050
	0    -1   -1   0   
$EndComp
NoConn ~ 12675 1050
NoConn ~ 14175 950 
NoConn ~ 14175 850 
NoConn ~ 14175 750 
NoConn ~ 14175 650 
NoConn ~ 14175 550 
NoConn ~ 12675 550 
NoConn ~ 12675 650 
NoConn ~ 12675 750 
Text GLabel 8000 2200 2    50   Input ~ 0
TCK
Text GLabel 8000 2300 2    50   Input ~ 0
TMS
$Comp
L power:+5V #PWR0194
U 1 1 64FEBCFD
P 12675 450
F 0 "#PWR0194" H 12675 300 50  0001 C CNN
F 1 "+5V" V 12690 578 50  0000 L CNN
F 2 "" H 12675 450 50  0001 C CNN
F 3 "" H 12675 450 50  0001 C CNN
	1    12675 450 
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0195
U 1 1 64FEC2BA
P 14175 450
F 0 "#PWR0195" H 14175 300 50  0001 C CNN
F 1 "+5V" V 14190 578 50  0000 L CNN
F 2 "" H 14175 450 50  0001 C CNN
F 3 "" H 14175 450 50  0001 C CNN
	1    14175 450 
	0    1    1    0   
$EndComp
Text GLabel 2200 3500 2    50   Input ~ 0
A1
Text GLabel 2200 3400 2    50   Input ~ 0
A2
Text GLabel 2200 3600 2    50   Input ~ 0
A0
Text GLabel 2200 3300 2    50   Input ~ 0
A3
Text GLabel 2200 3200 2    50   Input ~ 0
A4
Text GLabel 2200 3100 2    50   Input ~ 0
A6
Text GLabel 2200 3000 2    50   Input ~ 0
A5
Text GLabel 2200 2900 2    50   Input ~ 0
A7
$Comp
L 74CB3T16211DGGR:74CB3T16211DGGR IC1
U 1 1 6503C181
P 1000 1000
F 0 "IC1" H 1600 1265 50  0000 C CNN
F 1 "74CB3T16211DGGR" H 1600 1174 50  0000 C CNN
F 2 "SOP50P810X120-56N" H 2050 1100 50  0001 L CNN
F 3 "https://www.ti.com/lit/gpn/sn74cb3t16211" H 2050 1000 50  0001 L CNN
F 4 "Texas Instruments 74CB3T16211DGGR, Bus Switch, 12 x 1:1, 2.3  3.6 V, 56-Pin TSSOP" H 2050 900 50  0001 L CNN "Description"
F 5 "1.2" H 2050 800 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 2050 700 50  0001 L CNN "Manufacturer_Name"
F 7 "74CB3T16211DGGR" H 2050 600 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 2050 500 50  0001 L CNN "Mouser Part Number"
F 9 "" H 2050 400 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 2050 300 50  0001 L CNN "Arrow Part Number"
F 11 "" H 2050 200 50  0001 L CNN "Arrow Price/Stock"
F 12 "SN74CB3T16211DGGR" H 1000 1000 50  0001 C CNN "MPN"
	1    1000 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1025 2600 1000 2600
Connection ~ 875  2600
Connection ~ 1000 2600
Wire Wire Line
	1000 2600 875  2600
$Comp
L power:GND #PWR0102
U 1 1 6504A504
P 2200 1700
F 0 "#PWR0102" H 2200 1450 50  0001 C CNN
F 1 "GND" H 2205 1527 50  0000 C CNN
F 2 "" H 2200 1700 50  0001 C CNN
F 3 "" H 2200 1700 50  0001 C CNN
	1    2200 1700
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6504ADA0
P 1000 1700
F 0 "#PWR0105" H 1000 1450 50  0001 C CNN
F 1 "GND" H 1005 1527 50  0000 C CNN
F 2 "" H 1000 1700 50  0001 C CNN
F 3 "" H 1000 1700 50  0001 C CNN
	1    1000 1700
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6504B2B1
P 1000 2800
F 0 "#PWR0106" H 1000 2550 50  0001 C CNN
F 1 "GND" H 1005 2627 50  0000 C CNN
F 2 "" H 1000 2800 50  0001 C CNN
F 3 "" H 1000 2800 50  0001 C CNN
	1    1000 2800
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 6504B673
P 2200 2800
F 0 "#PWR0107" H 2200 2550 50  0001 C CNN
F 1 "GND" H 2205 2627 50  0000 C CNN
F 2 "" H 2200 2800 50  0001 C CNN
F 3 "" H 2200 2800 50  0001 C CNN
	1    2200 2800
	0    -1   1    0   
$EndComp
NoConn ~ 1000 1000
$Comp
L power:GND #PWR0108
U 1 1 6504C07A
P 2200 1100
F 0 "#PWR0108" H 2200 850 50  0001 C CNN
F 1 "GND" H 2205 927 50  0000 C CNN
F 2 "" H 2200 1100 50  0001 C CNN
F 3 "" H 2200 1100 50  0001 C CNN
	1    2200 1100
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6504C3E6
P 2200 1000
F 0 "#PWR0109" H 2200 750 50  0001 C CNN
F 1 "GND" H 2205 827 50  0000 C CNN
F 2 "" H 2200 1000 50  0001 C CNN
F 3 "" H 2200 1000 50  0001 C CNN
	1    2200 1000
	0    -1   1    0   
$EndComp
$Comp
L power:+3V3 #PWR0110
U 1 1 65056B7C
P 875 5775
F 0 "#PWR0110" H 875 5625 50  0001 C CNN
F 1 "+3V3" V 890 5903 50  0000 L CNN
F 2 "" H 875 5775 50  0001 C CNN
F 3 "" H 875 5775 50  0001 C CNN
	1    875  5775
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 65056B8A
P 725 5775
AR Path="/618F532C/65056B8A" Ref="C?"  Part="1" 
AR Path="/618E8C75/65056B8A" Ref="C?"  Part="1" 
AR Path="/631F3844/65056B8A" Ref="C?"  Part="1" 
AR Path="/631EF9BC/65056B8A" Ref="C?"  Part="1" 
AR Path="/6432B33E/65056B8A" Ref="C?"  Part="1" 
AR Path="/64F7E9BF/65056B8A" Ref="C2"  Part="1" 
F 0 "C2" H 750 5875 50  0000 L CNN
F 1 "100nF" H 750 5675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 763 5625 50  0001 C CNN
F 3 "" H 725 5775 50  0000 C CNN
F 4 "www.yageo.com" H 725 5775 50  0001 C CNN "MNF1_URL"
F 5 "CL05B104KO5NNNC" H 725 5775 50  0001 C CNN "MPN"
F 6 "" H 725 5775 50  0001 C CNN "Mouser"
F 7 "?" H 725 5775 50  0001 C CNN "Digikey"
F 8 "?" H 725 5775 50  0001 C CNN "LCSC"
F 9 "?" H 725 5775 50  0001 C CNN "Koncar"
F 10 "TB" H 725 5775 50  0001 C CNN "Side"
F 11 "https://www.lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_YAGEO-CC0603KRX7R9BB104_C14663.html" H 725 5775 50  0001 C CNN "URL"
	1    725  5775
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 65056B90
P 575 5775
F 0 "#PWR0111" H 575 5525 50  0001 C CNN
F 1 "GND" H 580 5602 50  0000 C CNN
F 2 "" H 575 5775 50  0001 C CNN
F 3 "" H 575 5775 50  0001 C CNN
	1    575  5775
	0    1    -1   0   
$EndComp
$Comp
L 74CB3T16211DGGR:74CB3T16211DGGR IC2
U 1 1 65056BA6
P 1000 4175
F 0 "IC2" H 1600 4440 50  0000 C CNN
F 1 "74CB3T16211DGGR" H 1600 4349 50  0000 C CNN
F 2 "SOP50P810X120-56N" H 2050 4275 50  0001 L CNN
F 3 "https://www.ti.com/lit/gpn/sn74cb3t16211" H 2050 4175 50  0001 L CNN
F 4 "Texas Instruments 74CB3T16211DGGR, Bus Switch, 12 x 1:1, 2.3  3.6 V, 56-Pin TSSOP" H 2050 4075 50  0001 L CNN "Description"
F 5 "1.2" H 2050 3975 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 2050 3875 50  0001 L CNN "Manufacturer_Name"
F 7 "74CB3T16211DGGR" H 2050 3775 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 2050 3675 50  0001 L CNN "Mouser Part Number"
F 9 "" H 2050 3575 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 2050 3475 50  0001 L CNN "Arrow Part Number"
F 11 "" H 2050 3375 50  0001 L CNN "Arrow Price/Stock"
F 12 "SN74CB3T16211DGGR" H 1000 4175 50  0001 C CNN "MPN"
	1    1000 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	1025 5775 1000 5775
Connection ~ 875  5775
Connection ~ 1000 5775
Wire Wire Line
	1000 5775 875  5775
$Comp
L power:GND #PWR0112
U 1 1 65056BB0
P 2200 4875
F 0 "#PWR0112" H 2200 4625 50  0001 C CNN
F 1 "GND" H 2205 4702 50  0000 C CNN
F 2 "" H 2200 4875 50  0001 C CNN
F 3 "" H 2200 4875 50  0001 C CNN
	1    2200 4875
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 65056BB6
P 1000 4875
F 0 "#PWR0113" H 1000 4625 50  0001 C CNN
F 1 "GND" H 1005 4702 50  0000 C CNN
F 2 "" H 1000 4875 50  0001 C CNN
F 3 "" H 1000 4875 50  0001 C CNN
	1    1000 4875
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 65056BBC
P 1000 5975
F 0 "#PWR0114" H 1000 5725 50  0001 C CNN
F 1 "GND" H 1005 5802 50  0000 C CNN
F 2 "" H 1000 5975 50  0001 C CNN
F 3 "" H 1000 5975 50  0001 C CNN
	1    1000 5975
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 65056BC2
P 2200 5975
F 0 "#PWR0115" H 2200 5725 50  0001 C CNN
F 1 "GND" H 2205 5802 50  0000 C CNN
F 2 "" H 2200 5975 50  0001 C CNN
F 3 "" H 2200 5975 50  0001 C CNN
	1    2200 5975
	0    -1   1    0   
$EndComp
NoConn ~ 1000 4175
$Comp
L power:GND #PWR0116
U 1 1 65056BC9
P 2200 4275
F 0 "#PWR0116" H 2200 4025 50  0001 C CNN
F 1 "GND" H 2205 4102 50  0000 C CNN
F 2 "" H 2200 4275 50  0001 C CNN
F 3 "" H 2200 4275 50  0001 C CNN
	1    2200 4275
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 65056BCF
P 2200 4175
F 0 "#PWR0117" H 2200 3925 50  0001 C CNN
F 1 "GND" H 2205 4002 50  0000 C CNN
F 2 "" H 2200 4175 50  0001 C CNN
F 3 "" H 2200 4175 50  0001 C CNN
	1    2200 4175
	0    -1   1    0   
$EndComp
$Comp
L power:+3V3 #PWR0118
U 1 1 6505C40E
P 3000 2575
F 0 "#PWR0118" H 3000 2425 50  0001 C CNN
F 1 "+3V3" V 3015 2703 50  0000 L CNN
F 2 "" H 3000 2575 50  0001 C CNN
F 3 "" H 3000 2575 50  0001 C CNN
	1    3000 2575
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6505C41C
P 2850 2575
AR Path="/618F532C/6505C41C" Ref="C?"  Part="1" 
AR Path="/618E8C75/6505C41C" Ref="C?"  Part="1" 
AR Path="/631F3844/6505C41C" Ref="C?"  Part="1" 
AR Path="/631EF9BC/6505C41C" Ref="C?"  Part="1" 
AR Path="/6432B33E/6505C41C" Ref="C?"  Part="1" 
AR Path="/64F7E9BF/6505C41C" Ref="C3"  Part="1" 
F 0 "C3" H 2875 2675 50  0000 L CNN
F 1 "100nF" H 2875 2475 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2888 2425 50  0001 C CNN
F 3 "" H 2850 2575 50  0000 C CNN
F 4 "www.yageo.com" H 2850 2575 50  0001 C CNN "MNF1_URL"
F 5 "CL05B104KO5NNNC" H 2850 2575 50  0001 C CNN "MPN"
F 6 "" H 2850 2575 50  0001 C CNN "Mouser"
F 7 "?" H 2850 2575 50  0001 C CNN "Digikey"
F 8 "?" H 2850 2575 50  0001 C CNN "LCSC"
F 9 "?" H 2850 2575 50  0001 C CNN "Koncar"
F 10 "TB" H 2850 2575 50  0001 C CNN "Side"
F 11 "https://www.lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_YAGEO-CC0603KRX7R9BB104_C14663.html" H 2850 2575 50  0001 C CNN "URL"
	1    2850 2575
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 6505C422
P 2700 2575
F 0 "#PWR0119" H 2700 2325 50  0001 C CNN
F 1 "GND" H 2705 2402 50  0000 C CNN
F 2 "" H 2700 2575 50  0001 C CNN
F 3 "" H 2700 2575 50  0001 C CNN
	1    2700 2575
	0    1    -1   0   
$EndComp
$Comp
L 74CB3T16211DGGR:74CB3T16211DGGR IC3
U 1 1 6505C438
P 3125 975
F 0 "IC3" H 3725 1240 50  0000 C CNN
F 1 "74CB3T16211DGGR" H 3725 1149 50  0000 C CNN
F 2 "SOP50P810X120-56N" H 4175 1075 50  0001 L CNN
F 3 "https://www.ti.com/lit/gpn/sn74cb3t16211" H 4175 975 50  0001 L CNN
F 4 "Texas Instruments 74CB3T16211DGGR, Bus Switch, 12 x 1:1, 2.3  3.6 V, 56-Pin TSSOP" H 4175 875 50  0001 L CNN "Description"
F 5 "1.2" H 4175 775 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 4175 675 50  0001 L CNN "Manufacturer_Name"
F 7 "74CB3T16211DGGR" H 4175 575 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 4175 475 50  0001 L CNN "Mouser Part Number"
F 9 "" H 4175 375 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 4175 275 50  0001 L CNN "Arrow Part Number"
F 11 "" H 4175 175 50  0001 L CNN "Arrow Price/Stock"
F 12 "SN74CB3T16211DGGR" H 3125 975 50  0001 C CNN "MPN"
	1    3125 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2575 3125 2575
Connection ~ 3000 2575
Connection ~ 3125 2575
Wire Wire Line
	3125 2575 3000 2575
$Comp
L power:GND #PWR0120
U 1 1 6505C442
P 4325 1675
F 0 "#PWR0120" H 4325 1425 50  0001 C CNN
F 1 "GND" H 4330 1502 50  0000 C CNN
F 2 "" H 4325 1675 50  0001 C CNN
F 3 "" H 4325 1675 50  0001 C CNN
	1    4325 1675
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 6505C448
P 3125 1675
F 0 "#PWR0121" H 3125 1425 50  0001 C CNN
F 1 "GND" H 3130 1502 50  0000 C CNN
F 2 "" H 3125 1675 50  0001 C CNN
F 3 "" H 3125 1675 50  0001 C CNN
	1    3125 1675
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 6505C44E
P 3125 2775
F 0 "#PWR0122" H 3125 2525 50  0001 C CNN
F 1 "GND" H 3130 2602 50  0000 C CNN
F 2 "" H 3125 2775 50  0001 C CNN
F 3 "" H 3125 2775 50  0001 C CNN
	1    3125 2775
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 6505C454
P 4325 2775
F 0 "#PWR0123" H 4325 2525 50  0001 C CNN
F 1 "GND" H 4330 2602 50  0000 C CNN
F 2 "" H 4325 2775 50  0001 C CNN
F 3 "" H 4325 2775 50  0001 C CNN
	1    4325 2775
	0    -1   1    0   
$EndComp
NoConn ~ 3125 975 
$Comp
L power:GND #PWR0124
U 1 1 6505C45B
P 4325 1075
F 0 "#PWR0124" H 4325 825 50  0001 C CNN
F 1 "GND" H 4330 902 50  0000 C CNN
F 2 "" H 4325 1075 50  0001 C CNN
F 3 "" H 4325 1075 50  0001 C CNN
	1    4325 1075
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 6505C461
P 4325 975
F 0 "#PWR0125" H 4325 725 50  0001 C CNN
F 1 "GND" H 4330 802 50  0000 C CNN
F 2 "" H 4325 975 50  0001 C CNN
F 3 "" H 4325 975 50  0001 C CNN
	1    4325 975 
	0    -1   1    0   
$EndComp
Text GLabel 2200 6175 2    50   Input ~ 0
A31
Text GLabel 6350 1450 0    50   Input ~ 0
~PDS_SLOT_E_EN
NoConn ~ 14775 2750
Text GLabel 2200 3700 2    50   Input ~ 0
AUX_CPUCLK
Text GLabel 2200 6275 2    50   Input ~ 0
A28
Text GLabel 2200 6075 2    50   Input ~ 0
A30
Text GLabel 2200 1900 2    50   Input ~ 0
A16
Text GLabel 2200 6675 2    50   Input ~ 0
A25
Text GLabel 2200 1200 2    50   Input ~ 0
A22
Text GLabel 2200 2300 2    50   Input ~ 0
A12
Text GLabel 2200 2700 2    50   Input ~ 0
A8
Text GLabel 2200 1800 2    50   Input ~ 0
A17
Text GLabel 2200 6475 2    50   Input ~ 0
A27
Text GLabel 2200 2500 2    50   Input ~ 0
A10
Text GLabel 2200 2100 2    50   Input ~ 0
A14
Text GLabel 2200 1400 2    50   Input ~ 0
A20
Text GLabel 2200 6375 2    50   Input ~ 0
A29
Text GLabel 2200 6575 2    50   Input ~ 0
A26
Text GLabel 2200 6875 2    50   Input ~ 0
A23
Text GLabel 2200 2400 2    50   Input ~ 0
A11
Text GLabel 2200 2600 2    50   Input ~ 0
A9
Text GLabel 2200 1600 2    50   Input ~ 0
A18
Text GLabel 2200 2200 2    50   Input ~ 0
A13
Text GLabel 2200 2000 2    50   Input ~ 0
A15
Text GLabel 2200 6775 2    50   Input ~ 0
A24
Text GLabel 2200 1500 2    50   Input ~ 0
A19
Text GLabel 2200 1300 2    50   Input ~ 0
A21
Text GLabel 2200 5875 2    50   Input ~ 0
D31
Text GLabel 2200 5275 2    50   Input ~ 0
D25
Text GLabel 2200 4975 2    50   Input ~ 0
D22
Text GLabel 2200 4575 2    50   Input ~ 0
D19
Text GLabel 4325 3375 2    50   Input ~ 0
D13
Text GLabel 4325 2075 2    50   Input ~ 0
D1
Text GLabel 2200 5475 2    50   Input ~ 0
D27
Text GLabel 2200 5175 2    50   Input ~ 0
D24
Text GLabel 4325 2975 2    50   Input ~ 0
D9
Text GLabel 2200 5675 2    50   Input ~ 0
D29
Text GLabel 2200 4375 2    50   Input ~ 0
D17
Text GLabel 4325 3575 2    50   Input ~ 0
D14
Text GLabel 4325 3175 2    50   Input ~ 0
D11
Text GLabel 4325 2875 2    50   Input ~ 0
D8
Text GLabel 4325 2375 2    50   Input ~ 0
D4
Text GLabel 4325 2575 2    50   Input ~ 0
D6
Text GLabel 2200 5575 2    50   Input ~ 0
D28
Text GLabel 4325 3675 2    50   Input ~ 0
D16
Text GLabel 4325 3075 2    50   Input ~ 0
D10
Text GLabel 4325 2175 2    50   Input ~ 0
D2
Text GLabel 2200 5775 2    50   Input ~ 0
D30
Text GLabel 2200 4775 2    50   Input ~ 0
D21
Text GLabel 2200 4475 2    50   Input ~ 0
D18
Text GLabel 4325 3475 2    50   Input ~ 0
D15
Text GLabel 4325 3275 2    50   Input ~ 0
D12
Text GLabel 4325 2275 2    50   Input ~ 0
D3
Text GLabel 4325 2475 2    50   Input ~ 0
D5
Text GLabel 4325 1975 2    50   Input ~ 0
D0
Text GLabel 2200 5375 2    50   Input ~ 0
D26
Text GLabel 2200 5075 2    50   Input ~ 0
D23
Text GLabel 2200 4675 2    50   Input ~ 0
D20
Text GLabel 4325 2675 2    50   Input ~ 0
D7
$Comp
L power:GND #PWR0126
U 1 1 6506266C
P 6650 1450
F 0 "#PWR0126" H 6650 1200 50  0001 C CNN
F 1 "GND" H 6655 1277 50  0000 C CNN
F 2 "" H 6650 1450 50  0001 C CNN
F 3 "" H 6650 1450 50  0001 C CNN
	1    6650 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 65079040
P 6500 1450
F 0 "R1" V 6293 1450 50  0000 C CNN
F 1 "10k" V 6384 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6430 1450 50  0001 C CNN
F 3 "~" H 6500 1450 50  0001 C CNN
F 4 "0402WGF1002TCE" V 6500 1450 50  0001 C CNN "MPN"
	1    6500 1450
	0    1    1    0   
$EndComp
Text GLabel 4325 1775 2    50   Input ~ 0
SIZ1
Text GLabel 4325 1875 2    50   Input ~ 0
SIZ0
Text GLabel 4325 1575 2    50   Input ~ 0
~RW
Text GLabel 4325 1375 2    50   Input ~ 0
~TIP_CPU
Text Notes 4700 1375 0    50   ~ 0
needed?
Text GLabel 4325 1475 2    50   Input ~ 0
~TBI
Text GLabel 4325 1275 2    50   Input ~ 0
~TA
Text GLabel 4325 1175 2    50   Input ~ 0
~TEA
Text GLabel 9800 2825 2    50   Input ~ 0
~DLE
Text Notes 10000 2825 0    50   ~ 0
not needed?
Text GLabel 4325 6850 2    50   Input ~ 0
~TS
Text GLabel 9425 1075 2    50   Input ~ 0
SC1
Text GLabel 9425 975  2    50   Input ~ 0
SC0
Text GLabel 8000 2400 2    50   Input ~ 0
~TRST
Text Notes 8225 2425 0    50   ~ 0
not needed
Text GLabel 4325 6650 2    50   Input ~ 0
~MI
Text Notes 4475 6675 0    50   ~ 0
needed?
Text GLabel 7900 3025 2    50   Input ~ 0
~CIOUT
Text GLabel 7900 3175 2    50   Input ~ 0
~MI_SLOT
Text Notes 8275 3175 0    50   ~ 0
needed?
Text GLabel 7975 4050 2    50   Input ~ 0
~BG_40SLOT
Text Notes 8475 4025 0    50   ~ 0
needed?
Text GLabel 8000 3900 2    50   Input ~ 0
~BR_CPU
Text GLabel 8000 3775 2    50   Input ~ 0
~BG_CPU
Text GLabel 7975 3650 2    50   Input ~ 0
~BR_40SLOT
Text Notes 8350 3900 0    50   ~ 0
needed?
Text Notes 8350 3775 0    50   ~ 0
needed?
Text Notes 8450 3650 0    50   ~ 0
needed?
Text GLabel 7975 3525 2    50   Input ~ 0
~BB
Text Notes 8150 3525 0    50   ~ 0
needed?
Text GLabel 4325 6150 2    50   Input ~ 0
TT0
Text GLabel 7975 4200 2    50   Input ~ 0
~LOCK
Text GLabel 4325 6050 2    50   Input ~ 0
TT1
Text Notes 8250 4175 0    50   ~ 0
needed?
Text GLabel 4325 5750 2    50   Input ~ 0
~MEMRESET
Text Notes 4775 5750 0    50   ~ 0
needed?
Text GLabel 7900 1075 2    50   Input ~ 0
TLN0
Text GLabel 7900 975  2    50   Input ~ 0
TLN1
Text GLabel 4325 4350 2    50   Input ~ 0
~NMRQ6
Text GLabel 4325 4650 2    50   Input ~ 0
TM0
Text Notes 8200 2225 0    50   ~ 0
not needed
Text Notes 8200 2325 0    50   ~ 0
not needed
Text Notes 8200 1675 0    50   ~ 0
not needed
Text Notes 8200 1775 0    50   ~ 0
not needed
Text Notes 8200 1875 0    50   ~ 0
not needed
Text GLabel 7975 1750 2    50   Input ~ 0
IPL1
Text GLabel 7975 1650 2    50   Input ~ 0
IPL2
Text GLabel 7975 1850 2    50   Input ~ 0
IPL0
Text GLabel 4325 4450 2    50   Input ~ 0
TM2
Text GLabel 4325 4550 2    50   Input ~ 0
TM1
Text Notes 8150 1000 0    50   ~ 0
not needed
Text Notes 8150 1100 0    50   ~ 0
not needed
Text Notes 7825 875  0    50   ~ 0
Which line in a set is being used
Text Notes 7900 1575 0    50   ~ 0
Interrupt level
Text Notes 7900 2100 0    50   ~ 0
Test (part of JTAG ???)
Text GLabel 10025 1825 2    50   Input ~ 0
~ANALOGRESET
Text GLabel 4325 5550 2    50   Input ~ 0
~RSTQ
Text Notes 8200 3000 0    50   ~ 0
needed?
Text Notes 9775 1700 0    50   ~ 0
Enables the PDS to drive the system reset signal;\nused only for testing
Text Notes 10600 1850 0    50   ~ 0
not needed
Text Notes 9650 2725 0    50   ~ 0
Asynchronous only?
Text Notes 7800 3375 0    50   ~ 0
Bus mastering
Text Notes 7725 2875 0    50   ~ 0
External cache
$Comp
L power:+3V3 #PWR0127
U 1 1 65CDED6B
P 3000 5750
F 0 "#PWR0127" H 3000 5600 50  0001 C CNN
F 1 "+3V3" V 3015 5878 50  0000 L CNN
F 2 "" H 3000 5750 50  0001 C CNN
F 3 "" H 3000 5750 50  0001 C CNN
	1    3000 5750
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 65CDED79
P 2850 5750
AR Path="/618F532C/65CDED79" Ref="C?"  Part="1" 
AR Path="/618E8C75/65CDED79" Ref="C?"  Part="1" 
AR Path="/631F3844/65CDED79" Ref="C?"  Part="1" 
AR Path="/631EF9BC/65CDED79" Ref="C?"  Part="1" 
AR Path="/6432B33E/65CDED79" Ref="C?"  Part="1" 
AR Path="/64F7E9BF/65CDED79" Ref="C4"  Part="1" 
F 0 "C4" H 2875 5850 50  0000 L CNN
F 1 "100nF" H 2875 5650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2888 5600 50  0001 C CNN
F 3 "" H 2850 5750 50  0000 C CNN
F 4 "www.yageo.com" H 2850 5750 50  0001 C CNN "MNF1_URL"
F 5 "CL05B104KO5NNNC" H 2850 5750 50  0001 C CNN "MPN"
F 6 "" H 2850 5750 50  0001 C CNN "Mouser"
F 7 "?" H 2850 5750 50  0001 C CNN "Digikey"
F 8 "?" H 2850 5750 50  0001 C CNN "LCSC"
F 9 "?" H 2850 5750 50  0001 C CNN "Koncar"
F 10 "TB" H 2850 5750 50  0001 C CNN "Side"
F 11 "https://www.lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_YAGEO-CC0603KRX7R9BB104_C14663.html" H 2850 5750 50  0001 C CNN "URL"
	1    2850 5750
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 65CDED7F
P 2700 5750
F 0 "#PWR0128" H 2700 5500 50  0001 C CNN
F 1 "GND" H 2705 5577 50  0000 C CNN
F 2 "" H 2700 5750 50  0001 C CNN
F 3 "" H 2700 5750 50  0001 C CNN
	1    2700 5750
	0    1    -1   0   
$EndComp
$Comp
L 74CB3T16211DGGR:74CB3T16211DGGR IC4
U 1 1 65CDED8D
P 3125 4150
F 0 "IC4" H 3725 4415 50  0000 C CNN
F 1 "74CB3T16211DGGR" H 3725 4324 50  0000 C CNN
F 2 "SOP50P810X120-56N" H 4175 4250 50  0001 L CNN
F 3 "https://www.ti.com/lit/gpn/sn74cb3t16211" H 4175 4150 50  0001 L CNN
F 4 "Texas Instruments 74CB3T16211DGGR, Bus Switch, 12 x 1:1, 2.3  3.6 V, 56-Pin TSSOP" H 4175 4050 50  0001 L CNN "Description"
F 5 "1.2" H 4175 3950 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 4175 3850 50  0001 L CNN "Manufacturer_Name"
F 7 "74CB3T16211DGGR" H 4175 3750 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 4175 3650 50  0001 L CNN "Mouser Part Number"
F 9 "" H 4175 3550 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 4175 3450 50  0001 L CNN "Arrow Part Number"
F 11 "" H 4175 3350 50  0001 L CNN "Arrow Price/Stock"
F 12 "SN74CB3T16211DGGR" H 3125 4150 50  0001 C CNN "MPN"
	1    3125 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5750 3125 5750
Connection ~ 3000 5750
Connection ~ 3125 5750
Wire Wire Line
	3125 5750 3000 5750
$Comp
L power:GND #PWR0129
U 1 1 65CDED97
P 4325 4850
F 0 "#PWR0129" H 4325 4600 50  0001 C CNN
F 1 "GND" H 4330 4677 50  0000 C CNN
F 2 "" H 4325 4850 50  0001 C CNN
F 3 "" H 4325 4850 50  0001 C CNN
	1    4325 4850
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 65CDED9D
P 3125 4850
F 0 "#PWR0130" H 3125 4600 50  0001 C CNN
F 1 "GND" H 3130 4677 50  0000 C CNN
F 2 "" H 3125 4850 50  0001 C CNN
F 3 "" H 3125 4850 50  0001 C CNN
	1    3125 4850
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 65CDEDA3
P 3125 5950
F 0 "#PWR0131" H 3125 5700 50  0001 C CNN
F 1 "GND" H 3130 5777 50  0000 C CNN
F 2 "" H 3125 5950 50  0001 C CNN
F 3 "" H 3125 5950 50  0001 C CNN
	1    3125 5950
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 65CDEDA9
P 4325 5950
F 0 "#PWR0132" H 4325 5700 50  0001 C CNN
F 1 "GND" H 4330 5777 50  0000 C CNN
F 2 "" H 4325 5950 50  0001 C CNN
F 3 "" H 4325 5950 50  0001 C CNN
	1    4325 5950
	0    -1   1    0   
$EndComp
NoConn ~ 3125 4150
$Comp
L power:GND #PWR0133
U 1 1 65CDEDB0
P 4325 4250
F 0 "#PWR0133" H 4325 4000 50  0001 C CNN
F 1 "GND" H 4330 4077 50  0000 C CNN
F 2 "" H 4325 4250 50  0001 C CNN
F 3 "" H 4325 4250 50  0001 C CNN
	1    4325 4250
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 65CDEDB6
P 4325 4150
F 0 "#PWR0134" H 4325 3900 50  0001 C CNN
F 1 "GND" H 4330 3977 50  0000 C CNN
F 2 "" H 4325 4150 50  0001 C CNN
F 3 "" H 4325 4150 50  0001 C CNN
	1    4325 4150
	0    -1   1    0   
$EndComp
Text GLabel 3125 1875 0    50   Input ~ 0
D0_3V3
Text GLabel 3125 2675 0    50   Input ~ 0
D7_3V3
Text GLabel 3125 2375 0    50   Input ~ 0
D5_3V3
Text GLabel 3125 2475 0    50   Input ~ 0
D6_3V3
Text GLabel 3125 2875 0    50   Input ~ 0
D8_3V3
Text GLabel 3125 1975 0    50   Input ~ 0
D1_3V3
Text GLabel 3125 2275 0    50   Input ~ 0
D4_3V3
Text GLabel 3125 2075 0    50   Input ~ 0
D2_3V3
Text GLabel 3125 2175 0    50   Input ~ 0
D3_3V3
Text GLabel 3125 3475 0    50   Input ~ 0
D15_3V3
Text GLabel 3125 3675 0    50   Input ~ 0
D16_3V3
Text GLabel 3125 3375 0    50   Input ~ 0
D13_3V3
Text GLabel 3125 3575 0    50   Input ~ 0
D14_3V3
Text GLabel 3125 3275 0    50   Input ~ 0
D12_3V3
Text GLabel 3125 2975 0    50   Input ~ 0
D9_3V3
Text GLabel 3125 3075 0    50   Input ~ 0
D10_3V3
Text GLabel 3125 3175 0    50   Input ~ 0
D11_3V3
Text GLabel 1000 4575 0    50   Input ~ 0
D20_3V3
Text GLabel 1000 4275 0    50   Input ~ 0
D17_3V3
Text GLabel 1000 4475 0    50   Input ~ 0
D19_3V3
Text GLabel 1000 4375 0    50   Input ~ 0
D18_3V3
Text GLabel 1000 4975 0    50   Input ~ 0
D23_3V3
Text GLabel 1000 4775 0    50   Input ~ 0
D22_3V3
Text GLabel 1000 5075 0    50   Input ~ 0
D24_3V3
Text GLabel 1000 4675 0    50   Input ~ 0
D21_3V3
Text GLabel 1000 5875 0    50   Input ~ 0
D31_3V3
Text GLabel 1000 5675 0    50   Input ~ 0
D30_3V3
Text GLabel 1000 6175 0    50   Input ~ 0
A31_3V3
Text GLabel 1000 5575 0    50   Input ~ 0
D29_3V3
Text GLabel 1000 5475 0    50   Input ~ 0
D28_3V3
Text GLabel 1000 5175 0    50   Input ~ 0
D25_3V3
Text GLabel 1000 5375 0    50   Input ~ 0
D27_3V3
Text GLabel 1000 5275 0    50   Input ~ 0
D26_3V3
Text GLabel 1000 3500 0    50   Input ~ 0
A1_3V3
Text GLabel 1000 3600 0    50   Input ~ 0
A0_3V3
Text GLabel 1000 3400 0    50   Input ~ 0
A2_3V3
Text GLabel 1000 3200 0    50   Input ~ 0
A4_3V3
Text GLabel 1000 3100 0    50   Input ~ 0
A6_3V3
Text GLabel 1000 3300 0    50   Input ~ 0
A3_3V3
Text GLabel 1000 3000 0    50   Input ~ 0
A5_3V3
Text GLabel 1000 2300 0    50   Input ~ 0
A11_3V3
Text GLabel 1000 2200 0    50   Input ~ 0
A12_3V3
Text GLabel 1000 2000 0    50   Input ~ 0
A14_3V3
Text GLabel 1000 2100 0    50   Input ~ 0
A13_3V3
Text GLabel 1000 1300 0    50   Input ~ 0
A20_3V3
Text GLabel 1000 1400 0    50   Input ~ 0
A19_3V3
Text GLabel 1000 1200 0    50   Input ~ 0
A21_3V3
Text GLabel 1000 1800 0    50   Input ~ 0
A16_3V3
Text GLabel 1000 1600 0    50   Input ~ 0
A17_3V3
Text GLabel 1000 1500 0    50   Input ~ 0
A18_3V3
Text GLabel 1000 1900 0    50   Input ~ 0
A15_3V3
Text GLabel 1000 6375 0    50   Input ~ 0
A28_3V3
Text GLabel 1000 6475 0    50   Input ~ 0
A27_3V3
Text GLabel 1000 6675 0    50   Input ~ 0
A25_3V3
Text GLabel 1000 6775 0    50   Input ~ 0
A24_3V3
Text GLabel 1000 6575 0    50   Input ~ 0
A26_3V3
Text GLabel 1000 2500 0    50   Input ~ 0
A9_3V3
Text GLabel 1000 2700 0    50   Input ~ 0
A8_3V3
Text GLabel 1000 2900 0    50   Input ~ 0
A7_3V3
Text GLabel 1000 2400 0    50   Input ~ 0
A10_3V3
Text GLabel 1000 6275 0    50   Input ~ 0
A29_3V3
Text GLabel 1000 6075 0    50   Input ~ 0
A30_3V3
Text GLabel 1000 1100 0    50   Input ~ 0
A22_3V3
Text GLabel 1000 6875 0    50   Input ~ 0
A23_3V3
Text GLabel 1000 3700 0    50   Input ~ 0
AUX_CPUCLK_3V3
Text GLabel 3125 1575 0    50   Input ~ 0
SIZ1_3V3
Text GLabel 3125 1775 0    50   Input ~ 0
SIZ0_3V3
Text GLabel 3125 1475 0    50   Input ~ 0
~RW_3V3
Text GLabel 3125 1375 0    50   Input ~ 0
~TBI_3V3
Text GLabel 3125 1275 0    50   Input ~ 0
~TIP_CPU_3V3
Text GLabel 3125 1175 0    50   Input ~ 0
~TA_3V3
Text GLabel 3125 1075 0    50   Input ~ 0
~TEA_3V3
Text GLabel 3125 6850 0    50   Input ~ 0
~TS_3V3
Text GLabel 3125 6650 0    50   Input ~ 0
~MI_3V3
Text GLabel 3125 6150 0    50   Input ~ 0
TT0_3V3
Text GLabel 3125 6050 0    50   Input ~ 0
TT1_3V3
Text GLabel 3125 5650 0    50   Input ~ 0
~MEMRESET_3V3
Text GLabel 3125 5450 0    50   Input ~ 0
~RSTQ_3V3
Text GLabel 3125 4250 0    50   Input ~ 0
~NMRQ6_3V3
Text GLabel 3125 4550 0    50   Input ~ 0
TM0_3V3
Text GLabel 3125 4350 0    50   Input ~ 0
TM2_3V3
Text GLabel 3125 4450 0    50   Input ~ 0
TM1_3V3
Text GLabel 12675 950  0    50   Input ~ 0
TCK
Text GLabel 12675 850  0    50   Input ~ 0
TMS
Text GLabel 6325 1100 0    50   Input ~ 0
~NMRQ6_3V3
$Comp
L Device:R R4
U 1 1 65E122AA
P 6475 1100
F 0 "R4" V 6268 1100 50  0000 C CNN
F 1 "10k" V 6359 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6405 1100 50  0001 C CNN
F 3 "~" H 6475 1100 50  0001 C CNN
F 4 "0402WGF1002TCE" V 6475 1100 50  0001 C CNN "MPN"
	1    6475 1100
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0165
U 1 1 65E12C2E
P 6625 1100
F 0 "#PWR0165" H 6625 950 50  0001 C CNN
F 1 "+3V3" H 6640 1273 50  0000 C CNN
F 2 "" H 6625 1100 50  0001 C CNN
F 3 "" H 6625 1100 50  0001 C CNN
	1    6625 1100
	1    0    0    -1  
$EndComp
Text Notes 9325 850  0    50   ~ 0
Snooping
Text Notes 9625 1000 0    50   ~ 0
not needed
Text Notes 9625 1100 0    50   ~ 0
not needed
$EndSCHEMATC
