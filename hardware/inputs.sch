EESchema Schematic File Version 4
LIBS:di8-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L tinkerforge:CONN_4 P201
U 1 1 5AFDB800
P 2050 1550
F 0 "P201" V 2000 1550 50  0000 C CNN
F 1 "INPUT0" V 2100 1550 50  0000 C CNN
F 2 "OQ_4P" H 2050 1550 60  0001 C CNN
F 3 "" H 2050 1550 60  0000 C CNN
	1    2050 1550
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:VCCPWR #PWR0106
U 1 1 5AFDC80E
P 2400 1300
F 0 "#PWR0106" H 2400 1150 50  0001 C CNN
F 1 "VCCPWR" H 2400 1450 50  0000 C CNN
F 2 "" H 2400 1300 50  0001 C CNN
F 3 "" H 2400 1300 50  0001 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:CONN_4 P202
U 1 1 5AFDE2AB
P 2050 3150
F 0 "P202" V 2000 3150 50  0000 C CNN
F 1 "INPUT1" V 2100 3150 50  0000 C CNN
F 2 "OQ_4P" H 2050 3150 60  0001 C CNN
F 3 "" H 2050 3150 60  0000 C CNN
	1    2050 3150
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:CONN_4 P203
U 1 1 5AFDE381
P 2050 4750
F 0 "P203" V 2000 4750 50  0000 C CNN
F 1 "INPUT2" V 2100 4750 50  0000 C CNN
F 2 "OQ_4P" H 2050 4750 60  0001 C CNN
F 3 "" H 2050 4750 60  0000 C CNN
	1    2050 4750
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:CONN_4 P204
U 1 1 5AFDE3AC
P 2050 6350
F 0 "P204" V 2000 6350 50  0000 C CNN
F 1 "INPUT3" V 2100 6350 50  0000 C CNN
F 2 "OQ_4P" H 2050 6350 60  0001 C CNN
F 3 "" H 2050 6350 60  0000 C CNN
	1    2050 6350
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:R_PACK4 RP202
U 1 1 5AFE28B0
P 10050 5150
F 0 "RP202" H 10050 5600 50  0000 C CNN
F 1 "470" H 10050 5100 50  0000 C CNN
F 2 "4X0603" H 10050 5150 50  0001 C CNN
F 3 "" H 10050 5150 50  0000 C CNN
	1    10050 5150
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:R_PACK4 RP201
U 1 1 5AFE2972
P 10050 4550
F 0 "RP201" H 10050 5000 50  0000 C CNN
F 1 "470" H 10050 4500 50  0000 C CNN
F 2 "4X0603" H 10050 4550 50  0001 C CNN
F 3 "" H 10050 4550 50  0000 C CNN
	1    10050 4550
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:R_PACK4 RP203
U 1 1 5AFE2D42
P 10050 5750
F 0 "RP203" H 10050 6200 50  0000 C CNN
F 1 "470" H 10050 5700 50  0000 C CNN
F 2 "4X0603" H 10050 5750 50  0001 C CNN
F 3 "" H 10050 5750 50  0000 C CNN
	1    10050 5750
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:R_PACK4 RP204
U 1 1 5AFE2F99
P 10050 6350
F 0 "RP204" H 10050 6800 50  0000 C CNN
F 1 "470" H 10050 6300 50  0000 C CNN
F 2 "4X0603" H 10050 6350 50  0001 C CNN
F 3 "" H 10050 6350 50  0000 C CNN
	1    10050 6350
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:LED D203
U 1 1 5AFE3033
P 9050 4200
F 0 "D203" H 9050 4300 50  0000 C CNN
F 1 "LED" H 9300 4300 50  0000 C CNN
F 2 "D0603F" H 9050 4200 50  0001 C CNN
F 3 "" H 9050 4200 50  0000 C CNN
	1    9050 4200
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:LED D204
U 1 1 5AFE3267
P 9050 4400
F 0 "D204" H 9050 4250 50  0000 C CNN
F 1 "LED" H 9300 4250 50  0000 C CNN
F 2 "D0603F" H 9050 4400 50  0001 C CNN
F 3 "" H 9050 4400 50  0000 C CNN
	1    9050 4400
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:LED D205
U 1 1 5AFE32B1
P 9050 4800
F 0 "D205" H 9050 4900 50  0000 C CNN
F 1 "LED" H 9300 4900 50  0000 C CNN
F 2 "D0603F" H 9050 4800 50  0001 C CNN
F 3 "" H 9050 4800 50  0000 C CNN
	1    9050 4800
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:LED D206
U 1 1 5AFE32FE
P 9050 5000
F 0 "D206" H 9050 4800 50  0000 C CNN
F 1 "LED" H 9300 4800 50  0000 C CNN
F 2 "D0603F" H 9050 5000 50  0001 C CNN
F 3 "" H 9050 5000 50  0000 C CNN
	1    9050 5000
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:LED D207
U 1 1 5AFE3350
P 9050 5400
F 0 "D207" H 9050 5500 50  0000 C CNN
F 1 "LED" H 9300 5500 50  0000 C CNN
F 2 "D0603F" H 9050 5400 50  0001 C CNN
F 3 "" H 9050 5400 50  0000 C CNN
	1    9050 5400
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:LED D208
U 1 1 5AFE33A3
P 9050 5600
F 0 "D208" H 9050 5450 50  0000 C CNN
F 1 "LED" H 9300 5450 50  0000 C CNN
F 2 "D0603F" H 9050 5600 50  0001 C CNN
F 3 "" H 9050 5600 50  0000 C CNN
	1    9050 5600
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:LED D209
U 1 1 5AFE3425
P 9050 6000
F 0 "D209" H 9050 6100 50  0000 C CNN
F 1 "LED" H 9300 6100 50  0000 C CNN
F 2 "D0603F" H 9050 6000 50  0001 C CNN
F 3 "" H 9050 6000 50  0000 C CNN
	1    9050 6000
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:LED D210
U 1 1 5AFE34AC
P 9050 6200
F 0 "D210" H 9050 6050 50  0000 C CNN
F 1 "LED" H 9300 6050 50  0000 C CNN
F 2 "D0603F" H 9050 6200 50  0001 C CNN
F 3 "" H 9050 6200 50  0000 C CNN
	1    9050 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 6100 8850 6100
