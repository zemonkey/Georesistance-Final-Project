EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 8950 1900 0    50   Input ~ 0
ADC_0
Text GLabel 8950 2000 0    50   Input ~ 0
ADC_1
Text GLabel 8950 2100 0    50   Input ~ 0
ADC_2
Text GLabel 8950 2200 0    50   Input ~ 0
ADC_3
$Comp
L power:GND #PWR040
U 1 1 613F3DE8
P 9350 2400
F 0 "#PWR040" H 9350 2150 50  0001 C CNN
F 1 "GND" H 9355 2227 50  0000 C CNN
F 2 "" H 9350 2400 50  0001 C CNN
F 3 "" H 9350 2400 50  0001 C CNN
	1    9350 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R33
U 1 1 613F5ECA
P 10150 2350
F 0 "R33" H 10218 2396 50  0000 L CNN
F 1 "10k" H 10218 2305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10190 2340 50  0001 C CNN
F 3 "~" H 10150 2350 50  0001 C CNN
	1    10150 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 613F5ED0
P 10150 2500
F 0 "#PWR044" H 10150 2250 50  0001 C CNN
F 1 "GND" H 10155 2327 50  0000 C CNN
F 2 "" H 10150 2500 50  0001 C CNN
F 3 "" H 10150 2500 50  0001 C CNN
	1    10150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2200 10150 2200
$Comp
L Connector:Screw_Terminal_01x04 J1
U 1 1 613F71BB
P 3700 4700
F 0 "J1" H 3780 4692 50  0000 L CNN
F 1 "Screw_Terminal_01x04" H 3780 4601 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00014_1x04_P5.00mm_Horizontal" H 3700 4700 50  0001 C CNN
F 3 "~" H 3700 4700 50  0001 C CNN
	1    3700 4700
	1    0    0    -1  
$EndComp
Text GLabel 3500 4600 0    50   Input ~ 0
Pasak_A
Text GLabel 3500 4700 0    50   Input ~ 0
Pasak_B
Text GLabel 3500 4800 0    50   Input ~ 0
Pasak_M
Text GLabel 3500 4900 0    50   Input ~ 0
Pasak_N
$Comp
L power:+5V #PWR039
U 1 1 613F4629
P 9350 1500
F 0 "#PWR039" H 9350 1350 50  0001 C CNN
F 1 "+5V" H 9365 1673 50  0000 C CNN
F 2 "" H 9350 1500 50  0001 C CNN
F 3 "" H 9350 1500 50  0001 C CNN
	1    9350 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 6143AD83
P 3700 5350
F 0 "J2" H 3780 5342 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 3780 5251 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00012_1x02_P5.00mm_Horizontal" H 3700 5350 50  0001 C CNN
F 3 "~" H 3700 5350 50  0001 C CNN
	1    3700 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 6143C0DE
P 3200 5450
F 0 "#PWR031" H 3200 5200 50  0001 C CNN
F 1 "GND" H 3205 5277 50  0000 C CNN
F 2 "" H 3200 5450 50  0001 C CNN
F 3 "" H 3200 5450 50  0001 C CNN
	1    3200 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5450 3200 5450
$Comp
L power:VCC #PWR030
U 1 1 6143D5CA
P 3200 5350
F 0 "#PWR030" H 3200 5200 50  0001 C CNN
F 1 "VCC" H 3215 5523 50  0000 C CNN
F 2 "" H 3200 5350 50  0001 C CNN
F 3 "" H 3200 5350 50  0001 C CNN
	1    3200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5350 3200 5350
$Comp
L Device:R_US R?
U 1 1 61447646
P 5450 1800
AR Path="/613F3D44/61447646" Ref="R?"  Part="1" 
AR Path="/61409444/61447646" Ref="R30"  Part="1" 
F 0 "R30" V 5245 1800 50  0000 C CNN
F 1 "200M" V 5336 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 5490 1790 50  0001 C CNN
F 3 "~" H 5450 1800 50  0001 C CNN
	1    5450 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 6144764C
