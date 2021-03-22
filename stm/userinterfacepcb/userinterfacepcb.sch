EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L userinterfacepcb-rescue:Teensy4.1-teensy U1
U 1 1 5F98FEE0
P 5250 3900
F 0 "U1" H 5250 6465 50  0000 C CNN
F 1 "Teensy4.1" H 5250 6374 50  0000 C CNN
F 2 "Teensy:Teensy41" H 4850 4300 50  0001 C CNN
F 3 "" H 4850 4300 50  0001 C CNN
	1    5250 3900
	1    0    0    -1  
$EndComp
Text Notes 10150 1850 0    50   ~ 0
frontendamp:\n10V\nDIN   (CS)\nSCLK (SCLK)\nDOUT (MISO)\nCONVST (GPIO)\nGND\n
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 5F991791
P 10400 2300
F 0 "J4" H 10372 2182 50  0000 R CNN
F 1 "Conn_01x06_Male" H 10372 2273 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10400 2300 50  0001 C CNN
F 3 "~" H 10400 2300 50  0001 C CNN
	1    10400 2300
	-1   0    0    1   
$EndComp
$Comp
L power:+10V #PWR0102
U 1 1 5F996F59
P 10200 2000
F 0 "#PWR0102" H 10200 1850 50  0001 C CNN
F 1 "+10V" V 10215 2128 50  0000 L CNN
F 2 "" H 10200 2000 50  0001 C CNN
F 3 "" H 10200 2000 50  0001 C CNN
	1    10200 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F997971
P 10200 2500
F 0 "#PWR0103" H 10200 2250 50  0001 C CNN
F 1 "GND" V 10205 2372 50  0000 R CNN
F 2 "" H 10200 2500 50  0001 C CNN
F 3 "" H 10200 2500 50  0001 C CNN
	1    10200 2500
	0    1    1    0   
$EndComp
Text Notes 10200 3200 0    50   ~ 0
piezodriver:\nSCLK\nDIN\nNC\nSYNC\nGND\n5V
$Comp
L Connector:Conn_01x06_Male J5
U 1 1 5F9AF117
P 10400 3700
F 0 "J5" H 10508 4081 50  0000 C CNN
F 1 "Conn_01x06_Male" H 10508 3990 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10400 3700 50  0001 C CNN
F 3 "~" H 10400 3700 50  0001 C CNN
	1    10400 3700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F9B1599
P 10200 3800
F 0 "#PWR0105" H 10200 3550 50  0001 C CNN
F 1 "GND" V 10205 3672 50  0000 R CNN
F 2 "" H 10200 3800 50  0001 C CNN
F 3 "" H 10200 3800 50  0001 C CNN
	1    10200 3800
	0    1    1    0   
$EndComp
Text Label 9900 3500 2    50   ~ 0
PIEZOMOSI
Text Label 9900 3400 2    50   ~ 0
PIEZOCLK
Text Label 9900 3700 2    50   ~ 0
PIEZOCS
Wire Wire Line
	9900 3400 10200 3400
Wire Wire Line
	9900 3500 10200 3500
Wire Wire Line
	9900 3700 10200 3700
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5F9B296C
P 850 1750
F 0 "J1" H 958 1931 50  0000 C CNN
F 1 "Conn_01x02_Male" H 958 1840 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 850 1750 50  0001 C CNN
F 3 "~" H 850 1750 50  0001 C CNN
	1    850  1750
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0106
U 1 1 5F9B2FFA
P 1400 1750
F 0 "#PWR0106" H 1400 1600 50  0001 C CNN
F 1 "+15V" H 1415 1923 50  0000 C CNN
F 2 "" H 1400 1750 50  0001 C CNN
F 3 "" H 1400 1750 50  0001 C CNN
	1    1400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1750 1400 1750
$Comp
L power:GND #PWR0107
U 1 1 5F9B3ADA
P 1400 1850
F 0 "#PWR0107" H 1400 1600 50  0001 C CNN
F 1 "GND" H 1405 1677 50  0000 C CNN
F 2 "" H 1400 1850 50  0001 C CNN
F 3 "" H 1400 1850 50  0001 C CNN
	1    1400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1850 1400 1850
Text Notes 750  1400 0    50   ~ 0
Main input power, regulated down to 3.3, 5V, 10V rails
$Comp
L Device:C C1
U 1 1 5F9B6294
P 1850 1850
F 0 "C1" H 1965 1896 50  0000 L CNN
F 1 "1uF" H 1965 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1888 1700 50  0001 C CNN
F 3 "~" H 1850 1850 50  0001 C CNN
	1    1850 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5F9B7478
P 2300 1850
F 0 "C2" H 2418 1896 50  0000 L CNN
F 1 "47uF" H 2418 1805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2338 1700 50  0001 C CNN
F 3 "~" H 2300 1850 50  0001 C CNN
	1    2300 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0108
U 1 1 5F9B8B4F
P 2150 1700
F 0 "#PWR0108" H 2150 1550 50  0001 C CNN
F 1 "+15V" H 2165 1873 50  0000 C CNN
F 2 "" H 2150 1700 50  0001 C CNN
F 3 "" H 2150 1700 50  0001 C CNN
	1    2150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1700 2150 1700
Connection ~ 2150 1700
Wire Wire Line
	2150 1700 2300 1700
