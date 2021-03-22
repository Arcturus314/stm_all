EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1300 2650 500  550 
U 5F6CE680
F0 "hvpower" 50
F1 "hvpower.sch" 50
F2 "HV+" O R 1800 2750 50 
F3 "HV-" O R 1800 2950 50 
F4 "GND" O R 1800 2850 50 
$EndSheet
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5F7364CF
P 2400 2850
F 0 "J2" H 2372 2874 50  0000 R CNN
F 1 "Conn_01x03_Male" H 2372 2783 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2400 2850 50  0001 C CNN
F 3 "~" H 2400 2850 50  0001 C CNN
	1    2400 2850
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5F7378CF
P 2350 2050
F 0 "J1" H 2322 2074 50  0000 R CNN
F 1 "Conn_01x03_Male" H 2322 1983 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2350 2050 50  0001 C CNN
F 3 "~" H 2350 2050 50  0001 C CNN
	1    2350 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1800 2750 1900 2750
Wire Wire Line
	1800 2850 1900 2850
Wire Wire Line
	1800 2950 2150 2950
Wire Wire Line
	1900 2750 1900 2100
Wire Wire Line
	1900 1950 2150 1950
Connection ~ 1900 2750
Wire Wire Line
	1900 2750 2200 2750
Wire Wire Line
	2000 2850 2000 2600
Wire Wire Line
	2000 2050 2150 2050
Connection ~ 2000 2850
Wire Wire Line
	2000 2850 2050 2850
Wire Wire Line
	2150 2950 2150 2300
Connection ~ 2150 2950
Wire Wire Line
	2150 2950 2200 2950
$Comp
L Device:C C5
U 1 1 5F74CD66
P 1600 2250
F 0 "C5" H 1715 2296 50  0000 L CNN
F 1 "1uF" H 1715 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1638 2100 50  0001 C CNN
F 3 "~" H 1600 2250 50  0001 C CNN
	1    1600 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F74E2DC
P 2400 2450
F 0 "C6" H 2515 2496 50  0000 L CNN
F 1 "1uF" H 2515 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2438 2300 50  0001 C CNN
F 3 "~" H 2400 2450 50  0001 C CNN
	1    2400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2300 2150 2300
Connection ~ 2150 2300
Wire Wire Line
	2150 2300 2150 2200
Connection ~ 2000 2600
Wire Wire Line
	2000 2600 2000 2400
Wire Wire Line
	2000 2600 2400 2600
Wire Wire Line
	1600 2100 1900 2100
Connection ~ 1900 2100
Wire Wire Line
	1900 2100 1900 1950
Wire Wire Line
	1600 2400 2000 2400
Connection ~ 2000 2400
Wire Wire Line
	2000 2400 2000 2100
$Comp
L Connector:AudioJack2 J4
U 1 1 5F816C05
P 2150 3250
F 0 "J4" V 2228 3120 50  0000 R CNN
F 1 "AudioJack2" V 2137 3120 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ-3523-SMT_Horizontal" H 2150 3250 50  0001 C CNN
F 3 "~" H 2150 3250 50  0001 C CNN
	1    2150 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 3050 2050 2850
Connection ~ 2050 2850
Wire Wire Line
	2050 2850 2200 2850
Wire Wire Line
	2150 3050 2150 2950
$Comp
L Connector:Conn_01x03_Female J5
U 1 1 5F705291
P 1950 1550
F 0 "J5" V 1888 1362 50  0000 R CNN
F 1 "Conn_01x03_Female" V 1797 1362 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 1950 1550 50  0001 C CNN
F 3 "~" H 1950 1550 50  0001 C CNN
	1    1950 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 1750 1850 1950
Wire Wire Line
	1850 1950 1900 1950
Connection ~ 1900 1950
Wire Wire Line
	1950 1750 1950 2100
Wire Wire Line
	1950 2100 2000 2100
Connection ~ 2000 2100
Wire Wire Line
	2000 2100 2000 2050
Wire Wire Line
	2050 1750 2050 2200
Wire Wire Line
	2050 2200 2150 2200
Connection ~ 2150 2200
Wire Wire Line
	2150 2200 2150 2150
