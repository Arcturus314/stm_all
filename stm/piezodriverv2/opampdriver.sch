EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L piezodriver-rescue:OPA454AIDDA-OPA454AIDDA U7
U 1 1 5F766E94
P 5400 3250
AR Path="/5F766B9F/5F766E94" Ref="U7"  Part="1" 
AR Path="/5F77FFF7/5F766E94" Ref="U8"  Part="1" 
AR Path="/5F7806A5/5F766E94" Ref="U9"  Part="1" 
AR Path="/5F780C51/5F766E94" Ref="U10"  Part="1" 
AR Path="/5FB27682/5F766E94" Ref="U11"  Part="1" 
AR Path="/5F766E94" Ref="U?"  Part="1" 
F 0 "U7" H 5400 4020 50  0000 C CNN
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
L Device:R R7
U 1 1 5F77303F
P 3850 2600
AR Path="/5F766B9F/5F77303F" Ref="R7"  Part="1" 
AR Path="/5F77FFF7/5F77303F" Ref="R11"  Part="1" 
AR Path="/5F7806A5/5F77303F" Ref="R15"  Part="1" 
AR Path="/5F780C51/5F77303F" Ref="R19"  Part="1" 
AR Path="/5FB27682/5F77303F" Ref="R23"  Part="1" 
F 0 "R7" H 3920 2646 50  0000 L CNN
F 1 "100K" H 3920 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3780 2600 50  0001 C CNN
F 3 "~" H 3850 2600 50  0001 C CNN
	1    3850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2750 3850 3150
$Comp
L Device:R R8
U 1 1 5F774C71
P 4350 3400
AR Path="/5F766B9F/5F774C71" Ref="R8"  Part="1" 
AR Path="/5F77FFF7/5F774C71" Ref="R12"  Part="1" 
AR Path="/5F7806A5/5F774C71" Ref="R16"  Part="1" 
AR Path="/5F780C51/5F774C71" Ref="R20"  Part="1" 
AR Path="/5FB27682/5F774C71" Ref="R24"  Part="1" 
F 0 "R8" H 4420 3446 50  0000 L CNN
F 1 "100K" H 4420 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4280 3400 50  0001 C CNN
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
L Device:R R9
U 1 1 5F778502
P 4400 2000
AR Path="/5F766B9F/5F778502" Ref="R9"  Part="1" 
AR Path="/5F77FFF7/5F778502" Ref="R13"  Part="1" 
AR Path="/5F7806A5/5F778502" Ref="R17"  Part="1" 
AR Path="/5F780C51/5F778502" Ref="R21"  Part="1" 
AR Path="/5FB27682/5F778502" Ref="R25"  Part="1" 
F 0 "R9" V 4193 2000 50  0000 C CNN
F 1 "50K" V 4284 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 2000 50  0001 C CNN
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
L Device:C C20
U 1 1 5F77B48A
P 4350 1500
AR Path="/5F766B9F/5F77B48A" Ref="C20"  Part="1" 
AR Path="/5F77FFF7/5F77B48A" Ref="C24"  Part="1" 
AR Path="/5F7806A5/5F77B48A" Ref="C28"  Part="1" 
AR Path="/5F780C51/5F77B48A" Ref="C32"  Part="1" 
AR Path="/5FB27682/5F77B48A" Ref="C36"  Part="1" 
F 0 "C20" V 4098 1500 50  0000 C CNN
F 1 "1nF" V 4189 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4388 1350 50  0001 C CNN
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
L Device:R R6
U 1 1 5F777658
P 3350 3050
AR Path="/5F766B9F/5F777658" Ref="R6"  Part="1" 
AR Path="/5F77FFF7/5F777658" Ref="R10"  Part="1" 
AR Path="/5F7806A5/5F777658" Ref="R14"  Part="1" 
AR Path="/5F780C51/5F777658" Ref="R18"  Part="1" 
AR Path="/5FB27682/5F777658" Ref="R22"  Part="1" 
F 0 "R6" H 3420 3096 50  0000 L CNN
F 1 "1k" H 3420 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3280 3050 50  0001 C CNN
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
$Comp
L Device:C C22
U 1 1 5FABCDF0
P 7900 3250
AR Path="/5F766B9F/5FABCDF0" Ref="C22"  Part="1" 
AR Path="/5F77FFF7/5FABCDF0" Ref="C26"  Part="1" 
AR Path="/5F7806A5/5FABCDF0" Ref="C30"  Part="1" 
AR Path="/5F780C51/5FABCDF0" Ref="C34"  Part="1" 
AR Path="/5FB27682/5FABCDF0" Ref="C38"  Part="1" 
F 0 "C22" H 8015 3296 50  0000 L CNN
F 1 "1uF" H 8015 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7938 3100 50  0001 C CNN
F 3 "~" H 7900 3250 50  0001 C CNN
	1    7900 3250
	1    0    0    -1  
