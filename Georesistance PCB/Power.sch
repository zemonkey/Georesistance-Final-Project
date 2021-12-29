EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7650 1250 7200 1250
Wire Wire Line
	7950 1250 8400 1250
Wire Wire Line
	4600 2000 4600 2050
Connection ~ 4600 2000
Connection ~ 9450 1650
Wire Wire Line
	9850 1650 9450 1650
Text GLabel 9850 1650 2    50   Input ~ 0
Pasak_A
Wire Wire Line
	8400 1250 8400 1650
Connection ~ 8400 1650
Connection ~ 8850 1650
Wire Wire Line
	8850 1650 8400 1650
Wire Wire Line
	8150 1650 8400 1650
Connection ~ 8850 1950
Wire Wire Line
	8400 1950 8850 1950
Connection ~ 8400 1950
Wire Wire Line
	7850 1950 8400 1950
$Comp
L Device:R_US R?
U 1 1 614DD62F
P 8400 1800
AR Path="/61409444/614DD62F" Ref="R?"  Part="1" 
AR Path="/614B3A1B/614DD62F" Ref="R38"  Part="1" 
F 0 "R38" H 8468 1846 50  0000 L CNN
F 1 "180" H 8468 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8440 1790 50  0001 C CNN
F 3 "~" H 8400 1800 50  0001 C CNN
	1    8400 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV?
U 1 1 614DD635
P 8400 2100
AR Path="/61409444/614DD635" Ref="RV?"  Part="1" 
AR Path="/614B3A1B/614DD635" Ref="RV3"  Part="1" 
F 0 "RV3" H 8330 2146 50  0000 R CNN
F 1 "1k" H 8330 2055 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 8400 2100 50  0001 C CNN
F 3 "~" H 8400 2100 50  0001 C CNN
	1    8400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2100 8550 2250
Wire Wire Line
	8550 2250 8400 2250
Connection ~ 8400 2250
Wire Wire Line
	8850 1650 9450 1650
$Comp
L Device:D D?
U 1 1 614DD63F
P 8850 1800
AR Path="/61409444/614DD63F" Ref="D?"  Part="1" 
AR Path="/614B3A1B/614DD63F" Ref="D2"  Part="1" 
F 0 "D2" H 8850 2017 50  0000 C CNN
F 1 "DSR1M" H 8850 1926 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 8850 1800 50  0001 C CNN
F 3 "~" H 8850 1800 50  0001 C CNN
	1    8850 1800
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 614DD645
P 7800 1250
AR Path="/61409444/614DD645" Ref="D?"  Part="1" 
AR Path="/614B3A1B/614DD645" Ref="D1"  Part="1" 
F 0 "D1" H 7800 1467 50  0000 C CNN
F 1 "DSR1M" H 7800 1376 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 7800 1250 50  0001 C CNN
F 3 "~" H 7800 1250 50  0001 C CNN
	1    7800 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614DD64B
P 8850 2150
AR Path="/61409444/614DD64B" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/614DD64B" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 8850 1900 50  0001 C CNN
F 1 "GND" H 8855 1977 50  0000 C CNN
F 2 "" H 8850 2150 50  0001 C CNN
F 3 "" H 8850 2150 50  0001 C CNN
	1    8850 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 614DD651
P 8850 2050
AR Path="/61409444/614DD651" Ref="C?"  Part="1" 
AR Path="/614B3A1B/614DD651" Ref="C15"  Part="1" 
F 0 "C15" H 8941 2096 50  0000 L CNN
F 1 "100u" H 8941 2005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 8850 2050 50  0001 C CNN
F 3 "~" H 8850 2050 50  0001 C CNN
	1    8850 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614DD657
P 9450 1850
AR Path="/61409444/614DD657" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/614DD657" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 9450 1600 50  0001 C CNN
F 1 "GND" H 9455 1677 50  0000 C CNN
F 2 "" H 9450 1850 50  0001 C CNN
F 3 "" H 9450 1850 50  0001 C CNN
	1    9450 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 614DD65D