$Comp
L Connector:Conn_01x08_Female J7
U 1 1 5F7B3817
P 3050 5050
F 0 "J7" V 3123 4980 50  0000 C CNN
F 1 "Conn_01x08_Female" V 3214 4980 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3050 5050 50  0001 C CNN
F 3 "~" H 3050 5050 50  0001 C CNN
	1    3050 5050
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x08_Male J6
U 1 1 5F7B7F1D
P 3050 3850
F 0 "J6" V 2885 3778 50  0000 C CNN
F 1 "Conn_01x08_Male" V 2976 3778 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3050 3850 50  0001 C CNN
F 3 "~" H 3050 3850 50  0001 C CNN
	1    3050 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F7BF198
P 3350 4750
F 0 "#PWR0102" H 3350 4500 50  0001 C CNN
F 1 "GND" V 3355 4622 50  0000 R CNN
F 2 "" H 3350 4750 50  0001 C CNN
F 3 "" H 3350 4750 50  0001 C CNN
	1    3350 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 4850 3350 4750
Connection ~ 3350 4750
Wire Wire Line
	3350 4750 3350 4050
Text Label 1600 2100 2    50   ~ 0
HVP
Text Label 2150 2300 0    50   ~ 0
HVN
Wire Wire Line
	3250 4850 3250 4100
Wire Wire Line
	3150 4850 3150 4600
Text Label 3400 4600 0    50   ~ 0
HVP
Wire Wire Line
	3400 4600 3150 4600
Connection ~ 3150 4600
Wire Wire Line
	3150 4600 3150 4050
Text Label 3400 4450 0    50   ~ 0
HVN
Wire Wire Line
	3050 4850 3050 4450
Wire Wire Line
	3400 4450 3050 4450
Connection ~ 3050 4450
Wire Wire Line
	3050 4450 3050 4050
Wire Wire Line
	2950 4850 2950 4300
Wire Wire Line
	2850 4850 2850 4050
Wire Wire Line
	2750 4850 2750 4050
Wire Wire Line
	2650 4850 2650 4050
Text Label 3400 4300 0    50   ~ 0
DACBIAS
Wire Wire Line
	3400 4300 2950 4300
Connection ~ 2950 4300
Wire Wire Line
	2950 4300 2950 4050
$Sheet
S 4100 3750 600  450 
U 5F7C744F
F0 "biasamp" 50
F1 "opampdriver.sch" 50
F2 "+VDC" I L 4100 3800 50 
F3 "-VDC" I L 4100 3900 50 
F4 "BIAS" I L 4100 4100 50 
F5 "OUT" O R 4700 3950 50 
F6 "SIG" I L 4100 4000 50 
$EndSheet
Text Label 3950 3900 2    50   ~ 0
HVN
Text Label 3950 3800 2    50   ~ 0
HVP
Text Label 3950 4000 2    50   ~ 0
DACBIAS
Wire Wire Line
	3950 3800 4100 3800
Wire Wire Line
	3950 3900 4100 3900
Wire Wire Line
	3950 4000 4100 4000
Wire Wire Line
	4100 4100 3250 4100
Connection ~ 3250 4100
Wire Wire Line
	3250 4100 3250 4050
$Comp
L Connector:AudioJack2 J8
U 1 1 5F7CF346
P 5200 3950
F 0 "J8" H 5020 3933 50  0000 R CNN
F 1 "AudioJack2" H 5020 4024 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ-3523-SMT_Horizontal" H 5200 3950 50  0001 C CNN
F 3 "~" H 5200 3950 50  0001 C CNN
	1    5200 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 3950 5000 3950
$Comp
L power:GND #PWR0103
U 1 1 5F7D1E03
P 1900 3450
F 0 "#PWR0103" H 1900 3200 50  0001 C CNN
F 1 "GND" H 1905 3277 50  0000 C CNN
F 2 "" H 1900 3450 50  0001 C CNN
F 3 "" H 1900 3450 50  0001 C CNN
	1    1900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3450 1900 2850
Connection ~ 1900 2850
Wire Wire Line
	1900 2850 2000 2850
$Comp
L power:GND #PWR0104
U 1 1 5F7D2D73
P 5000 4200
F 0 "#PWR0104" H 5000 3950 50  0001 C CNN
F 1 "GND" H 5005 4027 50  0000 C CNN
F 2 "" H 5000 4200 50  0001 C CNN
F 3 "" H 5000 4200 50  0001 C CNN
	1    5000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4200 5000 4050
$EndSCHEMATC
