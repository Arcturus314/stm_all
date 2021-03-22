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
L Device:Battery_Cell BT?
U 1 1 5FAA43E6
P 2100 3500
F 0 "BT?" H 2218 3596 50  0000 L CNN
F 1 "3V" H 2218 3505 50  0000 L CNN
F 2 "" V 2100 3560 50  0001 C CNN
F 3 "~" V 2100 3560 50  0001 C CNN
	1    2100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3300 2100 2750
Wire Wire Line
	2100 2750 2800 2750
$Comp
L Device:C C?
U 1 1 5FAAC60F
P 1800 3450
F 0 "C?" H 1915 3496 50  0000 L CNN
F 1 "1uF" H 1915 3405 50  0000 L CNN
F 2 "" H 1838 3300 50  0001 C CNN
F 3 "~" H 1800 3450 50  0001 C CNN
	1    1800 3450
	1    0    0    -1  
$EndComp
Connection ~ 2100 3300
Wire Wire Line
	1800 3600 2100 3600
$Comp
L Device:R R?
U 1 1 5FAAF1F3
P 2300 2550
F 0 "R?" V 2507 2550 50  0000 C CNN
F 1 "100k" V 2416 2550 50  0000 C CNN
F 2 "" V 2230 2550 50  0001 C CNN
F 3 "~" H 2300 2550 50  0001 C CNN
	1    2300 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FAB2BB9
P 2600 2550
F 0 "R?" V 2807 2550 50  0000 C CNN
F 1 "10k" V 2716 2550 50  0000 C CNN
F 2 "" V 2530 2550 50  0001 C CNN
F 3 "~" H 2600 2550 50  0001 C CNN
	1    2600 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3300 2100 3300
Wire Wire Line
	2450 2550 2450 2950
Wire Wire Line
	2450 2950 2600 2950
Connection ~ 2450 2550
Wire Wire Line
	2750 2550 2800 2550
Wire Wire Line
	2800 2550 2800 2750
Connection ~ 2800 2750
$Comp
L Device:R R?
U 1 1 5FAB744C
P 2750 3750
F 0 "R?" V 2650 3900 50  0000 C CNN
F 1 "100M" V 2650 3700 50  0000 C CNN
F 2 "" V 2680 3750 50  0001 C CNN
F 3 "~" H 2750 3750 50  0001 C CNN
	1    2750 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3150 2600 3750
Wire Wire Line
	2900 3750 3200 3750
Wire Wire Line
	3200 3750 3200 3050
$Comp
L pspice:ISOURCE I?
U 1 1 5FAB97DE
P 1100 3150
F 0 "I?" V 585 3150 50  0000 C CNN
F 1 "ISOURCE" V 676 3150 50  0000 C CNN
F 2 "" H 1100 3150 50  0001 C CNN
F 3 "~" H 1100 3150 50  0001 C CNN
	1    1100 3150
	0    -1   1    0   
$EndComp
Connection ~ 2600 3150
$Comp
L power:VSS #PWR?
U 1 1 5FABB590
P 700 3150
F 0 "#PWR?" H 700 3000 50  0001 C CNN
F 1 "VSS" H 715 3323 50  0000 C CNN
F 2 "" H 700 3150 50  0001 C CNN
F 3 "" H 700 3150 50  0001 C CNN
	1    700  3150
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5FABD0E4
P 2750 3950
F 0 "C?" V 2600 3950 50  0000 C CNN
F 1 "10pF" V 2500 3950 50  0000 C CNN
F 2 "" H 2788 3800 50  0001 C CNN
F 3 "~" H 2750 3950 50  0001 C CNN
	1    2750 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 3750 2600 3950
Connection ~ 2600 3750
Wire Wire Line
	2900 3950 2900 3750
Connection ~ 2900 3750
$Comp
L Device:C C?
U 1 1 5FAD62F9
P 1450 3450
F 0 "C?" H 1565 3496 50  0000 L CNN
F 1 "10nF" H 1565 3405 50  0000 L CNN
F 2 "" H 1488 3300 50  0001 C CNN
F 3 "~" H 1450 3450 50  0001 C CNN
	1    1450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3600 1800 3600
