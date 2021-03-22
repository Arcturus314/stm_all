EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Device:Battery_Cell BT1
U 1 1 5FAA43E6
P 1250 4100
F 0 "BT1" H 1368 4196 50  0000 L CNN
F 1 "3V" H 1368 4105 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1058_1x2032" V 1250 4160 50  0001 C CNN
F 3 "~" V 1250 4160 50  0001 C CNN
	1    1250 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FAAC60F
P 950 4050
F 0 "C2" H 1065 4096 50  0000 L CNN
F 1 "1uF" H 1065 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 988 3900 50  0001 C CNN
F 3 "~" H 950 4050 50  0001 C CNN
	1    950  4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4200 1250 4200
$Comp
L Device:R R2
U 1 1 5FAAF1F3
P 1850 4350
F 0 "R2" V 2057 4350 50  0000 C CNN
F 1 "5k" V 1966 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1780 4350 50  0001 C CNN
F 3 "~" H 1850 4350 50  0001 C CNN
	1    1850 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5FAB2BB9
P 1850 4050
F 0 "R1" V 2057 4050 50  0000 C CNN
F 1 "50k" V 1966 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1780 4050 50  0001 C CNN
F 3 "~" H 1850 4050 50  0001 C CNN
	1    1850 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	950  3900 1250 3900
$Comp
L Device:C C1
U 1 1 5FAD62F9
P 600 4050
F 0 "C1" H 715 4096 50  0000 L CNN
F 1 "100nF" H 700 3800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 638 3900 50  0001 C CNN
F 3 "~" H 600 4050 50  0001 C CNN
	1    600  4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  4200 950  4200
Connection ~ 950  4200
Wire Wire Line
	600  3900 950  3900
Connection ~ 950  3900
Wire Wire Line
	6250 2200 6750 2200
Wire Wire Line
	6250 2500 6750 2500
Connection ~ 6250 2500
Wire Wire Line
	5900 2500 6250 2500
Connection ~ 6250 2200
Wire Wire Line
	5900 2200 6250 2200
$Comp
L Device:C C8
U 1 1 5FAE7929
P 5900 2350
F 0 "C8" H 6015 2396 50  0000 L CNN
F 1 "1nF" H 6015 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5938 2200 50  0001 C CNN
F 3 "~" H 5900 2350 50  0001 C CNN
	1    5900 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5FAE748B
P 6250 2350
F 0 "C9" H 6365 2396 50  0000 L CNN
F 1 "100nF" H 6365 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6288 2200 50  0001 C CNN
F 3 "~" H 6250 2350 50  0001 C CNN
	1    6250 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5FAE69C2
P 6750 2350
F 0 "C10" H 6865 2396 50  0000 L CNN
F 1 "4.7uF" H 6865 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6788 2200 50  0001 C CNN
F 3 "~" H 6750 2350 50  0001 C CNN
	1    6750 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+10V #PWR0101
U 1 1 5FAE639C
P 6250 2200
F 0 "#PWR0101" H 6250 2050 50  0001 C CNN
F 1 "+10V" H 6265 2373 50  0000 C CNN
F 2 "" H 6250 2200 50  0001 C CNN
F 3 "" H 6250 2200 50  0001 C CNN
	1    6250 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FAE5AEA
P 6250 2500
F 0 "#PWR0102" H 6250 2250 50  0001 C CNN
F 1 "GND" H 6255 2327 50  0000 C CNN
F 2 "" H 6250 2500 50  0001 C CNN
F 3 "" H 6250 2500 50  0001 C CNN
	1    6250 2500
	1    0    0    -1  
$EndComp
Text Notes 4950 4300 0    50   ~ 0
16 bit ADC takes differential input\n6e-6V noise from voltage reference\n100uV noise total -> 1pA\n1lsb@16bits -> 50uV -> 0.5pA\n
Wire Wire Line
	4700 500  4950 500 
Wire Wire Line
	4150 500  4400 500 
