EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1400 1150 0    50   Input ~ 0
Pasak_B
Wire Wire Line
	1400 1150 1400 1300
$Comp
L Device:R_US R10
U 1 1 613E28F9
P 1400 2050
F 0 "R10" H 1468 2096 50  0000 L CNN
F 1 "25m" H 1468 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1440 2040 50  0001 C CNN
F 3 "~" H 1400 2050 50  0001 C CNN
	1    1400 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 613E36B2
P 1400 2200
F 0 "#PWR017" H 1400 1950 50  0001 C CNN
F 1 "GND" H 1405 2027 50  0000 C CNN
F 2 "" H 1400 2200 50  0001 C CNN
F 3 "" H 1400 2200 50  0001 C CNN
	1    1400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1800 1200 1800
Text Label 1200 1800 0    50   ~ 0
R_A
Wire Wire Line
	1400 1900 1400 1800
Text GLabel 1900 2650 0    50   Input ~ 0
Pasak_B
Text GLabel 1150 3350 0    50   Input ~ 0
LVL_B_5V
$Comp
L Device:R_US R11
U 1 1 613E7D7A
P 2750 4200
F 0 "R11" H 2818 4246 50  0000 L CNN
F 1 "400m" H 2818 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.40x3.35mm_HandSolder" V 2790 4190 50  0001 C CNN
F 3 "~" H 2750 4200 50  0001 C CNN
	1    2750 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 613E7D80
P 2750 4350
F 0 "#PWR018" H 2750 4100 50  0001 C CNN
F 1 "GND" H 2755 4177 50  0000 C CNN
F 2 "" H 2750 4350 50  0001 C CNN
F 3 "" H 2750 4350 50  0001 C CNN
	1    2750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3950 2550 3950
Wire Wire Line
	2750 4050 2750 3950
$Comp
L Device:Opamp_Dual_Generic U4
U 1 1 613EB795
P 5250 2300
F 0 "U4" H 5250 2667 50  0000 C CNN
F 1 "RS8552" H 5250 2576 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 5250 2300 50  0001 C CNN
F 3 "~" H 5250 2300 50  0001 C CNN
	1    5250 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R13
U 1 1 613F6EC7
P 4400 2200
F 0 "R13" V 4195 2200 50  0000 C CNN
F 1 "10M" V 4286 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4440 2190 50  0001 C CNN
F 3 "~" H 4400 2200 50  0001 C CNN
	1    4400 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 2200 4700 2200
Wire Wire Line
	4250 2200 3850 2200
$Comp
L Device:R_US R14
U 1 1 613F7F66
P 4400 2500
F 0 "R14" V 4195 2500 50  0000 C CNN
F 1 "10M" V 4286 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4440 2490 50  0001 C CNN
F 3 "~" H 4400 2500 50  0001 C CNN
	1    4400 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R15
U 1 1 613F8BC5
P 4400 2800
F 0 "R15" V 4195 2800 50  0000 C CNN
F 1 "10M" V 4286 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4440 2790 50  0001 C CNN
F 3 "~" H 4400 2800 50  0001 C CNN
	1    4400 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 2500 3850 2500
Wire Wire Line
	4250 2800 3850 2800
Wire Wire Line
	4550 2500 4700 2500
Wire Wire Line
	4700 2500 4700 2200
Connection ~ 4700 2200
Wire Wire Line
	4700 2200 4550 2200
Wire Wire Line
	4550 2800 4700 2800
Wire Wire Line
	4700 2800 4700 2500
Connection ~ 4700 2500
Text Label 3900 2200 0    50   ~ 0
R_A
Text Label 3900 2500 0    50   ~ 0
R_B
Text Label 3900 2800 0    50   ~ 0
R_C
$Comp
L Device:R_US R20
U 1 1 613FF83E
P 5750 2450
F 0 "R20" H 5818 2496 50  0000 L CNN
F 1 "1k" H 5818 2405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5790 2440 50  0001 C CNN
F 3 "~" H 5750 2450 50  0001 C CNN
	1    5750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2300 5750 2300
Wire Wire Line
	4950 2400 4850 2400
Wire Wire Line
	4850 2400 4850 2700
Wire Wire Line
	4850 2700 5750 2700
Wire Wire Line
	5750 2700 5750 2600