P 9450 1750
AR Path="/61409444/614DD65D" Ref="C?"  Part="1" 
AR Path="/614B3A1B/614DD65D" Ref="C16"  Part="1" 
F 0 "C16" H 9541 1796 50  0000 L CNN
F 1 "100u" H 9541 1705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 9450 1750 50  0001 C CNN
F 3 "~" H 9450 1750 50  0001 C CNN
	1    9450 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614DD663
P 8400 2550
AR Path="/61409444/614DD663" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/614DD663" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 8400 2300 50  0001 C CNN
F 1 "GND" H 8405 2377 50  0000 C CNN
F 2 "" H 8400 2550 50  0001 C CNN
F 3 "" H 8400 2550 50  0001 C CNN
	1    8400 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 614DD669
P 8400 2400
AR Path="/61409444/614DD669" Ref="R?"  Part="1" 
AR Path="/614B3A1B/614DD669" Ref="R39"  Part="1" 
F 0 "R39" H 8468 2446 50  0000 L CNN
F 1 "10k" H 8468 2355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8440 2390 50  0001 C CNN
F 3 "~" H 8400 2400 50  0001 C CNN
	1    8400 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1250 7200 1650
Connection ~ 7200 1650
Wire Wire Line
	6900 1650 7200 1650
Wire Wire Line
	7550 1650 7200 1650
Wire Wire Line
	7200 1650 7200 1700
$Comp
L power:GND #PWR?
U 1 1 614DD674
P 7200 1900
AR Path="/61409444/614DD674" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/614DD674" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 7200 1650 50  0001 C CNN
F 1 "GND" H 7205 1727 50  0000 C CNN
F 2 "" H 7200 1900 50  0001 C CNN
F 3 "" H 7200 1900 50  0001 C CNN
	1    7200 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 614DD67A
P 7200 1800
AR Path="/61409444/614DD67A" Ref="C?"  Part="1" 
AR Path="/614B3A1B/614DD67A" Ref="C14"  Part="1" 
F 0 "C14" H 7291 1846 50  0000 L CNN
F 1 "100u" H 7291 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 7200 1800 50  0001 C CNN
F 3 "~" H 7200 1800 50  0001 C CNN
	1    7200 1800
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM350_TO220 U?
U 1 1 614DD680
P 7850 1650
AR Path="/61409444/614DD680" Ref="U?"  Part="1" 
AR Path="/614B3A1B/614DD680" Ref="U10"  Part="1" 
F 0 "U10" H 7850 1892 50  0000 C CNN
F 1 "LM350_TO220" H 7850 1801 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7850 1900 50  0001 C CIN
F 3 "https://www.onsemi.com/pub/Collateral/LM350-D.pdf" H 7850 1650 50  0001 C CNN
	1    7850 1650
	1    0    0    -1  
$EndComp
Connection ~ 6700 2000
Wire Wire Line
	6700 2350 6250 2350
Wire Wire Line
	6700 2000 6700 2350
Wire Wire Line
	6700 2000 6700 1950
Wire Wire Line
	6250 2000 6700 2000
Connection ~ 4600 1650
Wire Wire Line
	4600 1650 6500 1650
Wire Wire Line
	5950 2350 5350 2350
Connection ~ 5350 2000
Wire Wire Line
	5950 2000 5350 2000
Wire Wire Line
	5350 2300 5350 2350
Wire Wire Line
	4600 2000 5350 2000
$Comp
L Device:R_US R?
U 1 1 614DD69E
P 5350 2150
AR Path="/61409444/614DD69E" Ref="R?"  Part="1" 
AR Path="/614B3A1B/614DD69E" Ref="R35"  Part="1" 
F 0 "R35" H 5418 2196 50  0000 L CNN
F 1 "1k" H 5418 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5390 2140 50  0001 C CNN
F 3 "~" H 5350 2150 50  0001 C CNN
	1    5350 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614DD6A4
