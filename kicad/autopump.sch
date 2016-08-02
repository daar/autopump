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
Title "Autopump shield"
Date "2016-08-02"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR7
U 1 1 5789510E
P 9200 3150
F 0 "#PWR7" H 9200 2900 50  0001 C CNN
F 1 "GND" H 9200 3000 50  0000 C CNN
F 2 "" H 9200 3150 50  0000 C CNN
F 3 "" H 9200 3150 50  0000 C CNN
	1    9200 3150
	-1   0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 57961C1F
P 9200 2850
F 0 "R3" V 9280 2850 50  0000 C CNN
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
$Comp
L GND #PWR6
U 1 1 57961D9D
P 9200 2100
F 0 "#PWR6" H 9200 1850 50  0001 C CNN
F 1 "GND" H 9200 1950 50  0000 C CNN
F 2 "" H 9200 2100 50  0000 C CNN
F 3 "" H 9200 2100 50  0000 C CNN
	1    9200 2100
	-1   0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 57961F0B
P 9650 2500
F 0 "SW2" H 9800 2610 50  0000 C CNN
F 1 "Button 2" H 9650 2420 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 9650 2500 50  0001 C CNN
F 3 "" H 9650 2500 50  0000 C CNN
	1    9650 2500
	-1   0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 5796242E
P 9650 1450
F 0 "SW1" H 9800 1560 50  0000 C CNN
F 1 "Button 1" H 9650 1370 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 9650 1450 50  0001 C CNN
F 3 "" H 9650 1450 50  0000 C CNN
	1    9650 1450
	-1   0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 57962744
P 1550 1350
F 0 "BT1" H 1650 1400 50  0000 L CNN
F 1 "Battery" H 1650 1300 50  0000 L CNN
F 2 "Connect:PINHEAD1-2" V 1550 1390 50  0001 C CNN
F 3 "" V 1550 1390 50  0000 C CNN
	1    1550 1350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 57963001
P 3350 2650
F 0 "P2" H 3350 2850 50  0000 C CNN
F 1 "Pressure transducer" V 3450 2650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 3350 2650 50  0001 C CNN
F 3 "" H 3350 2650 50  0000 C CNN
	1    3350 2650
	-1   0    0    -1  
$EndComp
Text Notes 3950 2500 0    60   ~ 0
Blue = GND\nRed = +5V\nYellow = signal (A1)
$Comp
L GND #PWR4
U 1 1 579630D7
P 3750 2900
F 0 "#PWR4" H 3750 2650 50  0001 C CNN
F 1 "GND" H 3750 2750 50  0000 C CNN
F 2 "" H 3750 2900 50  0000 C CNN
F 3 "" H 3750 2900 50  0000 C CNN
	1    3750 2900
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X06 P3
U 1 1 57963387
P 9650 4800
F 0 "P3" H 9650 5150 50  0000 C CNN
F 1 "Relay control" V 9750 4800 50  0000 C CNN
F 2 "Connect:PINHEAD1-6" H 9650 4800 50  0001 C CNN
F 3 "" H 9650 4800 50  0000 C CNN
	1    9650 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 57963410
P 9250 5350
F 0 "#PWR8" H 9250 5100 50  0001 C CNN
F 1 "GND" H 9250 5200 50  0000 C CNN
F 2 "" H 9250 5350 50  0000 C CNN
F 3 "" H 9250 5350 50  0000 C CNN
	1    9250 5350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 579646E1
P 4350 4600
F 0 "R1" V 4430 4600 50  0000 C CNN
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
F 2 "Potentiometers:Potentiometer_Trimmer-Piher_PT15-V12-5_horizontal" H 1450 5550 50  0001 C CNN
F 3 "" H 1450 5550 50  0000 C CNN
	1    1450 5550
	1    0    0    -1  