Wire Wire Line
	5750 2700 5750 2800
Connection ~ 5750 2700
$Comp
L power:GND #PWR024
U 1 1 61403313
P 5750 3100
F 0 "#PWR024" H 5750 2850 50  0001 C CNN
F 1 "GND" H 5755 2927 50  0000 C CNN
F 2 "" H 5750 3100 50  0001 C CNN
F 3 "" H 5750 3100 50  0001 C CNN
	1    5750 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U4
U 3 1 61403C04
P 5150 4250
F 0 "U4" H 5108 4296 50  0000 L CNN
F 1 "RS8552" H 5108 4205 50  0000 L CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 5150 4250 50  0001 C CNN
F 3 "~" H 5150 4250 50  0001 C CNN
	3    5150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2300 6100 2300
Connection ~ 5750 2300
Text GLabel 6100 2300 2    50   Input ~ 0
ADC_3
$Comp
L power:+5V #PWR020
U 1 1 613F5609
P 3950 3650
F 0 "#PWR020" H 3950 3500 50  0001 C CNN
F 1 "+5V" H 3965 3823 50  0000 C CNN
F 2 "" H 3950 3650 50  0001 C CNN
F 3 "" H 3950 3650 50  0001 C CNN
	1    3950 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 613F70B2
P 3950 4900
F 0 "#PWR023" H 3950 4650 50  0001 C CNN
F 1 "GND" H 3955 4727 50  0000 C CNN
F 2 "" H 3950 4900 50  0001 C CNN
F 3 "" H 3950 4900 50  0001 C CNN
	1    3950 4900
	1    0    0    -1  
$EndComp
Connection ~ 5050 3950
$Comp
L Device:C_Small C5
U 1 1 6146336A
P 5650 3950
F 0 "C5" V 5421 3950 50  0000 C CNN
F 1 "100n" V 5512 3950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 5650 3950 50  0001 C CNN
F 3 "~" H 5650 3950 50  0001 C CNN
	1    5650 3950
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 61463A28
P 5600 4900
F 0 "C4" V 5371 4900 50  0000 C CNN
F 1 "100n" V 5462 4900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 5600 4900 50  0001 C CNN
F 3 "~" H 5600 4900 50  0001 C CNN
	1    5600 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 61464306
P 6100 4900
F 0 "#PWR025" H 6100 4650 50  0001 C CNN
F 1 "GND" H 6105 4727 50  0000 C CNN
F 2 "" H 6100 4900 50  0001 C CNN
F 3 "" H 6100 4900 50  0001 C CNN
	1    6100 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 61464779
P 6150 3950
F 0 "#PWR026" H 6150 3700 50  0001 C CNN
F 1 "GND" H 6155 3777 50  0000 C CNN
F 2 "" H 6150 3950 50  0001 C CNN
F 3 "" H 6150 3950 50  0001 C CNN
	1    6150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3950 5050 3950
Wire Wire Line
	5750 3950 6150 3950
Wire Wire Line
	6100 4900 5700 4900
Wire Wire Line
	5500 4900 5050 4900
Text Label 2550 6100 0    50   ~ 0
R_C
Wire Wire Line
	2750 6200 2750 6100
Connection ~ 2750 6100
Wire Wire Line
	2750 6100 2550 6100
$Comp
L power:GND #PWR019
U 1 1 613E9B1D
P 2750 6500
F 0 "#PWR019" H 2750 6250 50  0001 C CNN
F 1 "GND" H 2755 6327 50  0000 C CNN
F 2 "" H 2750 6500 50  0001 C CNN
F 3 "" H 2750 6500 50  0001 C CNN
	1    2750 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R12
U 1 1 613E9B17
P 2750 6350
F 0 "R12" H 2818 6396 50  0000 L CNN
F 1 "6.2" H 2818 6305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2790 6340 50  0001 C CNN
F 3 "~" H 2750 6350 50  0001 C CNN
	1    2750 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM_US RV2
U 1 1 615BA648
P 5750 2950
F 0 "RV2" H 5682 2996 50  0000 R CNN
F 1 "50" H 5682 2905 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3266W_Vertical" H 5750 2950 50  0001 C CNN
F 3 "~" H 5750 2950 50  0001 C CNN
	1    5750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2950 5900 2800
