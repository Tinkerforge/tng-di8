EESchema Schematic File Version 4
LIBS:di8-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L tinkerforge:STM32F0XC U101
U 1 1 5AE027F2
P 1200 1450
F 0 "U101" H 1150 2300 60  0000 C CNN
F 1 "STM32F070CBT6" H 1300 600 60  0000 C CNN
F 2 "kicad-libraries:LQFP48" H -1650 4150 60  0001 C CNN
F 3 "" H -1650 4150 60  0001 C CNN
	1    1200 1450
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:STM32F0XC U101
U 2 1 5AE0289C
P 1200 3250
F 0 "U101" H 1150 4100 60  0000 C CNN
F 1 "STM32F070CBT6" H 1300 2400 60  0000 C CNN
F 2 "kicad-libraries:LQFP48" H -1650 5950 60  0001 C CNN
F 3 "" H -1650 5950 60  0001 C CNN
	2    1200 3250
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:STM32F0XC U101
U 3 1 5AE028EE
P 1200 5050
F 0 "U101" H 1150 5900 60  0000 C CNN
F 1 "STM32F070CBT6" H 1300 4200 60  0000 C CNN
F 2 "kicad-libraries:LQFP48" H -1650 7750 60  0001 C CNN
F 3 "" H -1650 7750 60  0001 C CNN
	3    1200 5050
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:STM32F0XC U101
U 4 1 5AE02942
P 1200 6850
F 0 "U101" H 1150 7700 60  0000 C CNN
F 1 "STM32F070CBT6" H 1450 6000 60  0000 C CNN
F 2 "kicad-libraries:LQFP48" H -1650 9550 60  0001 C CNN
F 3 "" H -1650 9550 60  0001 C CNN
	4    1200 6850
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C102
U 1 1 5AE046FD
P 1650 1050
F 0 "C102" H 1675 1125 31  0000 L CNN
F 1 "1uF" H 1675 975 31  0000 L CNN
F 2 "C0603F" H 1650 1050 60  0001 C CNN
F 3 "" H 1650 1050 60  0000 C CNN
	1    1650 1050
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C107
U 1 1 5AE047D5
P 1850 1050
F 0 "C107" H 1875 1125 31  0000 L CNN
F 1 "100nF" H 1875 975 31  0000 L CNN
F 2 "C0603F" H 1850 1050 60  0001 C CNN
F 3 "" H 1850 1050 60  0000 C CNN
	1    1850 1050
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C106
U 1 1 5AE04831
P 1850 800
F 0 "C106" H 1875 875 31  0000 L CNN
F 1 "100nF" H 1875 725 31  0000 L CNN
F 2 "C0603F" H 1850 800 60  0001 C CNN
F 3 "" H 1850 800 60  0000 C CNN
	1    1850 800 
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C103
U 1 1 5AE0485E
P 1650 1400
F 0 "C103" H 1675 1475 31  0000 L CNN
F 1 "100nF" H 1675 1325 31  0000 L CNN
F 2 "C0603F" H 1650 1400 60  0001 C CNN
F 3 "" H 1650 1400 60  0000 C CNN
	1    1650 1400
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C104
U 1 1 5AE048D8
P 1650 1750
F 0 "C104" H 1675 1825 31  0000 L CNN
F 1 "100nF" H 1675 1675 31  0000 L CNN
F 2 "C0603F" H 1650 1750 60  0001 C CNN
F 3 "" H 1650 1750 60  0000 C CNN
	1    1650 1750
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C105
U 1 1 5AE0490D
P 1650 2100
F 0 "C105" H 1675 2175 31  0000 L CNN
F 1 "100nF" H 1675 2025 31  0000 L CNN
F 2 "C0603F" H 1650 2100 60  0001 C CNN
F 3 "" H 1650 2100 60  0000 C CNN
	1    1650 2100
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:INDUCTs L101
U 1 1 5AE091F9
P 2100 950
F 0 "L101" V 2150 950 31  0000 C CNN
F 1 "FB" V 2050 950 31  0000 C CNN
F 2 "R0603F" H 2100 950 60  0001 C CNN
F 3 "" H 2100 950 60  0000 C CNN
	1    2100 950 
	0    1    -1   0   
$EndComp
$Comp
L tinkerforge:3V3 #PWR01
U 1 1 5AE09495
P 2200 650
F 0 "#PWR01" H 2200 750 40  0001 C CNN
F 1 "3V3" H 2200 775 40  0000 C CNN
F 2 "" H 2200 650 60  0000 C CNN
F 3 "" H 2200 650 60  0000 C CNN
	1    2200 650 
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C101
U 1 1 5AE09571
P 1650 800
F 0 "C101" H 1675 875 31  0000 L CNN
F 1 "1uF" H 1675 725 31  0000 L CNN
F 2 "C0603F" H 1650 800 60  0001 C CNN
F 3 "" H 1650 800 60  0000 C CNN
	1    1650 800 
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR02
U 1 1 5AE0A608
P 1950 2250
F 0 "#PWR02" H 1950 2250 30  0001 C CNN
F 1 "GND" H 1950 2180 30  0001 C CNN
F 2 "" H 1950 2250 60  0000 C CNN
F 3 "" H 1950 2250 60  0000 C CNN
	1    1950 2250
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C110
U 1 1 5AE0A829
P 2200 2100
F 0 "C110" H 2225 2175 31  0000 L CNN
F 1 "10uF" H 2225 2025 31  0000 L CNN
F 2 "C0805" H 2200 2100 60  0001 C CNN
F 3 "" H 2200 2100 60  0000 C CNN
	1    2200 2100
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:CRYSTAL_3225 X101
U 1 1 5AE0BE3D
P 1950 7400
F 0 "X101" H 1750 7650 60  0000 C CNN
F 1 "TBD" H 2000 7150 60  0000 C CNN
F 2 "kicad-libraries:CRYSTAL_3225" H 1950 7400 60  0001 C CNN
F 3 "" H 1950 7400 60  0000 C CNN
	1    1950 7400
	0    -1   -1   0   
$EndComp
$Comp
L tinkerforge:Cs C108
U 1 1 5AE0C1B6
P 2100 7100
F 0 "C108" H 2125 7175 31  0000 L CNN
F 1 "TBD" H 2125 7025 31  0000 L CNN
F 2 "C0603F" H 2100 7100 60  0001 C CNN
F 3 "" H 2100 7100 60  0000 C CNN
	1    2100 7100
	0    1    -1   0   
$EndComp
$Comp
L tinkerforge:Cs C109
U 1 1 5AE0C6D7
P 2100 7700
F 0 "C109" H 2125 7775 31  0000 L CNN
F 1 "TBD" H 2125 7625 31  0000 L CNN
F 2 "C0603F" H 2100 7700 60  0001 C CNN
F 3 "" H 2100 7700 60  0000 C CNN
	1    2100 7700
	0    1    -1   0   