Wire Wire Line
	8850 6100 8850 6000
Wire Wire Line
	9250 6000 9850 6000
Wire Wire Line
	9850 6300 8850 6300
Wire Wire Line
	8850 6300 8850 6200
Wire Wire Line
	9250 6200 9850 6200
Wire Wire Line
	9850 5700 8850 5700
Wire Wire Line
	8850 5700 8850 5600
Wire Wire Line
	9850 5500 8850 5500
Wire Wire Line
	8850 5500 8850 5400
Wire Wire Line
	9250 5400 9850 5400
Wire Wire Line
	9850 5600 9250 5600
Wire Wire Line
	9850 5100 8850 5100
Wire Wire Line
	8850 5100 8850 5000
Wire Wire Line
	9250 5000 9850 5000
Wire Wire Line
	9850 4900 8850 4900
Wire Wire Line
	8850 4900 8850 4800
Wire Wire Line
	9250 4800 9850 4800
Wire Wire Line
	8850 4400 8850 4500
Wire Wire Line
	8850 4500 9850 4500
Wire Wire Line
	9850 4400 9250 4400
Wire Wire Line
	8850 4200 8850 4300
Wire Wire Line
	8850 4300 9850 4300
Wire Wire Line
	9850 4200 9250 4200
$Comp
L tinkerforge:3V3 #PWR0107
U 1 1 5AFE4D2A
P 10400 4000
F 0 "#PWR0107" H 10400 4100 40  0001 C CNN
F 1 "3V3" H 10400 4125 40  0000 C CNN
F 2 "" H 10400 4000 60  0000 C CNN
F 3 "" H 10400 4000 60  0000 C CNN
	1    10400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4300 10400 4300
Wire Wire Line
	10400 4000 10400 4300
Wire Wire Line
	10400 4500 10250 4500
Connection ~ 10400 4300
Wire Wire Line
	10400 4900 10250 4900
Connection ~ 10400 4500
Wire Wire Line
	10400 5100 10250 5100
Connection ~ 10400 4900
Wire Wire Line
	10400 5500 10250 5500
Connection ~ 10400 5100
Wire Wire Line
	10400 5700 10250 5700
Connection ~ 10400 5500
Wire Wire Line
	10400 6100 10250 6100
Connection ~ 10400 5700
Wire Wire Line
	10400 6300 10250 6300
Connection ~ 10400 6100
Text GLabel 10600 4200 2    39   Input ~ 0
LED0
Text GLabel 10600 4400 2    39   Input ~ 0
LED1
Text GLabel 10600 4800 2    39   Input ~ 0
LED2
Text GLabel 10600 5000 2    39   Input ~ 0
LED3
Text GLabel 10600 5400 2    39   Input ~ 0
LED4
Text GLabel 10600 5600 2    39   Input ~ 0
LED5
Text GLabel 10600 6000 2    39   Input ~ 0
LED6
Text GLabel 10600 6200 2    39   Input ~ 0
LED7
Wire Wire Line
	10250 4200 10600 4200
Wire Wire Line
	10600 4400 10250 4400
Wire Wire Line
	10250 4800 10600 4800
Wire Wire Line
	10600 5000 10250 5000
Wire Wire Line
	10250 5400 10600 5400
Wire Wire Line
	10600 5600 10250 5600
Wire Wire Line
	10250 6000 10600 6000
Wire Wire Line
	10600 6200 10250 6200
$Comp
L tinkerforge:Cs C201
U 1 1 5AFEDA69
P 1700 7200
F 0 "C201" H 1725 7275 31  0000 L CNN
F 1 "500pF/2kV" V 1600 7100 31  0000 L CNN
F 2 "C1210" H 1700 7200 60  0001 C CNN
F 3 "" H 1700 7200 60  0000 C CNN
	1    1700 7200
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Earth #PWR0108
U 1 1 5AFEE2BB
P 1850 7250
F 0 "#PWR0108" H 1850 7000 50  0001 C CNN
F 1 "Earth" H 1850 7100 50  0001 C CNN
F 2 "" H 1850 7250 50  0001 C CNN
F 3 "" H 1850 7250 50  0001 C CNN
	1    1850 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 7200 1850 7200
Wire Wire Line
	1850 7200 1850 7250
Wire Wire Line
	10400 4300 10400 4500
Wire Wire Line
	10400 4500 10400 4900
Wire Wire Line
	10400 4900 10400 5100
Wire Wire Line
	10400 5100 10400 5500
Wire Wire Line
	10400 5500 10400 5700
Wire Wire Line
	10400 5700 10400 6100
Wire Wire Line
	10400 6100 10400 6300
$Comp
L tinkerforge:ISO1212 U201
U 1 1 5D0D2965
P 5600 1450
F 0 "U201" H 5600 1925 50  0000 C CNN
F 1 "ISO1212" H 5600 1834 50  0000 C CNN
F 2 "SSOP16" H 5600 1450 50  0001 C CNN
F 3 "" H 5600 1450 50  0001 C CNN
	1    5600 1450
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Rs R201
U 1 1 5D0D0545
P 3650 1200
F 0 "R201" V 3700 1200 31  0000 C CNN
F 1 "1k" V 3650 1200 31  0000 C CNN
F 2 "MELF" H 3650 1200 60  0001 C CNN
F 3 "" H 3650 1200 60  0000 C CNN
	1    3650 1200
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R202
U 1 1 5D0D074B
P 3650 1800
F 0 "R202" V 3700 1800 31  0000 C CNN
F 1 "1k" V 3650 1800 31  0000 C CNN
F 2 "MELF" H 3650 1800 60  0001 C CNN
F 3 "" H 3650 1800 60  0000 C CNN
	1    3650 1800
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R204
U 1 1 5D0D09D8
P 4650 1950
F 0 "R204" V 4700 1950 31  0000 C CNN
F 1 "562" V 4650 1950 31  0000 C CNN
F 2 "R0603F" H 4650 1950 60  0001 C CNN
F 3 "" H 4650 1950 60  0000 C CNN
	1    4650 1950
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R203
U 1 1 5D0D0FEE
P 4650 1350
F 0 "R203" V 4700 1350 31  0000 C CNN
F 1 "562" V 4650 1350 31  0000 C CNN
F 2 "R0603F" H 4650 1350 60  0001 C CNN
F 3 "" H 4650 1350 60  0000 C CNN
	1    4650 1350
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Cs C202
U 1 1 5D0D184F
P 4300 1450
F 0 "C202" H 4200 1419 31  0000 R CNN
F 1 "DNP" H 4200 1481 31  0000 R CNN
F 2 "C0603" H 4200 1512 60  0001 R CNN
F 3 "" H 4300 1450 60  0000 C CNN
	1    4300 1450
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:Cs C203
U 1 1 5D0D1D53
P 4300 2050
F 0 "C203" H 4200 2019 31  0000 R CNN
F 1 "DNP" H 4200 2081 31  0000 R CNN
F 2 "C0603" H 4200 2112 60  0001 R CNN
F 3 "" H 4300 2050 60  0000 C CNN
	1    4300 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 1200 5150 1200