$Comp
L power:GND #PWR0109
U 1 1 5F9B9E4B
P 2150 2000
F 0 "#PWR0109" H 2150 1750 50  0001 C CNN
F 1 "GND" H 2155 1827 50  0000 C CNN
F 2 "" H 2150 2000 50  0001 C CNN
F 3 "" H 2150 2000 50  0001 C CNN
	1    2150 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2000 2150 2000
Connection ~ 2150 2000
Wire Wire Line
	2150 2000 2300 2000
$Sheet
S 1150 2450 650  800 
U 5F9BA884
F0 "powersupplies" 50
F1 "powersupplies.sch" 50
F2 "15V" I L 1150 2550 50 
F3 "GND" O L 1150 2850 50 
F4 "10V" O R 1800 2550 50 
F5 "3.3VA" O R 1800 2700 50 
F6 "5V" O R 1800 3000 50 
F7 "5VA" O R 1800 2850 50 
F8 "3.3VBAR" O R 1800 3150 50 
$EndSheet
$Comp
L power:+15V #PWR0110
U 1 1 5F9D8A47
P 1150 2550
F 0 "#PWR0110" H 1150 2400 50  0001 C CNN
F 1 "+15V" V 1165 2678 50  0000 L CNN
F 2 "" H 1150 2550 50  0001 C CNN
F 3 "" H 1150 2550 50  0001 C CNN
	1    1150 2550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F9D9811
P 1150 2850
F 0 "#PWR0111" H 1150 2600 50  0001 C CNN
F 1 "GND" V 1155 2722 50  0000 R CNN
F 2 "" H 1150 2850 50  0001 C CNN
F 3 "" H 1150 2850 50  0001 C CNN
	1    1150 2850
	0    1    1    0   
$EndComp
$Comp
L power:+10V #PWR0112
U 1 1 5F9DAD9C
P 1800 2550
F 0 "#PWR0112" H 1800 2400 50  0001 C CNN
F 1 "+10V" V 1815 2678 50  0000 L CNN
F 2 "" H 1800 2550 50  0001 C CNN
F 3 "" H 1800 2550 50  0001 C CNN
	1    1800 2550
	0    1    1    0   
$EndComp
$Comp
L power:+3.3VA #PWR0113
U 1 1 5F9DB39E
P 1800 2700
F 0 "#PWR0113" H 1800 2550 50  0001 C CNN
F 1 "+3.3VA" V 1815 2828 50  0000 L CNN
F 2 "" H 1800 2700 50  0001 C CNN
F 3 "" H 1800 2700 50  0001 C CNN
	1    1800 2700
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5F9E6E2A
P 1800 3000
F 0 "#PWR0114" H 1800 2850 50  0001 C CNN
F 1 "+5V" V 1815 3128 50  0000 L CNN
F 2 "" H 1800 3000 50  0001 C CNN
F 3 "" H 1800 3000 50  0001 C CNN
	1    1800 3000
	0    1    1    0   
$EndComp
$Comp
L power:+5VA #PWR0118
U 1 1 5F9F0F09
P 1800 2850
F 0 "#PWR0118" H 1800 2700 50  0001 C CNN
F 1 "+5VA" V 1815 2978 50  0000 L CNN
F 2 "" H 1800 2850 50  0001 C CNN
F 3 "" H 1800 2850 50  0001 C CNN
	1    1800 2850
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0119
U 1 1 5F9F1B32
P 6350 1950
F 0 "#PWR0119" H 6350 1800 50  0001 C CNN
F 1 "+3.3V" V 6365 2078 50  0000 L CNN
F 2 "" H 6350 1950 50  0001 C CNN
F 3 "" H 6350 1950 50  0001 C CNN
	1    6350 1950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 5F9F50EF
P 6350 1750
F 0 "#PWR0122" H 6350 1600 50  0001 C CNN
F 1 "+5V" V 6365 1878 50  0000 L CNN
F 2 "" H 6350 1750 50  0001 C CNN
F 3 "" H 6350 1750 50  0001 C CNN
	1    6350 1750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5F9F6C95
P 6350 1850
F 0 "#PWR0123" H 6350 1600 50  0001 C CNN
F 1 "GND" V 6355 1722 50  0000 R CNN
F 2 "" H 6350 1850 50  0001 C CNN
F 3 "" H 6350 1850 50  0001 C CNN
	1    6350 1850
	0    -1   -1   0   
$EndComp
Text Label 6350 3050 0    50   ~ 0
PIEZOCLK
Text Label 4150 2950 2    50   ~ 0
PIEZOMOSI
Text Label 4150 2850 2    50   ~ 0
PIEZOCS
$Comp
L Connector:USB_A J3
U 1 1 5F9F8E78
P 3550 4700
F 0 "J3" H 3607 5167 50  0000 C CNN
F 1 "USB_A" H 3607 5076 50  0000 C CNN
F 2 "Connector_USB:USB_A_Molex_105057_Vertical" H 3700 4650 50  0001 C CNN
F 3 " ~" H 3700 4650 50  0001 C CNN
	1    3550 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4500 4150 4500
Wire Wire Line
	3850 4700 4150 4700
Wire Wire Line
	3850 4800 4000 4800
Wire Wire Line
	4000 4800 4000 4600
Wire Wire Line
	4000 4600 4150 4600
Wire Wire Line
	4150 4800 4150 4900
Wire Wire Line
	4150 5100 3550 5100
Connection ~ 4150 4900
Wire Wire Line
	4150 4900 4150 5100