$EndComp
NoConn ~ 9450 4850
NoConn ~ 9450 4950
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
NoConn ~ 5000 3600
NoConn ~ 5000 3800
NoConn ~ 5000 3900
NoConn ~ 5000 4000
NoConn ~ 5000 4100
NoConn ~ 5000 3400
NoConn ~ 5000 3300
NoConn ~ 5000 3000
NoConn ~ 5000 2900
NoConn ~ 6900 2500
NoConn ~ 6900 2600
NoConn ~ 6900 4100
NoConn ~ 6900 4000
$Comp
L LCD16X2 DS1
U 1 1 579905A1
P 2000 3900
F 0 "DS1" H 1200 4300 50  0000 C CNN
F 1 "LCD16X2" H 2700 4300 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-16_16x2.54mm_Straight" H 2000 3850 50  0000 C CIN
F 3 "" H 2000 3900 50  0000 C CNN
	1    2000 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 5799081A
P 2750 5700
F 0 "#PWR2" H 2750 5450 50  0001 C CNN
F 1 "GND" H 2750 5550 50  0000 C CNN
F 2 "" H 2750 5700 50  0000 C CNN
F 3 "" H 2750 5700 50  0000 C CNN
	1    2750 5700
	1    0    0    -1  
$EndComp
NoConn ~ 1850 4400
NoConn ~ 1950 4400
NoConn ~ 2050 4400
NoConn ~ 2150 4400
NoConn ~ 6900 2700
$Comp
L C C1
U 1 1 57991F11
P 2200 1400
F 0 "C1" H 2225 1500 50  0000 L CNN
F 1 "0.33uF" H 2225 1300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D8_L11.5_P3.5" H 2238 1250 50  0001 C CNN
F 3 "" H 2200 1400 50  0000 C CNN
	1    2200 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 57992888
P 2900 1800
F 0 "#PWR3" H 2900 1550 50  0001 C CNN
F 1 "GND" H 2900 1650 50  0000 C CNN
F 2 "" H 2900 1800 50  0000 C CNN
F 3 "" H 2900 1800 50  0000 C CNN
	1    2900 1800
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5799294B
P 3650 1400
F 0 "C2" H 3675 1500 50  0000 L CNN
F 1 "0.1uF" H 3675 1300 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D8_L11.5_P3.5" H 3688 1250 50  0001 C CNN
F 3 "" H 3650 1400 50  0000 C CNN
	1    3650 1400
	1    0    0    -1  
$EndComp
Text GLabel 4100 1100 2    60   Input ~ 0
5V
Text GLabel 3750 2350 1    60   Input ~ 0
5V
Text GLabel 4750 3100 0    60   Input ~ 0
5V
Text GLabel 950  5350 0    60   Input ~ 0
5V
Text GLabel 9250 4550 0    60   Input ~ 0
5V
Text GLabel 10400 1950 2    60   Input ~ 0
5V
$Comp
L CONN_01X02 P1
U 1 1 57994F12
P 850 1350
F 0 "P1" H 850 1500 50  0000 C CNN
F 1 "Relay power" V 950 1350 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 850 1350 50  0001 C CNN
F 3 "" H 850 1350 50  0000 C CNN
	1    850  1350
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 579961C5
P 4650 3300
F 0 "#PWR5" H 4650 3050 50  0001 C CNN
F 1 "GND" H 4650 3150 50  0000 C CNN
F 2 "" H 4650 3300 50  0000 C CNN
F 3 "" H 4650 3300 50  0000 C CNN
	1    4650 3300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR1
U 1 1 57A06564
P 1200 900
F 0 "#PWR1" H 1200 750 50  0001 C CNN
F 1 "+12V" H 1200 1040 50  0000 C CNN
F 2 "" H 1200 900 50  0000 C CNN
F 3 "" H 1200 900 50  0000 C CNN
	1    1200 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3000 9200 3150
Wire Wire Line
	9200 1950 9200 2100
Wire Wire Line
	10100 1450 10100 1950
Wire Wire Line
	10100 1950 10100 2500
Wire Wire Line
	10100 2500 9950 2500
Wire Wire Line
	9200 1650 9200 1450
Wire Wire Line
	8250 1450 9200 1450
Wire Wire Line
	9200 1450 9350 1450
Wire Wire Line
	3750 2350 3750 2550
