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
L Device:R_Small R1
U 1 1 6179F82A
P 4650 2500
F 0 "R1" H 4591 2454 50  0000 R CNN
F 1 "100" H 4591 2545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4650 2500 50  0001 C CNN
F 3 "~" H 4650 2500 50  0001 C CNN
	1    4650 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 617A131E
P 4900 2500
F 0 "D2" V 4939 2382 50  0000 R CNN
F 1 "LED" V 4848 2382 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4900 2500 50  0001 C CNN
F 3 "~" H 4900 2500 50  0001 C CNN
	1    4900 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 617A1C31
P 4450 2150
F 0 "D1" V 4489 2032 50  0000 R CNN
F 1 "LED" V 4398 2032 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4450 2150 50  0001 C CNN
F 3 "~" H 4450 2150 50  0001 C CNN
	1    4450 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 617A365E
P 4250 2550
F 0 "BT1" H 4368 2646 50  0000 L CNN
F 1 "3" H 4368 2555 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_103_1x20mm" V 4250 2610 50  0001 C CNN
F 3 "~" V 4250 2610 50  0001 C CNN
	1    4250 2550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 617A53FB
P 4450 2350
F 0 "SW1" V 4496 2302 50  0000 R CNN
F 1 "_" V 4405 2302 50  0001 R CNN
F 2 "Button_Switch_THT:SW_CW_GPTS203211B" H 4450 2550 50  0001 C CNN
F 3 "~" H 4450 2550 50  0001 C CNN
	1    4450 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT2
U 1 1 617B60B3
P 8150 2150
F 0 "BT2" V 8350 2150 50  0000 C CNN
F 1 "9" V 8250 2150 50  0000 C CNN
F 2 "Battery:BatteryHolder_MPD_BA9VPC_1xPP3" V 8150 2210 50  0001 C CNN
F 3 "~" V 8150 2210 50  0001 C CNN
	1    8150 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 2150 8850 2200
NoConn ~ 8250 3500
NoConn ~ 8250 3600
NoConn ~ 8250 3700
NoConn ~ 8250 3800
NoConn ~ 8250 3900
NoConn ~ 8250 4200
NoConn ~ 8250 4300
NoConn ~ 8250 4400
NoConn ~ 8250 4500
NoConn ~ 8250 4700
Connection ~ 8850 2150
Text Notes 8100 7650 0    50   ~ 0
Due: 10/28/2021
Text Notes 7350 7500 0    54   ~ 0
Puzzle Lock : Team 10 Project
Text Notes 7000 7100 0    43   ~ 0
*The key can be any simple symetrical shape. the point being so it can be inserted into the mount attached \n to the door in several different ways\n*Once the key is inserted and the button pressed the IR LEDs will send IR to the phototransistors and \n allow current to flow.\n*This will put a voltage on digital pins 0-4 on the ATMega328. There are four LEDs so there will be\n four "high" inputs at a time.\n*Once the correct input is seen by the controller than it will output to a motor which will move the deadbolt\n and unlock or lock the door.
Text Notes 4400 1800 0    71   ~ 0
Key
Text Notes 7200 1850 0    71   ~ 0
Door Mount
Text Notes 7450 7250 0    51   ~ 0
Team 10 : Bradley Huntington, Tianshu Chu, Zhongyi Xu, Lihong Zhao
$Comp
L Device:LED D4
U 1 1 618538D9
P 4450 2800
F 0 "D4" V 4489 2682 50  0000 R CNN
F 1 "LED" V 4398 2682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4450 2800 50  0001 C CNN
F 3 "~" H 4450 2800 50  0001 C CNN
	1    4450 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 61854C9E
P 4050 2500
F 0 "D3" V 4089 2382 50  0000 R CNN
F 1 "LED" V 3998 2382 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4050 2500 50  0001 C CNN
F 3 "~" H 4050 2500 50  0001 C CNN
	1    4050 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2350 4050 2150
Wire Wire Line
	4050 2150 4300 2150
Wire Wire Line
	4600 2150 4900 2150
Wire Wire Line
	4900 2150 4900 2350
Wire Wire Line
	4650 2350 4650 2400
Wire Wire Line
	4650 2600 4650 2650
Wire Wire Line
	4650 2650 4900 2650
Wire Wire Line
	4600 2650 4250 2650
Wire Wire Line
	4600 2650 4600 2800
Wire Wire Line
	4050 2800 4300 2800
Wire Wire Line
	4050 2650 4050 2800
$Comp
L Motor:Motor_Servo M1
U 1 1 618710B6
P 9850 2750
F 0 "M1" H 9844 2443 50  0000 C CNN
F 1 "Motor_Servo" H 9844 2534 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9850 2560 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 9850 2560 50  0001 C CNN
	1    9850 2750
	1    0    0    1   