P 4600 2250
AR Path="/61409444/614DD6A4" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/614DD6A4" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 4600 2000 50  0001 C CNN
F 1 "GND" H 4605 2077 50  0000 C CNN
F 2 "" H 4600 2250 50  0001 C CNN
F 3 "" H 4600 2250 50  0001 C CNN
	1    4600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1950 4600 2000
Wire Wire Line
	3850 1650 4600 1650
$Comp
L Device:CP1_Small C?
U 1 1 614DD6AC
P 4600 2150
AR Path="/61409444/614DD6AC" Ref="C?"  Part="1" 
AR Path="/614B3A1B/614DD6AC" Ref="C12"  Part="1" 
F 0 "C12" H 4691 2196 50  0000 L CNN
F 1 "100u" H 4691 2105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 4600 2150 50  0001 C CNN
F 3 "~" H 4600 2150 50  0001 C CNN
	1    4600 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 614DD6B2
P 4600 1800
AR Path="/61409444/614DD6B2" Ref="R?"  Part="1" 
AR Path="/614B3A1B/614DD6B2" Ref="R34"  Part="1" 
F 0 "R34" H 4668 1846 50  0000 L CNN
F 1 "1k" H 4668 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4640 1790 50  0001 C CNN
F 3 "~" H 4600 1800 50  0001 C CNN
	1    4600 1800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 614DD6B8
P 3850 1650
AR Path="/61409444/614DD6B8" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/614DD6B8" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 3850 1500 50  0001 C CNN
F 1 "VCC" H 3865 1823 50  0000 C CNN
F 2 "" H 3850 1650 50  0001 C CNN
F 3 "" H 3850 1650 50  0001 C CNN
	1    3850 1650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:TIP122 Q?
U 1 1 614DD6BE
P 6700 1750
AR Path="/61409444/614DD6BE" Ref="Q?"  Part="1" 
AR Path="/614B3A1B/614DD6BE" Ref="Q8"  Part="1" 
F 0 "Q8" V 7044 1750 50  0000 C CNN
F 1 "TIP122" V 6953 1750 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6900 1675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/TIP120-D.PDF" H 6700 1750 50  0001 L CNN
	1    6700 1750
	0    -1   -1   0   
$EndComp
Connection ~ 5350 2350
$Comp
L Device:CP1_Small C?
U 1 1 614DD710
P 5350 2500
AR Path="/61409444/614DD710" Ref="C?"  Part="1" 
AR Path="/614B3A1B/614DD710" Ref="C13"  Part="1" 
F 0 "C13" H 5441 2546 50  0000 L CNN
F 1 "100u" H 5441 2455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 5350 2500 50  0001 C CNN
F 3 "~" H 5350 2500 50  0001 C CNN
	1    5350 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 614DD716
P 5350 2600
AR Path="/61409444/614DD716" Ref="#PWR?"  Part="1" 
AR Path="/614B3A1B/614DD716" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 5350 2350 50  0001 C CNN
F 1 "GND" H 5355 2427 50  0000 C CNN
F 2 "" H 5350 2600 50  0001 C CNN
F 3 "" H 5350 2600 50  0001 C CNN
	1    5350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2350 5350 2400
$Comp
L Device:R_US R36
U 1 1 615D82EC
P 6100 2000
F 0 "R36" V 5895 2000 50  0000 C CNN
F 1 "0" V 5986 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 6140 1990 50  0001 C CNN
F 3 "~" H 6100 2000 50  0001 C CNN
	1    6100 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R37
U 1 1 615D9CB1
P 6100 2350
F 0 "R37" V 6305 2350 50  0000 C CNN
F 1 "0" V 6214 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 6140 2340 50  0001 C CNN
F 3 "~" H 6100 2350 50  0001 C CNN
	1    6100 2350
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
