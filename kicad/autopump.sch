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
LIBS:arduino_shieldsNCL
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
P 10100 2300
F 0 "#PWR02" H 10100 2150 50  0001 C CNN
F 1 "+5V" H 10100 2440 50  0000 C CNN
F 2 "" H 10100 2300 50  0000 C CNN
F 3 "" H 10100 2300 50  0000 C CNN
	1    10100 2300
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5789510E
P 9200 3150
F 0 "#PWR03" H 9200 2900 50  0001 C CNN
F 1 "GND" H 9200 3000 50  0000 C CNN
F 2 "" H 9200 3150 50  0000 C CNN
F 3 "" H 9200 3150 50  0000 C CNN
	1    9200 3150
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 57961C1F
P 9200 2850
F 0 "R1" V 9280 2850 50  0000 C CNN
F 1 "10k" V 9200 2850 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 9130 2850 50  0001 C CNN
F 3 "" H 9200 2850 50  0000 C CNN
	1    9200 2850
	-1   0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 57961CA4
P 9200 1800
F 0 "R2" V 9280 1800 50  0000 C CNN
F 1 "10k" V 9200 1800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 9130 1800 50  0001 C CNN
F 3 "" H 9200 1800 50  0000 C CNN
	1    9200 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9200 3000 9200 3150
$Comp
L GND #PWR04
U 1 1 57961D9D
P 9200 2100
F 0 "#PWR04" H 9200 1850 50  0001 C CNN
F 1 "GND" H 9200 1950 50  0000 C CNN
F 2 "" H 9200 2100 50  0000 C CNN
F 3 "" H 9200 2100 50  0000 C CNN
	1    9200 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9200 1950 9200 2100
$Comp
L SW_PUSH SW1
U 1 1 57961F0B
P 9650 2500
F 0 "SW1" H 9800 2610 50  0000 C CNN
F 1 "SW_PUSH" H 9650 2420 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_DIP_x1_Slide" H 9650 2500 50  0001 C CNN
F 3 "" H 9650 2500 50  0000 C CNN
	1    9650 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10100 2300 10100 2500
Wire Wire Line
	10100 2500 9950 2500
$Comp
L SW_PUSH SW2
U 1 1 5796242E
P 9650 1450
F 0 "SW2" H 9800 1560 50  0000 C CNN
F 1 "SW_PUSH" H 9650 1370 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_DIP_x1_Slide" H 9650 1450 50  0001 C CNN
F 3 "" H 9650 1450 50  0000 C CNN
	1    9650 1450
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 57962497
P 10100 1250
F 0 "#PWR05" H 10100 1100 50  0001 C CNN
F 1 "+5V" H 10100 1390 50  0000 C CNN
F 2 "" H 10100 1250 50  0000 C CNN
F 3 "" H 10100 1250 50  0000 C CNN
	1    10100 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9200 1650 9200 1450
Wire Wire Line
	8250 1450 9350 1450
$Comp
L Battery BT1
U 1 1 57962744
P 1250 1700
F 0 "BT1" H 1350 1750 50  0000 L CNN
F 1 "Battery" H 1350 1650 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" V 1250 1740 50  0001 C CNN
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
$Comp
L CONN_01X03 P2
U 1 1 57963001
P 3350 2650
F 0 "P2" H 3350 2850 50  0000 C CNN
F 1 "CONN_01X03" V 3450 2650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 3350 2650 50  0001 C CNN
F 3 "" H 3350 2650 50  0000 C CNN
	1    3350 2650
	-1   0    0    -1  
$EndComp
Text Notes 3850 2700 0    60   ~ 0
Pressure transducer\nBlue = GND\nRed = +5V\nYellow = signal (A1)
$Comp
L GND #PWR07
U 1 1 579630D7
P 3750 2900
F 0 "#PWR07" H 3750 2650 50  0001 C CNN
F 1 "GND" H 3750 2750 50  0000 C CNN
F 2 "" H 3750 2900 50  0000 C CNN
F 3 "" H 3750 2900 50  0000 C CNN
	1    3750 2900
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 579630F9
P 3750 2350
F 0 "#PWR08" H 3750 2200 50  0001 C CNN
F 1 "+5V" H 3750 2490 50  0000 C CNN
F 2 "" H 3750 2350 50  0000 C CNN
F 3 "" H 3750 2350 50  0000 C CNN
	1    3750 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3750 2350 3750 2550