$EndComp
Text HLabel 7900 3100 1    50   Input ~ 0
+VDC
Text HLabel 7900 3700 3    50   Input ~ 0
-VDC
Text Notes 8250 3250 0    50   ~ 0
100V
Wire Wire Line
	7900 3400 8000 3400
$Comp
L Device:C C23
U 1 1 5FADCEE5
P 7900 3550
AR Path="/5F766B9F/5FADCEE5" Ref="C23"  Part="1" 
AR Path="/5F77FFF7/5FADCEE5" Ref="C27"  Part="1" 
AR Path="/5F7806A5/5FADCEE5" Ref="C31"  Part="1" 
AR Path="/5F780C51/5FADCEE5" Ref="C35"  Part="1" 
AR Path="/5FB27682/5FADCEE5" Ref="C39"  Part="1" 
F 0 "C23" H 8015 3596 50  0000 L CNN
F 1 "1uF" H 8015 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7938 3400 50  0001 C CNN
F 3 "~" H 7900 3550 50  0001 C CNN
	1    7900 3550
	1    0    0    -1  
$EndComp
Connection ~ 7900 3400
$Comp
L Device:C C21
U 1 1 5FADD8C5
P 7500 3250
AR Path="/5F766B9F/5FADD8C5" Ref="C21"  Part="1" 
AR Path="/5F77FFF7/5FADD8C5" Ref="C25"  Part="1" 
AR Path="/5F7806A5/5FADD8C5" Ref="C29"  Part="1" 
AR Path="/5F780C51/5FADD8C5" Ref="C33"  Part="1" 
AR Path="/5FB27682/5FADD8C5" Ref="C37"  Part="1" 
F 0 "C21" H 7615 3296 50  0000 L CNN
F 1 "100nF" H 7615 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7538 3100 50  0001 C CNN
F 3 "~" H 7500 3250 50  0001 C CNN
	1    7500 3250
	1    0    0    -1  
$EndComp
Text HLabel 7500 3100 1    50   Input ~ 0
BIAS
Wire Wire Line
	7500 3400 7900 3400
$Comp
L power:GNDA #PWR0104
U 1 1 5FE041A1
P 8000 3400
AR Path="/5F766B9F/5FE041A1" Ref="#PWR0104"  Part="1" 
AR Path="/5F77FFF7/5FE041A1" Ref="#PWR0105"  Part="1" 
AR Path="/5F7806A5/5FE041A1" Ref="#PWR0106"  Part="1" 
AR Path="/5F780C51/5FE041A1" Ref="#PWR0107"  Part="1" 
AR Path="/5FB27682/5FE041A1" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0104" H 8000 3150 50  0001 C CNN
F 1 "GNDA" V 8005 3272 50  0000 R CNN
F 2 "" H 8000 3400 50  0001 C CNN
F 3 "" H 8000 3400 50  0001 C CNN
	1    8000 3400
	0    -1   -1   0   
$EndComp
Text HLabel 4700 3450 3    50   Input ~ 0
-VDC
$EndSCHEMATC