$EndComp
$Comp
L tinkerforge:GND #PWR03
U 1 1 5AE0CC5F
P 2350 7700
F 0 "#PWR03" H 2350 7700 30  0001 C CNN
F 1 "GND" H 2350 7630 30  0001 C CNN
F 2 "" H 2350 7700 60  0000 C CNN
F 3 "" H 2350 7700 60  0000 C CNN
	1    2350 7700
	0    -1   1    0   
$EndComp
NoConn ~ 1450 6900
NoConn ~ 1450 6600
$Comp
L tinkerforge:Rs R101
U 1 1 5AE0D3E4
P 1500 6300
F 0 "R101" V 1550 6300 31  0000 C CNN
F 1 "510" V 1500 6300 31  0000 C CNN
F 2 "R0603F" H 1500 6300 60  0001 C CNN
F 3 "" H 1500 6300 60  0000 C CNN
	1    1500 6300
	-1   0    0    1   
$EndComp
$Comp
L tinkerforge:GND #PWR04
U 1 1 5AE0D8D2
P 1550 6400
F 0 "#PWR04" H 1550 6400 30  0001 C CNN
F 1 "GND" H 1550 6330 30  0001 C CNN
F 2 "" H 1550 6400 60  0000 C CNN
F 3 "" H 1550 6400 60  0000 C CNN
	1    1550 6400
	0    -1   1    0   
$EndComp
Text GLabel 1550 3600 2    39   Output ~ 0
USB-DM
Text GLabel 1550 3700 2    39   Output ~ 0
USB-DP
Text GLabel 7200 1150 0    39   Input ~ 0
USB-DM
Text GLabel 7200 950  0    39   Input ~ 0
USB-DP
$Comp
L tinkerforge:AP7333 U102
U 1 1 5AE31D85
P 4200 1000
F 0 "U102" H 4000 1200 60  0000 C CNN
F 1 "AP7333" H 4000 700 60  0000 C CNN
F 2 "kicad-libraries:SOT-223" H 4200 1000 60  0001 C CNN
F 3 "" H 4200 1000 60  0000 C CNN
	1    4200 1000
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:TNG-Data-TOP J103
U 1 1 5AEAD56E
P 10550 5100
F 0 "J103" H 10400 6150 60  0000 C CNN
F 1 "TNG-Data-TOP" H 10550 4050 60  0000 C CNN
F 2 "TNG-40-TOP" H 11900 5750 60  0001 C CNN
F 3 "" H 11900 5750 60  0001 C CNN
	1    10550 5100
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:TNG-Data-BTM J104
U 1 1 5AEADC21
P 10550 2850
F 0 "J104" H 10400 3900 60  0000 C CNN
F 1 "TNG-Data-BTM" H 10550 1800 60  0000 C CNN
F 2 "TNG-40-BTM" H 11900 3500 60  0001 C CNN
F 3 "" H 11900 3500 60  0001 C CNN
	1    10550 2850
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR05
U 1 1 5AEADF0A
P 11000 6350
F 0 "#PWR05" H 11000 6350 30  0001 C CNN
F 1 "GND" H 11000 6280 30  0001 C CNN
F 2 "" H 11000 6350 60  0000 C CNN
F 3 "" H 11000 6350 60  0000 C CNN
	1    11000 6350
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR06
U 1 1 5AEAF23E
P 10100 6350
F 0 "#PWR06" H 10100 6350 30  0001 C CNN
F 1 "GND" H 10100 6280 30  0001 C CNN
F 2 "" H 10100 6350 60  0000 C CNN
F 3 "" H 10100 6350 60  0000 C CNN
	1    10100 6350
	-1   0    0    -1  