Wire Wire Line
	3750 2550 3550 2550
Wire Wire Line
	3550 2750 3750 2750
Wire Wire Line
	3750 2750 3750 2900
Text Notes 9900 4950 0    60   ~ 0
Relais connection\nVcc\nCh1 (D6)/2 (D7)/3/4\nGND
$Comp
L CONN_01X06 P3
U 1 1 57963387
P 9650 4800
F 0 "P3" H 9650 5150 50  0000 C CNN
F 1 "CONN_01X06" V 9750 4800 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06" H 9650 4800 50  0001 C CNN
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
$Comp
L Battery BT2
U 1 1 579636F0
P 1250 2500
F 0 "BT2" H 1350 2550 50  0000 L CNN
F 1 "Battery" H 1350 2450 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" V 1250 2540 50  0001 C CNN
F 3 "" V 1250 2540 50  0000 C CNN
	1    1250 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 5796377B
P 850 2600
F 0 "#PWR011" H 850 2350 50  0001 C CNN
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
Text Notes 1800 1750 0    60   ~ 0
Power source
Text Notes 1800 2550 0    60   ~ 0
Relais connection
Text Notes 800  7400 0    60   ~ 0
LCD\n(LCD - Arduino)\n\n16: VSS - GND\n15: VDD - +5V\n14: V0\n13: RS - D12\n12: RW - GND\n11: E - D11\n10: D0\n 9: D1\n 8: D2\n 7: D3\n 6: D4 - D5\n 5: D5 - D4\n 4: D6 - D3\n 3: D7 - D2\n 2: A - D10\n 1: K - GND
$Comp
L R R3
U 1 1 579646E1
P 4350 4600
F 0 "R3" V 4430 4600 50  0000 C CNN
F 1 "33k" V 4350 4600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 4280 4600 50  0001 C CNN
F 3 "" H 4350 4600 50  0000 C CNN
	1    4350 4600
	0    1    1    0   
$EndComp
$Comp
L POT-RESCUE-autopump RV1
U 1 1 57964923
P 1450 5550
F 0 "RV1" H 1450 5470 50  0000 C CNN
F 1 "10k" H 1450 5550 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer-Piher_PT15-V17-5_horizontal" H 1450 5550 50  0001 C CNN
F 3 "" H 1450 5550 50  0000 C CNN
	1    1450 5550
	1    0    0    -1  
$EndComp
NoConn ~ 9450 4850
NoConn ~ 9450 4950
Wire Wire Line
	1650 2500 1400 2500
Connection ~ 1650 1700
$Comp
L ARDUINO_SHIELD SHIELD1
U 1 1 57984623
P 5950 3300
F 0 "SHIELD1" H 5600 4250 60  0000 C CNN
F 1 "ARDUINO_SHIELD" H 6000 2350 60  0000 C CNN
F 2 "arduino_shields:ARDUINO SHIELD" H 5950 3300 60  0001 C CNN
F 3 "" H 5950 3300 60  0000 C CNN
	1    5950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2650 3550 3700
Wire Wire Line
	3550 3700 5000 3700
NoConn ~ 5000 3600
NoConn ~ 5000 3800
NoConn ~ 5000 3900
NoConn ~ 5000 4000
NoConn ~ 5000 4100
NoConn ~ 5000 3400
NoConn ~ 5000 3300
NoConn ~ 5000 3200
NoConn ~ 5000 3100
NoConn ~ 5000 3000
NoConn ~ 5000 2900
NoConn ~ 6900 2500
NoConn ~ 6900 2600
NoConn ~ 6900 4100
NoConn ~ 6900 4000
Wire Wire Line
	10100 1250 10100 1450
Wire Wire Line
	10100 1450 9950 1450
Wire Wire Line
	8400 2500 9350 2500
Wire Wire Line
	9200 2500 9200 2700
