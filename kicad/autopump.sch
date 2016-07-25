EESchema Schematic File Version 2
LIBS:autopump-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:autopump-cache
EELAYER 25 0
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
L +12V #PWR01
U 1 1 578950E6
P 1650 1600
F 0 "#PWR01" H 1650 1450 50  0001 C CNN
F 1 "+12V" H 1650 1740 50  0000 C CNN
F 2 "" H 1650 1600 50  0000 C CNN
F 3 "" H 1650 1600 50  0000 C CNN
	1    1650 1600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 578950FA
P 3400 2750
F 0 "#PWR02" H 3400 2600 50  0001 C CNN
F 1 "+5V" H 3400 2890 50  0000 C CNN
F 2 "" H 3400 2750 50  0000 C CNN
F 3 "" H 3400 2750 50  0000 C CNN
	1    3400 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5789510E
P 4300 3550
F 0 "#PWR03" H 4300 3300 50  0001 C CNN
F 1 "GND" H 4300 3400 50  0000 C CNN
F 2 "" H 4300 3550 50  0000 C CNN
F 3 "" H 4300 3550 50  0000 C CNN
	1    4300 3550
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 57961C1F
P 4300 3250
F 0 "R1" V 4380 3250 50  0000 C CNN
F 1 "10k" V 4300 3250 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4230 3250 50  0001 C CNN
F 3 "" H 4300 3250 50  0000 C CNN
	1    4300 3250
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 57961CA4
P 9700 3250
F 0 "R2" V 9780 3250 50  0000 C CNN
F 1 "10k" V 9700 3250 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 9630 3250 50  0001 C CNN
F 3 "" H 9700 3250 50  0000 C CNN
	1    9700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3400 4300 3550
$Comp
L GND #PWR04
U 1 1 57961D9D
P 9700 3550
F 0 "#PWR04" H 9700 3300 50  0001 C CNN
F 1 "GND" H 9700 3400 50  0000 C CNN
F 2 "" H 9700 3550 50  0000 C CNN
F 3 "" H 9700 3550 50  0000 C CNN
	1    9700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3400 9700 3550
$Comp
L SW_PUSH SW1
U 1 1 57961F0B
P 3900 2900
F 0 "SW1" H 4050 3010 50  0000 C CNN
F 1 "SW_PUSH" H 3900 2820 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_DIP_x1_Slide" H 3900 2900 50  0001 C CNN
F 3 "" H 3900 2900 50  0000 C CNN
	1    3900 2900
	1    0    0    -1  
$EndComp
$Comp
L HE10-16 P1
U 1 1 579622BC
P 7050 3250
F 0 "P1" H 7050 3700 50  0000 C CNN
F 1 "HE10-16" H 7050 2800 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08" H 7050 3250 50  0001 C CNN
F 3 "" H 7050 3250 50  0000 C CNN
	1    7050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2750 3400 2900
Wire Wire Line
	3400 2900 3600 2900
Wire Wire Line
	4200 2900 6450 2900
Wire Wire Line
	4300 2900 4300 3100
Connection ~ 4300 2900
$Comp
L SW_PUSH SW2
U 1 1 5796242E
P 9250 2900
F 0 "SW2" H 9400 3010 50  0000 C CNN
F 1 "SW_PUSH" H 9250 2820 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_DIP_x1_Slide" H 9250 2900 50  0001 C CNN
F 3 "" H 9250 2900 50  0000 C CNN
	1    9250 2900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 57962497
P 8800 2700
F 0 "#PWR05" H 8800 2550 50  0001 C CNN
F 1 "+5V" H 8800 2840 50  0000 C CNN
F 2 "" H 8800 2700 50  0000 C CNN
F 3 "" H 8800 2700 50  0000 C CNN
	1    8800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3100 9700 2900
Wire Wire Line
	9700 2900 9550 2900
$Comp
L Battery BT1
U 1 1 57962744
P 1250 1700
F 0 "BT1" H 1350 1750 50  0000 L CNN
F 1 "Battery" H 1350 1650 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_2x_1-2mmDrill" V 1250 1740 50  0001 C CNN
F 3 "" V 1250 1740 50  0000 C CNN
	1    1250 1700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 57962829
P 850 1850
F 0 "#PWR06" H 850 1600 50  0001 C CNN
F 1 "GND" H 850 1700 50  0000 C CNN
F 2 "" H 850 1850 50  0000 C CNN
F 3 "" H 850 1850 50  0000 C CNN
	1    850  1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1600 1650 2500