Connection ~ 3550 5100
Wire Wire Line
	3550 5100 3450 5100
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5F9FD353
P 1000 4000
F 0 "J2" H 1108 4281 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1108 4190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1000 4000 50  0001 C CNN
F 3 "~" H 1000 4000 50  0001 C CNN
	1    1000 4000
	1    0    0    -1  
$EndComp
Text Notes 750  3600 0    50   ~ 0
Serial port out
$Comp
L power:+3.3V #PWR0124
U 1 1 5F9FEC22
P 1200 3900
F 0 "#PWR0124" H 1200 3750 50  0001 C CNN
F 1 "+3.3V" V 1215 4028 50  0000 L CNN
F 2 "" H 1200 3900 50  0001 C CNN
F 3 "" H 1200 3900 50  0001 C CNN
	1    1200 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5F9FF66A
P 1200 4200
F 0 "#PWR0125" H 1200 3950 50  0001 C CNN
F 1 "GND" V 1205 4072 50  0000 R CNN
F 2 "" H 1200 4200 50  0001 C CNN
F 3 "" H 1200 4200 50  0001 C CNN
	1    1200 4200
	0    -1   -1   0   
$EndComp
Text Label 1650 4000 0    50   ~ 0
TX1OUT
Text Label 1650 4100 0    50   ~ 0
RX1OUT
Wire Wire Line
	1650 4000 1200 4000
Wire Wire Line
	1200 4100 1650 4100
Text Label 4000 1950 2    50   ~ 0
TX1OUT
Text Label 4000 1850 2    50   ~ 0
RX1OUT
Wire Wire Line
	4000 1850 4150 1850
Wire Wire Line
	4000 1950 4150 1950
$Comp
L power:GND #PWR0126
U 1 1 5FA02C73
P 3750 1750
F 0 "#PWR0126" H 3750 1500 50  0001 C CNN
F 1 "GND" V 3755 1622 50  0000 R CNN
F 2 "" H 3750 1750 50  0001 C CNN
F 3 "" H 3750 1750 50  0001 C CNN
	1    3750 1750
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x06_Male J8
U 1 1 5F9AFAA3
P 1200 7450
F 0 "J8" V 1354 7062 50  0000 R CNN
F 1 "Conn_01x06_Male" V 1263 7062 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1200 7450 50  0001 C CNN
F 3 "~" H 1200 7450 50  0001 C CNN
	1    1200 7450
	0    -1   -1   0   
$EndComp
Text Label 1000 7250 1    50   ~ 0
STEPPER1_1
Text Label 1100 7250 1    50   ~ 0
STEPPER1_2
Text Label 1200 7250 1    50   ~ 0
STEPPER1_3
Text Label 1300 7250 1    50   ~ 0
STEPPER1_4
$Comp
L power:GND #PWR0127
U 1 1 5F9B4DA8
P 1400 7250
F 0 "#PWR0127" H 1400 7000 50  0001 C CNN
F 1 "GND" H 1405 7077 50  0000 C CNN
F 2 "" H 1400 7250 50  0001 C CNN
F 3 "" H 1400 7250 50  0001 C CNN
	1    1400 7250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0128
U 1 1 5F9B576B
P 1500 6950
F 0 "#PWR0128" H 1500 6800 50  0001 C CNN
F 1 "+5V" H 1515 7123 50  0000 C CNN
F 2 "" H 1500 6950 50  0001 C CNN
F 3 "" H 1500 6950 50  0001 C CNN
	1    1500 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6950 1500 7250
$Comp
L Connector:Conn_01x06_Male J9
U 1 1 5F9B9E46
P 2700 7450
F 0 "J9" V 2854 7062 50  0000 R CNN
F 1 "Conn_01x06_Male" V 2763 7062 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2700 7450 50  0001 C CNN
F 3 "~" H 2700 7450 50  0001 C CNN
	1    2700 7450
	0    -1   -1   0   
$EndComp
Text Label 2500 7250 1    50   ~ 0
STEPPER2_1
Text Label 2600 7250 1    50   ~ 0
STEPPER2_2
Text Label 2700 7250 1    50   ~ 0
STEPPER2_3
Text Label 2800 7250 1    50   ~ 0
STEPPER2_4
$Comp
L power:GND #PWR0129
U 1 1 5F9B9E50
P 2900 7250
F 0 "#PWR0129" H 2900 7000 50  0001 C CNN
F 1 "GND" H 2905 7077 50  0000 C CNN
F 2 "" H 2900 7250 50  0001 C CNN
F 3 "" H 2900 7250 50  0001 C CNN
	1    2900 7250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0130
U 1 1 5F9B9E56
P 3000 6950
F 0 "#PWR0130" H 3000 6800 50  0001 C CNN
F 1 "+5V" H 3015 7123 50  0000 C CNN
F 2 "" H 3000 6950 50  0001 C CNN
F 3 "" H 3000 6950 50  0001 C CNN
	1    3000 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6950 3000 7250
$Comp
L Connector:Conn_01x06_Male J11
U 1 1 5F9BBD6E
P 4200 7500
F 0 "J11" V 4354 7112 50  0000 R CNN
F 1 "Conn_01x06_Male" V 4263 7112 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4200 7500 50  0001 C CNN
F 3 "~" H 4200 7500 50  0001 C CNN
	1    4200 7500
	0    -1   -1   0   
