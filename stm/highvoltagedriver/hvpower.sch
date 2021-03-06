EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L Connector:Screw_Terminal_01x03 J3
U 1 1 5F6CE98C
P 2350 1900
F 0 "J3" H 2430 1942 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 2430 1851 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 2350 1900 50  0001 C CNN
F 3 "~" H 2350 1900 50  0001 C CNN
	1    2350 1900
	0    -1   -1   0   
$EndComp
Text Notes 2600 1550 0    50   ~ 0
3 terminal transformer output. Expect >80V out with center tap
$Comp
L Device:D D4
U 1 1 5F6D4A83
P 2800 2700
F 0 "D4" V 2846 2620 50  0000 R CNN
F 1 "D" V 2755 2620 50  0000 R CNN
F 2 "Diode_SMD:D_SMF" H 2800 2700 50  0001 C CNN
F 3 "~" H 2800 2700 50  0001 C CNN
	1    2800 2700
	0    -1   -1   0   
$EndComp
Text Notes 2700 1800 0    50   ~ 0
RS70D-HM3-08 rectification diodes
$Comp
L Device:D D3
U 1 1 5F6D7E78
P 2550 2700
F 0 "D3" V 2596 2620 50  0000 R CNN
F 1 "D" V 2505 2620 50  0000 R CNN
F 2 "Diode_SMD:D_SMF" H 2550 2700 50  0001 C CNN
F 3 "~" H 2550 2700 50  0001 C CNN
	1    2550 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D1
U 1 1 5F6D93D4
P 1900 2700
F 0 "D1" V 1946 2620 50  0000 R CNN
F 1 "D" V 1855 2620 50  0000 R CNN
F 2 "Diode_SMD:D_SMF" H 1900 2700 50  0001 C CNN
F 3 "~" H 1900 2700 50  0001 C CNN
	1    1900 2700
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 5F6D93DA
P 2150 2700
F 0 "D2" V 2196 2620 50  0000 R CNN
F 1 "D" V 2105 2620 50  0000 R CNN
F 2 "Diode_SMD:D_SMF" H 2150 2700 50  0001 C CNN
F 3 "~" H 2150 2700 50  0001 C CNN
	1    2150 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 2550 1900 2100
Wire Wire Line
	1900 2100 2250 2100
Wire Wire Line
	2800 2550 2800 2100
Wire Wire Line
	2800 2100 2450 2100
Wire Wire Line
	2150 2550 2150 2350
Wire Wire Line
	2150 2350 2450 2350
Wire Wire Line
	2450 2350 2450 2100
Connection ~ 2450 2100
Wire Wire Line
	2550 2550 2550 2300
Wire Wire Line
	2550 2300 2250 2300
Wire Wire Line
	2250 2300 2250 2100
Connection ~ 2250 2100
Wire Wire Line
	1900 2850 2050 2850
Wire Wire Line
	2550 2850 2650 2850
$Comp
L Device:CP CP1
U 1 1 5F6DB9A6
P 2200 3200
F 0 "CP1" V 1945 3200 50  0000 C CNN
F 1 "200uF" V 2036 3200 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 2238 3050 50  0001 C CNN
F 3 "~" H 2200 3200 50  0001 C CNN
	1    2200 3200
	0    1    1    0   
$EndComp
$Comp
L Device:CP CP2
U 1 1 5F6DCCFC
P 2500 3200
F 0 "CP2" V 2245 3200 50  0000 C CNN
F 1 "200uF" V 2336 3200 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 2538 3050 50  0001 C CNN
F 3 "~" H 2500 3200 50  0001 C CNN
	1    2500 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 2100 2350 3200
Connection ~ 2350 3200
Wire Wire Line
	2650 3200 2650 2850
Connection ~ 2650 2850
Wire Wire Line
	2650 2850 2800 2850
Wire Wire Line
	2050 3200 2050 2850
Connection ~ 2050 2850
Wire Wire Line
	2050 2850 2150 2850
$Comp
L Device:C C3
U 1 1 5F6DF510
P 2500 3650
F 0 "C3" V 2248 3650 50  0000 C CNN
F 1 "1uF" V 2339 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2538 3500 50  0001 C CNN
F 3 "~" H 2500 3650 50  0001 C CNN
	1    2500 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 3200 2050 3650
Connection ~ 2050 3200
Wire Wire Line
	2650 3200 2650 3650
Connection ~ 2650 3200
Wire Wire Line
	2350 3200 2350 3650
Connection ~ 2350 3650
$Comp
L Regulator_Linear:LM337_TO263 U2
U 1 1 5F6F7F72
P 2650 4100
F 0 "U2" V 2350 4350 50  0000 C CNN
F 1 "TL783" V 2250 4300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 2650 3900 50  0001 C CIN
F 3 "https://www.onsemi.com/pub/Collateral/LM337-D.PDF" H 2650 4100 50  0001 C CNN
	1    2650 4100
	0    1    -1   0   