Wire Wire Line
	3750 2550 3550 2550
Wire Wire Line
	3550 2750 3750 2750
Wire Wire Line
	3750 2750 3750 2900
Wire Wire Line
	9250 4550 9450 4550
Wire Wire Line
	9450 5050 9250 5050
Wire Wire Line
	9250 5050 9250 5350
Wire Wire Line
	10100 1450 9950 1450
Wire Wire Line
	8400 2500 9200 2500
Wire Wire Line
	9200 2500 9350 2500
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
	9450 4750 8700 4750
Wire Wire Line
	8700 4750 8700 3500
Wire Wire Line
	8700 3500 6900 3500
Wire Wire Line
	8800 3400 6900 3400
Wire Wire Line
	2750 4400 2750 5000
Wire Wire Line
	2750 5000 2750 5700
Wire Wire Line
	1250 4400 1250 5000
Wire Wire Line
	1250 5000 1650 5000
Wire Wire Line
	1650 5000 2050 5000
Wire Wire Line
	2050 5000 2750 5000
Connection ~ 2750 5000
Wire Wire Line
	1450 4400 1450 5400
Wire Wire Line
	1200 5550 1300 5550
Wire Wire Line
	1200 5150 1200 5350
Wire Wire Line
	1200 5350 1200 5550
Wire Wire Line
	1200 5150 1350 5150
Wire Wire Line
	1600 5550 2050 5550
Wire Wire Line
	2050 5550 2050 5000
Connection ~ 2050 5000
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
Wire Wire Line
	7300 4600 4500 4600
Wire Wire Line
	2550 4600 4200 4600
Wire Wire Line
	1050 1100 1200 1100
Wire Wire Line
	1200 1100 1550 1100
Wire Wire Line
	1550 1100 2200 1100
Wire Wire Line
	2200 1100 2500 1100
Wire Wire Line
	2200 1100 2200 1250
Connection ~ 2200 1100
Wire Wire Line
	2200 1650 2200 1550
Wire Wire Line
	1050 1650 1550 1650
Wire Wire Line
	1550 1650 2200 1650
Wire Wire Line
	2200 1650 2900 1650
Wire Wire Line
	2900 1650 3650 1650
Connection ~ 2900 1650
Wire Wire Line
	2900 1400 2900 1650
Wire Wire Line
	2900 1650 2900 1800
Wire Wire Line
	3650 1250 3650 1100
Wire Wire Line
	3300 1100 3650 1100
Wire Wire Line
	3650 1100 4100 1100
Wire Wire Line
	3650 1650 3650 1550
Connection ~ 3650 1100
Wire Wire Line
	5000 3100 4750 3100
Wire Wire Line
	1350 5150 1350 4400
Wire Wire Line
	950  5350 1200 5350
Connection ~ 1200 5350
Wire Wire Line
	10400 1950 10100 1950
Connection ~ 10100 1950
Wire Wire Line
	1550 1200 1550 1100
Wire Wire Line
	1550 1500 1550 1650
Connection ~ 2200 1650
Wire Wire Line
	1050 1300 1050 1100
Connection ~ 1550 1100
Wire Wire Line
	1050 1400 1050 1650
Connection ~ 1550 1650
Wire Wire Line
	5000 3200 4650 3200
Wire Wire Line
	4650 3200 4650 3300
Wire Wire Line
	3550 2650 4150 2650
Wire Wire Line
	4150 2650 4150 3700
Wire Wire Line
	4150 3700 5000 3700
Wire Wire Line
	1200 900  1200 1100
Connection ~ 1200 1100
Wire Wire Line
	9450 4650 8800 4650
Wire Wire Line
	8800 4650 8800 3400
$Comp
L LM7805CT U1
U 1 1 57A07774
P 2900 1150
F 0 "U1" H 2700 1350 50  0000 C CNN
F 1 "LM7805CT" H 2900 1350 50  0000 L CNN
F 2 "TO-220" H 2900 1250 50  0000 C CIN
F 3 "" H 2900 1150 50  0000 C CNN
	1    2900 1150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