$EndComp
Text Label 4000 7300 1    50   ~ 0
STEPPER3_1
Text Label 4100 7300 1    50   ~ 0
STEPPER3_2
Text Label 4200 7300 1    50   ~ 0
STEPPER3_3
Text Label 4300 7300 1    50   ~ 0
STEPPER3_4
$Comp
L power:GND #PWR0131
U 1 1 5F9BBD78
P 4400 7300
F 0 "#PWR0131" H 4400 7050 50  0001 C CNN
F 1 "GND" H 4405 7127 50  0000 C CNN
F 2 "" H 4400 7300 50  0001 C CNN
F 3 "" H 4400 7300 50  0001 C CNN
	1    4400 7300
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0132
U 1 1 5F9BBD7E
P 4500 7000
F 0 "#PWR0132" H 4500 6850 50  0001 C CNN
F 1 "+5V" H 4515 7173 50  0000 C CNN
F 2 "" H 4500 7000 50  0001 C CNN
F 3 "" H 4500 7000 50  0001 C CNN
	1    4500 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 7000 4500 7300
Text Label 4150 2350 2    50   ~ 0
STEPPER1_1
Text Label 4150 2250 2    50   ~ 0
STEPPER1_2
Text Label 4150 2150 2    50   ~ 0
STEPPER1_3
Text Label 4150 2050 2    50   ~ 0
STEPPER1_4
Wire Wire Line
	3750 1750 4150 1750
Text Label 4150 2750 2    50   ~ 0
STEPPER2_1
Text Label 4150 2650 2    50   ~ 0
STEPPER2_2
Text Label 4150 2550 2    50   ~ 0
STEPPER2_3
Text Label 4150 2450 2    50   ~ 0
STEPPER2_4
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 5F9C1B4D
P 950 4850
F 0 "J7" H 1058 5131 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1058 5040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 950 4850 50  0001 C CNN
F 3 "~" H 950 4850 50  0001 C CNN
	1    950  4850
	1    0    0    -1  
$EndComp
Text Notes 700  4450 0    50   ~ 0
Serial port out
$Comp
L power:+3.3V #PWR0133
U 1 1 5F9C1B54
P 1150 4750
F 0 "#PWR0133" H 1150 4600 50  0001 C CNN
F 1 "+3.3V" V 1165 4878 50  0000 L CNN
F 2 "" H 1150 4750 50  0001 C CNN
F 3 "" H 1150 4750 50  0001 C CNN
	1    1150 4750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5F9C1B5A
P 1150 5050
F 0 "#PWR0134" H 1150 4800 50  0001 C CNN
F 1 "GND" V 1155 4922 50  0000 R CNN
F 2 "" H 1150 5050 50  0001 C CNN
F 3 "" H 1150 5050 50  0001 C CNN
	1    1150 5050
	0    -1   -1   0   
$EndComp
Text Label 1600 4850 0    50   ~ 0
TX2OUT
Text Label 1600 4950 0    50   ~ 0
RX2OUT
Wire Wire Line
	1600 4850 1150 4850
Wire Wire Line
	1150 4950 1600 4950
Text Label 4150 3750 2    50   ~ 0
TX2OUT
Text Label 4150 3650 2    50   ~ 0
RX2OUT
Text Label 4150 4050 2    50   ~ 0
STEPPER3_1
Text Label 6350 4050 0    50   ~ 0
STEPPER3_2
Text Label 4150 3350 2    50   ~ 0
STEPPER3_3
Text Label 4150 3250 2    50   ~ 0
STEPPER3_4
$Comp
L power:GND #PWR0135
U 1 1 5F9D6900
P 9600 5600
F 0 "#PWR0135" H 9600 5350 50  0001 C CNN
F 1 "GND" H 9605 5427 50  0000 C CNN
F 2 "" H 9600 5600 50  0001 C CNN
F 3 "" H 9600 5600 50  0001 C CNN
	1    9600 5600
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0136
U 1 1 5F9D7E2C
P 9150 5700
F 0 "#PWR0136" H 9150 5550 50  0001 C CNN
F 1 "+3.3V" H 9165 5873 50  0000 C CNN
F 2 "" H 9150 5700 50  0001 C CNN
F 3 "" H 9150 5700 50  0001 C CNN
	1    9150 5700
	0    -1   -1   0   
$EndComp
Text Label 9600 5900 2    50   ~ 0
DISPLAYSDA
Text Label 9600 5800 2    50   ~ 0
DISPLAYSCL
Text Notes 10100 5900 0    50   ~ 0
generic SSD1306 OLED
Text Label 6350 2650 0    50   ~ 0
DISPLAYSDA
Text Label 6350 2750 0    50   ~ 0
DISPLAYSCL
$Comp
L Device:Rotary_Encoder SW1
U 1 1 5F9DE9F4
P 2800 3950
F 0 "SW1" H 2743 3583 50  0000 C CNN
F 1 "Rotary_Encoder" H 2743 3674 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 2650 4110 50  0001 C CNN
F 3 "~" H 2800 4210 50  0001 C CNN
	1    2800 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 3850 3200 3850
Wire Wire Line
	3100 4050 3500 4050
Wire Wire Line
	3500 4050 3500 3950
Wire Wire Line
	3500 3950 4150 3950
$Comp
L power:GND #PWR0137
U 1 1 5F9E9329
P 3200 4100
F 0 "#PWR0137" H 3200 3850 50  0001 C CNN
F 1 "GND" H 3205 3927 50  0000 C CNN
F 2 "" H 3200 4100 50  0001 C CNN
F 3 "" H 3200 4100 50  0001 C CNN
	1    3200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4100 3200 3950