$Comp
L Device:C C5
U 1 1 5FB02F4E
P 4550 500
F 0 "C5" V 4400 500 50  0000 C CNN
F 1 "100nF" V 4700 500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4588 350 50  0001 C CNN
F 3 "~" H 4550 500 50  0001 C CNN
	1    4550 500 
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 1850 5200 2650
Wire Wire Line
	4950 1850 5200 1850
Wire Wire Line
	4150 900  4400 900 
Wire Wire Line
	4250 1950 4150 1950
Connection ~ 4950 1850
Wire Wire Line
	4950 900  4700 900 
Wire Wire Line
	4950 1950 4950 1850
$Comp
L max6033:MAX6033 U3
U 1 1 5FAF3BE4
P 4600 1650
F 0 "U3" H 4600 1715 50  0000 C CNN
F 1 "MAX6033" H 4600 1624 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 4600 1650 50  0001 C CNN
F 3 "" H 4600 1650 50  0001 C CNN
	1    4600 1650
	1    0    0    -1  
$EndComp
Text Notes 5050 1500 0    50   ~ 0
max6043a
$Comp
L power:+10V #PWR0103
U 1 1 5FADC81D
P 4950 2050
F 0 "#PWR0103" H 4950 1900 50  0001 C CNN
F 1 "+10V" H 4965 2223 50  0000 C CNN
F 2 "" H 4950 2050 50  0001 C CNN
F 3 "" H 4950 2050 50  0001 C CNN
	1    4950 2050
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 5FAD9853
P 4550 900
F 0 "C6" V 4400 900 50  0000 C CNN
F 1 "1uF" V 4700 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4588 750 50  0001 C CNN
F 3 "~" H 4550 900 50  0001 C CNN
	1    4550 900 
	0    1    1    0   
$EndComp
Text Notes 5050 1700 0    50   ~ 0
3.3v reference +/-0.06%\n10mA output
Text Notes 1950 3850 0    50   ~ 0
0.3V bias on V+
Text Notes 750  5950 0    50   ~ 0
thermal noise in resistor - rms 4e-5V
Text Notes 750  5800 0    50   ~ 0
10pF cap provides 1KHz cutoff
Text Notes 750  5700 0    50   ~ 0
Pole at 144Hz
Text Notes 750  5600 0    50   ~ 0
Need CF>4e-14F for stability
Text Notes 750  5500 0    50   ~ 0
15pF total input cap on op amp
Connection ~ 5200 2650
$Comp
L Device:R R4
U 1 1 5FAC9B9B
P 4300 3150
F 0 "R4" V 4093 3150 50  0000 C CNN
F 1 "10" V 4184 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4230 3150 50  0001 C CNN
F 3 "~" H 4300 3150 50  0001 C CNN
	1    4300 3150
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5FAD1CBC
P 4450 3300
F 0 "C4" H 4565 3346 50  0000 L CNN
F 1 "1uF" H 4200 3150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4488 3150 50  0001 C CNN
F 3 "~" H 4450 3300 50  0001 C CNN
	1    4450 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0104
U 1 1 5FADC5E0
P 3550 3050
F 0 "#PWR0104" H 3550 2800 50  0001 C CNN
F 1 "GNDA" H 3555 2877 50  0000 C CNN
F 2 "" H 3550 3050 50  0001 C CNN
F 3 "" H 3550 3050 50  0001 C CNN
	1    3550 3050
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR0105
U 1 1 5FADF3FE
P 4450 3450
F 0 "#PWR0105" H 4450 3200 50  0001 C CNN
F 1 "GNDA" H 4455 3277 50  0000 C CNN
F 2 "" H 4450 3450 50  0001 C CNN
F 3 "" H 4450 3450 50  0001 C CNN
	1    4450 3450
	1    0    0    -1  