P 5750 1950
AR Path="/613F3D44/6144764C" Ref="R?"  Part="1" 
AR Path="/61409444/6144764C" Ref="R32"  Part="1" 
F 0 "R32" H 5682 1904 50  0000 R CNN
F 1 "10M" H 5682 1995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5790 1940 50  0001 C CNN
F 3 "~" H 5750 1950 50  0001 C CNN
	1    5750 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 2450 5750 2100
Wire Wire Line
	5600 1800 5750 1800
Wire Wire Line
	5300 1800 4950 1800
Text GLabel 4950 1800 0    50   Input ~ 0
Pasak_A
$Comp
L power:GND #PWR038
U 1 1 61449C8A
P 5750 2450
F 0 "#PWR038" H 5750 2200 50  0001 C CNN
F 1 "GND" H 5755 2277 50  0000 C CNN
F 2 "" H 5750 2450 50  0001 C CNN
F 3 "" H 5750 2450 50  0001 C CNN
	1    5750 2450
	1    0    0    -1  
$EndComp
Text GLabel 7500 1900 2    50   Input ~ 0
ADC_3
$Comp
L Device:C_Small C?
U 1 1 614771B3
P 9750 1500
AR Path="/613FF101/614771B3" Ref="C?"  Part="1" 
AR Path="/61409444/614771B3" Ref="C8"  Part="1" 
F 0 "C8" V 9521 1500 50  0000 C CNN
F 1 "100n" V 9612 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 9750 1500 50  0001 C CNN
F 3 "~" H 9750 1500 50  0001 C CNN
	1    9750 1500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614771B9
P 10250 1500
AR Path="/613FF101/614771B9" Ref="#PWR?"  Part="1" 
AR Path="/61409444/614771B9" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 10250 1250 50  0001 C CNN
F 1 "GND" H 10255 1327 50  0000 C CNN
F 2 "" H 10250 1500 50  0001 C CNN
F 3 "" H 10250 1500 50  0001 C CNN
	1    10250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1500 10250 1500
$Comp
L power:+5V #PWR042
U 1 1 61483134
P 9800 3800
F 0 "#PWR042" H 9800 3650 50  0001 C CNN
F 1 "+5V" H 9815 3973 50  0000 C CNN
F 2 "" H 9800 3800 50  0001 C CNN
F 3 "" H 9800 3800 50  0001 C CNN
	1    9800 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 6148396C
P 9800 4800
F 0 "#PWR043" H 9800 4550 50  0001 C CNN
F 1 "GND" H 9805 4627 50  0000 C CNN
F 2 "" H 9800 4800 50  0001 C CNN
F 3 "" H 9800 4800 50  0001 C CNN
	1    9800 4800
	1    0    0    -1  
$EndComp
Text GLabel 9750 2100 2    50   Input ~ 0
SDA_5V
Text GLabel 9750 2000 2    50   Input ~ 0
SCL_5V
$Comp
L RS0108:TXS0108EPWR U5
U 1 1 614C9259
P 3300 3250
F 0 "U5" H 3300 4320 50  0000 C CNN
F 1 "TXS0108EPWR" H 3300 4229 50  0000 C CNN
F 2 "RS0108:SOP65P640X120-20N" H 3300 3250 50  0001 L BNN
F 3 "" H 3300 3250 50  0001 L BNN
	1    3300 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 614C9F63
P 4000 3950
F 0 "#PWR033" H 4000 3700 50  0001 C CNN
F 1 "GND" H 4005 3777 50  0000 C CNN
F 2 "" H 4000 3950 50  0001 C CNN
F 3 "" H 4000 3950 50  0001 C CNN
	1    4000 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR032
U 1 1 614CAA08
P 4000 2050
F 0 "#PWR032" H 4000 1900 50  0001 C CNN
F 1 "+3V3" H 4015 2223 50  0000 C CNN
F 2 "" H 4000 2050 50  0001 C CNN
F 3 "" H 4000 2050 50  0001 C CNN
	1    4000 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR036
