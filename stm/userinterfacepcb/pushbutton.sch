EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 9
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
L Switch:SW_Push SW2
U 1 1 5FAC4A8A
P 2350 3750
AR Path="/5FA0E809/5FAC4A8A" Ref="SW2"  Part="1" 
AR Path="/5FA2D16F/5FAC4A8A" Ref="SW7"  Part="1" 
AR Path="/5FA14ACD/5FAC4A8A" Ref="SW3"  Part="1" 
AR Path="/5FA1AB1D/5FAC4A8A" Ref="SW4"  Part="1" 
AR Path="/5FA1D666/5FAC4A8A" Ref="SW5"  Part="1" 
AR Path="/5FA2293D/5FAC4A8A" Ref="SW6"  Part="1" 
AR Path="/5FA2E427/5FAC4A8A" Ref="SW8"  Part="1" 
F 0 "SW6" H 2350 4035 50  0000 C CNN
F 1 "SW_Push" H 2350 3944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 2350 3950 50  0001 C CNN
F 3 "~" H 2350 3950 50  0001 C CNN
	1    2350 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0156
U 1 1 5FAC5230
P 2550 3750
AR Path="/5FA0E809/5FAC5230" Ref="#PWR0156"  Part="1" 
AR Path="/5FA2D16F/5FAC5230" Ref="#PWR0166"  Part="1" 
AR Path="/5FA14ACD/5FAC5230" Ref="#PWR0158"  Part="1" 
AR Path="/5FA1AB1D/5FAC5230" Ref="#PWR0160"  Part="1" 
AR Path="/5FA1D666/5FAC5230" Ref="#PWR0162"  Part="1" 
AR Path="/5FA2293D/5FAC5230" Ref="#PWR0164"  Part="1" 
AR Path="/5FA2E427/5FAC5230" Ref="#PWR0168"  Part="1" 
F 0 "#PWR0164" H 2550 3500 50  0001 C CNN
F 1 "GND" H 2555 3577 50  0000 C CNN
F 2 "" H 2550 3750 50  0001 C CNN
F 3 "" H 2550 3750 50  0001 C CNN
	1    2550 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5FAC5842
P 1950 3600
AR Path="/5FA0E809/5FAC5842" Ref="R13"  Part="1" 
AR Path="/5FA2D16F/5FAC5842" Ref="R18"  Part="1" 
AR Path="/5FA14ACD/5FAC5842" Ref="R14"  Part="1" 
AR Path="/5FA1AB1D/5FAC5842" Ref="R15"  Part="1" 
AR Path="/5FA1D666/5FAC5842" Ref="R16"  Part="1" 
AR Path="/5FA2293D/5FAC5842" Ref="R17"  Part="1" 
AR Path="/5FA2E427/5FAC5842" Ref="R19"  Part="1" 
F 0 "R17" H 2020 3646 50  0000 L CNN
F 1 "10k" H 2020 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1880 3600 50  0001 C CNN
F 3 "~" H 1950 3600 50  0001 C CNN
	1    1950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3750 2150 3750
Text HLabel 1800 3750 0    50   Input ~ 0
out
Wire Wire Line
	1800 3750 1950 3750
Connection ~ 1950 3750
$Comp
L power:+3.3V #PWR0157
U 1 1 5FAC6E65
P 1950 3450
AR Path="/5FA0E809/5FAC6E65" Ref="#PWR0157"  Part="1" 
AR Path="/5FA2D16F/5FAC6E65" Ref="#PWR0167"  Part="1" 
AR Path="/5FA14ACD/5FAC6E65" Ref="#PWR0159"  Part="1" 
AR Path="/5FA1AB1D/5FAC6E65" Ref="#PWR0161"  Part="1" 
AR Path="/5FA1D666/5FAC6E65" Ref="#PWR0163"  Part="1" 
AR Path="/5FA2293D/5FAC6E65" Ref="#PWR0165"  Part="1" 
AR Path="/5FA2E427/5FAC6E65" Ref="#PWR0169"  Part="1" 
F 0 "#PWR0165" H 1950 3300 50  0001 C CNN
F 1 "+3.3V" H 1965 3623 50  0000 C CNN
F 2 "" H 1950 3450 50  0001 C CNN
F 3 "" H 1950 3450 50  0001 C CNN
	1    1950 3450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