$EndComp
Wire Wire Line
	8250 4600 8200 4600
Wire Wire Line
	8200 4600 8200 5050
NoConn ~ 8250 4000
Wire Wire Line
	9550 2150 9550 2650
Wire Wire Line
	8850 2150 9550 2150
Wire Wire Line
	8750 2200 8750 2150
Wire Wire Line
	8750 2150 8850 2150
Wire Wire Line
	9500 2750 9550 2750
NoConn ~ 9450 4100
NoConn ~ 9450 4300
NoConn ~ 9450 4500
NoConn ~ 9450 4700
Wire Wire Line
	9500 5000 9500 2750
Wire Wire Line
	8200 5050 9550 5050
Wire Wire Line
	9550 5050 9550 2850
$Comp
L Device:Q_Photo_NPN Q6
U 1 1 617B2834
P 5650 2300
F 0 "Q6" V 5850 2300 50  0000 C CNN
F 1 "Q_Photo_NPN" V 5887 2300 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm" H 5850 2400 50  0001 C CNN
F 3 "~" H 5650 2300 50  0001 C CNN
	1    5650 2300
	0    1    1    0   
$EndComp
$Comp
L Device:Q_Photo_NPN Q7
U 1 1 617AF508
P 6300 2300
F 0 "Q7" V 6500 2300 50  0000 C CNN
F 1 "Q_Photo_NPN" V 6537 2300 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6500 2400 50  0001 C CNN
F 3 "~" H 6300 2300 50  0001 C CNN
	1    6300 2300
	0    1    1    0   
$EndComp
$Comp
L Device:Q_Photo_NPN Q1
U 1 1 617B3BB7
P 7050 3100
F 0 "Q1" V 7250 3100 50  0000 C CNN
F 1 "Q_Photo_NPN" V 7287 3100 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7250 3200 50  0001 C CNN
F 3 "~" H 7050 3100 50  0001 C CNN
	1    7050 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_Photo_NPN Q8
U 1 1 617B45AC
P 6950 2300
F 0 "Q8" V 7150 2300 50  0000 C CNN
F 1 "Q_Photo_NPN" V 7187 2300 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7150 2400 50  0001 C CNN
F 3 "~" H 6950 2300 50  0001 C CNN
	1    6950 2300
	0    1    1    0   
$EndComp
$Comp
L Device:Q_Photo_NPN Q5
U 1 1 618C99FD
P 5550 3100
F 0 "Q5" V 5750 3100 50  0000 C CNN
F 1 "Q_Photo_NPN" V 5787 3100 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm" H 5750 3200 50  0001 C CNN
F 3 "~" H 5550 3100 50  0001 C CNN
	1    5550 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_Photo_NPN Q2
U 1 1 618CFEBA
P 6950 4000
F 0 "Q2" V 7150 4000 50  0000 C CNN
F 1 "Q_Photo_NPN" V 7187 4000 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7150 4100 50  0001 C CNN
F 3 "~" H 6950 4000 50  0001 C CNN
	1    6950 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_Photo_NPN Q3
U 1 1 618CFEC0
P 6300 4000
F 0 "Q3" V 6500 4000 50  0000 C CNN
F 1 "Q_Photo_NPN" V 6537 4000 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm" H 6500 4100 50  0001 C CNN
F 3 "~" H 6300 4000 50  0001 C CNN
	1    6300 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_Photo_NPN Q4
U 1 1 618CFEC6
P 5650 4000
F 0 "Q4" V 5850 4000 50  0000 C CNN
F 1 "Q_Photo_NPN" V 5887 4000 50  0001 C CNN
F 2 "LED_THT:LED_D5.0mm" H 5850 4100 50  0001 C CNN
F 3 "~" H 5650 4000 50  0001 C CNN
	1    5650 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 3300 8250 3300
Wire Wire Line
	8100 3200 8250 3200
Wire Wire Line
	6750 3900 6750 4150
Wire Wire Line
	6100 3900 6100 4150
Wire Wire Line
	5450 3900 5400 3900
Connection ~ 5400 3900
Wire Wire Line
	5400 3900 5400 4150
Wire Wire Line
	5650 2900 5400 2900
Wire Wire Line
	5850 2400 5850 2150
Connection ~ 5850 2150
Wire Wire Line
	5850 2150 5400 2150
Wire Wire Line
	6500 2150 6500 2400
Wire Wire Line
	7150 2400 7150 2150
Wire Wire Line
	6750 2400 6750 2500
Wire Wire Line
	6100 2400 6100 2550
Wire Wire Line
	5450 2400 5450 2600
Wire Wire Line
	5400 2150 5400 2900