Connection ~ 1800 3600
Wire Wire Line
	1450 3300 1800 3300
Connection ~ 1800 3300
Wire Wire Line
	1500 3150 2600 3150
Text Notes 9650 3550 0    50   ~ 0
some test circuit?
Text Notes 9750 2000 0    50   ~ 0
not fast enough, worried about voltage swing. Maybe stick with single supply and current ADC
Text Notes 9550 2950 0    50   ~ 0
also low pass voltage reference on piezo driver board
Text Notes 9500 2800 0    50   ~ 0
https://hackaday.io/project/11829-diy-scanning-tunneling-microscope/log/38431-stm-preamp
Text Notes 9350 2400 0    50   ~ 0
new op amp - lmc6001 or lmc6081 or opa627 or opa637
Text Notes 9550 1950 0    50   ~ 0
adafruit adc - ads1115
Text Notes 9550 1750 0    50   ~ 0
big RF boxes, copper tape over?
Text Notes 9550 1600 0    50   ~ 0
screw holes\nexposed pads for shielding
Text Notes 9550 1350 0    50   ~ 0
guard ring, keep away from ground\nno soldermask\ninverting supplies - 2lr44\nbattery, second stage fun
Text Notes 9550 250  0    50   ~ 0
2nd order sallen key with 100khz cutoff on op amp?
Text Notes 9550 600  0    50   ~ 0
mount directly over hole, solder with smd pad
Text Notes 9250 4750 0    50   ~ 0
pseudo differential input w mcp3203
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
L Device:C C?
U 1 1 5FAE7929
P 5900 2350
F 0 "C?" H 6015 2396 50  0000 L CNN
F 1 "1nF" H 6015 2305 50  0000 L CNN
F 2 "" H 5938 2200 50  0001 C CNN
F 3 "~" H 5900 2350 50  0001 C CNN
	1    5900 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FAE748B
P 6250 2350
F 0 "C?" H 6365 2396 50  0000 L CNN
F 1 "100nF" H 6365 2305 50  0000 L CNN
F 2 "" H 6288 2200 50  0001 C CNN
F 3 "~" H 6250 2350 50  0001 C CNN
	1    6250 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FAE69C2
P 6750 2350
F 0 "C?" H 6865 2396 50  0000 L CNN
F 1 "4.7uF" H 6865 2305 50  0000 L CNN
F 2 "" H 6788 2200 50  0001 C CNN
F 3 "~" H 6750 2350 50  0001 C CNN
	1    6750 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+10V #PWR?
U 1 1 5FAE639C
P 6250 2200
F 0 "#PWR?" H 6250 2050 50  0001 C CNN
F 1 "+10V" H 6265 2373 50  0000 C CNN
F 2 "" H 6250 2200 50  0001 C CNN
F 3 "" H 6250 2200 50  0001 C CNN
	1    6250 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FAE5AEA
P 6250 2500
F 0 "#PWR?" H 6250 2250 50  0001 C CNN
F 1 "GND" H 6255 2327 50  0000 C CNN
F 2 "" H 6250 2500 50  0001 C CNN
F 3 "" H 6250 2500 50  0001 C CNN
	1    6250 2500
	1    0    0    -1  
$EndComp
Text Notes 4650 4300 0    50   ~ 0
16 bit ADC takes differential input\n16e-6V noise from voltage reference\n100uV noise total -> 1pA\n1lsb@16bits -> 50uV -> 0.5pA\n
Wire Wire Line
	4700 500  4950 500 
Wire Wire Line
	4150 500  4400 500 