U 1 1 614CAD4C
P 4500 2550
F 0 "#PWR036" H 4500 2400 50  0001 C CNN
F 1 "+5V" H 4515 2723 50  0000 C CNN
F 2 "" H 4500 2550 50  0001 C CNN
F 3 "" H 4500 2550 50  0001 C CNN
	1    4500 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR029
U 1 1 614CBB27
P 2600 2750
F 0 "#PWR029" H 2600 2600 50  0001 C CNN
F 1 "+3V3" H 2615 2923 50  0000 C CNN
F 2 "" H 2600 2750 50  0001 C CNN
F 3 "" H 2600 2750 50  0001 C CNN
	1    2600 2750
	1    0    0    -1  
$EndComp
Text GLabel 1050 3450 0    50   Input ~ 0
SDA_5V
Text GLabel 1050 3550 0    50   Input ~ 0
SCL_5V
Text GLabel 1050 3650 0    50   Input ~ 0
CS_5V
Text GLabel 1050 3750 0    50   Input ~ 0
MOSI_5V
Text GLabel 5750 3450 2    50   Input ~ 0
CLK_5V
Text GLabel 5750 3550 2    50   Input ~ 0
LVL_A_5V
Text GLabel 5750 3750 2    50   Input ~ 0
LVL_C_5V
Text GLabel 5750 3650 2    50   Input ~ 0
LVL_B_5V
Text GLabel 2600 2950 0    50   Input ~ 0
SDA
Text GLabel 2600 3050 0    50   Input ~ 0
SCL
Text GLabel 2600 3150 0    50   Input ~ 0
CS
Text GLabel 2600 3250 0    50   Input ~ 0
MOSI
Text GLabel 4000 2950 2    50   Input ~ 0
CLK
Text GLabel 4000 3050 2    50   Input ~ 0
LVL_A
Text GLabel 4000 3150 2    50   Input ~ 0
LVL_B
Text GLabel 4000 3250 2    50   Input ~ 0
LVL_C
$Comp
L power:+3V3 #PWR041
U 1 1 614FF737
P 9600 3900
F 0 "#PWR041" H 9600 3750 50  0001 C CNN
F 1 "+3V3" H 9615 4073 50  0000 C CNN
F 2 "" H 9600 3900 50  0001 C CNN
F 3 "" H 9600 3900 50  0001 C CNN
	1    9600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3800 9800 3800
Wire Wire Line
	9600 3900 9950 3900
Wire Wire Line
	9950 4800 9800 4800
Text GLabel 9950 4000 0    50   Input ~ 0
SDA
Text GLabel 9950 4100 0    50   Input ~ 0
SCL
Text GLabel 9950 4200 0    50   Input ~ 0
CS
Text GLabel 9950 4300 0    50   Input ~ 0
MOSI
Text GLabel 9950 4400 0    50   Input ~ 0
CLK
$Comp
L Connector:Conn_01x11_Male J3
U 1 1 6150509E
P 10150 4300
F 0 "J3" H 10122 4232 50  0000 R CNN
F 1 "Conn_01x11_Male" H 10122 4323 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 10150 4300 50  0001 C CNN
F 3 "~" H 10150 4300 50  0001 C CNN
	1    10150 4300
	-1   0    0    1   
$EndComp
Text GLabel 9950 4500 0    50   Input ~ 0
LVL_A
Text GLabel 9950 4600 0    50   Input ~ 0
LVL_B
Text GLabel 9950 4700 0    50   Input ~ 0
LVL_C
$Comp
L power:+5V #PWR028
U 1 1 6150F17F
P 1650 2850
F 0 "#PWR028" H 1650 2700 50  0001 C CNN
F 1 "+5V" H 1665 3023 50  0000 C CNN
F 2 "" H 1650 2850 50  0001 C CNN
F 3 "" H 1650 2850 50  0001 C CNN
	1    1650 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R23