Connection ~ 4300 1200
$Comp
L tinkerforge:TVS D201
U 1 1 5D0EC296
P 3800 2050
F 0 "D201" V 3762 2128 40  0000 L CNN
F 1 "SMF36A" V 3838 2128 40  0000 L CNN
F 2 "SOD-123" H 3800 2050 60  0001 C CNN
F 3 "" H 3800 2050 60  0000 C CNN
	1    3800 2050
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:TVS D202
U 1 1 5D0EC8DA
P 3900 1450
F 0 "D202" V 3862 1528 40  0000 L CNN
F 1 "SMF36A" V 3938 1528 40  0000 L CNN
F 2 "SOD-123" H 3900 1450 60  0001 C CNN
F 3 "" H 3900 1450 60  0000 C CNN
	1    3900 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 1800 4300 1800
Wire Wire Line
	3750 1800 3800 1800
Connection ~ 3800 1800
Wire Wire Line
	3900 1700 3900 2350
Wire Wire Line
	3800 2350 3800 2300
$Comp
L tinkerforge:AGND #PWR0109
U 1 1 5D1110E1
P 3800 2350
F 0 "#PWR0109" H 3800 2100 50  0001 C CNN
F 1 "AGND" H 3805 2177 50  0000 C CNN
F 2 "" H 3800 2350 50  0000 C CNN
F 3 "" H 3800 2350 50  0000 C CNN
	1    3800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2350 3900 2350
Connection ~ 3800 2350
Wire Wire Line
	4300 2350 3900 2350
Connection ~ 3900 2350
Wire Wire Line
	4300 1700 3900 1700
Connection ~ 3900 1700
Wire Wire Line
	3750 1200 3900 1200
Wire Wire Line
	3900 1200 4300 1200
Connection ~ 3900 1200
Wire Wire Line
	4300 1200 4300 1350
Wire Wire Line
	4300 1950 4550 1950
Wire Wire Line
	4300 1550 4300 1700
Wire Wire Line
	4300 1800 4300 1950
Connection ~ 4300 1950
Wire Wire Line
	4300 2350 4300 2150
Wire Wire Line
	4300 1800 4550 1800
Wire Wire Line
	4550 1800 4550 1700
Wire Wire Line
	4550 1700 5150 1700
Connection ~ 4300 1800
Wire Wire Line
	5150 1800 4850 1800
Wire Wire Line
	4850 1800 4850 1950
Wire Wire Line
	4850 1950 4750 1950
$Comp
L tinkerforge:AGND #PWR0110
U 1 1 5D14DF95
P 5150 2350
F 0 "#PWR0110" H 5150 2100 50  0001 C CNN
F 1 "AGND" H 5155 2177 50  0000 C CNN
F 2 "" H 5150 2350 50  0000 C CNN
F 3 "" H 5150 2350 50  0000 C CNN
	1    5150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1900 5150 2350
Wire Wire Line
	5150 1300 4850 1300
Wire Wire Line
	4850 1300 4850 1350
Wire Wire Line
	4850 1350 4750 1350
Wire Wire Line
	4550 1350 4300 1350
Connection ~ 4300 1350
Wire Wire Line
	5150 1400 5050 1400
Wire Wire Line
	5050 1400 5050 1900
Wire Wire Line
	5050 1900 5150 1900
Connection ~ 5150 1900
NoConn ~ 5150 1500
NoConn ~ 5150 1600
NoConn ~ 6050 1800
NoConn ~ 6050 1700
$Comp
L tinkerforge:GND #PWR0111
U 1 1 5D180277
P 6100 2350
F 0 "#PWR0111" H 6100 2350 30  0001 C CNN
F 1 "GND" H 6100 2280 30  0001 C CNN
F 2 "" H 6100 2350 60  0000 C CNN
F 3 "" H 6100 2350 60  0000 C CNN
	1    6100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1900 6100 1900
Wire Wire Line
	6100 1900 6100 2350
Wire Wire Line
	6050 1200 6100 1200
Wire Wire Line
	6100 1200 6100 1900
Connection ~ 6100 1900
$Comp
L tinkerforge:3V3 #PWR0112
U 1 1 5D1B7FDD
P 6200 950
F 0 "#PWR0112" H 6200 800 50  0001 C CNN
F 1 "3V3" H 6215 1123 50  0000 C CNN
F 2 "" H 6200 950 50  0000 C CNN
F 3 "" H 6200 950 50  0000 C CNN
	1    6200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1300 6200 1300
Wire Wire Line
	6200 1300 6200 1150
Text GLabel 6400 1500 2    39   Output ~ 0
IN0
Text GLabel 6400 1600 2    39   Output ~ 0
IN1
Wire Wire Line
	6050 1500 6400 1500
Wire Wire Line
	6400 1600 6050 1600