Wire Wire Line
	3200 3950 3100 3950
$Comp
L Device:R R5
U 1 1 5F9EAF35
P 3200 3650
F 0 "R5" H 3270 3696 50  0000 L CNN
F 1 "10k" H 3270 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3130 3650 50  0001 C CNN
F 3 "~" H 3200 3650 50  0001 C CNN
	1    3200 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F9EBABC
P 3500 3650
F 0 "R6" H 3570 3696 50  0000 L CNN
F 1 "10k" H 3570 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3430 3650 50  0001 C CNN
F 3 "~" H 3500 3650 50  0001 C CNN
	1    3500 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3800 3500 3950
Connection ~ 3500 3950
Wire Wire Line
	3200 3800 3200 3850
Connection ~ 3200 3850
Wire Wire Line
	3200 3850 4150 3850
Wire Wire Line
	3200 3500 3350 3500
Wire Wire Line
	3350 3500 3350 3150
Wire Wire Line
	3350 3150 4150 3150
Connection ~ 3350 3500
Wire Wire Line
	3350 3500 3500 3500
$Comp
L Connector:Conn_01x04_Female J13
U 1 1 5F9F1BD5
P 9800 5700
F 0 "J13" H 9692 5275 50  0000 C CNN
F 1 "Conn_01x04_Female" H 9692 5366 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9800 5700 50  0001 C CNN
F 3 "~" H 9800 5700 50  0001 C CNN
	1    9800 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5700 9600 5700
$Comp
L joystick:RKJXV1224005 U5
U 1 1 5FA02E19
P 7500 5700
F 0 "U5" V 7013 5700 60  0000 C CNN
F 1 "RKJXV1224005" V 7119 5700 60  0000 C CNN
F 2 "kicad-lib-input:RKJXV1224005" H 7500 5450 60  0001 C CNN
F 3 "" H 7500 5450 60  0001 C CNN
	1    7500 5700
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0138
U 1 1 5FA0438F
P 8150 5500
F 0 "#PWR0138" H 8150 5350 50  0001 C CNN
F 1 "+3.3V" H 8165 5673 50  0000 C CNN
F 2 "" H 8150 5500 50  0001 C CNN
F 3 "" H 8150 5500 50  0001 C CNN
	1    8150 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0139
U 1 1 5FA04F92
P 7700 6200
F 0 "#PWR0139" H 7700 6050 50  0001 C CNN
F 1 "+3.3V" V 7715 6328 50  0000 L CNN
F 2 "" H 7700 6200 50  0001 C CNN
F 3 "" H 7700 6200 50  0001 C CNN
	1    7700 6200
	0    1    1    0   
$EndComp
Text Label 8150 5700 0    50   ~ 0
JOYAX1
Text Label 7500 6200 3    50   ~ 0
JOYAX2
Text Label 6350 2050 0    50   ~ 0
JOYAX1
Text Label 6350 2150 0    50   ~ 0
JOYAX2
$Sheet
S 6650 750  200  550 
U 5FA0E809
F0 "up" 50
F1 "pushbutton.sch" 50
F2 "out" I B 6750 1300 50 
$EndSheet
$Sheet
S 7050 750  200  550 
U 5FA14ACD
F0 "down" 50
F1 "pushbutton.sch" 50
F2 "out" I B 7150 1300 50 
$EndSheet
$Sheet
S 7450 750  200  550 
U 5FA1AB1D
F0 "left" 50
F1 "pushbutton.sch" 50
F2 "out" I B 7550 1300 50 
$EndSheet
$Sheet
S 7850 750  200  550 
U 5FA1D666
F0 "right" 50
F1 "pushbutton.sch" 50
F2 "out" I B 7950 1300 50 
$EndSheet
$Sheet
S 8250 750  200  550 
U 5FA2293D
F0 "select" 50
F1 "pushbutton.sch" 50
F2 "out" I B 8350 1300 50 
$EndSheet
Text Label 6750 1300 3    50   ~ 0
UP
Text Label 7150 1300 3    50   ~ 0
DOWN
Text Label 7550 1300 3    50   ~ 0
LEFT
Text Label 7950 1300 3    50   ~ 0
RIGHT
Text Label 8350 1300 3    50   ~ 0
SELECT
Text Label 6350 3750 0    50   ~ 0
UP
Text Label 6350 3850 0    50   ~ 0
DOWN
Text Label 6350 2850 0    50   ~ 0
LEFT
Text Label 6350 2950 0    50   ~ 0
RIGHT
$Comp
L power:GND #PWR0140
U 1 1 5FA2C5F0
P 6350 3150
F 0 "#PWR0140" H 6350 2900 50  0001 C CNN
F 1 "GND" V 6355 3022 50  0000 R CNN
F 2 "" H 6350 3150 50  0001 C CNN
F 3 "" H 6350 3150 50  0001 C CNN
	1    6350 3150
	0    -1   -1   0   