$Comp
L Device:C C?
U 1 1 5FB02F4E
P 4550 500
F 0 "C?" V 4400 500 50  0000 C CNN
F 1 "100nF" V 4700 500 50  0000 C CNN
F 2 "" H 4588 350 50  0001 C CNN
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
L max6033:MAX6033 U?
U 1 1 5FAF3BE4
P 4600 1650
F 0 "U?" H 4600 1715 50  0000 C CNN
F 1 "MAX6033" H 4600 1624 50  0000 C CNN
F 2 "" H 4600 1650 50  0001 C CNN
F 3 "" H 4600 1650 50  0001 C CNN
	1    4600 1650
	1    0    0    -1  
$EndComp
Text Notes 5050 1500 0    50   ~ 0
max6033
$Comp
L power:+10V #PWR?
U 1 1 5FADC81D
P 4950 2050
F 0 "#PWR?" H 4950 1900 50  0001 C CNN
F 1 "+10V" H 4965 2223 50  0000 C CNN
F 2 "" H 4950 2050 50  0001 C CNN
F 3 "" H 4950 2050 50  0001 C CNN
	1    4950 2050
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FAD9853
P 4550 900
F 0 "C?" V 4400 900 50  0000 C CNN
F 1 "1uF" V 4700 900 50  0000 C CNN
F 2 "" H 4588 750 50  0001 C CNN
F 3 "~" H 4550 900 50  0001 C CNN
	1    4550 900 
	0    1    1    0   
$EndComp
Text Notes 5050 1700 0    50   ~ 0
3.3v reference +/-0.04%\n15mA output
Text Notes 2500 5800 0    50   ~ 0
won't work, need real differential ADC
Text Notes 1850 2250 0    50   ~ 0
0.3V bias on V+
Text Notes 1000 4450 0    50   ~ 0
thermal noise in resistor - rms 4e-5V
Text Notes 1000 4300 0    50   ~ 0
10pF cap provides 1KHz cutoff
Text Notes 1000 4200 0    50   ~ 0
Pole at 144Hz
Text Notes 1000 4100 0    50   ~ 0
Need CF>4e-14F for stability
Text Notes 1000 4000 0    50   ~ 0
15pF total input cap on op amp
$Comp
L pspice:OPAMP U?
U 1 1 5FAA2BAB
P 2900 3050
F 0 "U?" H 2900 2569 50  0000 C CNN
F 1 "OPAMP" H 2900 2660 50  0000 C CNN
F 2 "" H 2900 3050 50  0001 C CNN
F 3 "~" H 2900 3050 50  0001 C CNN
	1    2900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3600 2800 3350
Connection ~ 2100 3600
Wire Wire Line
	2100 3600 2800 3600
$Comp
L pspice:OPAMP U?
U 1 1 5FABF471
P 3700 3150
F 0 "U?" H 3850 3400 50  0000 L CNN
F 1 "OPAMP" H 3750 3300 50  0000 L CNN
F 2 "" H 3700 3150 50  0001 C CNN
F 3 "~" H 3700 3150 50  0001 C CNN
	1    3700 3150
	1    0    0    -1  
$EndComp
Connection ~ 5200 2650
$Comp
L Device:R R?
U 1 1 5FAC9B9B
P 4300 3150
F 0 "R?" V 4093 3150 50  0000 C CNN
F 1 "10" V 4184 3150 50  0000 C CNN
F 2 "" V 4230 3150 50  0001 C CNN
F 3 "~" H 4300 3150 50  0001 C CNN
	1    4300 3150
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FAD1CBC
P 4450 3300
F 0 "C?" H 4565 3346 50  0000 L CNN
F 1 "1uF" H 4200 3150 50  0000 L CNN
F 2 "" H 4488 3150 50  0001 C CNN
F 3 "~" H 4450 3300 50  0001 C CNN
	1    4450 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2650 3600 2850
Wire Wire Line
	3400 3250 3400 3700
Wire Wire Line
	3400 3700 4000 3700
Wire Wire Line
	4000 3700 4000 3150
Connection ~ 4000 3150
$Comp
L power:GNDA #PWR?
U 1 1 5FADC5E0
P 3600 3450
F 0 "#PWR?" H 3600 3200 50  0001 C CNN
F 1 "GNDA" H 3605 3277 50  0000 C CNN
F 2 "" H 3600 3450 50  0001 C CNN
F 3 "" H 3600 3450 50  0001 C CNN
	1    3600 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FADF3FE