$Comp
L tinkerforge:Cs C204
U 1 1 5D1CCBB5
P 6350 1150
F 0 "C204" V 6250 1100 31  0000 L CNN
F 1 "100nF" V 6450 1050 31  0000 L CNN
F 2 "C0603F" H 6350 1150 60  0001 C CNN
F 3 "" H 6350 1150 60  0000 C CNN
	1    6350 1150
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:GND #PWR0113
U 1 1 5D1CCDF9
P 6450 1200
F 0 "#PWR0113" H 6450 1200 30  0001 C CNN
F 1 "GND" H 6450 1130 30  0001 C CNN
F 2 "" H 6450 1200 60  0000 C CNN
F 3 "" H 6450 1200 60  0000 C CNN
	1    6450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1200 6450 1150
Wire Wire Line
	6250 1150 6200 1150
Connection ~ 6200 1150
Wire Wire Line
	6200 1150 6200 950 
Wire Wire Line
	2400 1500 3550 1500
Wire Wire Line
	2400 1600 3550 1600
Wire Wire Line
	3550 1600 3550 1800
Wire Wire Line
	3550 1200 3550 1500
$Comp
L tinkerforge:AGND #PWR0114
U 1 1 5D1FE26D
P 2400 1800
F 0 "#PWR0114" H 2400 1550 50  0001 C CNN
F 1 "AGND" H 2405 1627 50  0000 C CNN
F 2 "" H 2400 1800 50  0000 C CNN
F 3 "" H 2400 1800 50  0000 C CNN
	1    2400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1700 2400 1800
Wire Wire Line
	2400 1400 2400 1300
Wire Wire Line
	6200 1300 6200 1400
Wire Wire Line
	6200 1400 6050 1400
Connection ~ 6200 1300
$Comp
L tinkerforge:AGND #PWR0115
U 1 1 5D558F3B
P 1550 7250
F 0 "#PWR0115" H 1550 7000 50  0001 C CNN
F 1 "AGND" H 1555 7077 50  0000 C CNN
F 2 "" H 1550 7250 50  0000 C CNN
F 3 "" H 1550 7250 50  0000 C CNN
	1    1550 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 7200 1550 7200
Wire Wire Line
	1550 7200 1550 7250
$Comp
L tinkerforge:ISO1212 U202
U 1 1 5D9CD96B
P 5600 3050
F 0 "U202" H 5600 3525 50  0000 C CNN
F 1 "ISO1212" H 5600 3434 50  0000 C CNN
F 2 "SSOP16" H 5600 3050 50  0001 C CNN
F 3 "" H 5600 3050 50  0001 C CNN
	1    5600 3050
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Rs R205
U 1 1 5D9CD972
P 3650 2800
F 0 "R205" V 3700 2800 31  0000 C CNN
F 1 "1k" V 3650 2800 31  0000 C CNN
F 2 "MELF" H 3650 2800 60  0001 C CNN
F 3 "" H 3650 2800 60  0000 C CNN
	1    3650 2800
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R206
U 1 1 5D9CD979
P 3650 3400
F 0 "R206" V 3700 3400 31  0000 C CNN
F 1 "1k" V 3650 3400 31  0000 C CNN
F 2 "MELF" H 3650 3400 60  0001 C CNN
F 3 "" H 3650 3400 60  0000 C CNN
	1    3650 3400
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R212
U 1 1 5D9CD980
P 4650 3550
F 0 "R212" V 4700 3550 31  0000 C CNN
F 1 "562" V 4650 3550 31  0000 C CNN
F 2 "R0603F" H 4650 3550 60  0001 C CNN
F 3 "" H 4650 3550 60  0000 C CNN
	1    4650 3550
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R211
U 1 1 5D9CD987
P 4650 2950
F 0 "R211" V 4700 2950 31  0000 C CNN
F 1 "562" V 4650 2950 31  0000 C CNN
F 2 "R0603F" H 4650 2950 60  0001 C CNN
F 3 "" H 4650 2950 60  0000 C CNN
	1    4650 2950
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Cs C205
U 1 1 5D9CD98E
P 4300 3050
F 0 "C205" H 4200 3019 31  0000 R CNN
F 1 "DNP" H 4200 3081 31  0000 R CNN
F 2 "C0603" H 4200 3112 60  0001 R CNN
F 3 "" H 4300 3050 60  0000 C CNN
	1    4300 3050
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:Cs C206
U 1 1 5D9CD995
P 4300 3650
F 0 "C206" H 4200 3619 31  0000 R CNN
F 1 "DNP" H 4200 3681 31  0000 R CNN
F 2 "C0603" H 4200 3712 60  0001 R CNN
F 3 "" H 4300 3650 60  0000 C CNN
	1    4300 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 2800 5150 2800
Connection ~ 4300 2800
$Comp
L tinkerforge:TVS D211
U 1 1 5D9CD99E
P 3800 3650
F 0 "D211" V 3762 3728 40  0000 L CNN
F 1 "SMF36A" V 3838 3728 40  0000 L CNN
F 2 "SOD-123" H 3800 3650 60  0001 C CNN
F 3 "" H 3800 3650 60  0000 C CNN
	1    3800 3650
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:TVS D214
U 1 1 5D9CD9A5
P 3900 3050
F 0 "D214" V 3862 3128 40  0000 L CNN
F 1 "SMF36A" V 3938 3128 40  0000 L CNN
F 2 "SOD-123" H 3900 3050 60  0001 C CNN
F 3 "" H 3900 3050 60  0000 C CNN
	1    3900 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 3400 4300 3400
Wire Wire Line
	3750 3400 3800 3400
Connection ~ 3800 3400
Wire Wire Line
	3900 3300 3900 3950
Wire Wire Line
	3800 3950 3800 3900
$Comp
L tinkerforge:AGND #PWR0116
U 1 1 5D9CD9B1
P 3800 3950
F 0 "#PWR0116" H 3800 3700 50  0001 C CNN
F 1 "AGND" H 3805 3777 50  0000 C CNN
F 2 "" H 3800 3950 50  0000 C CNN
F 3 "" H 3800 3950 50  0000 C CNN
	1    3800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3950 3900 3950
Connection ~ 3800 3950
Wire Wire Line
	4300 3950 3900 3950