$EndComp
NoConn ~ 10250 5850
NoConn ~ 10250 5950
$Comp
L tinkerforge:TVS_ARRAY4 U103
U 1 1 5AEB2669
P 9100 1050
F 0 "U103" V 8755 885 60  0000 C CNN
F 1 "82400152" V 9460 1035 60  0000 C CNN
F 2 "SOT563-SPEC" H 9100 1035 60  0001 C CNN
F 3 "" H 9100 1035 60  0000 C CNN
	1    9100 1050
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:WE-CNSW L105
U 1 1 5AEB2798
P 8150 1050
F 0 "L105" H 8150 1220 60  0000 C CNN
F 1 "744230900" H 8150 890 60  0000 C CNN
F 2 "WE-CNSW-0603" H 8150 1040 60  0001 C CNN
F 3 "" H 8150 1040 60  0000 C CNN
	1    8150 1050
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:+5V #PWR07
U 1 1 5AEB28CF
P 5100 1000
F 0 "#PWR07" H 5100 850 50  0001 C CNN
F 1 "+5V" H 5100 1140 50  0000 C CNN
F 2 "" H 5100 1000 50  0001 C CNN
F 3 "" H 5100 1000 50  0001 C CNN
	1    5100 1000
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR08
U 1 1 5AEB33C0
P 8550 1500
F 0 "#PWR08" H 8550 1500 30  0001 C CNN
F 1 "GND" H 8550 1430 30  0001 C CNN
F 2 "" H 8550 1500 60  0000 C CNN
F 3 "" H 8550 1500 60  0000 C CNN
	1    8550 1500
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:INDUCTs L103
U 1 1 5AEB3FF8
P 5300 1000
F 0 "L103" V 5350 1000 31  0000 C CNN
F 1 "INDUCTs" V 5250 1000 31  0000 C CNN
F 2 "R0603F" H 5300 1000 60  0001 C CNN
F 3 "" H 5300 1000 60  0000 C CNN
	1    5300 1000
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:INDUCTs L104
U 1 1 5AEB42D7
P 5600 1000
F 0 "L104" V 5650 1000 31  0000 C CNN
F 1 "INDUCTs" V 5550 1000 31  0000 C CNN
F 2 "R0603F" H 5600 1000 60  0001 C CNN
F 3 "" H 5600 1000 60  0000 C CNN
	1    5600 1000
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Cs C112
U 1 1 5AEB44B8
P 5450 1150
F 0 "C112" H 5300 1100 31  0000 L CNN
F 1 "100nF" H 5300 1050 31  0000 L CNN
F 2 "C0603F" H 5450 1150 60  0001 C CNN
F 3 "" H 5450 1150 60  0000 C CNN
	1    5450 1150
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR013
U 1 1 5AEB4BF1
P 5450 1450
F 0 "#PWR013" H 5450 1450 30  0001 C CNN
F 1 "GND" H 5450 1380 30  0001 C CNN
F 2 "" H 5450 1450 60  0000 C CNN
F 3 "" H 5450 1450 60  0000 C CNN
	1    5450 1450
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Rs R104
U 1 1 5AEB5454
P 7700 1150
F 0 "R104" V 7750 1150 31  0000 C CNN
F 1 "22" V 7700 1150 31  0000 C CNN
F 2 "R0603F" H 7700 1150 60  0001 C CNN
F 3 "" H 7700 1150 60  0000 C CNN
	1    7700 1150
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Rs R103
U 1 1 5AEB5678
P 7700 950
F 0 "R103" V 7750 950 31  0000 C CNN
F 1 "22" V 7700 950 31  0000 C CNN
F 2 "R0603F" H 7700 950 60  0001 C CNN
F 3 "" H 7700 950 60  0000 C CNN
	1    7700 950 
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:Cs C113
U 1 1 5AEB584A
P 7300 1300
F 0 "C113" H 7350 1350 31  0000 L CNN
F 1 "TBD/47pF" H 7300 1250 31  0000 L CNN
F 2 "C0603F" H 7300 1300 60  0001 C CNN
F 3 "" H 7300 1300 60  0000 C CNN
	1    7300 1300
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR014
U 1 1 5AEB5B73
P 7300 1450
F 0 "#PWR014" H 7300 1450 30  0001 C CNN
F 1 "GND" H 7300 1380 30  0001 C CNN
F 2 "" H 7300 1450 60  0000 C CNN
F 3 "" H 7300 1450 60  0000 C CNN
	1    7300 1450
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR015
U 1 1 5AEB5C7E
P 7500 1450
F 0 "#PWR015" H 7500 1450 30  0001 C CNN
F 1 "GND" H 7500 1380 30  0001 C CNN
F 2 "" H 7500 1450 60  0000 C CNN
F 3 "" H 7500 1450 60  0000 C CNN
	1    7500 1450
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C114
U 1 1 5AEB5D74
P 7500 1300
F 0 "C114" H 7350 1350 31  0000 L CNN
F 1 "TBD/47pF" H 7250 1250 31  0000 L CNN
F 2 "C0603F" H 7500 1300 60  0001 C CNN
F 3 "" H 7500 1300 60  0000 C CNN
	1    7500 1300
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:CPs C111
U 1 1 5AEB740F
P 5100 1150
F 0 "C111" H 5125 1225 31  0000 L CNN
F 1 "TBD" H 5125 1075 31  0000 L CNN
F 2 "kicad-libraries:ELKO_83" H 5100 1150 60  0001 C CNN
F 3 "" H 5100 1150 60  0000 C CNN
	1    5100 1150
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR016
U 1 1 5AEB849F
P 5100 1450
F 0 "#PWR016" H 5100 1450 30  0001 C CNN
F 1 "GND" H 5100 1380 30  0001 C CNN
F 2 "" H 5100 1450 60  0000 C CNN
F 3 "" H 5100 1450 60  0000 C CNN
	1    5100 1450
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C115
U 1 1 5AEB99E8
P 9650 1150
F 0 "C115" H 9500 1100 31  0000 L CNN
F 1 "TBD" H 9675 1075 31  0000 L CNN
F 2 "C0603F" H 9650 1150 60  0001 C CNN
F 3 "" H 9650 1150 60  0000 C CNN
	1    9650 1150
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR017
U 1 1 5AEB9B82
P 9650 1500
F 0 "#PWR017" H 9650 1500 30  0001 C CNN
F 1 "GND" H 9650 1430 30  0001 C CNN
F 2 "" H 9650 1500 60  0000 C CNN
F 3 "" H 9650 1500 60  0000 C CNN
	1    9650 1500
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:3V3 #PWR018
U 1 1 5AEBB763
P 3700 1000
F 0 "#PWR018" H 3700 1100 40  0001 C CNN
F 1 "3V3" H 3700 1125 40  0000 C CNN
F 2 "" H 3700 1000 60  0000 C CNN
F 3 "" H 3700 1000 60  0000 C CNN
	1    3700 1000
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:TNG-Power-TOP J101
U 1 1 5AFBF3D3
P 8150 5150
F 0 "J101" H 8000 6200 60  0000 C CNN
F 1 "TNG-Power-TOP" H 8150 4100 60  0000 C CNN
F 2 "TNG-40-TOP" H 9500 5800 60  0001 C CNN
F 3 "" H 9500 5800 60  0001 C CNN
	1    8150 5150
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:TNG-Power-BTM J102
U 1 1 5AFC3637
P 8150 2850
F 0 "J102" H 8000 3900 60  0000 C CNN
F 1 "TNG-Power-BTM" H 8150 1800 60  0000 C CNN
F 2 "TNG-40-BTM" H 9500 3500 60  0001 C CNN
F 3 "" H 9500 3500 60  0001 C CNN
	1    8150 2850
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:Earth #PWR019
U 1 1 5AFC5F27
P 8150 4000
F 0 "#PWR019" H 8150 3750 50  0001 C CNN
F 1 "Earth" H 8150 3850 50  0001 C CNN
F 2 "" H 8150 4000 50  0001 C CNN
F 3 "" H 8150 4000 50  0001 C CNN
	1    8150 4000
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:VCCPWR #PWR021
U 1 1 5AFCBA5F
P 7400 4000
F 0 "#PWR021" H 7400 3850 50  0001 C CNN
F 1 "VCCPWR" H 7400 4150 50  0000 C CNN
F 2 "" H 7400 4000 50  0001 C CNN
F 3 "" H 7400 4000 50  0001 C CNN
	1    7400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 900  1850 900 
Wire Wire Line
	1950 900  1950 1150
Wire Wire Line
	1950 1150 1850 1150
Connection ~ 1850 1150
Connection ~ 1650 1150
Wire Wire Line
	1950 1500 1650 1500
Connection ~ 1950 1150
Connection ~ 1650 1500
Wire Wire Line
	1950 1850 1650 1850
Connection ~ 1950 1500
Connection ~ 1650 1850
Wire Wire Line
	2200 2200 1950 2200
Connection ~ 1950 1850
Connection ~ 1650 2200
Wire Wire Line
	2200 2000 1650 2000
Wire Wire Line
	2000 950  1850 950 
Connection ~ 1650 950 
Wire Wire Line
	2200 1300 1650 1300
Wire Wire Line
	2200 1650 1650 1650
Wire Wire Line
	2200 700  1850 700 
Connection ~ 1850 950 
Connection ~ 1650 700 
Connection ~ 1850 900 
Connection ~ 1850 700 
Connection ~ 2200 700 
Connection ~ 1650 1300
Connection ~ 2200 950 
Connection ~ 1650 1650
Connection ~ 2200 1300
Connection ~ 1650 2000
Connection ~ 2200 1650
Connection ~ 1950 2200
Connection ~ 2200 2000
Wire Wire Line
	2200 650  2200 700 
Wire Wire Line
	1450 7600 1600 7600
Wire Wire Line
	1600 7300 1450 7300
Wire Wire Line
	1600 7100 1950 7100
Wire Wire Line
	1600 7100 1600 7300
Wire Wire Line
	1600 7600 1600 7700
Connection ~ 1950 7700
Connection ~ 1950 7100
Wire Wire Line
	1600 7700 1950 7700
Wire Wire Line
	2200 7700 2300 7700
Wire Wire Line
	2250 7550 2300 7550
Wire Wire Line
	2300 7100 2300 7550