Wire Wire Line
	1650 1700 1400 1700
Wire Wire Line
	1100 1700 850  1700
Wire Wire Line
	850  1700 850  1850
Text Notes 3900 3950 0    60   ~ 0
Button 1 - D8
Text Notes 9500 3950 0    60   ~ 0
Button 2 - D9
Wire Wire Line
	7650 2900 8950 2900
Wire Wire Line
	8800 2700 8800 2900
Connection ~ 8800 2900
$Comp
L CONN_01X03 P2
U 1 1 57963001
P 9550 1300
F 0 "P2" H 9550 1500 50  0000 C CNN
F 1 "CONN_01X03" V 9650 1300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 9550 1300 50  0001 C CNN
F 3 "" H 9550 1300 50  0000 C CNN
	1    9550 1300
	1    0    0    -1  
$EndComp
Text Notes 9900 1400 0    60   ~ 0
Pressure transducer\nBlue = GND\nRed = +5V\nYellow = signal (A1)
$Comp
L GND #PWR07
U 1 1 579630D7
P 9150 1550
F 0 "#PWR07" H 9150 1300 50  0001 C CNN
F 1 "GND" H 9150 1400 50  0000 C CNN
F 2 "" H 9150 1550 50  0000 C CNN
F 3 "" H 9150 1550 50  0000 C CNN
	1    9150 1550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 579630F9
P 9150 1000
F 0 "#PWR08" H 9150 850 50  0001 C CNN
F 1 "+5V" H 9150 1140 50  0000 C CNN
F 2 "" H 9150 1000 50  0000 C CNN
F 3 "" H 9150 1000 50  0000 C CNN
	1    9150 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1000 9150 1200
Wire Wire Line
	9150 1200 9350 1200
Wire Wire Line
	9350 1400 9150 1400
Wire Wire Line
	9150 1400 9150 1550
Wire Wire Line
	9350 1300 6450 1300
Wire Wire Line
	6450 1300 6450 3000
Text Notes 9900 4950 0    60   ~ 0
Relais connection\nVcc\nCh1 (D6)/2 (D7)/3/4\nGND
$Comp
L CONN_01X06 P3
U 1 1 57963387
P 9650 4800
F 0 "P3" H 9650 5150 50  0000 C CNN
F 1 "CONN_01X06" V 9750 4800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 9650 4800 50  0001 C CNN
F 3 "" H 9650 4800 50  0000 C CNN
	1    9650 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 57963410
P 9250 5350
F 0 "#PWR09" H 9250 5100 50  0001 C CNN
F 1 "GND" H 9250 5200 50  0000 C CNN
F 2 "" H 9250 5350 50  0000 C CNN
F 3 "" H 9250 5350 50  0000 C CNN
	1    9250 5350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 57963434
P 9250 4400
F 0 "#PWR010" H 9250 4250 50  0001 C CNN
F 1 "+5V" H 9250 4540 50  0000 C CNN
F 2 "" H 9250 4400 50  0000 C CNN
F 3 "" H 9250 4400 50  0000 C CNN
	1    9250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4400 9250 4550
Wire Wire Line
	9250 4550 9450 4550
Wire Wire Line
	9450 5050 9250 5050
Wire Wire Line
	9250 5050 9250 5350
Wire Wire Line
	9450 4650 6050 4650
Wire Wire Line
	6050 4650 6050 3100
Wire Wire Line
	6050 3100 6450 3100
Wire Wire Line
	9450 4750 8350 4750
Wire Wire Line
	8350 4750 8350 3100
Wire Wire Line
	8350 3100 7650 3100
$Comp
L Battery BT2
U 1 1 579636F0
P 1250 2500
F 0 "BT2" H 1350 2550 50  0000 L CNN
F 1 "Battery" H 1350 2450 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_2x_1-2mmDrill" V 1250 2540 50  0001 C CNN
F 3 "" V 1250 2540 50  0000 C CNN
	1    1250 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 5796377B
P 850 2600
F 0 "#PWR012" H 850 2350 50  0001 C CNN
F 1 "GND" H 850 2450 50  0000 C CNN
F 2 "" H 850 2600 50  0000 C CNN
F 3 "" H 850 2600 50  0000 C CNN
	1    850  2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2500 850  2500
Wire Wire Line
	850  2500 850  2600