Wire Wire Line
	5900 2800 5750 2800
Connection ~ 5750 2800
Wire Wire Line
	5050 4550 5050 4900
$Comp
L power:-2V5 #PWR022
U 1 1 61406039
P 3950 4550
F 0 "#PWR022" H 3950 4650 50  0001 C CNN
F 1 "-2V5" H 3965 4723 50  0000 C CNN
F 2 "" H 3950 4550 50  0001 C CNN
F 3 "" H 3950 4550 50  0001 C CNN
	1    3950 4550
	-1   0    0    1   
$EndComp
$Comp
L power:+2V5 #PWR021
U 1 1 61404F3B
P 3950 3950
F 0 "#PWR021" H 3950 3800 50  0001 C CNN
F 1 "+2V5" H 3965 4123 50  0000 C CNN
F 2 "" H 3950 3950 50  0001 C CNN
F 3 "" H 3950 3950 50  0001 C CNN
	1    3950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3650 5050 3950
$Comp
L Device:R_US R?
U 1 1 615BF29A
P 4550 3650
AR Path="/613F3D44/615BF29A" Ref="R?"  Part="1" 
AR Path="/613FF101/615BF29A" Ref="R16"  Part="1" 
F 0 "R16" V 4345 3650 50  0000 C CNN
F 1 "0" V 4436 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 4590 3640 50  0001 C CNN
F 3 "~" H 4550 3650 50  0001 C CNN
	1    4550 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 615CD95B
P 4550 3950
AR Path="/613F3D44/615CD95B" Ref="R?"  Part="1" 
AR Path="/613FF101/615CD95B" Ref="R17"  Part="1" 
F 0 "R17" V 4345 3950 50  0000 C CNN
F 1 "0" V 4436 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 4590 3940 50  0001 C CNN
F 3 "~" H 4550 3950 50  0001 C CNN
	1    4550 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 3650 4400 3650
Wire Wire Line
	4700 3650 5050 3650
Wire Wire Line
	3950 3950 4400 3950
Wire Wire Line
	4700 3950 5050 3950
$Comp
L Device:R_US R?
U 1 1 615D34B1
P 4550 4550
AR Path="/613F3D44/615D34B1" Ref="R?"  Part="1" 
AR Path="/613FF101/615D34B1" Ref="R18"  Part="1" 
F 0 "R18" V 4345 4550 50  0000 C CNN
F 1 "0" V 4436 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 4590 4540 50  0001 C CNN
F 3 "~" H 4550 4550 50  0001 C CNN
	1    4550 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 4550 5050 4550
$Comp
L Device:R_US R?
U 1 1 615D4076
P 4550 4900
AR Path="/613F3D44/615D4076" Ref="R?"  Part="1" 
AR Path="/613FF101/615D4076" Ref="R19"  Part="1" 
F 0 "R19" V 4345 4900 50  0000 C CNN
F 1 "0" V 4436 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 4590 4890 50  0001 C CNN
F 3 "~" H 4550 4900 50  0001 C CNN
	1    4550 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 4900 5050 4900
Wire Wire Line
	4400 4550 3950 4550
Wire Wire Line
	3950 4900 4400 4900
$Comp
L Device:Q_NMOS_DGS Q7
U 1 1 616CCFBF
P 1300 1500
F 0 "Q7" H 1505 1546 50  0000 L CNN
F 1 "LNC10R180" H 1505 1455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1500 1600 50  0001 C CNN
F 3 "~" H 1300 1500 50  0001 C CNN
	1    1300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1700 1400 1800
Connection ~ 1400 1800
$Comp
L PMN30ENEAX:PMN30ENEAX Q5
U 1 1 616D459D
P 1150 3150
F 0 "Q5" H 1355 3226 50  0000 L CNN
F 1 "SI3430DV" H 1355 3135 50  0000 L CNN
F 2 "Package_SO:TSOP-6_1.65x3.05mm_P0.95mm" H 1350 3250 50  0001 C CNN
F 3 "~" H 1150 3150 50  0001 C CNN
	1    1150 3150
	1    0    0    -1  
$EndComp
Connection ~ 2750 3950
Wire Wire Line
	1900 2650 1900 2800