Connection ~ 2300 7700
Wire Wire Line
	2300 7100 2200 7100
Connection ~ 2300 7550
Wire Wire Line
	1450 6200 1500 6200
Wire Wire Line
	1500 6400 1550 6400
Connection ~ 1500 6200
Wire Wire Line
	1450 3600 1550 3600
Wire Wire Line
	1550 3700 1450 3700
Wire Wire Line
	10850 5850 11000 5850
Wire Wire Line
	11000 1900 11000 2000
Wire Wire Line
	10850 5950 11000 5950
Connection ~ 11000 5950
Wire Wire Line
	10850 5750 11000 5750
Connection ~ 11000 5850
Wire Wire Line
	10850 5550 11000 5550
Connection ~ 11000 5750
Wire Wire Line
	10850 5450 11000 5450
Connection ~ 11000 5550
Wire Wire Line
	10850 5350 11000 5350
Connection ~ 11000 5450
Wire Wire Line
	10850 5150 11000 5150
Connection ~ 11000 5350
Wire Wire Line
	10850 5050 11000 5050
Connection ~ 11000 5150
Wire Wire Line
	10850 4950 11000 4950
Connection ~ 11000 5050
Wire Wire Line
	10850 4750 11000 4750
Connection ~ 11000 4950
Wire Wire Line
	10850 4650 11000 4650
Connection ~ 11000 4750
Wire Wire Line
	10850 4550 11000 4550
Connection ~ 11000 4650
Wire Wire Line
	10850 4350 11000 4350
Connection ~ 11000 4550
Wire Wire Line
	10850 4250 11000 4250
Connection ~ 11000 4350
Wire Wire Line
	10850 4150 11000 4150
Connection ~ 11000 4250
Wire Wire Line
	11000 3700 10850 3700
Connection ~ 11000 4150
Wire Wire Line
	10850 3600 11000 3600
Connection ~ 11000 3700
Wire Wire Line
	10850 3500 11000 3500
Connection ~ 11000 3600
Wire Wire Line
	10850 3300 11000 3300
Connection ~ 11000 3500
Wire Wire Line
	10850 3200 11000 3200
Connection ~ 11000 3300
Wire Wire Line
	10850 3100 11000 3100
Connection ~ 11000 3200
Wire Wire Line
	10850 2900 11000 2900
Connection ~ 11000 3100
Wire Wire Line
	10850 2800 11000 2800
Connection ~ 11000 2900
Wire Wire Line
	10850 2700 11000 2700
Connection ~ 11000 2800
Wire Wire Line
	10850 2500 11000 2500
Connection ~ 11000 2700
Wire Wire Line
	10850 2400 11000 2400
Connection ~ 11000 2500
Wire Wire Line
	10850 2300 11000 2300
Connection ~ 11000 2400
Wire Wire Line
	10850 2100 11000 2100
Connection ~ 11000 2300
Wire Wire Line
	10850 2000 11000 2000
Connection ~ 11000 2100
Wire Wire Line
	10850 1900 11000 1900
Connection ~ 11000 2000
Wire Wire Line
	10100 1900 10100 2300
Wire Wire Line
	10100 5750 10250 5750
Wire Wire Line
	10100 5350 10250 5350
Connection ~ 10100 5750
Wire Wire Line
	10100 4950 10250 4950
Connection ~ 10100 5350
Wire Wire Line
	10100 4550 10250 4550
Connection ~ 10100 4950
Wire Wire Line
	10100 4150 10250 4150
Connection ~ 10100 4550
Wire Wire Line
	10100 3500 10250 3500
Connection ~ 10100 4150
Wire Wire Line
	10100 3100 10250 3100
Connection ~ 10100 3500
Wire Wire Line
	10100 2700 10250 2700
Connection ~ 10100 3100
Wire Wire Line
	10100 2300 10250 2300
Connection ~ 10100 2700
Wire Wire Line
	10100 1900 10250 1900
Connection ~ 10100 2300
Wire Wire Line
	10000 1850 10000 2200
Wire Wire Line
	10000 2200 10250 2200
Wire Wire Line
	10000 2600 10250 2600
Connection ~ 10000 2200
Wire Wire Line
	10000 3000 10250 3000
Connection ~ 10000 2600
Wire Wire Line
	10000 3400 10250 3400
Connection ~ 10000 3000
Wire Wire Line
	10000 3800 10250 3800
Connection ~ 10000 3400
Wire Wire Line
	10000 4450 10250 4450
Connection ~ 10000 3800
Wire Wire Line
	10000 4850 10250 4850
Connection ~ 10000 4450
Wire Wire Line
	10000 5250 10250 5250
Connection ~ 10000 4850
Wire Wire Line
	10000 5650 10250 5650
Connection ~ 10000 5250
Wire Wire Line
	10000 6050 10250 6050
Connection ~ 10000 5650
Wire Wire Line
	10850 6050 11100 6050
Wire Wire Line
	11100 6050 11100 5650
Wire Wire Line
	10850 2200 11100 2200
Connection ~ 11100 2200
Wire Wire Line
	10850 2600 11100 2600
Connection ~ 11100 2600
Wire Wire Line
	10850 3000 11100 3000
Connection ~ 11100 3000
Wire Wire Line
	10850 3400 11100 3400
Connection ~ 11100 3400
Wire Wire Line
	10850 3800 11100 3800
Connection ~ 11100 3800
Wire Wire Line
	10850 4450 11100 4450
Connection ~ 11100 4450
Wire Wire Line
	10850 4850 11100 4850
Connection ~ 11100 4850
Wire Wire Line
	10850 5250 11100 5250
Connection ~ 11100 5250
Wire Wire Line
	10850 5650 11100 5650
Connection ~ 11100 5650
Wire Wire Line
	10250 2400 9900 2400
Wire Wire Line
	9900 2400 9900 4250
Wire Wire Line
	9900 4250 10250 4250
Wire Wire Line
	10250 4350 9800 4350
Wire Wire Line
	9800 4350 9800 2500
Wire Wire Line
	9800 2500 10250 2500
Wire Wire Line
	10250 2800 9700 2800
Wire Wire Line
	9700 2800 9700 4650
Wire Wire Line
	9700 4650 10250 4650
Wire Wire Line
	10250 2900 9600 2900
Wire Wire Line
	9600 2900 9600 4750
Wire Wire Line
	9600 4750 10250 4750
Wire Wire Line
	10250 3200 9500 3200
Wire Wire Line
	9500 3200 9500 5050
Wire Wire Line
	9500 5050 10250 5050
Wire Wire Line
	10250 3300 9400 3300
Wire Wire Line
	9400 3300 9400 5150
Wire Wire Line
	9400 5150 10250 5150
Wire Wire Line
	10250 3600 9300 3600
Wire Wire Line
	9300 3600 9300 5450
Wire Wire Line
	9300 5450 10250 5450
Wire Wire Line
	10250 3700 9200 3700