$EndComp
Text Notes 3550 4150 0    50   ~ 0
buffer stage, low pass @ 15KHz\nfor AA filter
$Comp
L power:GNDA #PWR0107
U 1 1 5FAE66EC
P 5200 3650
F 0 "#PWR0107" H 5200 3400 50  0001 C CNN
F 1 "GNDA" H 5205 3477 50  0000 C CNN
F 2 "" H 5200 3650 50  0001 C CNN
F 3 "" H 5200 3650 50  0001 C CNN
	1    5200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0108
U 1 1 5FAE6EB1
P 4150 1950
F 0 "#PWR0108" H 4150 1700 50  0001 C CNN
F 1 "GNDA" H 4155 1777 50  0000 C CNN
F 2 "" H 4150 1950 50  0001 C CNN
F 3 "" H 4150 1950 50  0001 C CNN
	1    4150 1950
	1    0    0    -1  
$EndComp
Connection ~ 4150 1950
$Comp
L Regulator_Linear:MCP1703A-3302_SOT89 U6
U 1 1 5FAE9D0C
P 7700 2100
F 0 "U6" H 7700 2342 50  0000 C CNN
F 1 "MCP1703A-3302_SOT89" H 7700 2251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 7700 2300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 7700 2050 50  0001 C CNN
	1    7700 2100
	1    0    0    -1  
$EndComp
$Comp
L sn74hcs125:SN74HCS125 U5
U 1 1 5FAEC279
P 6950 2900
F 0 "U5" H 6950 2875 50  0000 C CNN
F 1 "SN74HCS125" H 6950 2784 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 6950 2900 50  0001 C CNN
F 3 "" H 6950 2900 50  0001 C CNN
	1    6950 2900
	-1   0    0    -1  
$EndComp
Text Notes 750  6050 0    50   ~ 0
expect maybe 2e-5V RMS noise from op amp
Text Notes 4950 4450 0    50   ~ 0
need >95dB SNR from calculated noise 
$Comp
L Device:C C7
U 1 1 5FAF643B
P 4550 1300
F 0 "C7" V 4400 1300 50  0000 C CNN
F 1 "10uF" V 4700 1300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4588 1150 50  0001 C CNN
F 3 "~" H 4550 1300 50  0001 C CNN
	1    4550 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 900  4950 1300
Wire Wire Line
	4150 900  4150 1300
Wire Wire Line
	4400 1300 4150 1300
Connection ~ 4150 1300
Wire Wire Line
	4150 1300 4150 1950
Wire Wire Line
	4700 1300 4950 1300
Connection ~ 4950 1300
Wire Wire Line
	4950 1300 4950 1850
Wire Wire Line
	4150 900  4150 500 
Connection ~ 4150 900 
Wire Wire Line
	4950 900  4950 500 
Connection ~ 4950 900 
$Comp
L ads8867:ADS8867 U4
U 1 1 5FAFE3F1
P 5050 2550
F 0 "U4" H 5375 1361 50  0000 C CNN
F 1 "ADS8867" H 5700 1400 50  0000 C CNN
F 2 "Package_SO:VSSOP-10_3x3mm_P0.5mm" H 5050 2550 50  0001 C CNN
F 3 "" H 5050 2550 50  0001 C CNN
	1    5050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2650 5200 2950
$Comp
L power:GNDA #PWR0109
U 1 1 5FB0640B
P 4750 3450
F 0 "#PWR0109" H 4750 3200 50  0001 C CNN
F 1 "GNDA" H 4755 3277 50  0000 C CNN
F 2 "" H 4750 3450 50  0001 C CNN
F 3 "" H 4750 3450 50  0001 C CNN
	1    4750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2650 5400 2650
Wire Wire Line
	5400 2650 5400 2950
Wire Wire Line
	5400 2650 5600 2650
Wire Wire Line
	5600 2650 5600 2950