Connection ~ 3900 3950
Wire Wire Line
	4300 3300 3900 3300
Connection ~ 3900 3300
Wire Wire Line
	3750 2800 3900 2800
Wire Wire Line
	3900 2800 4300 2800
Connection ~ 3900 2800
Wire Wire Line
	4300 2800 4300 2950
Wire Wire Line
	4300 3550 4550 3550
Wire Wire Line
	4300 3150 4300 3300
Wire Wire Line
	4300 3400 4300 3550
Connection ~ 4300 3550
Wire Wire Line
	4300 3950 4300 3750
Wire Wire Line
	4300 3400 4550 3400
Wire Wire Line
	4550 3400 4550 3300
Wire Wire Line
	4550 3300 5150 3300
Connection ~ 4300 3400
Wire Wire Line
	5150 3400 4850 3400
Wire Wire Line
	4850 3400 4850 3550
Wire Wire Line
	4850 3550 4750 3550
$Comp
L tinkerforge:AGND #PWR0117
U 1 1 5D9CD9CD
P 5150 3950
F 0 "#PWR0117" H 5150 3700 50  0001 C CNN
F 1 "AGND" H 5155 3777 50  0000 C CNN
F 2 "" H 5150 3950 50  0000 C CNN
F 3 "" H 5150 3950 50  0000 C CNN
	1    5150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3500 5150 3950
Wire Wire Line
	5150 2900 4850 2900
Wire Wire Line
	4850 2900 4850 2950
Wire Wire Line
	4850 2950 4750 2950
Wire Wire Line
	4550 2950 4300 2950
Connection ~ 4300 2950
Wire Wire Line
	5150 3000 5050 3000
Wire Wire Line
	5050 3000 5050 3500
Wire Wire Line
	5050 3500 5150 3500
Connection ~ 5150 3500
NoConn ~ 5150 3100
NoConn ~ 5150 3200
NoConn ~ 6050 3400
NoConn ~ 6050 3300
$Comp
L tinkerforge:GND #PWR0118
U 1 1 5D9CD9E1
P 6100 3950
F 0 "#PWR0118" H 6100 3950 30  0001 C CNN
F 1 "GND" H 6100 3880 30  0001 C CNN
F 2 "" H 6100 3950 60  0000 C CNN
F 3 "" H 6100 3950 60  0000 C CNN
	1    6100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3500 6100 3500
Wire Wire Line
	6100 3500 6100 3950
Wire Wire Line
	6050 2800 6100 2800
Wire Wire Line
	6100 2800 6100 3500
Connection ~ 6100 3500
$Comp
L tinkerforge:3V3 #PWR0119
U 1 1 5D9CD9EC
P 6200 2550
F 0 "#PWR0119" H 6200 2400 50  0001 C CNN
F 1 "3V3" H 6215 2723 50  0000 C CNN
F 2 "" H 6200 2550 50  0000 C CNN
F 3 "" H 6200 2550 50  0000 C CNN
	1    6200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2900 6200 2900
Wire Wire Line
	6200 2900 6200 2750
Text GLabel 6400 3100 2    39   Output ~ 0
IN2
Text GLabel 6400 3200 2    39   Output ~ 0
IN3
Wire Wire Line
	6050 3100 6400 3100
Wire Wire Line
	6400 3200 6050 3200
$Comp
L tinkerforge:Cs C211
U 1 1 5D9CD9F8
P 6350 2750
F 0 "C211" V 6250 2700 31  0000 L CNN
F 1 "100nF" V 6450 2650 31  0000 L CNN
F 2 "C0603F" H 6350 2750 60  0001 C CNN
F 3 "" H 6350 2750 60  0000 C CNN
	1    6350 2750
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:GND #PWR0120
U 1 1 5D9CD9FF
P 6450 2800
F 0 "#PWR0120" H 6450 2800 30  0001 C CNN
F 1 "GND" H 6450 2730 30  0001 C CNN
F 2 "" H 6450 2800 60  0000 C CNN
F 3 "" H 6450 2800 60  0000 C CNN
	1    6450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2800 6450 2750
Wire Wire Line
	6250 2750 6200 2750
Connection ~ 6200 2750
Wire Wire Line
	6200 2750 6200 2550
Wire Wire Line
	2400 3100 3550 3100
Wire Wire Line
	2400 3200 3550 3200
Wire Wire Line
	3550 3200 3550 3400
Wire Wire Line
	3550 2800 3550 3100
Wire Wire Line
	6200 2900 6200 3000
Wire Wire Line
	6200 3000 6050 3000
Connection ~ 6200 2900
$Comp
L tinkerforge:ISO1212 U203
U 1 1 5D9DB314
P 5600 4650
F 0 "U203" H 5600 5125 50  0000 C CNN
F 1 "ISO1212" H 5600 5034 50  0000 C CNN
F 2 "SSOP16" H 5600 4650 50  0001 C CNN
F 3 "" H 5600 4650 50  0001 C CNN
	1    5600 4650
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Rs R207
U 1 1 5D9DB31B
P 3650 4400
F 0 "R207" V 3700 4400 31  0000 C CNN
F 1 "1k" V 3650 4400 31  0000 C CNN
F 2 "MELF" H 3650 4400 60  0001 C CNN
F 3 "" H 3650 4400 60  0000 C CNN
	1    3650 4400
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R208
U 1 1 5D9DB322
P 3650 5000
F 0 "R208" V 3700 5000 31  0000 C CNN
F 1 "1k" V 3650 5000 31  0000 C CNN
F 2 "MELF" H 3650 5000 60  0001 C CNN
F 3 "" H 3650 5000 60  0000 C CNN
	1    3650 5000
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R214
U 1 1 5D9DB329
P 4650 5150
F 0 "R214" V 4700 5150 31  0000 C CNN
F 1 "562" V 4650 5150 31  0000 C CNN
F 2 "R0603F" H 4650 5150 60  0001 C CNN
F 3 "" H 4650 5150 60  0000 C CNN
	1    4650 5150
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R213
U 1 1 5D9DB330
P 4650 4550
F 0 "R213" V 4700 4550 31  0000 C CNN
F 1 "562" V 4650 4550 31  0000 C CNN
F 2 "R0603F" H 4650 4550 60  0001 C CNN
F 3 "" H 4650 4550 60  0000 C CNN
	1    4650 4550
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Cs C207
U 1 1 5D9DB337
P 4300 4650
F 0 "C207" H 4200 4619 31  0000 R CNN
F 1 "DNP" H 4200 4681 31  0000 R CNN
F 2 "C0603" H 4200 4712 60  0001 R CNN
F 3 "" H 4300 4650 60  0000 C CNN
	1    4300 4650
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:Cs C208
U 1 1 5D9DB33E
P 4300 5250
F 0 "C208" H 4200 5219 31  0000 R CNN
F 1 "DNP" H 4200 5281 31  0000 R CNN
F 2 "C0603" H 4200 5312 60  0001 R CNN
F 3 "" H 4300 5250 60  0000 C CNN
	1    4300 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 4400 5150 4400