Text Label 2600 3950 0    50   ~ 0
R_B
Wire Wire Line
	2750 3350 2750 3950
Wire Wire Line
	1900 2800 2750 2800
Wire Wire Line
	2750 2800 2750 3150
Wire Wire Line
	2750 3250 2750 3150
Connection ~ 2750 3150
Wire Wire Line
	1150 3250 1150 3150
Wire Wire Line
	1150 3150 1150 2800
Wire Wire Line
	1150 2800 1900 2800
Connection ~ 1150 3150
Connection ~ 1900 2800
Text GLabel 1900 4750 0    50   Input ~ 0
Pasak_B
$Comp
L PMN30ENEAX:PMN30ENEAX Q6
U 1 1 61700F15
P 1150 5250
F 0 "Q6" H 1355 5326 50  0000 L CNN
F 1 "SI3430DV" H 1355 5235 50  0000 L CNN
F 2 "Package_SO:TSOP-6_1.65x3.05mm_P0.95mm" H 1350 5350 50  0001 C CNN
F 3 "~" H 1150 5250 50  0001 C CNN
	1    1150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4750 1900 4900
Wire Wire Line
	1900 4900 2750 4900
Wire Wire Line
	2750 4900 2750 5250
Wire Wire Line
	2750 5350 2750 5250
Connection ~ 2750 5250
Wire Wire Line
	1150 5350 1150 5250
Wire Wire Line
	1150 5250 1150 4900
Wire Wire Line
	1150 4900 1900 4900
Connection ~ 1150 5250
Connection ~ 1900 4900
Wire Wire Line
	2750 5400 2750 5450
Connection ~ 2750 5450
Wire Wire Line
	2750 5450 2750 6100
Text GLabel 1150 5450 0    50   Input ~ 0
LVL_C_5V
Text GLabel 1100 1500 0    50   Input ~ 0
LVL_A_5V
Connection ~ 5050 4550
Connection ~ 5050 4900
$Comp
L Regulator_SwitchedCapacitor:LM2776 U?
U 1 1 61CB0340
P 7900 2700
AR Path="/61409444/61CB0340" Ref="U?"  Part="1" 
AR Path="/614B3A1B/61CB0340" Ref="U?"  Part="1" 
AR Path="/613FF101/61CB0340" Ref="U?"  Part="1" 
F 0 "U?" H 8344 2696 50  0000 L CNN
F 1 "LM2776" H 8344 2605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 7950 2350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2776.pdf" H 6050 3950 50  0001 C CNN
	1    7900 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61CB0346
P 7900 2000
AR Path="/61409444/61CB0346" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/61CB0346" Ref="#PWR?"  Part="1" 
AR Path="/613FF101/61CB0346" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7900 1850 50  0001 C CNN
F 1 "+5V" H 7915 2173 50  0000 C CNN
F 2 "" H 7900 2000 50  0001 C CNN
F 3 "" H 7900 2000 50  0001 C CNN
	1    7900 2000
	1    0    0    -1  
$EndComp
Connection ~ 7900 2000
Wire Wire Line
	7900 2000 7900 2100
$Comp
L Device:C_Small C?
U 1 1 61CB034E
P 8300 2200
AR Path="/61409444/61CB034E" Ref="C?"  Part="1" 
AR Path="/614B3A1B/61CB034E" Ref="C?"  Part="1" 
AR Path="/613FF101/61CB034E" Ref="C?"  Part="1" 
F 0 "C?" H 8208 2154 50  0000 R CNN
F 1 "2.2u" H 8208 2245 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 8300 2200 50  0001 C CNN
F 3 "~" H 8300 2200 50  0001 C CNN
	1    8300 2200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CB0354
P 8300 2300
AR Path="/61409444/61CB0354" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/61CB0354" Ref="#PWR?"  Part="1" 
AR Path="/613FF101/61CB0354" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8300 2050 50  0001 C CNN
F 1 "GND" H 8305 2127 50  0000 C CNN
F 2 "" H 8300 2300 50  0001 C CNN
F 3 "" H 8300 2300 50  0001 C CNN
	1    8300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2100 7900 2100
Connection ~ 7900 2100
Wire Wire Line
	7900 2100 7900 2400
Wire Wire Line
	7350 2000 7350 2600
