EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Transistor Tester"
Date "2018-08-14"
Rev "1.0.0"
Comp "hyperdata.it"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Operational:TL084 U1
U 1 1 5B7292B6
P 5800 3300
F 0 "U1" H 5800 3667 50  0000 C CNN
F 1 "TL084" H 5800 3576 50  0000 C CNN
F 2 "" H 5750 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 5850 3500 50  0001 C CNN
	1    5800 3300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL084 U1
U 2 1 5B72935A
P 5750 2500
F 0 "U1" H 5750 2867 50  0000 C CNN
F 1 "TL084" H 5750 2776 50  0000 C CNN
F 2 "" H 5700 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 5800 2700 50  0001 C CNN
	2    5750 2500
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL084 U1
U 3 1 5B72944B
P 7000 2850
F 0 "U1" H 7000 3217 50  0000 C CNN
F 1 "TL084" H 7000 3126 50  0000 C CNN
F 2 "" H 6950 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 7050 3050 50  0001 C CNN
	3    7000 2850
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL084 U1
U 4 1 5B7294B9
P 3900 3900
F 0 "U1" H 3900 4267 50  0000 C CNN
F 1 "TL084" H 3900 4176 50  0000 C CNN
F 2 "" H 3850 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 3950 4100 50  0001 C CNN
	4    3900 3900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL084 U1
U 5 1 5B7294FC
P 3550 2700
F 0 "U1" H 3508 2746 50  0000 L CNN
F 1 "TL084" H 3508 2655 50  0000 L CNN
F 2 "" H 3500 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 3600 2900 50  0001 C CNN
	5    3550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2600 5450 2850
Wire Wire Line
	5450 2850 6050 2850
Wire Wire Line
	6050 2850 6050 2500
Wire Wire Line
	5500 3400 5500 3650
Wire Wire Line
	5500 3650 6100 3650
Wire Wire Line
	6100 3650 6100 3300
$Comp
L power:GND #PWR0101
U 1 1 5B729B1D
P 6650 3950
F 0 "#PWR0101" H 6650 3700 50  0001 C CNN
F 1 "GND" H 6655 3777 50  0000 C CNN
F 2 "" H 6650 3950 50  0001 C CNN
F 3 "" H 6650 3950 50  0001 C CNN
	1    6650 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 5B729BC5
P 6650 3700
F 0 "R8" H 6718 3746 50  0000 L CNN
F 1 "22k" H 6718 3655 50  0000 L CNN
F 2 "" V 6690 3690 50  0001 C CNN
F 3 "~" H 6650 3700 50  0001 C CNN
	1    6650 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5B729C37
P 6350 3300
F 0 "R6" V 6145 3300 50  0000 C CNN
F 1 "2k2" V 6236 3300 50  0000 C CNN
F 2 "" V 6390 3290 50  0001 C CNN
F 3 "~" H 6350 3300 50  0001 C CNN
	1    6350 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 5B729C86
P 6300 2500
F 0 "R5" V 6095 2500 50  0000 C CNN
F 1 "2k2" V 6186 2500 50  0000 C CNN
F 2 "" V 6340 2490 50  0001 C CNN
F 3 "~" H 6300 2500 50  0001 C CNN
	1    6300 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R7
U 1 1 5B729CD2
P 7000 2500
F 0 "R7" V 6795 2500 50  0000 C CNN
F 1 "22k" V 6886 2500 50  0000 C CNN
F 2 "" V 7040 2490 50  0001 C CNN
F 3 "~" H 7000 2500 50  0001 C CNN
	1    7000 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 2500 6150 2500
Connection ~ 6050 2500
Wire Wire Line
	6650 2500 6650 2750
Wire Wire Line
	6650 2750 6700 2750
Wire Wire Line
	6100 3300 6200 3300
Connection ~ 6100 3300
Wire Wire Line
	6500 3300 6650 3300
Wire Wire Line
	6700 2950 6650 2950
Wire Wire Line
	6650 2950 6650 3300
Connection ~ 6650 3300
Wire Wire Line
	6450 2500 6650 2500
Wire Wire Line
	7150 2500 7400 2500
Wire Wire Line
	7400 2500 7400 2850
Wire Wire Line
	7400 2850 7300 2850
Connection ~ 6650 2500
Wire Wire Line
	6650 2500 6850 2500
Wire Wire Line
	6650 3300 6650 3550
Wire Wire Line
	6650 3850 6650 3950
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5B72B952
P 4850 2400
F 0 "Q1" H 5041 2446 50  0000 L CNN
F 1 "2N3904" H 5041 2355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5050 2325 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4850 2400 50  0001 L CNN
	1    4850 2400
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5B72B9AA
P 4650 3900
F 0 "Q2" H 4841 3946 50  0000 L CNN
F 1 "2N3904" H 4841 3855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4850 3825 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4650 3900 50  0001 L CNN
	1    4650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3900 4450 3900
