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
L Connector:AudioJack2 J1
U 1 1 5F7A36EC
P 1900 1900
F 0 "J1" H 1932 2225 50  0000 C CNN
F 1 "AudioJack2" H 1932 2134 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ-3523-SMT_Horizontal" H 1900 1900 50  0001 C CNN
F 3 "~" H 1900 1900 50  0001 C CNN
	1    1900 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2 J2
U 1 1 5F7A4A39
P 1900 2500
F 0 "J2" H 1932 2825 50  0000 C CNN
F 1 "AudioJack2" H 1932 2734 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ-3523-SMT_Horizontal" H 1900 2500 50  0001 C CNN
F 3 "~" H 1900 2500 50  0001 C CNN
	1    1900 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2 J3
U 1 1 5F7A55CC
P 1900 3100
F 0 "J3" H 1932 3425 50  0000 C CNN
F 1 "AudioJack2" H 1932 3334 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ-3523-SMT_Horizontal" H 1900 3100 50  0001 C CNN
F 3 "~" H 1900 3100 50  0001 C CNN
	1    1900 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2 J4
U 1 1 5F7A5D32
P 1900 3700
F 0 "J4" H 1932 4025 50  0000 C CNN
F 1 "AudioJack2" H 1932 3934 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_CUI_SJ-3523-SMT_Horizontal" H 1900 3700 50  0001 C CNN
F 3 "~" H 1900 3700 50  0001 C CNN
	1    1900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3000 2250 3000
Wire Wire Line
	2250 3000 2250 2400
Wire Wire Line
	2250 1800 2100 1800
Wire Wire Line
	2100 2400 2250 2400
Connection ~ 2250 2400
Wire Wire Line
	2250 2400 2250 1800
Wire Wire Line
	2250 3000 2250 3600
Wire Wire Line
	2250 3600 2100 3600
Connection ~ 2250 3000
$Comp
L Connector:Conn_01x01_Female J6
U 1 1 5F7A6CC8
P 3200 1900
F 0 "J6" H 3092 1675 50  0000 C CNN
F 1 "Conn_01x01_Female" H 3092 1766 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3200 1900 50  0001 C CNN
F 3 "~" H 3200 1900 50  0001 C CNN
	1    3200 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J7
U 1 1 5F7A8E8D
P 3200 2500
F 0 "J7" H 3228 2526 50  0000 L CNN
F 1 "Conn_01x01_Female" H 3228 2435 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3200 2500 50  0001 C CNN
F 3 "~" H 3200 2500 50  0001 C CNN
	1    3200 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J8
U 1 1 5F7A9359
P 3200 3100
F 0 "J8" H 3228 3126 50  0000 L CNN
F 1 "Conn_01x01_Female" H 3228 3035 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3200 3100 50  0001 C CNN
F 3 "~" H 3200 3100 50  0001 C CNN
	1    3200 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J9
U 1 1 5F7A963A
P 3200 3700
F 0 "J9" H 3228 3726 50  0000 L CNN
F 1 "Conn_01x01_Female" H 3228 3635 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 3200 3700 50  0001 C CNN
F 3 "~" H 3200 3700 50  0001 C CNN
	1    3200 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5F7A98E7
P 2450 4050
F 0 "J5" H 2478 4076 50  0000 L CNN
F 1 "Conn_01x01_Female" H 2478 3985 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2450 4050 50  0001 C CNN
F 3 "~" H 2450 4050 50  0001 C CNN
	1    2450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1900 3000 1900
Wire Wire Line
	2100 2500 3000 2500
Wire Wire Line
	2100 3100 3000 3100
Wire Wire Line
	2100 3700 3000 3700
Wire Wire Line
	2250 4050 2250 3600
Connection ~ 2250 3600
$Comp
L Mechanical:MountingHole H1
U 1 1 5F7B022A
P 1850 1150
F 0 "H1" H 1950 1196 50  0000 L CNN
F 1 "MountingHole" H 1950 1105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 1850 1150 50  0001 C CNN
F 3 "~" H 1850 1150 50  0001 C CNN
	1    1850 1150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F7B0916
P 2800 1050
F 0 "H2" H 2900 1096 50  0000 L CNN
F 1 "MountingHole" H 2900 1005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 2800 1050 50  0001 C CNN
F 3 "~" H 2800 1050 50  0001 C CNN
	1    2800 1050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F7B0A08
P 3600 1050
F 0 "H3" H 3700 1096 50  0000 L CNN
F 1 "MountingHole" H 3700 1005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3600 1050 50  0001 C CNN
F 3 "~" H 3600 1050 50  0001 C CNN
	1    3600 1050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F7B0E63
P 3800 1500
F 0 "H4" H 3900 1546 50  0000 L CNN
F 1 "MountingHole" H 3900 1455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 3800 1500 50  0001 C CNN
F 3 "~" H 3800 1500 50  0001 C CNN
	1    3800 1500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