Wire Wire Line
	9200 3700 9200 5550
Wire Wire Line
	9200 5550 10250 5550
Wire Wire Line
	8650 1050 8550 1050
Wire Wire Line
	8550 1050 8550 1500
Wire Wire Line
	8450 1150 8450 1300
Wire Wire Line
	8450 1300 8650 1300
Wire Wire Line
	8450 950  8450 800 
Wire Wire Line
	8450 800  8650 800 
Wire Wire Line
	9850 2000 10250 2000
Wire Wire Line
	9850 800  9850 2000
Wire Wire Line
	9550 800  9850 800 
Wire Wire Line
	9800 2100 10250 2100
Wire Wire Line
	9800 1300 9550 1300
Wire Wire Line
	9650 1050 9550 1050
Wire Wire Line
	5700 1000 5800 1000
Wire Wire Line
	5400 1000 5450 1000
Connection ~ 5450 1000
Wire Wire Line
	5000 1000 5100 1000
Wire Wire Line
	7500 1450 7500 1400
Wire Wire Line
	7300 1450 7300 1400
Wire Wire Line
	7300 1200 7300 950 
Wire Wire Line
	7200 950  7300 950 
Wire Wire Line
	7200 1150 7500 1150
Wire Wire Line
	7500 1150 7500 1200
Wire Wire Line
	7800 1150 7850 1150
Wire Wire Line
	7850 950  7800 950 
Connection ~ 7300 950 
Connection ~ 7500 1150
Wire Wire Line
	5100 1250 5100 1450
Wire Wire Line
	5100 1000 5100 1050
Wire Wire Line
	5450 1050 5450 1000
Wire Wire Line
	5450 1250 5450 1450
Connection ~ 5100 1000
Wire Wire Line
	9650 1500 9650 1250
Connection ~ 9650 1050
Wire Wire Line
	9650 700  9650 1050
Wire Wire Line
	9800 1300 9800 2100
Wire Wire Line
	8450 3400 8500 3400
Wire Wire Line
	8500 3400 8500 3500
Wire Wire Line
	8500 3800 8450 3800
Wire Wire Line
	8450 3700 8500 3700
Connection ~ 8500 3700
Wire Wire Line
	8450 3600 8500 3600
Connection ~ 8500 3600
Wire Wire Line
	8450 3500 8500 3500
Connection ~ 8500 3500
Wire Wire Line
	8450 5700 8500 5700
Wire Wire Line
	8500 5700 8500 5800
Wire Wire Line
	8500 6100 8450 6100
Wire Wire Line
	8450 6000 8500 6000
Connection ~ 8500 6000
Wire Wire Line
	8450 5900 8500 5900
Connection ~ 8500 5900
Wire Wire Line
	8450 5800 8500 5800
Connection ~ 8500 5800
Wire Wire Line
	8550 5900 8550 4000
Wire Wire Line
	7850 3400 7800 3400
Wire Wire Line
	7800 3400 7800 3500
Wire Wire Line
	7800 3800 7850 3800
Wire Wire Line
	7850 3700 7800 3700
Connection ~ 7800 3700
Wire Wire Line
	7750 3600 7800 3600
Connection ~ 7800 3600
Wire Wire Line
	7850 3500 7800 3500
Connection ~ 7800 3500
Wire Wire Line
	7750 3600 7750 4000
Wire Wire Line
	7750 5900 7800 5900
Wire Wire Line
	7850 5800 7800 5800
Wire Wire Line
	7800 5700 7800 5800
Wire Wire Line
	7800 6100 7850 6100
Wire Wire Line
	7850 6000 7800 6000
Connection ~ 7800 6000
Wire Wire Line
	7850 5700 7800 5700
Connection ~ 7800 5800
Connection ~ 7800 5900
Wire Wire Line
	7750 4000 8150 4000
Connection ~ 8550 4000
Connection ~ 7750 4000
Connection ~ 8150 4000
Wire Wire Line
	8450 4200 8650 4200
Wire Wire Line
	8650 4200 8650 4300
Wire Wire Line
	8650 5100 8450 5100
Wire Wire Line
	8450 5000 8650 5000
Connection ~ 8650 5000
Wire Wire Line
	8450 4900 8650 4900
Connection ~ 8650 4900
Wire Wire Line
	8450 4800 8650 4800
Connection ~ 8650 4800
Wire Wire Line
	8450 4700 8650 4700
Connection ~ 8650 4700
Wire Wire Line
	8450 4600 8650 4600
Connection ~ 8650 4600
Wire Wire Line
	8450 4500 8650 4500
Connection ~ 8650 4500
Wire Wire Line
	8450 4400 8650 4400
Connection ~ 8650 4400
Wire Wire Line
	8450 4300 8650 4300
Connection ~ 8650 4300
Wire Wire Line
	7850 5100 7650 5100
Wire Wire Line
	7650 5100 7650 5000
Wire Wire Line
	7650 4200 7850 4200
Wire Wire Line
	7850 4300 7650 4300
Connection ~ 7650 4300
Wire Wire Line
	7850 4400 7650 4400
Connection ~ 7650 4400
Wire Wire Line
	7850 4500 7650 4500
Connection ~ 7650 4500
Wire Wire Line
	7850 4600 7650 4600
Connection ~ 7650 4600
Wire Wire Line
	7850 4700 7650 4700
Connection ~ 7650 4700
Wire Wire Line
	7850 4800 7650 4800
Connection ~ 7650 4800
Wire Wire Line
	7850 4900 7650 4900
Connection ~ 7650 4900
Wire Wire Line
	7850 5000 7650 5000
Connection ~ 7650 5000
Wire Wire Line
	7850 2800 7650 2800
Wire Wire Line
	7650 2800 7650 2700
Wire Wire Line
	7650 1900 7850 1900
Wire Wire Line
	7850 2000 7650 2000
Connection ~ 7650 2000
Wire Wire Line
	7850 2100 7650 2100
Connection ~ 7650 2100
Wire Wire Line
	7850 2200 7650 2200
Connection ~ 7650 2200
Wire Wire Line
	7850 2300 7650 2300
Connection ~ 7650 2300
Wire Wire Line
	7850 2400 7650 2400
Connection ~ 7650 2400
Wire Wire Line
	7850 2500 7650 2500
Connection ~ 7650 2500
Wire Wire Line
	7850 2600 7650 2600
Connection ~ 7650 2600
Wire Wire Line
	7850 2700 7650 2700
Connection ~ 7650 2700
Wire Wire Line
	7650 4650 7600 4650
Wire Wire Line
	7600 4650 7600 4000
Wire Wire Line
	7600 2350 7650 2350
Connection ~ 7650 2350
Connection ~ 7650 4650
Wire Wire Line
	8450 1900 8650 1900
Wire Wire Line
	8650 1900 8650 2000
Wire Wire Line
	8650 2800 8450 2800
Wire Wire Line
	8450 2700 8650 2700
Connection ~ 8650 2700
Wire Wire Line
	8450 2600 8650 2600