$Comp
L Device:R_US R4
U 1 1 5B72BF3B
P 4750 3500
F 0 "R4" H 4818 3546 50  0000 L CNN
F 1 "10k" H 4818 3455 50  0000 L CNN
F 2 "" V 4790 3490 50  0001 C CNN
F 3 "~" H 4750 3500 50  0001 C CNN
	1    4750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3650 4750 3700
Wire Wire Line
	3600 4000 3600 4200
Wire Wire Line
	3600 4200 4750 4200
Wire Wire Line
	4750 4200 4750 4100
$Comp
L power:GND #PWR0102
U 1 1 5B72CD1F
P 3150 4350
F 0 "#PWR0102" H 3150 4100 50  0001 C CNN
F 1 "GND" H 3155 4177 50  0000 C CNN
F 2 "" H 3150 4350 50  0001 C CNN
F 3 "" H 3150 4350 50  0001 C CNN
	1    3150 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5B72CE00
P 3150 4100
F 0 "R2" H 3218 4146 50  0000 L CNN
F 1 "10k" H 3218 4055 50  0000 L CNN
F 2 "" V 3190 4090 50  0001 C CNN
F 3 "~" H 3150 4100 50  0001 C CNN
	1    3150 4100
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0103
U 1 1 5B72D59D
P 2750 4500
F 0 "#PWR0103" H 2750 4600 50  0001 C CNN
F 1 "-12V" H 2765 4673 50  0000 C CNN
F 2 "" H 2750 4500 50  0001 C CNN
F 3 "" H 2750 4500 50  0001 C CNN
	1    2750 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R3
U 1 1 5B730C4C
P 4750 4450
F 0 "R3" H 4818 4496 50  0000 L CNN
F 1 "56k" H 4818 4405 50  0000 L CNN
F 2 "" V 4790 4440 50  0001 C CNN
F 3 "~" H 4750 4450 50  0001 C CNN
	1    4750 4450
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0104
U 1 1 5B730CAC
P 4750 4700
F 0 "#PWR0104" H 4750 4800 50  0001 C CNN
F 1 "-12V" H 4765 4873 50  0000 C CNN
F 2 "" H 4750 4700 50  0001 C CNN
F 3 "" H 4750 4700 50  0001 C CNN
	1    4750 4700
	1    0    0    1   
$EndComp
Wire Wire Line
	4750 4200 4750 4300
Connection ~ 4750 4200
Wire Wire Line
	4750 4600 4750 4700
$Comp
L power:GND #PWR0105
U 1 1 5B731E5C
P 5250 2500
F 0 "#PWR0105" H 5250 2250 50  0001 C CNN
F 1 "GND" H 5255 2327 50  0000 C CNN
F 2 "" H 5250 2500 50  0001 C CNN
F 3 "" H 5250 2500 50  0001 C CNN
	1    5250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2400 5250 2400
Wire Wire Line
	5250 2400 5250 2500
$Comp
L power:+12V #PWR0106
U 1 1 5B73255D
P 4750 2050
F 0 "#PWR0106" H 4750 1900 50  0001 C CNN
F 1 "+12V" H 4765 2223 50  0000 C CNN
F 2 "" H 4750 2050 50  0001 C CNN
F 3 "" H 4750 2050 50  0001 C CNN
	1    4750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2050 4750 2200
Wire Wire Line
	4750 2600 4750 3200
Wire Wire Line
	5450 2400 5250 2400
Connection ~ 5250 2400
Wire Wire Line
	5500 3200 4750 3200
Connection ~ 4750 3200
Wire Wire Line
	4750 3200 4750 3350
$Comp
L Device:Voltmeter_DC MES1
U 1 1 5B7370D6
P 7750 3050
F 0 "MES1" H 7903 3096 50  0000 L CNN
F 1 "Voltmeter_DC" H 7903 3005 50  0000 L CNN
F 2 "" V 7750 3150 50  0001 C CNN
F 3 "~" V 7750 3150 50  0001 C CNN
	1    7750 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5B737172
P 7750 3450
F 0 "#PWR0107" H 7750 3200 50  0001 C CNN
F 1 "GND" H 7755 3277 50  0000 C CNN
F 2 "" H 7750 3450 50  0001 C CNN
F 3 "" H 7750 3450 50  0001 C CNN
	1    7750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2850 7750 2850
Connection ~ 7400 2850
Wire Wire Line
	7750 3250 7750 3450
Text Notes 4000 2250 0    50   ~ 0
Device Under Test
Wire Wire Line
	2750 3800 2750 3950
$Comp
L Device:R_US R1
U 1 1 5B72D47B
P 2750 4100
F 0 "R1" H 2818 4146 50  0000 L CNN
F 1 "10k" H 2818 4055 50  0000 L CNN
F 2 "" V 2790 4090 50  0001 C CNN
F 3 "~" H 2750 4100 50  0001 C CNN
	1    2750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3800 2750 3800
Wire Wire Line
	3600 3800 3150 3800
Connection ~ 3150 3800
Wire Wire Line
	3150 3950 3150 3800
Wire Wire Line
	3150 4250 3150 4350
Wire Wire Line
	2750 4250 2750 4500
$EndSCHEMATC
