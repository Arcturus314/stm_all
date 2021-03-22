EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 11
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
L Transistor_FET:BSS138 Q?
U 1 1 5F99F44A
P 5000 3300
AR Path="/5F99F208/5F99F44A" Ref="Q?"  Part="1" 
AR Path="/5F9A892E/5F99F44A" Ref="Q?"  Part="1" 
AR Path="/5F9EA171/5F99F44A" Ref="Q1"  Part="1" 
AR Path="/5F9F36CB/5F99F44A" Ref="Q2"  Part="1" 
F 0 "Q1" V 5249 3300 50  0000 C CNN
F 1 "BSS138" V 5340 3300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5200 3225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 5000 3300 50  0001 L CNN
	1    5000 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F9A0EFE
P 5200 3100
AR Path="/5F99F208/5F9A0EFE" Ref="R?"  Part="1" 
AR Path="/5F9A892E/5F9A0EFE" Ref="R?"  Part="1" 
AR Path="/5F9EA171/5F9A0EFE" Ref="R2"  Part="1" 
AR Path="/5F9F36CB/5F9A0EFE" Ref="R4"  Part="1" 
F 0 "R2" H 5270 3146 50  0000 L CNN
F 1 "10k" H 5270 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5130 3100 50  0001 C CNN
F 3 "~" H 5200 3100 50  0001 C CNN
	1    5200 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F9A2CA5
P 4650 3100
AR Path="/5F99F208/5F9A2CA5" Ref="R?"  Part="1" 
AR Path="/5F9A892E/5F9A2CA5" Ref="R?"  Part="1" 
AR Path="/5F9EA171/5F9A2CA5" Ref="R1"  Part="1" 
AR Path="/5F9F36CB/5F9A2CA5" Ref="R3"  Part="1" 
F 0 "R1" H 4720 3146 50  0000 L CNN
F 1 "10k" H 4720 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4580 3100 50  0001 C CNN
F 3 "~" H 4650 3100 50  0001 C CNN
	1    4650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3100 5000 2950
Wire Wire Line
	5000 2950 4650 2950
Wire Wire Line
	4650 3250 4650 3400
Wire Wire Line
	4650 3400 4800 3400
Wire Wire Line
	5200 3250 5200 3400
Text HLabel 4650 2900 1    50   Input ~ 0
LV
Text HLabel 5200 2900 1    50   Input ~ 0
HV
Text HLabel 5250 3400 2    50   BiDi ~ 0
HVDATA
Text HLabel 4600 3400 0    50   BiDi ~ 0
LVDATA
Wire Wire Line
	4600 3400 4650 3400
Connection ~ 4650 3400
Wire Wire Line
	4650 2900 4650 2950
Connection ~ 4650 2950
Wire Wire Line
	5200 2900 5200 2950
Wire Wire Line
	5250 3400 5200 3400
Connection ~ 5200 3400
$EndSCHEMATC