Connection ~ 8650 2600
Wire Wire Line
	8450 2500 8650 2500
Connection ~ 8650 2500
Wire Wire Line
	8450 2400 8650 2400
Connection ~ 8650 2400
Wire Wire Line
	8450 2300 8650 2300
Connection ~ 8650 2300
Wire Wire Line
	8450 2200 8650 2200
Connection ~ 8650 2200
Wire Wire Line
	8450 2100 8650 2100
Connection ~ 8650 2100
Wire Wire Line
	8450 2000 8650 2000
Connection ~ 8650 2000
Wire Wire Line
	8650 2350 8700 2350
Wire Wire Line
	8700 2350 8700 4000
Wire Wire Line
	8700 4650 8650 4650
Connection ~ 8650 4650
Connection ~ 8650 2350
Wire Wire Line
	8900 4000 8700 4000
Connection ~ 8700 4000
Wire Wire Line
	7400 4000 7600 4000
Connection ~ 7600 4000
NoConn ~ 8450 2900
NoConn ~ 8450 3000
NoConn ~ 8450 3100
NoConn ~ 8450 3200
NoConn ~ 8450 3300
NoConn ~ 7850 3300
NoConn ~ 7850 3200
NoConn ~ 7850 3100
NoConn ~ 7850 3000
NoConn ~ 7850 2900
NoConn ~ 7850 5200
NoConn ~ 7850 5300
NoConn ~ 7850 5400
NoConn ~ 7850 5500
NoConn ~ 7850 5600
NoConn ~ 8450 5600
NoConn ~ 8450 5500
NoConn ~ 8450 5400
NoConn ~ 8450 5300
NoConn ~ 8450 5200
$Comp
L tinkerforge:INDUCTs L102
U 1 1 5AFCD379
P 4900 1000
F 0 "L102" V 4950 1000 31  0000 C CNN
F 1 "INDUCTs" V 4850 1000 31  0000 C CNN
F 2 "R0603F" H 4900 1000 60  0001 C CNN
F 3 "" H 4900 1000 60  0000 C CNN
	1    4900 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 1000 4650 1000
$Comp
L tinkerforge:GND #PWR022
U 1 1 5AEBB818
P 4200 1450
F 0 "#PWR022" H 4200 1450 30  0001 C CNN
F 1 "GND" H 4200 1380 30  0001 C CNN
F 2 "" H 4200 1450 60  0000 C CNN
F 3 "" H 4200 1450 60  0000 C CNN
	1    4200 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4200 1450 4200 1400
Wire Wire Line
	3700 1000 3750 1000
$Sheet
S 5550 6550 950  950 
U 5AFDB425
F0 "Inputs" 60
F1 "inputs.sch" 60
$EndSheet
Text GLabel 1550 4500 2    39   Output ~ 0
LED0
Text GLabel 1550 4600 2    39   Output ~ 0
LED1
Text GLabel 1600 2700 2    39   Output ~ 0
LED2
Text GLabel 1600 2800 2    39   Output ~ 0
LED3
Text GLabel 1600 3000 2    39   Output ~ 0
LED4
Text GLabel 1600 3800 2    39   Output ~ 0
LED5
Text GLabel 1600 3900 2    39   Output ~ 0
LED6
Text GLabel 1600 4000 2    39   Output ~ 0
LED7
Wire Wire Line
	1850 1150 1650 1150
Wire Wire Line
	1650 1150 1450 1150
Wire Wire Line
	1950 1150 1950 1500
Wire Wire Line
	1650 1500 1450 1500
Wire Wire Line
	1950 1500 1950 1850
Wire Wire Line
	1650 1850 1450 1850
Wire Wire Line
	1950 1850 1950 2200
Wire Wire Line
	1650 2200 1450 2200
Wire Wire Line
	1650 950  1450 950 
Wire Wire Line
	1850 950  1650 950 
Wire Wire Line
	1650 700  1450 700 
Wire Wire Line
	1850 900  1950 900 
Wire Wire Line
	1850 700  1650 700 
Wire Wire Line
	2200 700  2200 950 
Wire Wire Line
	1650 1300 1450 1300
Wire Wire Line
	2200 950  2200 1300
Wire Wire Line
	1650 1650 1450 1650
Wire Wire Line
	2200 1300 2200 1650
Wire Wire Line
	1650 2000 1450 2000
Wire Wire Line
	2200 1650 2200 2000
Wire Wire Line
	1950 2200 1650 2200
Wire Wire Line
	1950 2200 1950 2250
Wire Wire Line
	1950 7700 2000 7700
Wire Wire Line
	1950 7100 2000 7100
Wire Wire Line
	2300 7700 2350 7700
Wire Wire Line
	2300 7550 2300 7700
Wire Wire Line
	11000 5950 11000 6350
Wire Wire Line
	11000 5850 11000 5950
Wire Wire Line
	11000 5750 11000 5850
Wire Wire Line
	11000 5550 11000 5750
Wire Wire Line
	11000 5450 11000 5550
Wire Wire Line
	11000 5350 11000 5450
Wire Wire Line
	11000 5150 11000 5350
Wire Wire Line
	11000 5050 11000 5150
Wire Wire Line
	11000 4950 11000 5050
Wire Wire Line
	11000 4750 11000 4950
Wire Wire Line
	11000 4650 11000 4750
Wire Wire Line
	11000 4550 11000 4650
Wire Wire Line
	11000 4350 11000 4550
Wire Wire Line
	11000 4250 11000 4350
Wire Wire Line
	11000 4150 11000 4250
Wire Wire Line
	11000 3700 11000 4150
Wire Wire Line
	11000 3600 11000 3700
Wire Wire Line
	11000 3500 11000 3600
Wire Wire Line
	11000 3300 11000 3500
Wire Wire Line
	11000 3200 11000 3300
Wire Wire Line
	11000 3100 11000 3200
Wire Wire Line
	11000 2900 11000 3100
Wire Wire Line
	11000 2800 11000 2900
Wire Wire Line
	11000 2700 11000 2800
Wire Wire Line
	11000 2500 11000 2700
Wire Wire Line
	11000 2400 11000 2500
Wire Wire Line
	11000 2300 11000 2400
Wire Wire Line
	11000 2100 11000 2300
Wire Wire Line
	11000 2000 11000 2100
Wire Wire Line
	10100 5750 10100 6350
Wire Wire Line
	10100 5350 10100 5750
Wire Wire Line
	10100 4950 10100 5350
Wire Wire Line
	10100 4550 10100 4950
Wire Wire Line
	10100 4150 10100 4550
Wire Wire Line
	10100 3500 10100 4150
Wire Wire Line
	10100 3100 10100 3500
Wire Wire Line
	10100 2700 10100 3100
Wire Wire Line
	10100 2300 10100 2700
Wire Wire Line
	10000 2200 10000 2600
Wire Wire Line
	10000 2600 10000 3000
Wire Wire Line
	10000 3000 10000 3400