Wire Wire Line
	7350 2600 7500 2600
Wire Wire Line
	7350 2000 7900 2000
$Comp
L Device:C_Small C?
U 1 1 61CB0360
P 7050 2800
AR Path="/61409444/61CB0360" Ref="C?"  Part="1" 
AR Path="/614B3A1B/61CB0360" Ref="C?"  Part="1" 
AR Path="/613FF101/61CB0360" Ref="C?"  Part="1" 
F 0 "C?" H 7142 2846 50  0000 L CNN
F 1 "1u" H 7142 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 7050 2800 50  0001 C CNN
F 3 "~" H 7050 2800 50  0001 C CNN
	1    7050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2700 7500 2700
Wire Wire Line
	7500 2900 7050 2900
$Comp
L Device:C_Small C?
U 1 1 61CB0368
P 8850 2700
AR Path="/61409444/61CB0368" Ref="C?"  Part="1" 
AR Path="/614B3A1B/61CB0368" Ref="C?"  Part="1" 
AR Path="/613FF101/61CB0368" Ref="C?"  Part="1" 
F 0 "C?" H 8758 2654 50  0000 R CNN
F 1 "2.2u" H 8758 2745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 8850 2700 50  0001 C CNN
F 3 "~" H 8850 2700 50  0001 C CNN
	1    8850 2700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61CB036E
P 8850 2800
AR Path="/61409444/61CB036E" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/61CB036E" Ref="#PWR?"  Part="1" 
AR Path="/613FF101/61CB036E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8850 2550 50  0001 C CNN
F 1 "GND" H 8855 2627 50  0000 C CNN
F 2 "" H 8850 2800 50  0001 C CNN
F 3 "" H 8850 2800 50  0001 C CNN
	1    8850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2600 8850 2600
$Comp
L power:-5V #PWR?
U 1 1 61CB0375
P 9400 2600
AR Path="/61409444/61CB0375" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/61CB0375" Ref="#PWR?"  Part="1" 
AR Path="/613FF101/61CB0375" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9400 2700 50  0001 C CNN
F 1 "-5V" H 9415 2773 50  0000 C CNN
F 2 "" H 9400 2600 50  0001 C CNN
F 3 "" H 9400 2600 50  0001 C CNN
	1    9400 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2600 8850 2600
Connection ~ 8850 2600
$Comp
L Regulator_Linear:LM337L_TO92 U?
U 1 1 61CB037D
P 7950 5350
AR Path="/61409444/61CB037D" Ref="U?"  Part="1" 
AR Path="/614B3A1B/61CB037D" Ref="U?"  Part="1" 
AR Path="/613FF101/61CB037D" Ref="U?"  Part="1" 
F 0 "U?" H 7950 5201 50  0000 C CNN
F 1 "LM337L_TO92" H 7950 5110 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7950 5150 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm337l.pdf" H 7950 5350 50  0001 C CNN
	1    7950 5350
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 61CB0383
P 7350 5350
AR Path="/61409444/61CB0383" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/61CB0383" Ref="#PWR?"  Part="1" 
AR Path="/613FF101/61CB0383" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 5450 50  0001 C CNN
F 1 "-5V" H 7365 5523 50  0000 C CNN
F 2 "" H 7350 5350 50  0001 C CNN
F 3 "" H 7350 5350 50  0001 C CNN
	1    7350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5350 7350 5350
$Comp
L power:-2V5 #PWR?
U 1 1 61CB038A
P 8700 5350
AR Path="/61409444/61CB038A" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/61CB038A" Ref="#PWR?"  Part="1" 
AR Path="/613FF101/61CB038A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8700 5450 50  0001 C CNN
F 1 "-2V5" H 8715 5523 50  0000 C CNN
F 2 "" H 8700 5350 50  0001 C CNN
F 3 "" H 8700 5350 50  0001 C CNN
	1    8700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5350 8400 5350
$Comp
L Device:R_US R?
U 1 1 61CB0391
P 8400 5200
AR Path="/61409444/61CB0391" Ref="R?"  Part="1" 
AR Path="/614B3A1B/61CB0391" Ref="R?"  Part="1" 
AR Path="/613FF101/61CB0391" Ref="R?"  Part="1" 
F 0 "R?" H 8468 5246 50  0000 L CNN
F 1 "180" H 8468 5155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8440 5190 50  0001 C CNN
F 3 "~" H 8400 5200 50  0001 C CNN
	1    8400 5200
	1    0    0    -1  