$EndComp
$Sheet
S 9050 750  200  550 
U 5FA2D16F
F0 "next" 50
F1 "pushbutton.sch" 50
F2 "out" I B 9150 1300 50 
$EndSheet
$Sheet
S 8650 750  200  550 
U 5FA2E427
F0 "encodersel" 50
F1 "pushbutton.sch" 50
F2 "out" I B 8750 1300 50 
$EndSheet
Text Label 9150 1300 3    50   ~ 0
NEXT
Text Label 8750 1300 3    50   ~ 0
ENCODERSEL
Text Label 6350 3250 0    50   ~ 0
ENCODERSEL
Text Label 6350 3350 0    50   ~ 0
SELECT
Text Label 6350 3650 0    50   ~ 0
NEXT
$Comp
L Device:R R10
U 1 1 5FA392B6
P 9050 4800
F 0 "R10" H 9120 4846 50  0000 L CNN
F 1 "10k" H 9120 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8980 4800 50  0001 C CNN
F 3 "~" H 9050 4800 50  0001 C CNN
	1    9050 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5FA3A5A4
P 9050 4500
F 0 "R9" H 9120 4546 50  0000 L CNN
F 1 "47k" H 9120 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8980 4500 50  0001 C CNN
F 3 "~" H 9050 4500 50  0001 C CNN
	1    9050 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+10V #PWR0141
U 1 1 5FA3C624
P 9050 4350
F 0 "#PWR0141" H 9050 4200 50  0001 C CNN
F 1 "+10V" V 9065 4478 50  0000 L CNN
F 2 "" H 9050 4350 50  0001 C CNN
F 3 "" H 9050 4350 50  0001 C CNN
	1    9050 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5FA3E861
P 9050 4950
F 0 "#PWR0142" H 9050 4700 50  0001 C CNN
F 1 "GND" H 9055 4777 50  0000 C CNN
F 2 "" H 9050 4950 50  0001 C CNN
F 3 "" H 9050 4950 50  0001 C CNN
	1    9050 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5FA43900
P 9450 4800
F 0 "R12" H 9520 4846 50  0000 L CNN
F 1 "10k" H 9520 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9380 4800 50  0001 C CNN
F 3 "~" H 9450 4800 50  0001 C CNN
	1    9450 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5FA43906
P 9450 4500
F 0 "R11" H 9520 4546 50  0000 L CNN
F 1 "10k" H 9520 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9380 4500 50  0001 C CNN
F 3 "~" H 9450 4500 50  0001 C CNN
	1    9450 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 5FA43914
P 9450 4950
F 0 "#PWR0143" H 9450 4700 50  0001 C CNN
F 1 "GND" H 9455 4777 50  0000 C CNN
F 2 "" H 9450 4950 50  0001 C CNN
F 3 "" H 9450 4950 50  0001 C CNN
	1    9450 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0144
U 1 1 5FA47AC3
P 9450 4350
F 0 "#PWR0144" H 9450 4200 50  0001 C CNN
F 1 "+3.3VA" V 9465 4478 50  0000 L CNN
F 2 "" H 9450 4350 50  0001 C CNN
F 3 "" H 9450 4350 50  0001 C CNN
	1    9450 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5FA5223A
P 8650 4800
F 0 "R8" H 8720 4846 50  0000 L CNN
F 1 "10k" H 8720 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8580 4800 50  0001 C CNN
F 3 "~" H 8650 4800 50  0001 C CNN
	1    8650 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5FA52244
P 8650 4500
F 0 "R7" H 8720 4546 50  0000 L CNN
F 1 "20k" H 8720 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8580 4500 50  0001 C CNN
F 3 "~" H 8650 4500 50  0001 C CNN
	1    8650 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0145
U 1 1 5FA52258
P 8650 4950
F 0 "#PWR0145" H 8650 4700 50  0001 C CNN
F 1 "GND" H 8655 4777 50  0000 C CNN
F 2 "" H 8650 4950 50  0001 C CNN
F 3 "" H 8650 4950 50  0001 C CNN
	1    8650 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0146
U 1 1 5FA559B7
P 8650 4350
F 0 "#PWR0146" H 8650 4200 50  0001 C CNN
F 1 "+5VA" V 8665 4478 50  0000 L CNN
F 2 "" H 8650 4350 50  0001 C CNN
F 3 "" H 8650 4350 50  0001 C CNN
	1    8650 4350
	1    0    0    -1  
$EndComp
Text Label 8550 4650 1    50   ~ 0
5VMON
Text Label 8950 4650 1    50   ~ 0
10VMON
Text Label 9350 4650 1    50   ~ 0
33VMON
Wire Wire Line
	8550 4650 8650 4650
Connection ~ 8650 4650
Wire Wire Line
	8950 4650 9050 4650
Connection ~ 9050 4650
Wire Wire Line
	9350 4650 9450 4650
Connection ~ 9450 4650
Text Label 6350 2250 0    50   ~ 0
5VMON
Text Label 6350 2350 0    50   ~ 0
10VMON
$Comp
L Connector:Conn_01x04_Female J12
U 1 1 5FA5D4ED
P 5800 6100
F 0 "J12" H 5828 6076 50  0000 L CNN
F 1 "Conn_01x04_Female" H 5828 5985 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5800 6100 50  0001 C CNN
F 3 "~" H 5800 6100 50  0001 C CNN
	1    5800 6100
	1    0    0    -1  
$EndComp
Text Label 5600 6200 2    50   ~ 0
DISPLAYSDA
Text Label 5600 6300 2    50   ~ 0
DISPLAYSCL
$Comp
L power:GND #PWR0147
U 1 1 5FA62A2E
P 5600 6100
F 0 "#PWR0147" H 5600 5850 50  0001 C CNN
F 1 "GND" H 5605 5927 50  0000 C CNN
F 2 "" H 5600 6100 50  0001 C CNN
F 3 "" H 5600 6100 50  0001 C CNN
	1    5600 6100
	0    1    1    0   