Wire Wire Line
	10000 3400 10000 3800
Wire Wire Line
	10000 3800 10000 4450
Wire Wire Line
	10000 4450 10000 4850
Wire Wire Line
	10000 4850 10000 5250
Wire Wire Line
	10000 5250 10000 5650
Wire Wire Line
	10000 5650 10000 6050
Wire Wire Line
	11100 2200 11100 1850
Wire Wire Line
	11100 2600 11100 2200
Wire Wire Line
	11100 3000 11100 2600
Wire Wire Line
	11100 3400 11100 3000
Wire Wire Line
	11100 3800 11100 3400
Wire Wire Line
	11100 4450 11100 3800
Wire Wire Line
	11100 4850 11100 4450
Wire Wire Line
	11100 5250 11100 4850
Wire Wire Line
	11100 5650 11100 5250
Wire Wire Line
	5450 1000 5500 1000
Wire Wire Line
	7300 950  7600 950 
Wire Wire Line
	7500 1150 7600 1150
Wire Wire Line
	5100 1000 5200 1000
Wire Wire Line
	8500 3700 8500 3800
Wire Wire Line
	8500 3600 8500 3700
Wire Wire Line
	8500 3600 8550 3600
Wire Wire Line
	8500 3500 8500 3600
Wire Wire Line
	8500 6000 8500 6100
Wire Wire Line
	8500 5900 8500 6000
Wire Wire Line
	8500 5900 8550 5900
Wire Wire Line
	8500 5800 8500 5900
Wire Wire Line
	7800 3700 7800 3800
Wire Wire Line
	7800 3600 7800 3700
Wire Wire Line
	7800 3600 7850 3600
Wire Wire Line
	7800 3500 7800 3600
Wire Wire Line
	7800 6000 7800 6100
Wire Wire Line
	7800 5800 7800 5900
Wire Wire Line
	7800 5900 7850 5900
Wire Wire Line
	7800 5900 7800 6000
Wire Wire Line
	8550 4000 8550 3600
Wire Wire Line
	7750 4000 7750 5900
Wire Wire Line
	8150 4000 8550 4000
Wire Wire Line
	8650 5000 8650 5100
Wire Wire Line
	8650 4900 8650 5000
Wire Wire Line
	8650 4800 8650 4900
Wire Wire Line
	8650 4700 8650 4800
Wire Wire Line
	8650 4600 8650 4650
Wire Wire Line
	8650 4500 8650 4600
Wire Wire Line
	8650 4400 8650 4500
Wire Wire Line
	8650 4300 8650 4400
Wire Wire Line
	7650 4300 7650 4200
Wire Wire Line
	7650 4400 7650 4300
Wire Wire Line
	7650 4500 7650 4400
Wire Wire Line
	7650 4600 7650 4500
Wire Wire Line
	7650 4700 7650 4650
Wire Wire Line
	7650 4800 7650 4700
Wire Wire Line
	7650 4900 7650 4800
Wire Wire Line
	7650 5000 7650 4900
Wire Wire Line
	7650 2000 7650 1900
Wire Wire Line
	7650 2100 7650 2000
Wire Wire Line
	7650 2200 7650 2100
Wire Wire Line
	7650 2300 7650 2200
Wire Wire Line
	7650 2400 7650 2350
Wire Wire Line
	7650 2500 7650 2400
Wire Wire Line
	7650 2600 7650 2500
Wire Wire Line
	7650 2700 7650 2600
Wire Wire Line
	7650 2350 7650 2300
Wire Wire Line
	7650 4650 7650 4600
Wire Wire Line
	8650 2700 8650 2800
Wire Wire Line
	8650 2600 8650 2700
Wire Wire Line
	8650 2500 8650 2600
Wire Wire Line
	8650 2400 8650 2500
Wire Wire Line
	8650 2300 8650 2350
Wire Wire Line
	8650 2200 8650 2300
Wire Wire Line
	8650 2100 8650 2200
Wire Wire Line
	8650 2000 8650 2100
Wire Wire Line
	8650 4650 8650 4700
Wire Wire Line
	8650 2350 8650 2400
Wire Wire Line
	8700 4000 8700 4650
Wire Wire Line
	7600 4000 7600 2350
$Comp
L tinkerforge:AGND #PWR0101
U 1 1 5D20B25E
P 8900 4000
F 0 "#PWR0101" H 8900 3750 50  0001 C CNN
F 1 "AGND" H 8905 3827 50  0000 C CNN
F 2 "" H 8900 4000 50  0000 C CNN
F 3 "" H 8900 4000 50  0000 C CNN
	1    8900 4000
	1    0    0    -1  
$EndComp
Text GLabel 11100 1850 1    50   Input ~ 0
5VA
Text GLabel 10000 1850 1    50   Input ~ 0
5VA
Text GLabel 5800 1000 2    50   Input ~ 0
5VA
Text GLabel 9650 700  1    50   Input ~ 0
5VA
$Comp
L tinkerforge:CONN_01X02 P101
U 1 1 5D20E1B5
P 2050 6150
F 0 "P101" H 2128 6191 50  0000 L CNN
F 1 "BOOT" H 2128 6100 50  0000 L CNN
F 2 "pin_array_2x1_smd" H 2128 6054 50  0001 L CNN
F 3 "" H 2050 6150 50  0000 C CNN
	1    2050 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6200 1850 6200
$Comp
L tinkerforge:3V3 #PWR0102
U 1 1 5D2386F9
P 1800 6100
F 0 "#PWR0102" H 1800 6200 40  0001 C CNN
F 1 "3V3" H 1800 6225 40  0000 C CNN
F 2 "" H 1800 6100 60  0000 C CNN
F 3 "" H 1800 6100 60  0000 C CNN
	1    1800 6100
	0    -1   1    0   
$EndComp
NoConn ~ 1450 6100
Wire Wire Line
	1800 6100 1850 6100
Text GLabel 1600 3100 2    39   Input ~ 0
DI0
Text GLabel 1600 3200 2    39   Input ~ 0
DI1
Text GLabel 1550 4300 2    39   Input ~ 0
DI2
Text GLabel 1550 4400 2    39   Input ~ 0
DI3
Text GLabel 1600 3300 2    39   Input ~ 0
DI4
Text GLabel 1600 3400 2    39   Input ~ 0
DI5
Text GLabel 1600 3500 2    39   Input ~ 0
DI6
Text GLabel 1600 2900 2    39   Input ~ 0
DI7
$Comp
L tinkerforge:EASV3015RGBA0 LED101
U 1 1 5D2B862B
P 4600 4900
F 0 "LED101" V 4523 5028 60  0000 L CNN
F 1 "EASV3015RGBA0" V 4629 5028 60  0000 L CNN
F 2 "EASV3015RGBA0" H 4600 4900 60  0001 C CNN
F 3 "" H 4600 4900 60  0001 C CNN
	1    4600 4900
	0    1    1    0   