$EndComp
Text Notes 2950 3550 0    50   ~ 0
TL783 LDOs
$Comp
L Device:R R2
U 1 1 5F70226C
P 2800 4600
F 0 "R2" V 2593 4600 50  0000 C CNN
F 1 "100" V 2684 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2730 4600 50  0001 C CNN
F 3 "~" H 2800 4600 50  0001 C CNN
	1    2800 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 4400 2650 4600
$Comp
L power:GND #PWR02
U 1 1 5F7040C0
P 2350 3650
F 0 "#PWR02" H 2350 3400 50  0001 C CNN
F 1 "GND" H 2355 3477 50  0000 C CNN
F 2 "" H 2350 3650 50  0001 C CNN
F 3 "" H 2350 3650 50  0001 C CNN
	1    2350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4100 2950 4600
Wire Wire Line
	2650 3650 2650 3800
Connection ~ 2650 3650
$Comp
L Device:R_POT RV2
U 1 1 5F70BE38
P 3100 4600
F 0 "RV2" V 2850 4450 50  0000 C CNN
F 1 "10k" V 2950 4450 50  0000 C CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_PRS11S_Vertical" H 3100 4600 50  0001 C CNN
F 3 "~" H 3100 4600 50  0001 C CNN
	1    3100 4600
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F70D7BC
P 3100 4750
F 0 "#PWR04" H 3100 4500 50  0001 C CNN
F 1 "GND" H 3105 4577 50  0000 C CNN
F 2 "" H 3100 4750 50  0001 C CNN
F 3 "" H 3100 4750 50  0001 C CNN
	1    3100 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5F71037B
P 2500 4750
F 0 "C4" H 2150 5100 50  0000 L CNN
F 1 "10uF" H 2400 5000 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2538 4600 50  0001 C CNN
F 3 "~" H 2500 4750 50  0001 C CNN
	1    2500 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5F719959
P 2200 4750
F 0 "C2" H 1900 4600 50  0000 L CNN
F 1 "10uF" H 2150 4500 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2238 4600 50  0001 C CNN
F 3 "~" H 2200 4750 50  0001 C CNN
	1    2200 4750
	-1   0    0    1   
$EndComp
Connection ~ 2950 4600
Wire Wire Line
	2500 4600 2650 4600
Connection ~ 2650 4600
$Comp
L power:GND #PWR03
U 1 1 5F7218E8
P 2500 4900
F 0 "#PWR03" H 2500 4650 50  0001 C CNN
F 1 "GND" H 2505 4727 50  0000 C CNN
F 2 "" H 2500 4900 50  0001 C CNN
F 3 "" H 2500 4900 50  0001 C CNN
	1    2500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4600 2200 4600
$Comp
L power:GND #PWR01
U 1 1 5F726581
P 2200 4900
F 0 "#PWR01" H 2200 4650 50  0001 C CNN
F 1 "GND" H 2205 4727 50  0000 C CNN
F 2 "" H 2200 4900 50  0001 C CNN
F 3 "" H 2200 4900 50  0001 C CNN
	1    2200 4900
	1    0    0    -1  
$EndComp
Text HLabel 2650 4600 3    50   Output ~ 0
HV+
Text HLabel 2050 4850 3    50   Output ~ 0
HV-
Text HLabel 3200 4000 1    50   Output ~ 0
GND
$Comp
L power:GND #PWR05
U 1 1 5F73422B
P 3200 4000
F 0 "#PWR05" H 3200 3750 50  0001 C CNN
F 1 "GND" H 3205 3827 50  0000 C CNN
F 2 "" H 3200 4000 50  0001 C CNN
F 3 "" H 3200 4000 50  0001 C CNN
	1    3200 4000
	1    0    0    -1  
$EndComp
Connection ~ 2050 3650
Wire Wire Line
	2050 3650 2050 3800
$Comp
L Device:C C1
U 1 1 5F6DF50A
P 2200 3650
F 0 "C1" V 1948 3650 50  0000 C CNN
F 1 "1uF" V 2039 3650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2238 3500 50  0001 C CNN
F 3 "~" H 2200 3650 50  0001 C CNN
	1    2200 3650
	0    1    1    0   
$EndComp
$Sheet
S 1800 3800 350  550 
U 5F6F32F2
F0 "negreg" 50
F1 "negreg.sch" 50
F2 "GND" I B 1900 4350 50 
F3 "VIN" I B 2050 4350 50 
F4 "VNEG" O T 2050 3800 50 
$EndSheet
Wire Wire Line
	2050 4350 2050 4600
$Comp
L power:GND #PWR0101
U 1 1 5F6FBE56
P 1900 4500
F 0 "#PWR0101" H 1900 4250 50  0001 C CNN
F 1 "GND" H 1905 4327 50  0000 C CNN
F 2 "" H 1900 4500 50  0001 C CNN
F 3 "" H 1900 4500 50  0001 C CNN
	1    1900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4500 1900 4350
Connection ~ 2050 4600
Wire Wire Line
	2050 4600 2050 4850
Text Notes 2800 3700 0    50   ~ 0
TL783 pins are in right orientation - in pin 3, out pin 2
$EndSCHEMATC