U 1 1 6151417A
P 1200 3100
F 0 "R23" H 1268 3146 50  0000 L CNN
F 1 "DNP" H 1268 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 1240 3090 50  0001 C CNN
F 3 "~" H 1200 3100 50  0001 C CNN
	1    1200 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R24
U 1 1 61517701
P 1500 3100
F 0 "R24" H 1568 3146 50  0000 L CNN
F 1 "DNP" H 1568 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 1540 3090 50  0001 C CNN
F 3 "~" H 1500 3100 50  0001 C CNN
	1    1500 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R25
U 1 1 61517C71
P 1800 3100
F 0 "R25" H 1868 3146 50  0000 L CNN
F 1 "DNP" H 1868 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 1840 3090 50  0001 C CNN
F 3 "~" H 1800 3100 50  0001 C CNN
	1    1800 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R26
U 1 1 615192FF
P 2100 3100
F 0 "R26" H 2168 3146 50  0000 L CNN
F 1 "DNP" H 2168 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 2140 3090 50  0001 C CNN
F 3 "~" H 2100 3100 50  0001 C CNN
	1    2100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3250 2100 3750
Wire Wire Line
	1050 3750 2100 3750
Connection ~ 2100 3750
Wire Wire Line
	2100 3750 2600 3750
Wire Wire Line
	1800 3250 1800 3650
Connection ~ 1800 3650
Wire Wire Line
	1800 3650 2600 3650
Wire Wire Line
	1050 3550 1500 3550
Wire Wire Line
	1050 3450 1200 3450
Wire Wire Line
	1200 2950 1500 2950
Wire Wire Line
	1500 2950 1800 2950
Connection ~ 1500 2950
Wire Wire Line
	2100 2950 1800 2950
Connection ~ 1800 2950
$Comp
L power:+5V #PWR037
U 1 1 6152ACF0
P 5000 2850
F 0 "#PWR037" H 5000 2700 50  0001 C CNN
F 1 "+5V" H 5015 3023 50  0000 C CNN
F 2 "" H 5000 2850 50  0001 C CNN
F 3 "" H 5000 2850 50  0001 C CNN
	1    5000 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R27
U 1 1 6152ACF6
P 4550 3100
F 0 "R27" H 4618 3146 50  0000 L CNN
F 1 "DNP" H 4618 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 4590 3090 50  0001 C CNN
F 3 "~" H 4550 3100 50  0001 C CNN
	1    4550 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R28
U 1 1 6152ACFC
P 4850 3100
F 0 "R28" H 4918 3146 50  0000 L CNN
F 1 "DNP" H 4918 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 4890 3090 50  0001 C CNN
F 3 "~" H 4850 3100 50  0001 C CNN
	1    4850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R29
U 1 1 6152AD02
P 5150 3100
F 0 "R29" H 5218 3146 50  0000 L CNN
F 1 "DNP" H 5218 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 5190 3090 50  0001 C CNN
F 3 "~" H 5150 3100 50  0001 C CNN
	1    5150 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R31
U 1 1 6152AD08
P 5450 3100
F 0 "R31" H 5518 3146 50  0000 L CNN
F 1 "DNP" H 5518 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 5490 3090 50  0001 C CNN
F 3 "~" H 5450 3100 50  0001 C CNN
	1    5450 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2950 4850 2950
Wire Wire Line
	4850 2950 5000 2950
Connection ~ 4850 2950
Wire Wire Line
	5450 2950 5150 2950
Connection ~ 5150 2950
Wire Wire Line
	1500 3550 1500 3250
Connection ~ 1500 3550
Wire Wire Line
	1500 3550 2600 3550
Wire Wire Line
	1050 3650 1800 3650
Wire Wire Line
	1200 3250 1200 3450
Connection ~ 1200 3450
Wire Wire Line
	1200 3450 2600 3450
Wire Wire Line
	5000 2850 5000 2950
Connection ~ 5000 2950
Wire Wire Line
	5000 2950 5150 2950
Wire Wire Line
	4550 3750 4000 3750
Wire Wire Line
	4550 3250 4550 3750