Connection ~ 4300 4400
$Comp
L tinkerforge:TVS D212
U 1 1 5D9DB347
P 3800 5250
F 0 "D212" V 3762 5328 40  0000 L CNN
F 1 "SMF36A" V 3838 5328 40  0000 L CNN
F 2 "SOD-123" H 3800 5250 60  0001 C CNN
F 3 "" H 3800 5250 60  0000 C CNN
	1    3800 5250
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:TVS D215
U 1 1 5D9DB34E
P 3900 4650
F 0 "D215" V 3862 4728 40  0000 L CNN
F 1 "SMF36A" V 3938 4728 40  0000 L CNN
F 2 "SOD-123" H 3900 4650 60  0001 C CNN
F 3 "" H 3900 4650 60  0000 C CNN
	1    3900 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 5000 4300 5000
Wire Wire Line
	3750 5000 3800 5000
Connection ~ 3800 5000
Wire Wire Line
	3900 4900 3900 5550
Wire Wire Line
	3800 5550 3800 5500
$Comp
L tinkerforge:AGND #PWR0121
U 1 1 5D9DB35A
P 3800 5550
F 0 "#PWR0121" H 3800 5300 50  0001 C CNN
F 1 "AGND" H 3805 5377 50  0000 C CNN
F 2 "" H 3800 5550 50  0000 C CNN
F 3 "" H 3800 5550 50  0000 C CNN
	1    3800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5550 3900 5550
Connection ~ 3800 5550
Wire Wire Line
	4300 5550 3900 5550
Connection ~ 3900 5550
Wire Wire Line
	4300 4900 3900 4900
Connection ~ 3900 4900
Wire Wire Line
	3750 4400 3900 4400
Wire Wire Line
	3900 4400 4300 4400
Connection ~ 3900 4400
Wire Wire Line
	4300 4400 4300 4550
Wire Wire Line
	4300 5150 4550 5150
Wire Wire Line
	4300 4750 4300 4900
Wire Wire Line
	4300 5000 4300 5150
Connection ~ 4300 5150
Wire Wire Line
	4300 5550 4300 5350
Wire Wire Line
	4300 5000 4550 5000
Wire Wire Line
	4550 5000 4550 4900
Wire Wire Line
	4550 4900 5150 4900
Connection ~ 4300 5000
Wire Wire Line
	5150 5000 4850 5000
Wire Wire Line
	4850 5000 4850 5150
Wire Wire Line
	4850 5150 4750 5150
$Comp
L tinkerforge:AGND #PWR0122
U 1 1 5D9DB376
P 5150 5550
F 0 "#PWR0122" H 5150 5300 50  0001 C CNN
F 1 "AGND" H 5155 5377 50  0000 C CNN
F 2 "" H 5150 5550 50  0000 C CNN
F 3 "" H 5150 5550 50  0000 C CNN
	1    5150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5100 5150 5550
Wire Wire Line
	5150 4500 4850 4500
Wire Wire Line
	4850 4500 4850 4550
Wire Wire Line
	4850 4550 4750 4550
Wire Wire Line
	4550 4550 4300 4550
Connection ~ 4300 4550
Wire Wire Line
	5150 4600 5050 4600
Wire Wire Line
	5050 4600 5050 5100
Wire Wire Line
	5050 5100 5150 5100
Connection ~ 5150 5100
NoConn ~ 5150 4700
NoConn ~ 5150 4800
NoConn ~ 6050 5000
NoConn ~ 6050 4900
$Comp
L tinkerforge:GND #PWR0123
U 1 1 5D9DB38A
P 6100 5550
F 0 "#PWR0123" H 6100 5550 30  0001 C CNN
F 1 "GND" H 6100 5480 30  0001 C CNN
F 2 "" H 6100 5550 60  0000 C CNN
F 3 "" H 6100 5550 60  0000 C CNN
	1    6100 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5100 6100 5100
Wire Wire Line
	6100 5100 6100 5550
Wire Wire Line
	6050 4400 6100 4400
Wire Wire Line
	6100 4400 6100 5100
Connection ~ 6100 5100
$Comp
L tinkerforge:3V3 #PWR0124
U 1 1 5D9DB395
P 6200 4150
F 0 "#PWR0124" H 6200 4000 50  0001 C CNN
F 1 "3V3" H 6215 4323 50  0000 C CNN
F 2 "" H 6200 4150 50  0000 C CNN
F 3 "" H 6200 4150 50  0000 C CNN
	1    6200 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4500 6200 4500
Wire Wire Line
	6200 4500 6200 4350
Text GLabel 6400 4700 2    39   Output ~ 0
IN4
Text GLabel 6400 4800 2    39   Output ~ 0
IN5
Wire Wire Line
	6050 4700 6400 4700
Wire Wire Line
	6400 4800 6050 4800