$EndComp
Connection ~ 8400 5350
Wire Wire Line
	8400 5350 8250 5350
$Comp
L Device:R_US R?
U 1 1 61CB0399
P 8400 4900
AR Path="/61409444/61CB0399" Ref="R?"  Part="1" 
AR Path="/614B3A1B/61CB0399" Ref="R?"  Part="1" 
AR Path="/613FF101/61CB0399" Ref="R?"  Part="1" 
F 0 "R?" H 8468 4946 50  0000 L CNN
F 1 "180" H 8468 4855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8440 4890 50  0001 C CNN
F 3 "~" H 8400 4900 50  0001 C CNN
	1    8400 4900
	1    0    0    -1  
$EndComp
Connection ~ 8400 5050
Wire Wire Line
	7950 5050 8400 5050
$Comp
L power:GND #PWR?
U 1 1 61CB03A1
P 8550 4750
AR Path="/61409444/61CB03A1" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/61CB03A1" Ref="#PWR?"  Part="1" 
AR Path="/613FF101/61CB03A1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8550 4500 50  0001 C CNN
F 1 "GND" V 8555 4622 50  0000 R CNN
F 2 "" H 8550 4750 50  0001 C CNN
F 3 "" H 8550 4750 50  0001 C CNN
	1    8550 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 4750 8550 4750
$Comp
L Regulator_Linear:AP2127N-2.5 U?
U 1 1 61CB03A8
P 8100 4150
AR Path="/61409444/61CB03A8" Ref="U?"  Part="1" 
AR Path="/614B3A1B/61CB03A8" Ref="U?"  Part="1" 
AR Path="/613FF101/61CB03A8" Ref="U?"  Part="1" 
F 0 "U?" H 8100 4392 50  0000 C CNN
F 1 "XC6206P252MR" H 8100 4301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8100 4375 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AP2127.pdf" H 8100 4150 50  0001 C CNN
	1    8100 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61CB03AE
P 7400 4150
AR Path="/61409444/61CB03AE" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/61CB03AE" Ref="#PWR?"  Part="1" 
AR Path="/613FF101/61CB03AE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7400 4000 50  0001 C CNN
F 1 "+5V" H 7415 4323 50  0000 C CNN
F 2 "" H 7400 4150 50  0001 C CNN
F 3 "" H 7400 4150 50  0001 C CNN
	1    7400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4150 7800 4150
$Comp
L power:GND #PWR?
U 1 1 61CB03B5
P 8100 4450
AR Path="/61409444/61CB03B5" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/61CB03B5" Ref="#PWR?"  Part="1" 
AR Path="/613FF101/61CB03B5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8100 4200 50  0001 C CNN
F 1 "GND" H 8105 4277 50  0000 C CNN
F 2 "" H 8100 4450 50  0001 C CNN
F 3 "" H 8100 4450 50  0001 C CNN
	1    8100 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 61CB03BB
P 8800 4150
AR Path="/61409444/61CB03BB" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/61CB03BB" Ref="#PWR?"  Part="1" 
AR Path="/613FF101/61CB03BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8800 4000 50  0001 C CNN
F 1 "+2V5" H 8815 4323 50  0000 C CNN
F 2 "" H 8800 4150 50  0001 C CNN
F 3 "" H 8800 4150 50  0001 C CNN
	1    8800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4150 8400 4150
$Comp
L power:GND #PWR?
U 1 1 61CB03C2
P 7900 3100
AR Path="/61409444/61CB03C2" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/61CB03C2" Ref="#PWR?"  Part="1" 
AR Path="/613FF101/61CB03C2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7900 2850 50  0001 C CNN
F 1 "GND" H 7905 2927 50  0000 C CNN
F 2 "" H 7900 3100 50  0001 C CNN
F 3 "" H 7900 3100 50  0001 C CNN
	1    7900 3100
	1    0    0    -1  
$EndComp
Wire Notes Line
	6700 1100 6700 5700
Wire Notes Line
	3450 1050 3450 7400
$EndSCHEMATC