P 4450 3450
F 0 "#PWR?" H 4450 3200 50  0001 C CNN
F 1 "GNDA" H 4455 3277 50  0000 C CNN
F 2 "" H 4450 3450 50  0001 C CNN
F 3 "" H 4450 3450 50  0001 C CNN
	1    4450 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FAE1095
P 2100 3600
F 0 "#PWR?" H 2100 3350 50  0001 C CNN
F 1 "GNDA" H 2105 3427 50  0000 C CNN
F 2 "" H 2100 3600 50  0001 C CNN
F 3 "" H 2100 3600 50  0001 C CNN
	1    2100 3600
	1    0    0    -1  
$EndComp
Text Notes 3250 3950 0    50   ~ 0
buffer stage, low pass @ 15KHz\nfor AA filter
$Comp
L power:GNDA #PWR?
U 1 1 5FAE66EC
P 5200 3650
F 0 "#PWR?" H 5200 3400 50  0001 C CNN
F 1 "GNDA" H 5205 3477 50  0000 C CNN
F 2 "" H 5200 3650 50  0001 C CNN
F 3 "" H 5200 3650 50  0001 C CNN
	1    5200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5FAE6EB1
P 4150 1950
F 0 "#PWR?" H 4150 1700 50  0001 C CNN
F 1 "GNDA" H 4155 1777 50  0000 C CNN
F 2 "" H 4150 1950 50  0001 C CNN
F 3 "" H 4150 1950 50  0001 C CNN
	1    4150 1950
	1    0    0    -1  
$EndComp
Connection ~ 4150 1950
$Comp
L Regulator_Linear:MCP1703A-3302_SOT89 U?
U 1 1 5FAE9D0C
P 7700 2100
F 0 "U?" H 7700 2342 50  0000 C CNN
F 1 "MCP1703A-3302_SOT89" H 7700 2251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 7700 2300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 7700 2050 50  0001 C CNN
	1    7700 2100
	1    0    0    -1  
$EndComp
$Comp
L sn74hcs125:SN74HCS125 U?
U 1 1 5FAEC279
P 6950 2900
F 0 "U?" H 6950 2875 50  0000 C CNN
F 1 "SN74HCS125" H 6950 2784 50  0000 C CNN
F 2 "" H 6950 2900 50  0001 C CNN
F 3 "" H 6950 2900 50  0001 C CNN
	1    6950 2900
	-1   0    0    -1  
$EndComp
Text Notes 1000 4550 0    50   ~ 0
expect maybe 2e-5V RMS noise from op amp
Text Notes 4650 4500 0    50   ~ 0
need >95dB SNR from calculated noise 
$Comp
L Device:C C?
U 1 1 5FAF643B
P 4550 1300
F 0 "C?" V 4400 1300 50  0000 C CNN
F 1 "10uF" V 4700 1300 50  0000 C CNN
F 2 "" H 4588 1150 50  0001 C CNN
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
Text Notes 3750 2800 0    50   ~ 0
OPA364
$Comp
L ads8867:ADS8867 U?
U 1 1 5FAFE3F1
P 5050 2550
F 0 "U?" H 5375 1361 50  0000 C CNN
F 1 "ADS8867" H 5700 1400 50  0000 C CNN
F 2 "" H 5050 2550 50  0001 C CNN
F 3 "" H 5050 2550 50  0001 C CNN
	1    5050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2650 5200 2950
Wire Wire Line
	4000 3150 4150 3150
$Comp
L power:GNDA #PWR?
U 1 1 5FB0640B
P 4750 3450
F 0 "#PWR?" H 4750 3200 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5FB1632C
P 7250 4100
F 0 "#PWR?" H 7250 3850 50  0001 C CNN
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
L power:+10V #PWR?
U 1 1 5FB18D98
P 7400 2100
F 0 "#PWR?" H 7400 1950 50  0001 C CNN
F 1 "+10V" V 7415 2228 50  0000 L CNN
F 2 "" H 7400 2100 50  0001 C CNN
F 3 "" H 7400 2100 50  0001 C CNN
	1    7400 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB19178