$Comp
L tinkerforge:Cs C212
U 1 1 5D9DB3A1
P 6350 4350
F 0 "C212" V 6250 4300 31  0000 L CNN
F 1 "100nF" V 6450 4250 31  0000 L CNN
F 2 "C0603F" H 6350 4350 60  0001 C CNN
F 3 "" H 6350 4350 60  0000 C CNN
	1    6350 4350
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:GND #PWR0125
U 1 1 5D9DB3A8
P 6450 4400
F 0 "#PWR0125" H 6450 4400 30  0001 C CNN
F 1 "GND" H 6450 4330 30  0001 C CNN
F 2 "" H 6450 4400 60  0000 C CNN
F 3 "" H 6450 4400 60  0000 C CNN
	1    6450 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4400 6450 4350
Wire Wire Line
	6250 4350 6200 4350
Connection ~ 6200 4350
Wire Wire Line
	6200 4350 6200 4150
Wire Wire Line
	2400 4700 3550 4700
Wire Wire Line
	2400 4800 3550 4800
Wire Wire Line
	3550 4800 3550 5000
Wire Wire Line
	3550 4400 3550 4700
Wire Wire Line
	6200 4500 6200 4600
Wire Wire Line
	6200 4600 6050 4600
Connection ~ 6200 4500
$Comp
L tinkerforge:ISO1212 U204
U 1 1 5D9E6B5C
P 5600 6250
F 0 "U204" H 5600 6725 50  0000 C CNN
F 1 "ISO1212" H 5600 6634 50  0000 C CNN
F 2 "SSOP16" H 5600 6250 50  0001 C CNN
F 3 "" H 5600 6250 50  0001 C CNN
	1    5600 6250
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Rs R209
U 1 1 5D9E6B63
P 3650 6000
F 0 "R209" V 3700 6000 31  0000 C CNN
F 1 "1k" V 3650 6000 31  0000 C CNN
F 2 "MELF" H 3650 6000 60  0001 C CNN
F 3 "" H 3650 6000 60  0000 C CNN
	1    3650 6000
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R210
U 1 1 5D9E6B6A
P 3650 6600
F 0 "R210" V 3700 6600 31  0000 C CNN
F 1 "1k" V 3650 6600 31  0000 C CNN
F 2 "MELF" H 3650 6600 60  0001 C CNN
F 3 "" H 3650 6600 60  0000 C CNN
	1    3650 6600
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R216
U 1 1 5D9E6B71
P 4650 6750
F 0 "R216" V 4700 6750 31  0000 C CNN
F 1 "562" V 4650 6750 31  0000 C CNN
F 2 "R0603F" H 4650 6750 60  0001 C CNN
F 3 "" H 4650 6750 60  0000 C CNN
	1    4650 6750
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R215
U 1 1 5D9E6B78
P 4650 6150
F 0 "R215" V 4700 6150 31  0000 C CNN
F 1 "562" V 4650 6150 31  0000 C CNN
F 2 "R0603F" H 4650 6150 60  0001 C CNN
F 3 "" H 4650 6150 60  0000 C CNN
	1    4650 6150
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Cs C209
U 1 1 5D9E6B7F
P 4300 6250
F 0 "C209" H 4200 6219 31  0000 R CNN
F 1 "DNP" H 4200 6281 31  0000 R CNN
F 2 "C0603" H 4200 6312 60  0001 R CNN
F 3 "" H 4300 6250 60  0000 C CNN
	1    4300 6250
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:Cs C210
U 1 1 5D9E6B86
P 4300 6850
F 0 "C210" H 4200 6819 31  0000 R CNN
F 1 "DNP" H 4200 6881 31  0000 R CNN
F 2 "C0603" H 4200 6912 60  0001 R CNN
F 3 "" H 4300 6850 60  0000 C CNN
	1    4300 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 6000 5150 6000
Connection ~ 4300 6000
$Comp
L tinkerforge:TVS D213
U 1 1 5D9E6B8F
P 3800 6850
F 0 "D213" V 3762 6928 40  0000 L CNN
F 1 "SMF36A" V 3838 6928 40  0000 L CNN
F 2 "SOD-123" H 3800 6850 60  0001 C CNN
F 3 "" H 3800 6850 60  0000 C CNN
	1    3800 6850
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:TVS D216
U 1 1 5D9E6B96
P 3900 6250
F 0 "D216" V 3862 6328 40  0000 L CNN
F 1 "SMF36A" V 3938 6328 40  0000 L CNN
F 2 "SOD-123" H 3900 6250 60  0001 C CNN
F 3 "" H 3900 6250 60  0000 C CNN
	1    3900 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 6600 4300 6600
Wire Wire Line
	3750 6600 3800 6600
Connection ~ 3800 6600
Wire Wire Line
	3900 6500 3900 7150
Wire Wire Line
	3800 7150 3800 7100
$Comp
L tinkerforge:AGND #PWR0126
U 1 1 5D9E6BA2
P 3800 7150
F 0 "#PWR0126" H 3800 6900 50  0001 C CNN
F 1 "AGND" H 3805 6977 50  0000 C CNN
F 2 "" H 3800 7150 50  0000 C CNN
F 3 "" H 3800 7150 50  0000 C CNN
	1    3800 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7150 3900 7150
Connection ~ 3800 7150
Wire Wire Line
	4300 7150 3900 7150
Connection ~ 3900 7150
Wire Wire Line
	4300 6500 3900 6500
Connection ~ 3900 6500
Wire Wire Line
	3750 6000 3900 6000
Wire Wire Line
	3900 6000 4300 6000
Connection ~ 3900 6000
Wire Wire Line
	4300 6000 4300 6150
Wire Wire Line
	4300 6750 4550 6750
Wire Wire Line
	4300 6350 4300 6500
Wire Wire Line
	4300 6600 4300 6750
Connection ~ 4300 6750
Wire Wire Line
	4300 7150 4300 6950
Wire Wire Line
	4300 6600 4550 6600
Wire Wire Line
	4550 6600 4550 6500
Wire Wire Line
	4550 6500 5150 6500
Connection ~ 4300 6600
Wire Wire Line
	5150 6600 4850 6600
Wire Wire Line
	4850 6600 4850 6750
Wire Wire Line
	4850 6750 4750 6750