$EndComp
Text Label 1800 3150 0    50   ~ 0
33VBAR
Text Label 5600 6000 2    50   ~ 0
33VBAR
Text Notes 5400 6450 0    50   ~ 0
Adafruit 24 segment R/G bar
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5FA78E15
P 900 5650
F 0 "J6" H 1008 5931 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1008 5840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 900 5650 50  0001 C CNN
F 3 "~" H 900 5650 50  0001 C CNN
	1    900  5650
	1    0    0    -1  
$EndComp
Text Notes 650  5250 0    50   ~ 0
i2c out
$Comp
L power:+3.3V #PWR0148
U 1 1 5FA78E1C
P 1100 5550
F 0 "#PWR0148" H 1100 5400 50  0001 C CNN
F 1 "+3.3V" V 1115 5678 50  0000 L CNN
F 2 "" H 1100 5550 50  0001 C CNN
F 3 "" H 1100 5550 50  0001 C CNN
	1    1100 5550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0149
U 1 1 5FA78E22
P 1100 5850
F 0 "#PWR0149" H 1100 5600 50  0001 C CNN
F 1 "GND" V 1105 5722 50  0000 R CNN
F 2 "" H 1100 5850 50  0001 C CNN
F 3 "" H 1100 5850 50  0001 C CNN
	1    1100 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1550 5650 1100 5650
Wire Wire Line
	1100 5750 1550 5750
Text Label 1550 5750 0    50   ~ 0
DISPLAYSDA
Text Label 1550 5650 0    50   ~ 0
DISPLAYSCL
$Comp
L power:+10V #PWR0150
U 1 1 5FA83F52
P 3050 5800
F 0 "#PWR0150" H 3050 5650 50  0001 C CNN
F 1 "+10V" V 3065 5928 50  0000 L CNN
F 2 "" H 3050 5800 50  0001 C CNN
F 3 "" H 3050 5800 50  0001 C CNN
	1    3050 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3VA #PWR0151
U 1 1 5FA85136
P 3050 5900
F 0 "#PWR0151" H 3050 5750 50  0001 C CNN
F 1 "+3.3VA" V 3065 6028 50  0000 L CNN
F 2 "" H 3050 5900 50  0001 C CNN
F 3 "" H 3050 5900 50  0001 C CNN
	1    3050 5900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VA #PWR0152
U 1 1 5FA85E06
P 3050 6000
F 0 "#PWR0152" H 3050 5850 50  0001 C CNN
F 1 "+5VA" V 3065 6128 50  0000 L CNN
F 2 "" H 3050 6000 50  0001 C CNN
F 3 "" H 3050 6000 50  0001 C CNN
	1    3050 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0153
U 1 1 5FA86A7F
P 3050 6100
F 0 "#PWR0153" H 3050 5950 50  0001 C CNN
F 1 "+5V" V 3065 6228 50  0000 L CNN
F 2 "" H 3050 6100 50  0001 C CNN
F 3 "" H 3050 6100 50  0001 C CNN
	1    3050 6100
	0    -1   -1   0   
$EndComp
Text Label 3050 6200 2    50   ~ 0
33VBAR
$Comp
L power:GND #PWR0154
U 1 1 5FA88075
P 3050 6300
F 0 "#PWR0154" H 3050 6050 50  0001 C CNN
F 1 "GND" H 3055 6127 50  0000 C CNN
F 2 "" H 3050 6300 50  0001 C CNN
F 3 "" H 3050 6300 50  0001 C CNN
	1    3050 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0155
U 1 1 5FA89017
P 3550 6300
F 0 "#PWR0155" H 3550 6050 50  0001 C CNN
F 1 "GND" H 3555 6127 50  0000 C CNN
F 2 "" H 3550 6300 50  0001 C CNN
F 3 "" H 3550 6300 50  0001 C CNN
	1    3550 6300
	1    0    0    -1  
$EndComp
Text Label 4150 3050 2    50   ~ 0
IO1
Text Label 4150 3450 2    50   ~ 0
IO2
Text Label 3550 5800 0    50   ~ 0
IO1
Text Label 3550 5900 0    50   ~ 0
IO2
$Comp
L Mechanical:MountingHole H11
U 1 1 5FA903EC
P 10700 5200
F 0 "H11" H 10800 5246 50  0000 L CNN
F 1 "MountingHole" H 10800 5155 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 10700 5200 50  0001 C CNN
F 3 "~" H 10700 5200 50  0001 C CNN
	1    10700 5200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H12
U 1 1 5FA910D3
P 10700 5450
F 0 "H12" H 10800 5496 50  0000 L CNN
F 1 "MountingHole" H 10800 5405 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 10700 5450 50  0001 C CNN
F 3 "~" H 10700 5450 50  0001 C CNN
	1    10700 5450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5FA92262
P 900 6250
F 0 "H1" H 1000 6296 50  0000 L CNN
F 1 "MountingHole" H 1000 6205 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 900 6250 50  0001 C CNN
F 3 "~" H 900 6250 50  0001 C CNN
	1    900  6250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FA933CD
P 900 6500
F 0 "H2" H 1000 6546 50  0000 L CNN
F 1 "MountingHole" H 1000 6455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 900 6500 50  0001 C CNN
F 3 "~" H 900 6500 50  0001 C CNN
	1    900  6500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FA94577