Connection ~ 5400 2650
$Comp
L power:GND #PWR0110
U 1 1 5FB1632C
P 7250 4100
F 0 "#PWR0110" H 7250 3850 50  0001 C CNN
F 1 "GND" H 7255 3927 50  0000 C CNN
F 2 "" H 7250 4100 50  0001 C CNN
F 3 "" H 7250 4100 50  0001 C CNN
	1    7250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3600 7250 3700
Connection ~ 7250 3700
Wire Wire Line
	7250 3700 7250 3800
Connection ~ 7250 3800
Wire Wire Line
	7250 3800 7250 3900
Connection ~ 7250 3900
Wire Wire Line
	7250 3900 7250 4050
Wire Wire Line
	6650 3900 6650 4050
Wire Wire Line
	6650 4050 7250 4050
Connection ~ 7250 4050
Wire Wire Line
	7250 4050 7250 4100
$Comp
L power:+10V #PWR0111
U 1 1 5FB18D98
P 7400 2100
F 0 "#PWR0111" H 7400 1950 50  0001 C CNN
F 1 "+10V" V 7415 2228 50  0000 L CNN
F 2 "" H 7400 2100 50  0001 C CNN
F 3 "" H 7400 2100 50  0001 C CNN
	1    7400 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FB19178
P 7700 2400
F 0 "#PWR0112" H 7700 2150 50  0001 C CNN
F 1 "GND" H 7705 2227 50  0000 C CNN
F 2 "" H 7700 2400 50  0001 C CNN
F 3 "" H 7700 2400 50  0001 C CNN
	1    7700 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0113
U 1 1 5FB19703
P 8100 2100
F 0 "#PWR0113" H 8100 1950 50  0001 C CNN
F 1 "+3.3V" V 8115 2228 50  0000 L CNN
F 2 "" H 8100 2100 50  0001 C CNN
F 3 "" H 8100 2100 50  0001 C CNN
	1    8100 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 5FB19E62
P 8050 2350
F 0 "C11" H 8165 2396 50  0000 L CNN
F 1 "1uF" H 8165 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8088 2200 50  0001 C CNN
F 3 "~" H 8050 2350 50  0001 C CNN
	1    8050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2100 8050 2100
Wire Wire Line
	8050 2200 8050 2100
Connection ~ 8050 2100
Wire Wire Line
	8050 2100 8100 2100
$Comp
L power:GND #PWR0114
U 1 1 5FB1E929
P 8050 2500
F 0 "#PWR0114" H 8050 2250 50  0001 C CNN
F 1 "GND" H 8055 2327 50  0000 C CNN
F 2 "" H 8050 2500 50  0001 C CNN
F 3 "" H 8050 2500 50  0001 C CNN
	1    8050 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0115
U 1 1 5FB1EF75
P 6650 3800
F 0 "#PWR0115" H 6650 3650 50  0001 C CNN
F 1 "+3.3V" V 6665 3928 50  0000 L CNN
F 2 "" H 6650 3800 50  0001 C CNN
F 3 "" H 6650 3800 50  0001 C CNN
	1    6650 3800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 5FAEA976
P 8100 3250
F 0 "J3" H 8072 3132 50  0000 R CNN
F 1 "Conn_01x06_Male" H 8072 3223 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 8100 3250 50  0001 C CNN
F 3 "~" H 8100 3250 50  0001 C CNN
	1    8100 3250
	-1   0    0    -1  
$EndComp
$Comp
L power:+10V #PWR0116
U 1 1 5FAECAAB
P 7900 3050
F 0 "#PWR0116" H 7900 2900 50  0001 C CNN
F 1 "+10V" H 7915 3223 50  0000 C CNN
F 2 "" H 7900 3050 50  0001 C CNN
F 3 "" H 7900 3050 50  0001 C CNN
	1    7900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5FAECD5D
P 7900 3550
F 0 "#PWR0117" H 7900 3300 50  0001 C CNN
F 1 "GND" H 7905 3377 50  0000 C CNN
F 2 "" H 7900 3550 50  0001 C CNN
F 3 "" H 7900 3550 50  0001 C CNN
	1    7900 3550
	1    0    0    -1  