Text Notes 1800 1700 0    60   ~ 0
Power source
Text Notes 1800 2500 0    60   ~ 0
Relais connection
Text Notes 1350 7350 0    60   ~ 0
LCD\n(LCD - Arduino)\n\n16: VSS - GND\n15: VDD - +5V\n14: V0\n13: RS - D12\n12: RW - GND\n11: E - D11\n10: D0\n 9: D1\n 8: D2\n 7: D3\n 6: D4 - D5\n 5: D5 - D4\n 4: D6 - D3\n 3: D7 - D2\n 2: A - D10\n 1: K - GND
$Comp
L GND #PWR013
U 1 1 57963E53
P 1600 3800
F 0 "#PWR013" H 1600 3550 50  0001 C CNN
F 1 "GND" H 1600 3650 50  0000 C CNN
F 2 "" H 1600 3800 50  0000 C CNN
F 3 "" H 1600 3800 50  0000 C CNN
	1    1600 3800
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR014
U 1 1 57963E7B
P 1950 3800
F 0 "#PWR014" H 1950 3650 50  0001 C CNN
F 1 "+5V" H 1950 3940 50  0000 C CNN
F 2 "" H 1950 3800 50  0000 C CNN
F 3 "" H 1950 3800 50  0000 C CNN
	1    1950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4050 1200 4050
Wire Wire Line
	1600 3800 1600 5550
$Comp
L CONN_01X16 P4
U 1 1 57963FE2
P 1000 4800
F 0 "P4" H 1000 5650 50  0000 C CNN
F 1 "CONN_01X16" V 1100 4800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x16" H 1000 4800 50  0001 C CNN
F 3 "" H 1000 4800 50  0000 C CNN
	1    1000 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 4150 2700 4150
Wire Wire Line
	1950 4150 1950 3800
Wire Wire Line
	1600 4450 1200 4450
Connection ~ 1600 4050
Wire Wire Line
	1600 5550 1200 5550
Connection ~ 1600 4450
Wire Wire Line
	1200 4350 5600 4350
Wire Wire Line
	5600 4350 5600 3200
Wire Wire Line
	5600 3200 6450 3200
Wire Wire Line
	1200 4550 5700 4550
Wire Wire Line
	5700 4550 5700 3300
Wire Wire Line
	5700 3300 6450 3300
Wire Wire Line
	1200 5050 8200 5050
Wire Wire Line
	8200 5050 8200 3200
Wire Wire Line
	8200 3200 7650 3200
Wire Wire Line
	1200 5150 8050 5150
Wire Wire Line
	8050 5150 8050 3300
Wire Wire Line
	8050 3300 7650 3300
Wire Wire Line
	1200 5250 7900 5250
Wire Wire Line
	7900 5250 7900 3400
Wire Wire Line
	7900 3400 7650 3400
Wire Wire Line
	1200 5350 7750 5350
Wire Wire Line
	7750 5350 7750 3500
Wire Wire Line
	7750 3500 7650 3500
$Comp
L R R3
U 1 1 579646E1
P 2000 5450
F 0 "R3" V 2080 5450 50  0000 C CNN
F 1 "33k" V 2000 5450 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 1930 5450 50  0001 C CNN
F 3 "" H 2000 5450 50  0000 C CNN
	1    2000 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 5450 1200 5450
Wire Wire Line
	6450 3400 5800 3400
Wire Wire Line
	5800 3400 5800 5450
Wire Wire Line
	5800 5450 2150 5450
$Comp
L POT-RESCUE-autopump RV1
U 1 1 57964923
P 2550 3900
F 0 "RV1" H 2550 3820 50  0000 C CNN
F 1 "10k" H 2550 3900 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer-Piher_PT15-V17-5_horizontal" H 2550 3900 50  0001 C CNN
F 3 "" H 2550 3900 50  0000 C CNN
	1    2550 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 3900 1600 3900
Connection ~ 1600 3900
Wire Wire Line
	2700 4150 2700 3900
Connection ~ 1950 4150
Wire Wire Line
	1200 4250 2550 4250
Wire Wire Line
	2550 4250 2550 4050
NoConn ~ 1200 4650
NoConn ~ 1200 4750
NoConn ~ 1200 4850
NoConn ~ 1200 4950
NoConn ~ 7650 3000
NoConn ~ 7650 3600
NoConn ~ 6450 3600
NoConn ~ 6450 3500
NoConn ~ 9450 4850
NoConn ~ 9450 4950
NoConn ~ 6900 2900
NoConn ~ 1650 2250
Wire Wire Line
	1650 2500 1400 2500
Connection ~ 1650 1700
$EndSCHEMATC