$EndComp
$Comp
L tinkerforge:3V3 #PWR0103
U 1 1 5D2B88B6
P 4200 5050
F 0 "#PWR0103" H 4200 5150 40  0001 C CNN
F 1 "3V3" H 4200 5175 40  0000 C CNN
F 2 "" H 4200 5050 60  0000 C CNN
F 3 "" H 4200 5050 60  0000 C CNN
	1    4200 5050
	0    -1   1    0   
$EndComp
$Comp
L tinkerforge:Rs R107
U 1 1 5D2B9143
P 4350 5050
F 0 "R107" V 4400 5050 31  0000 C CNN
F 1 "TBD" V 4350 5050 31  0000 C CNN
F 2 "R0603F" H 4350 5050 60  0001 C CNN
F 3 "" H 4350 5050 60  0000 C CNN
	1    4350 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 5050 4450 5050
Wire Wire Line
	4250 5050 4200 5050
$Comp
L tinkerforge:Rs R106
U 1 1 5D30E9DA
P 4350 4950
F 0 "R106" V 4400 4950 31  0000 C CNN
F 1 "TBD" V 4350 4950 31  0000 C CNN
F 2 "R0603F" H 4350 4950 60  0001 C CNN
F 3 "" H 4350 4950 60  0000 C CNN
	1    4350 4950
	0    -1   -1   0   
$EndComp
$Comp
L tinkerforge:Rs R105
U 1 1 5D30EA3E
P 4350 4850
F 0 "R105" V 4400 4850 31  0000 C CNN
F 1 "TBD" V 4350 4850 31  0000 C CNN
F 2 "R0603F" H 4350 4850 60  0001 C CNN
F 3 "" H 4350 4850 60  0000 C CNN
	1    4350 4850
	0    -1   -1   0   
$EndComp
$Comp
L tinkerforge:Rs R102
U 1 1 5D30EA9C
P 4350 4750
F 0 "R102" V 4400 4750 31  0000 C CNN
F 1 "TBD" V 4350 4750 31  0000 C CNN
F 2 "R0603F" H 4350 4750 60  0001 C CNN
F 3 "" H 4350 4750 60  0000 C CNN
	1    4350 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 4750 4500 4750
Wire Wire Line
	4500 4850 4450 4850
Wire Wire Line
	4450 4950 4500 4950
Text GLabel 4200 4750 0    39   Input ~ 0
LEDR
Text GLabel 4200 4850 0    39   Input ~ 0
LEDG
Text GLabel 4200 4950 0    39   Input ~ 0
LEDR
Text GLabel 1550 5800 2    39   Output ~ 0
LEDR
Text GLabel 1550 5700 2    39   Output ~ 0
LEDG
Text GLabel 1550 5200 2    39   Output ~ 0
LEDR
Wire Wire Line
	4200 4750 4250 4750
Wire Wire Line
	4200 4850 4250 4850
Wire Wire Line
	4250 4950 4200 4950
$Comp
L tinkerforge:Cs C116
U 1 1 5D497F6D
P 3750 1150
F 0 "C116" H 3850 1196 50  0000 L CNN
F 1 "1uF" H 3850 1105 50  0000 L CNN
F 2 "C0402F" H 3750 1150 60  0001 C CNN
F 3 "" H 3750 1150 60  0000 C CNN
	1    3750 1150
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0104
U 1 1 5D498254
P 3750 1450
F 0 "#PWR0104" H 3750 1450 30  0001 C CNN
F 1 "GND" H 3750 1380 30  0001 C CNN
F 2 "" H 3750 1450 60  0000 C CNN
F 3 "" H 3750 1450 60  0000 C CNN
	1    3750 1450
	-1   0    0    -1  
$EndComp
$Comp
L tinkerforge:Cs C117
U 1 1 5D4982B1
P 4650 1150
F 0 "C117" H 4750 1196 50  0000 L CNN
F 1 "1uF" H 4750 1105 50  0000 L CNN
F 2 "C0402F" H 4650 1150 60  0001 C CNN
F 3 "" H 4650 1150 60  0000 C CNN
	1    4650 1150
	1    0    0    -1  
$EndComp
$Comp
L tinkerforge:GND #PWR0105
U 1 1 5D498335
P 4650 1450
F 0 "#PWR0105" H 4650 1450 30  0001 C CNN
F 1 "GND" H 4650 1380 30  0001 C CNN
F 2 "" H 4650 1450 60  0000 C CNN
F 3 "" H 4650 1450 60  0000 C CNN
	1    4650 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 1050 4650 1000
Connection ~ 4650 1000
Wire Wire Line
	4650 1000 4800 1000
Wire Wire Line
	4650 1450 4650 1250
Wire Wire Line
	3750 1450 3750 1250
Wire Wire Line
	3750 1050 3750 1000
Connection ~ 3750 1000
Wire Wire Line
	3750 1000 3850 1000
Text Notes 1750 3150 0    31   ~ 0
TIM3_CH1
Text Notes 1750 5250 0    31   ~ 0
TIM17_CH1
Text Notes 1750 5750 0    31   ~ 0
TIM15_CH1
Text Notes 1750 5850 0    31   ~ 0
TIM15_CH2
Text Notes 1750 3250 0    31   ~ 0
TIM3_CH2
Text Notes 1750 4300 0    31   ~ 0
TIM3_CH3
Text Notes 1750 4450 0    31   ~ 0
TIM3_CH4
Text Notes 1750 3350 0    31   ~ 0
TIM1_CH1
Text Notes 1750 3450 0    31   ~ 0
TIM1_CH2
Text Notes 1750 3550 0    31   ~ 0
TIM1_CH3
Text Notes 1750 2950 0    31   ~ 0
TIM14_CH1
Wire Wire Line
	1450 2900 1600 2900
Wire Wire Line
	1450 3100 1600 3100
Wire Wire Line
	1600 3200 1450 3200
Wire Wire Line
	1450 3300 1600 3300
Wire Wire Line
	1600 3400 1450 3400
Wire Wire Line
	1450 3500 1600 3500
Wire Wire Line
	1450 4300 1550 4300
Wire Wire Line
	1550 4400 1450 4400
Wire Wire Line
	1450 5200 1550 5200
Wire Wire Line
	1550 5700 1450 5700
Wire Wire Line
	1450 5800 1550 5800
Text GLabel 1600 2500 2    39   Input ~ 0
AIN0
Text GLabel 1600 2600 2    39   Input ~ 0
AIN1
Wire Wire Line
	1450 2500 1600 2500
Wire Wire Line
	1600 2600 1450 2600
Wire Wire Line
	1450 2700 1600 2700
Wire Wire Line
	1450 2800 1600 2800
Wire Wire Line
	1450 3000 1600 3000
Wire Wire Line
	1450 3800 1600 3800
Wire Wire Line
	1600 3900 1450 3900
Wire Wire Line
	1450 4000 1600 4000
Wire Wire Line
	1550 4500 1450 4500
$EndSCHEMATC