$EndComp
Text Label 6000 3350 0    50   ~ 0
DOUT
Text Label 7250 3350 0    50   ~ 0
DOUT
Text Label 6650 3350 2    50   ~ 0
DOUT_BUF
Text Label 7900 3350 2    50   ~ 0
DOUT_BUF
Wire Wire Line
	7250 3150 7900 3150
Wire Wire Line
	7250 3250 7900 3250
Wire Wire Line
	7250 3450 7900 3450
Wire Wire Line
	6000 3150 6650 3150
Wire Wire Line
	6000 3250 6650 3250
Wire Wire Line
	6000 3450 6650 3450
Text Notes 7400 4400 0    50   ~ 0
buffer in digital ground - \nprevent ADC from driving large\ncapacitance loads, minimize \nanalog domain noise
$Comp
L power:GND #PWR0119
U 1 1 5FB40843
P 3900 4400
F 0 "#PWR0119" H 3900 4150 50  0001 C CNN
F 1 "GND" H 3905 4227 50  0000 C CNN
F 2 "" H 3900 4400 50  0001 C CNN
F 3 "" H 3900 4400 50  0001 C CNN
	1    3900 4400
	1    0    0    -1  
$EndComp
Text Notes 3500 4750 0    50   ~ 0
at star node
Wire Wire Line
	3200 3050 3400 3050
Wire Wire Line
	4450 3150 4750 3150
Connection ~ 4450 3150
$Comp
L amps:lmp7721 U1
U 1 1 5FAB47FA
P 2350 3200
F 0 "U1" H 2400 3265 50  0000 C CNN
F 1 "lmp7721" H 2400 3174 50  0000 C CNN
F 2 "amps:lmp7721" H 2400 3250 50  0001 C CNN
F 3 "" H 2400 3250 50  0001 C CNN
	1    2350 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 2800 2550 2800
$Comp
L Connector:Conn_01x01_Male J1
U 1 1 5FAC25A5
P 900 2800
F 0 "J1" H 1008 2981 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1008 2890 50  0000 C CNN
F 2 "smtcontacts:smallpad" H 900 2800 50  0001 C CNN
F 3 "~" H 900 2800 50  0001 C CNN
	1    900  2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 5FAC2C6B
P 900 3200
F 0 "J2" H 1008 3381 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1008 3290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 900 3200 50  0001 C CNN
F 3 "~" H 900 3200 50  0001 C CNN
	1    900  3200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0121
U 1 1 5FACBC22
P 2050 4500
F 0 "#PWR0121" H 2050 4250 50  0001 C CNN
F 1 "GNDA" H 2055 4327 50  0000 C CNN
F 2 "" H 2050 4500 50  0001 C CNN
F 3 "" H 2050 4500 50  0001 C CNN
	1    2050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2350 2850 2250
Wire Wire Line
	2550 2150 2550 2350
$Comp
L Device:C C3
U 1 1 5FABD0E4
P 2700 2350
F 0 "C3" V 2550 2350 50  0000 C CNN
F 1 "10pF" V 2550 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2738 2200 50  0001 C CNN
F 3 "~" H 2700 2350 50  0001 C CNN
	1    2700 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5FAB744C
P 2700 2150
F 0 "R3" V 2600 2300 50  0000 C CNN
F 1 "100M" V 2600 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2630 2150 50  0001 C CNN
F 3 "~" H 2700 2150 50  0001 C CNN
	1    2700 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 2800 2550 2350
Connection ~ 2550 2800
Connection ~ 2550 2350
Wire Wire Line
	2850 2250 3200 2250
Wire Wire Line
	3200 2250 3200 3050
Connection ~ 2850 2250
Wire Wire Line
	2850 2250 2850 2150
Wire Wire Line
	3000 3500 3200 3500
Wire Wire Line
	3200 3500 3200 3050