P 950 750
F 0 "H3" H 1050 796 50  0000 L CNN
F 1 "MountingHole" H 1050 705 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 950 750 50  0001 C CNN
F 3 "~" H 950 750 50  0001 C CNN
	1    950  750 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H10
U 1 1 5FA956D0
P 10400 700
F 0 "H10" H 10500 746 50  0000 L CNN
F 1 "MountingHole" H 10500 655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10400 700 50  0001 C CNN
F 3 "~" H 10400 700 50  0001 C CNN
	1    10400 700 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5FA9C537
P 8850 5400
F 0 "H6" H 8950 5446 50  0000 L CNN
F 1 "MountingHole" H 8950 5355 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 8850 5400 50  0001 C CNN
F 3 "~" H 8850 5400 50  0001 C CNN
	1    8850 5400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H8
U 1 1 5FA9D71A
P 9900 5400
F 0 "H8" H 10000 5446 50  0000 L CNN
F 1 "MountingHole" H 10000 5355 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 9900 5400 50  0001 C CNN
F 3 "~" H 9900 5400 50  0001 C CNN
	1    9900 5400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H9
U 1 1 5FA9E805
P 10100 6250
F 0 "H9" H 10200 6296 50  0000 L CNN
F 1 "MountingHole" H 10200 6205 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 10100 6250 50  0001 C CNN
F 3 "~" H 10100 6250 50  0001 C CNN
	1    10100 6250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 5FA9F9FA
P 8900 6150
F 0 "H7" H 9000 6196 50  0000 L CNN
F 1 "MountingHole" H 9000 6105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 8900 6150 50  0001 C CNN
F 3 "~" H 8900 6150 50  0001 C CNN
	1    8900 6150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FAA0B3D
P 4650 6100
F 0 "H4" H 4750 6146 50  0000 L CNN
F 1 "MountingHole" H 4750 6055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 4650 6100 50  0001 C CNN
F 3 "~" H 4650 6100 50  0001 C CNN
	1    4650 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H5
U 1 1 5FAA1DA8
P 6450 6100
F 0 "H5" H 6550 6146 50  0000 L CNN
F 1 "MountingHole" H 6550 6055 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4" H 6450 6100 50  0001 C CNN
F 3 "~" H 6450 6100 50  0001 C CNN
	1    6450 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F9D9FC9
P 8150 5900
F 0 "#PWR0101" H 8150 5650 50  0001 C CNN
F 1 "GND" H 8155 5727 50  0000 C CNN
F 2 "" H 8150 5900 50  0001 C CNN
F 3 "" H 8150 5900 50  0001 C CNN
	1    8150 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F9DAA48
P 7300 6200
F 0 "#PWR0104" H 7300 5950 50  0001 C CNN
F 1 "GND" H 7305 6027 50  0000 C CNN
F 2 "" H 7300 6200 50  0001 C CNN
F 3 "" H 7300 6200 50  0001 C CNN
	1    7300 6200
	1    0    0    -1  
$EndComp
Text Label 10200 2100 2    50   ~ 0
TIA_DIN
Text Label 10200 2200 2    50   ~ 0
TIA_SCLK
Text Label 10200 2300 2    50   ~ 0
TIA_DOUT
Text Label 10200 2400 2    50   ~ 0
TIA_CONVST
Text Label 6350 3550 0    50   ~ 0
TIA_DIN
Text Label 6350 3450 0    50   ~ 0
TIA_DOUT
$Comp
L power:+5VA #PWR0115
U 1 1 5FAEA561
P 10200 3900
F 0 "#PWR0115" H 10200 3750 50  0001 C CNN
F 1 "+5VA" V 10215 4028 50  0000 L CNN
F 2 "" H 10200 3900 50  0001 C CNN
F 3 "" H 10200 3900 50  0001 C CNN
	1    10200 3900
	0    -1   -1   0   
$EndComp
Text Label 6350 3950 0    50   ~ 0
TIA_CONVST
Text Label 4150 3550 2    50   ~ 0
TIA_SCLK
NoConn ~ 6350 1600
NoConn ~ 6850 5550
NoConn ~ 6850 5650
NoConn ~ 6850 5750
NoConn ~ 6850 5850
NoConn ~ 6350 4300
NoConn ~ 6350 4400
NoConn ~ 6350 4500
NoConn ~ 6350 4600
NoConn ~ 6350 4700
NoConn ~ 6350 4800
NoConn ~ 4950 5200
NoConn ~ 5100 5200
NoConn ~ 5250 5200
NoConn ~ 5400 5200
NoConn ~ 5550 5200
NoConn ~ 4150 4250
NoConn ~ 4150 4350
NoConn ~ 10200 3600
Text Label 6350 2450 0    50   ~ 0
33VMON
Text Label 6350 2550 0    50   ~ 0
IO3
Text Label 3550 6000 0    50   ~ 0
IO3
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J10
U 1 1 5FB2E72D
P 3250 6000
F 0 "J10" H 3300 6417 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 3300 6326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 3250 6000 50  0001 C CNN
F 3 "~" H 3250 6000 50  0001 C CNN
	1    3250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6100 3550 6200
Wire Wire Line
	3550 6200 3550 6300
Connection ~ 3550 6200
Connection ~ 3550 6300
$EndSCHEMATC