Wire Wire Line
	6900 3100 8250 3100
Wire Wire Line
	8250 3100 8250 1450
Connection ~ 9200 1450
Wire Wire Line
	6900 3200 8400 3200
Wire Wire Line
	8400 3200 8400 2500
Connection ~ 9200 2500
Wire Wire Line
	9450 4650 8950 4650
Wire Wire Line
	8950 4650 8950 3500
Wire Wire Line
	8950 3500 6900 3500
Wire Wire Line
	9450 4750 8800 4750
Wire Wire Line
	8800 4750 8800 3400
Wire Wire Line
	8800 3400 6900 3400
$Comp
L LCD16X2 DS1
U 1 1 579905A1
P 2000 3900
F 0 "DS1" H 1200 4300 50  0000 C CNN
F 1 "LCD16X2" H 2700 4300 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x16" H 2000 3850 50  0000 C CIN
F 3 "" H 2000 3900 50  0000 C CNN
	1    2000 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5799081A
P 2750 5700
F 0 "#PWR012" H 2750 5450 50  0001 C CNN
F 1 "GND" H 2750 5550 50  0000 C CNN
F 2 "" H 2750 5700 50  0000 C CNN
F 3 "" H 2750 5700 50  0000 C CNN
	1    2750 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4400 2750 5700
Wire Wire Line
	1250 4400 1250 5000
Wire Wire Line
	1250 5000 2750 5000
Connection ~ 2750 5000
$Comp
L +5V #PWR013
U 1 1 57990ADE
P 1350 5200
F 0 "#PWR013" H 1350 5050 50  0001 C CNN
F 1 "+5V" H 1350 5340 50  0000 C CNN
F 2 "" H 1350 5200 50  0000 C CNN
F 3 "" H 1350 5200 50  0000 C CNN
	1    1350 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 4400 1350 5200
Wire Wire Line
	1450 4400 1450 5400
Wire Wire Line
	1300 5550 1100 5550
Wire Wire Line
	1100 5550 1100 5150
Wire Wire Line
	1100 5150 1350 5150
Connection ~ 1350 5150
Wire Wire Line
	1600 5550 2050 5550
Wire Wire Line
	2050 5550 2050 5000
Connection ~ 2050 5000
NoConn ~ 1850 4400
NoConn ~ 1950 4400
NoConn ~ 2050 4400
NoConn ~ 2150 4400
Wire Wire Line
	1550 4400 1550 5400
Wire Wire Line
	1550 5400 7850 5400
Wire Wire Line
	6900 2800 7850 2800
Wire Wire Line
	7850 2800 7850 5400
Wire Wire Line
	1650 4400 1650 5000
Connection ~ 1650 5000
Wire Wire Line
	1750 4400 1750 5250
Wire Wire Line
	1750 5250 7700 5250
Wire Wire Line
	7700 5250 7700 2900
Wire Wire Line
	7700 2900 6900 2900
Wire Wire Line
	2250 4400 2250 4900
Wire Wire Line
	2250 4900 7600 4900
Wire Wire Line
	7600 4900 7600 3600
Wire Wire Line
	7600 3600 6900 3600
Wire Wire Line
	2350 4400 2350 4800
Wire Wire Line
	2350 4800 7500 4800
Wire Wire Line
	7500 4800 7500 3700
Wire Wire Line
	7500 3700 6900 3700
Wire Wire Line
	2450 4400 2450 4700
Wire Wire Line
	2450 4700 7400 4700
Wire Wire Line
	7400 4700 7400 3800
Wire Wire Line
	7400 3800 6900 3800
Wire Wire Line
	2550 4400 2550 4600
Wire Wire Line
	7300 4600 7300 3900
Wire Wire Line
	7300 3900 6900 3900
Wire Wire Line
	6900 3000 7200 3000
Wire Wire Line
	7200 3000 7200 4500
Wire Wire Line
	7200 4500 2650 4500
Wire Wire Line
	2650 4500 2650 4400
NoConn ~ 6900 2700
Wire Wire Line
	7300 4600 4500 4600
Wire Wire Line
	2550 4600 4200 4600
$EndSCHEMATC