Connection ~ 3200 3050
Wire Wire Line
	1250 3900 1850 3900
Connection ~ 1250 3900
Wire Wire Line
	1850 4200 2050 4200
Connection ~ 1850 4200
$Comp
L power:+3V0 #PWR0122
U 1 1 5FB0E20D
P 1250 3900
F 0 "#PWR0122" H 1250 3750 50  0001 C CNN
F 1 "+3V0" H 1265 4073 50  0000 C CNN
F 2 "" H 1250 3900 50  0001 C CNN
F 3 "" H 1250 3900 50  0001 C CNN
	1    1250 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR0123
U 1 1 5FB0E557
P 2850 2800
F 0 "#PWR0123" H 2850 2650 50  0001 C CNN
F 1 "+3V0" H 2865 2973 50  0000 C CNN
F 2 "" H 2850 2800 50  0001 C CNN
F 3 "" H 2850 2800 50  0001 C CNN
	1    2850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2800 2700 2650
Wire Wire Line
	2700 2650 2150 2650
Wire Wire Line
	2150 2650 2150 3600
Wire Wire Line
	2150 3600 2550 3600
Wire Wire Line
	2700 3600 2700 3500
NoConn ~ 3000 2800
$Comp
L amps:OPA364 U2
U 1 1 5FB17508
P 3950 3400
F 0 "U2" V 3879 3238 50  0000 L CNN
F 1 "OPA364" V 3970 3238 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 3950 3400 50  0001 C CNN
F 3 "" H 3950 3400 50  0001 C CNN
	1    3950 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 3700 3400 3850
Wire Wire Line
	3400 3850 4100 3850
Wire Wire Line
	4100 3850 4100 3150
Wire Wire Line
	4100 3050 3700 3050
Wire Wire Line
	4150 3150 4100 3150
Connection ~ 4100 3150
Wire Wire Line
	4100 3150 4100 3050
Wire Wire Line
	4000 2650 4000 3700
Wire Wire Line
	4000 3700 3700 3700
Wire Wire Line
	4000 2650 5200 2650
Text Notes 750  6200 0    50   ~ 0
saturates at 33nA
$Comp
L power:GNDA #PWR0120
U 1 1 5FABE729
P 1100 3200
F 0 "#PWR0120" H 1100 2950 50  0001 C CNN
F 1 "GNDA" H 1105 3027 50  0000 C CNN
F 2 "" H 1100 3200 50  0001 C CNN
F 3 "" H 1100 3200 50  0001 C CNN
	1    1100 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0124
U 1 1 5FB0ED7F
P 2850 3500
F 0 "#PWR0124" H 2850 3250 50  0001 C CNN
F 1 "GNDA" H 2855 3327 50  0000 C CNN
F 2 "" H 2850 3500 50  0001 C CNN
F 3 "" H 2850 3500 50  0001 C CNN
	1    2850 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0118
U 1 1 5FB3FFB2
P 3600 4400
F 0 "#PWR0118" H 3600 4150 50  0001 C CNN
F 1 "GNDA" H 3605 4227 50  0000 C CNN
F 2 "" H 3600 4400 50  0001 C CNN
F 3 "" H 3600 4400 50  0001 C CNN
	1    3600 4400
	1    0    0    -1  
$EndComp
Connection ~ 1250 4200
$Comp
L power:GNDA #PWR0106
U 1 1 5FAE1095
P 1250 4200
F 0 "#PWR0106" H 1250 3950 50  0001 C CNN
F 1 "GNDA" H 1255 4027 50  0000 C CNN
F 2 "" H 1250 4200 50  0001 C CNN
F 3 "" H 1250 4200 50  0001 C CNN
	1    1250 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5FB594B4
