EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L Device:D_Zener D5
U 1 1 5F6F35F3
P 4500 2400
F 0 "D5" H 4500 2617 50  0000 C CNN
F 1 "D_Zener" H 4500 2526 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" H 4500 2400 50  0001 C CNN
F 3 "~" H 4500 2400 50  0001 C CNN
	1    4500 2400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:TIP127 Q1
U 1 1 5F6F4DDA
P 4700 2750
F 0 "Q1" H 4907 2704 50  0000 L CNN
F 1 "TIP127" H 4907 2795 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 4900 2675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP125.pdf" H 4700 2750 50  0001 L CNN
	1    4700 2750
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 2550 4500 2750
Text HLabel 4500 2250 1    50   Input ~ 0
GND
Text HLabel 4800 2550 1    50   Input ~ 0
VIN
$Comp
L Device:R R1
U 1 1 5F6F7EE9
P 4500 2900
F 0 "R1" H 4350 2950 50  0000 L CNN
F 1 "10k" H 4300 2850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4430 2900 50  0001 C CNN
F 3 "~" H 4500 2900 50  0001 C CNN
	1    4500 2900
	1    0    0    -1  
$EndComp
Connection ~ 4500 2750
Wire Wire Line
	4500 3050 4800 3050
Wire Wire Line
	4800 3050 4800 2950
Text HLabel 4500 3050 3    50   Output ~ 0
VNEG
Text Notes 4400 2450 2    50   ~ 0
40V breakdown
Text Notes 3950 2300 0    50   ~ 0
UDZVFH43
$EndSCHEMATC