Wire Wire Line
	5750 3750 4550 3750
Connection ~ 4550 3750
Wire Wire Line
	4000 3650 4850 3650
Wire Wire Line
	4000 3450 5450 3450
Wire Wire Line
	4850 3250 4850 3650
Connection ~ 4850 3650
Wire Wire Line
	5450 3250 5450 3450
Connection ~ 5450 3450
Wire Wire Line
	5450 3450 5750 3450
Wire Wire Line
	4850 3650 5750 3650
Wire Wire Line
	5150 3250 5150 3550
Wire Wire Line
	4000 3550 5150 3550
Connection ~ 5150 3550
Wire Wire Line
	5150 3550 5750 3550
Wire Wire Line
	9650 1500 9350 1500
$Comp
L Analog_ADC:ADS1115IDGS U7
U 1 1 613ED4C8
P 9350 2000
F 0 "U7" H 9350 2681 50  0001 C CNN
F 1 "ADS1115IDGS" H 9350 2590 50  0001 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 9350 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1113.pdf" H 9300 1100 50  0001 C CNN
	1    9350 2000
	1    0    0    -1  
$EndComp
Connection ~ 9350 1500
Wire Wire Line
	7350 1900 7350 2150
Wire Wire Line
	7150 1900 7350 1900
Wire Wire Line
	7350 2150 6400 2150
$Comp
L Device:Opamp_Quad_Generic U?
U 3 1 6155D088
P 6850 1900
AR Path="/613F3D44/6155D088" Ref="U?"  Part="2" 
AR Path="/61409444/6155D088" Ref="U1"  Part="3" 
F 0 "U1" H 6850 2267 50  0000 C CNN
F 1 "RS8554" H 6850 2176 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6850 1900 50  0001 C CNN
F 3 "~" H 6850 1900 50  0001 C CNN
	3    6850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1900 7500 1900
Connection ~ 7350 1900
Wire Wire Line
	6400 2150 6400 2000
Wire Wire Line
	6400 2000 6550 2000
Wire Wire Line
	5750 1800 6550 1800
Connection ~ 5750 1800
$Comp
L Device:C_Small C?
U 1 1 615EA154
P 4350 2650
AR Path="/613FF101/615EA154" Ref="C?"  Part="1" 
AR Path="/61409444/615EA154" Ref="C7"  Part="1" 
F 0 "C7" V 4121 2650 50  0000 C CNN
F 1 "100n" V 4212 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 4350 2650 50  0001 C CNN
F 3 "~" H 4350 2650 50  0001 C CNN
	1    4350 2650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 615EB009
P 4350 2750
F 0 "#PWR035" H 4350 2500 50  0001 C CNN
F 1 "GND" H 4355 2577 50  0000 C CNN
F 2 "" H 4350 2750 50  0001 C CNN
F 3 "" H 4350 2750 50  0001 C CNN
	1    4350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2550 4350 2550
Connection ~ 4350 2550
Wire Wire Line
	4350 2550 4500 2550
$Comp
L Device:C_Small C?
U 1 1 615F0508
P 4250 2200
AR Path="/613FF101/615F0508" Ref="C?"  Part="1" 
AR Path="/61409444/615F0508" Ref="C6"  Part="1" 
F 0 "C6" V 4021 2200 50  0000 C CNN
F 1 "100n" V 4112 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 4250 2200 50  0001 C CNN
F 3 "~" H 4250 2200 50  0001 C CNN
	1    4250 2200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 615F050E
P 4250 2300
F 0 "#PWR034" H 4250 2050 50  0001 C CNN
F 1 "GND" H 4255 2127 50  0000 C CNN
F 2 "" H 4250 2300 50  0001 C CNN
F 3 "" H 4250 2300 50  0001 C CNN
	1    4250 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2050 4000 2100
Wire Wire Line
	4000 2100 4250 2100
Wire Wire Line
	4000 2450 4000 2100
Connection ~ 4000 2100
$EndSCHEMATC