P 3750 4400
F 0 "R5" V 3957 4400 50  0000 C CNN
F 1 "0" V 3866 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3680 4400 50  0001 C CNN
F 3 "~" H 3750 4400 50  0001 C CNN
	1    3750 4400
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5FABE48F
P 1150 1750
F 0 "H1" H 1250 1796 50  0000 L CNN
F 1 "MountingHole" H 1250 1705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 1150 1750 50  0001 C CNN
F 3 "~" H 1150 1750 50  0001 C CNN
	1    1150 1750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FABEEAE
P 1800 1500
F 0 "H2" H 1900 1546 50  0000 L CNN
F 1 "MountingHole" H 1900 1455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 1800 1500 50  0001 C CNN
F 3 "~" H 1800 1500 50  0001 C CNN
	1    1800 1500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FABF5E8
P 2500 1350
F 0 "H4" H 2600 1396 50  0000 L CNN
F 1 "MountingHole" H 2600 1305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2500 1350 50  0001 C CNN
F 3 "~" H 2500 1350 50  0001 C CNN
	1    2500 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FABFC40
P 2250 1100
F 0 "H3" H 2350 1146 50  0000 L CNN
F 1 "MountingHole" H 2350 1055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 2250 1100 50  0001 C CNN
F 3 "~" H 2250 1100 50  0001 C CNN
	1    2250 1100
	1    0    0    -1  
$EndComp
Connection ~ 2550 3600
Wire Wire Line
	2550 3600 2550 3500
Wire Wire Line
	2550 3600 2700 3600
$Comp
L amps:OPA1671 U7
U 1 1 5FAF1A53
P 2850 4500
F 0 "U7" H 2850 3935 50  0000 C CNN
F 1 "OPA1671" H 2850 4026 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 2850 4500 50  0001 C CNN
F 3 "" H 2850 4500 50  0001 C CNN
	1    2850 4500
	0    1    1    0   
$EndComp
$Comp
L Device:C C12
U 1 1 5FAF7CB5
P 2050 4350
F 0 "C12" H 2165 4396 50  0000 L CNN
F 1 "1uF" H 2165 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2088 4200 50  0001 C CNN
F 3 "~" H 2050 4350 50  0001 C CNN
	1    2050 4350
	1    0    0    -1  
$EndComp
Connection ~ 2050 4200
Wire Wire Line
	1850 4500 2050 4500
Connection ~ 2050 4500
Wire Wire Line
	2050 4200 2500 4200
Wire Wire Line
	2700 4200 2700 4150
Connection ~ 2700 3600
Wire Wire Line
	2500 4800 2500 4950
Wire Wire Line
	2500 4950 2850 4950
Wire Wire Line
	2850 4950 2850 4150
Wire Wire Line
	2850 4150 2700 4150
Connection ~ 2700 4150
Wire Wire Line
	2700 4150 2700 3600
$Comp
L power:GNDA #PWR0125
U 1 1 5FB13D2A
P 2600 4050
F 0 "#PWR0125" H 2600 3800 50  0001 C CNN
F 1 "GNDA" V 2605 3923 50  0000 R CNN
F 2 "" H 2600 4050 50  0001 C CNN
F 3 "" H 2600 4050 50  0001 C CNN
	1    2600 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 4050 2600 4200
$Comp
L power:+3V0 #PWR0126
U 1 1 5FB16F72
P 2950 4800
F 0 "#PWR0126" H 2950 4650 50  0001 C CNN
F 1 "+3V0" H 2965 4973 50  0000 C CNN
F 2 "" H 2950 4800 50  0001 C CNN
F 3 "" H 2950 4800 50  0001 C CNN
	1    2950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4800 2950 4800
$Comp
L Device:C C13
U 1 1 5FB40362
P 200 4050
F 0 "C13" H 315 4096 50  0000 L CNN
F 1 "100nF" H 200 3800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 238 3900 50  0001 C CNN
F 3 "~" H 200 4050 50  0001 C CNN
	1    200  4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	200  3900 600  3900
Connection ~ 600  3900
Wire Wire Line
	200  4200 600  4200
Connection ~ 600  4200
$EndSCHEMATC