P 7700 2400
F 0 "#PWR?" H 7700 2150 50  0001 C CNN
F 1 "GND" H 7705 2227 50  0000 C CNN
F 2 "" H 7700 2400 50  0001 C CNN
F 3 "" H 7700 2400 50  0001 C CNN
	1    7700 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FB19703
P 8100 2100
F 0 "#PWR?" H 8100 1950 50  0001 C CNN
F 1 "+3.3V" V 8115 2228 50  0000 L CNN
F 2 "" H 8100 2100 50  0001 C CNN
F 3 "" H 8100 2100 50  0001 C CNN
	1    8100 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FB19E62
P 8050 2350
F 0 "C?" H 8165 2396 50  0000 L CNN
F 1 "1uF" H 8165 2305 50  0000 L CNN
F 2 "" H 8088 2200 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5FB1E929
P 8050 2500
F 0 "#PWR?" H 8050 2250 50  0001 C CNN
F 1 "GND" H 8055 2327 50  0000 C CNN
F 2 "" H 8050 2500 50  0001 C CNN
F 3 "" H 8050 2500 50  0001 C CNN
	1    8050 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FB1EF75
P 6650 3800
F 0 "#PWR?" H 6650 3650 50  0001 C CNN
F 1 "+3.3V" V 6665 3928 50  0000 L CNN
F 2 "" H 6650 3800 50  0001 C CNN
F 3 "" H 6650 3800 50  0001 C CNN
	1    6650 3800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 5FAEA976
P 8100 3250
F 0 "J?" H 8072 3132 50  0000 R CNN
F 1 "Conn_01x06_Male" H 8072 3223 50  0000 R CNN
F 2 "" H 8100 3250 50  0001 C CNN
F 3 "~" H 8100 3250 50  0001 C CNN
	1    8100 3250
	-1   0    0    -1  
$EndComp
$Comp
L power:+10V #PWR?
U 1 1 5FAECAAB
P 7900 3050
F 0 "#PWR?" H 7900 2900 50  0001 C CNN
F 1 "+10V" H 7915 3223 50  0000 C CNN
F 2 "" H 7900 3050 50  0001 C CNN
F 3 "" H 7900 3050 50  0001 C CNN
	1    7900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FAECD5D
P 7900 3550
F 0 "#PWR?" H 7900 3300 50  0001 C CNN
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
L power:GNDA #PWR?
U 1 1 5FB3FFB2
P 3300 4400
F 0 "#PWR?" H 3300 4150 50  0001 C CNN
F 1 "GNDA" H 3305 4227 50  0000 C CNN
F 2 "" H 3300 4400 50  0001 C CNN
F 3 "" H 3300 4400 50  0001 C CNN
	1    3300 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB40843
P 3600 4400
F 0 "#PWR?" H 3600 4150 50  0001 C CNN
F 1 "GND" H 3605 4227 50  0000 C CNN
F 2 "" H 3600 4400 50  0001 C CNN
F 3 "" H 3600 4400 50  0001 C CNN
	1    3600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4400 3600 4400
Text Notes 3200 4750 0    50   ~ 0
at star node
Wire Wire Line
	3200 3050 3400 3050
Connection ~ 3200 3050
Wire Wire Line
	3600 2650 5200 2650
Wire Wire Line
	4450 3150 4750 3150
Connection ~ 4450 3150
Text Notes 2950 2850 0    50   ~ 0
LM7721
$Comp
L power:GNDA #PWR?
U 1 1 5FAB2B51
P 2150 2550
F 0 "#PWR?" H 2150 2300 50  0001 C CNN
F 1 "GNDA" H 2155 2377 50  0000 C CNN
F 2 "" H 2150 2550 50  0001 C CNN
F 3 "" H 2150 2550 50  0001 C CNN
	1    2150 2550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
