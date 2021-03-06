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
$Comp
L OPA454AIDDA:OPA454AIDDA U3
U 1 1 5F766E94
P 5400 3250
AR Path="/5F766B9F/5F766E94" Ref="U3"  Part="1" 
AR Path="/5F77FFF7/5F766E94" Ref="U4"  Part="1" 
AR Path="/5F7806A5/5F766E94" Ref="U5"  Part="1" 
AR Path="/5F780C51/5F766E94" Ref="U6"  Part="1" 
F 0 "U3" H 5400 4020 50  0000 C CNN
F 1 "OPA454AIDDA" H 5400 3929 50  0000 C CNN
F 2 "VREG_LM5017MR:NOPB" H 5400 3250 50  0001 L BNN
F 3 "" H 5400 3250 50  0001 C CNN
	1    5400 3250
	1    0    0    -1  
$EndComp
Text HLabel 6100 2500 1    50   Input ~ 0
+VDC
Text HLabel 6100 3900 3    50   Input ~ 0
-VDC
Wire Wire Line
	6100 2500 6100 2750
Wire Wire Line
	6100 3900 6100 3650
$Comp
L Device:R R1
U 1 1 5F77303F
P 3850 2600
AR Path="/5F766B9F/5F77303F" Ref="R1"  Part="1" 
AR Path="/5F77FFF7/5F77303F" Ref="R6"  Part="1" 
AR Path="/5F7806A5/5F77303F" Ref="R11"  Part="1" 
AR Path="/5F780C51/5F77303F" Ref="R16"  Part="1" 
F 0 "R1" H 3920 2646 50  0000 L CNN
F 1 "100K" H 3920 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3780 2600 50  0001 C CNN
F 3 "~" H 3850 2600 50  0001 C CNN
	1    3850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2750 3850 3150
$Comp
L Device:R R3
U 1 1 5F774C71
P 4350 3400
AR Path="/5F766B9F/5F774C71" Ref="R3"  Part="1" 
AR Path="/5F77FFF7/5F774C71" Ref="R8"  Part="1" 
AR Path="/5F7806A5/5F774C71" Ref="R13"  Part="1" 
AR Path="/5F780C51/5F774C71" Ref="R18"  Part="1" 
F 0 "R3" H 4420 3446 50  0000 L CNN
F 1 "100K" H 4420 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4280 3400 50  0001 C CNN
F 3 "~" H 4350 3400 50  0001 C CNN
	1    4350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3250 4700 3250
Text HLabel 3850 2350 1    50   Input ~ 0
+VDC
Text HLabel 4350 3600 3    50   Input ~ 0
-VDC
Wire Wire Line
	4350 3550 4350 3600
Wire Wire Line
	3850 2450 3850 2350
Text HLabel 4700 2950 0    50   Input ~ 0
BIAS
Wire Wire Line
	3850 3150 4700 3150
$Comp
L Device:R R4
U 1 1 5F778502
P 4400 2000
AR Path="/5F766B9F/5F778502" Ref="R4"  Part="1" 
AR Path="/5F77FFF7/5F778502" Ref="R9"  Part="1" 
AR Path="/5F7806A5/5F778502" Ref="R14"  Part="1" 
AR Path="/5F780C51/5F778502" Ref="R19"  Part="1" 
F 0 "R4" V 4193 2000 50  0000 C CNN
F 1 "50K" V 4284 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4330 2000 50  0001 C CNN
F 3 "~" H 4400 2000 50  0001 C CNN
	1    4400 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 2000 4250 2000
Wire Wire Line
	4550 2000 4750 2000
Wire Wire Line
	6400 2000 6400 2950
Wire Wire Line
	6400 2950 6100 2950
Connection ~ 6400 2950
$Comp
L Device:C C4
U 1 1 5F77B48A
P 4350 1500
AR Path="/5F766B9F/5F77B48A" Ref="C4"  Part="1" 
AR Path="/5F77FFF7/5F77B48A" Ref="C5"  Part="1" 
AR Path="/5F7806A5/5F77B48A" Ref="C6"  Part="1" 
AR Path="/5F780C51/5F77B48A" Ref="C7"  Part="1" 
F 0 "C4" V 4098 1500 50  0000 C CNN
F 1 "1nF" V 4189 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4388 1350 50  0001 C CNN
F 3 "~" H 4350 1500 50  0001 C CNN
	1    4350 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 1500 4200 2000
Wire Wire Line
	4500 1500 4750 1500
Wire Wire Line
	4750 1500 4750 2000
Connection ~ 4750 2000
Wire Wire Line
	4750 2000 6400 2000
Text HLabel 6800 2950 2    50   Output ~ 0
OUT
Wire Wire Line
	6800 2950 6400 2950
Wire Wire Line
	4200 2000 4200 3050
Connection ~ 4200 2000
Wire Wire Line
	4200 3050 4700 3050
Connection ~ 4200 3050
Wire Wire Line
	3500 3050 4200 3050
Text HLabel 3200 3050 0    50   Input ~ 0
SIG
$Comp
L Device:R R2
U 1 1 5F777658
P 3350 3050
AR Path="/5F766B9F/5F777658" Ref="R2"  Part="1" 
AR Path="/5F77FFF7/5F777658" Ref="R7"  Part="1" 
AR Path="/5F7806A5/5F777658" Ref="R12"  Part="1" 
AR Path="/5F780C51/5F777658" Ref="R17"  Part="1" 
F 0 "R2" H 3420 3096 50  0000 L CNN
F 1 "1k" H 3420 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3280 3050 50  0001 C CNN
F 3 "~" H 3350 3050 50  0001 C CNN
	1    3350 3050
	0    1    1    0   
$EndComp
Text Notes 5150 1650 0    50   ~ 0
GBP of 2.5MHz @ 50x gain 50kHz BW
Text Notes 5150 1750 0    50   ~ 0
10us settle time -> 100KHz
Text Notes 5150 1250 0    50   ~ 0
So low-pass filter w/ 5kHz RC
Text Notes 4000 1100 0    50   ~ 0
This provides 3kHz RC
Text Notes 4800 850  0    50   ~ 0
Alternatively, 10k / 5nF for 10x gain
$EndSCHEMATC