Wire Wire Line
	5400 2900 5400 3900
Connection ~ 5400 2900
Connection ~ 6100 4150
Wire Wire Line
	5400 4150 6100 4150
Wire Wire Line
	6100 4150 6750 4150
Wire Wire Line
	6500 2150 7150 2150
Wire Wire Line
	5850 2150 6500 2150
Connection ~ 6500 2150
Wire Wire Line
	5650 3300 5850 3300
Wire Wire Line
	5850 3300 5850 2650
Wire Wire Line
	5850 3900 5900 3900
Wire Wire Line
	5900 3900 5900 2700
Wire Wire Line
	6500 3900 6500 2750
Wire Wire Line
	6500 2750 7250 2750
Wire Wire Line
	7250 2750 7250 3100
Wire Wire Line
	6750 3900 6750 3300
Wire Wire Line
	6750 3300 6950 3300
Connection ~ 6750 3900
Wire Wire Line
	6950 2900 7200 2900
Wire Wire Line
	7200 2900 7200 3950
Wire Wire Line
	6750 5000 6750 4150
Connection ~ 6750 4150
Wire Notes Line
	5800 3650 6800 3650
Wire Notes Line
	6800 3650 6800 2650
Wire Notes Line
	6800 2650 5800 2650
Wire Notes Line
	5800 2650 5800 3650
Text Notes 6000 3200 0    71   ~ 0
(Insert Key)
Wire Notes Line
	3950 2900 5000 2900
Wire Notes Line
	5000 2900 5000 2050
Wire Notes Line
	5000 2050 3950 2050
Wire Notes Line
	3950 2050 3950 2900
Wire Wire Line
	5850 2650 7350 2650
Wire Wire Line
	5450 2600 7400 2600
Wire Wire Line
	6100 2550 7450 2550
Wire Wire Line
	7450 2700 8250 2700
Wire Wire Line
	8850 5000 9500 5000
Connection ~ 8850 5000
Wire Wire Line
	8750 5000 8850 5000
Connection ~ 8750 5000
$Comp
L MCU_Microchip_ATmega:ATmega8L-8PU U1
U 1 1 617B7E10
P 8850 3600
F 0 "U1" H 8850 2019 50  0000 C CNN
F 1 "ATmega328" H 8850 2110 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 8850 3600 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2486-8-bit-avr-microcontroller-atmega8_l_datasheet.pdf" H 8850 3600 50  0001 C CNN
	1    8850 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 2800 8250 2800
Wire Wire Line
	7350 2900 8250 2900
Wire Wire Line
	7300 3000 8250 3000
Wire Wire Line
	7250 3100 8250 3100
Wire Wire Line
	8100 3900 8100 3200
Wire Wire Line
	7150 3900 8100 3900
Wire Wire Line
	7200 3950 8150 3950
$Comp
L Device:R_Small R2
U 1 1 618C6BD1
P 7800 2150
F 0 "R2" V 7604 2150 50  0000 C CNN
F 1 "1K" V 7695 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7800 2150 50  0001 C CNN
F 3 "~" H 7800 2150 50  0001 C CNN
	1    7800 2150
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D5
U 1 1 618C8083
P 7850 2450
F 0 "D5" H 7850 2667 50  0000 C CNN
F 1 "5.1V" H 7850 2576 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7850 2450 50  0001 C CNN
F 3 "~" H 7850 2450 50  0001 C CNN
	1    7850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2150 8500 2150
Connection ~ 8750 2150
Wire Wire Line
	6750 2500 7500 2500
Wire Wire Line
	7500 2600 8250 2600
Wire Wire Line
	8000 2450 8250 2450
Wire Wire Line
	8250 2450 8250 2250
Wire Wire Line
	8250 2250 8500 2250
Wire Wire Line
	8500 2250 8500 2150
Connection ~ 8500 2150
Wire Wire Line
	8500 2150 8750 2150
Wire Wire Line
	7950 2150 7900 2150
Wire Wire Line
	7700 2450 7550 2450
Wire Wire Line
	7550 2450 7550 2150
Connection ~ 7150 2150
Connection ~ 7550 2150
Wire Wire Line
	6750 5000 8750 5000
Wire Wire Line
	7550 2150 7150 2150
Wire Wire Line
	7550 2150 7700 2150
Wire Wire Line
	5900 2700 7300 2700
Wire Wire Line
	7300 2700 7300 3000
Wire Wire Line
	7350 2650 7350 2900
Wire Wire Line
	7400 2600 7400 2800
Wire Wire Line
	7450 2550 7450 2700
Wire Wire Line
	7500 2500 7500 2600
Wire Wire Line
	8150 3300 8150 3950
$EndSCHEMATC