$Comp
L tinkerforge:AGND #PWR0127
U 1 1 5D9E6BBE
P 5150 7150
F 0 "#PWR0127" H 5150 6900 50  0001 C CNN
F 1 "AGND" H 5155 6977 50  0000 C CNN
F 2 "" H 5150 7150 50  0000 C CNN
F 3 "" H 5150 7150 50  0000 C CNN
	1    5150 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 6700 5150 7150
Wire Wire Line
	5150 6100 4850 6100
Wire Wire Line
	4850 6100 4850 6150
Wire Wire Line
	4850 6150 4750 6150
Wire Wire Line
	4550 6150 4300 6150
Connection ~ 4300 6150
Wire Wire Line
	5150 6200 5050 6200
Wire Wire Line
	5050 6200 5050 6700
Wire Wire Line
	5050 6700 5150 6700
Connection ~ 5150 6700
NoConn ~ 5150 6300
NoConn ~ 5150 6400
NoConn ~ 6050 6600
NoConn ~ 6050 6500
$Comp
L tinkerforge:GND #PWR0128
U 1 1 5D9E6BD2
P 6100 7150
F 0 "#PWR0128" H 6100 7150 30  0001 C CNN
F 1 "GND" H 6100 7080 30  0001 C CNN
F 2 "" H 6100 7150 60  0000 C CNN
F 3 "" H 6100 7150 60  0000 C CNN
	1    6100 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6700 6100 6700
Wire Wire Line
	6100 6700 6100 7150
Wire Wire Line
	6050 6000 6100 6000
Wire Wire Line
	6100 6000 6100 6700
Connection ~ 6100 6700
$Comp
L tinkerforge:3V3 #PWR0129
U 1 1 5D9E6BDD
P 6200 5750
F 0 "#PWR0129" H 6200 5600 50  0001 C CNN
F 1 "3V3" H 6215 5923 50  0000 C CNN
F 2 "" H 6200 5750 50  0000 C CNN
F 3 "" H 6200 5750 50  0000 C CNN
	1    6200 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6100 6200 6100
Wire Wire Line
	6200 6100 6200 5950
Text GLabel 6400 6300 2    39   Output ~ 0
IN6
Text GLabel 6400 6400 2    39   Output ~ 0
IN7
Wire Wire Line
	6050 6300 6400 6300
Wire Wire Line
	6400 6400 6050 6400
$Comp
L tinkerforge:Cs C213
U 1 1 5D9E6BE9
P 6350 5950
F 0 "C213" V 6250 5900 31  0000 L CNN
F 1 "100nF" V 6450 5850 31  0000 L CNN
F 2 "C0603F" H 6350 5950 60  0001 C CNN
F 3 "" H 6350 5950 60  0000 C CNN
	1    6350 5950
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:GND #PWR0130
U 1 1 5D9E6BF0
P 6450 6000
F 0 "#PWR0130" H 6450 6000 30  0001 C CNN
F 1 "GND" H 6450 5930 30  0001 C CNN
F 2 "" H 6450 6000 60  0000 C CNN
F 3 "" H 6450 6000 60  0000 C CNN
	1    6450 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 6000 6450 5950
Wire Wire Line
	6250 5950 6200 5950
Connection ~ 6200 5950
Wire Wire Line
	6200 5950 6200 5750
Wire Wire Line
	2400 6300 3550 6300
Wire Wire Line
	2400 6400 3550 6400
Wire Wire Line
	3550 6400 3550 6600
Wire Wire Line
	3550 6000 3550 6300
Wire Wire Line
	6200 6100 6200 6200
Wire Wire Line
	6200 6200 6050 6200
Connection ~ 6200 6100
$Comp
L tinkerforge:VCCPWR #PWR0131
U 1 1 5DA19D11
P 2400 2850
F 0 "#PWR0131" H 2400 2700 50  0001 C CNN
F 1 "VCCPWR" H 2400 3000 50  0000 C CNN
F 2 "" H 2400 2850 50  0001 C CNN
F 3 "" H 2400 2850 50  0001 C CNN
	1    2400 2850
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:VCCPWR #PWR0132
U 1 1 5DA19F8F
P 2400 4450
F 0 "#PWR0132" H 2400 4300 50  0001 C CNN
F 1 "VCCPWR" H 2400 4600 50  0000 C CNN
F 2 "" H 2400 4450 50  0001 C CNN
F 3 "" H 2400 4450 50  0001 C CNN
	1    2400 4450
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:VCCPWR #PWR0133
U 1 1 5DA1A162
P 2400 6050
F 0 "#PWR0133" H 2400 5900 50  0001 C CNN
F 1 "VCCPWR" H 2400 6200 50  0000 C CNN
F 2 "" H 2400 6050 50  0001 C CNN
F 3 "" H 2400 6050 50  0001 C CNN
	1    2400 6050
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:AGND #PWR0134
U 1 1 5DA1A4FD
P 2400 3450
F 0 "#PWR0134" H 2400 3200 50  0001 C CNN
F 1 "AGND" H 2405 3277 50  0000 C CNN
F 2 "" H 2400 3450 50  0000 C CNN
F 3 "" H 2400 3450 50  0000 C CNN
	1    2400 3450
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:AGND #PWR0135
U 1 1 5DA1A77B
P 2400 5000
F 0 "#PWR0135" H 2400 4750 50  0001 C CNN
F 1 "AGND" H 2405 4827 50  0000 C CNN
F 2 "" H 2400 5000 50  0000 C CNN
F 3 "" H 2400 5000 50  0000 C CNN
	1    2400 5000
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:AGND #PWR0136
U 1 1 5DA1A987
P 2400 6600
F 0 "#PWR0136" H 2400 6350 50  0001 C CNN
F 1 "AGND" H 2405 6427 50  0000 C CNN
F 2 "" H 2400 6600 50  0000 C CNN
F 3 "" H 2400 6600 50  0000 C CNN
	1    2400 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6600 2400 6500
Wire Wire Line
	2400 6200 2400 6050
Wire Wire Line
	2400 5000 2400 4900
Wire Wire Line
	2400 4600 2400 4450
Wire Wire Line
	2400 3450 2400 3300
Wire Wire Line
	2400 3000 2400 2850
$EndSCHEMATC
