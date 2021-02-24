EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DMXBox with Rotary Encoders"
Date "2021-02-22"
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L teensy:Teensy3.2 U1
U 1 1 603028E1
P 6000 4700
F 0 "U1" H 6000 6337 60  0000 C CNN
F 1 "Teensy3.2" H 6000 6231 60  0000 C CNN
F 2 "teensy:Teensy30_31_32_All_Pins" H 6000 3950 60  0001 C CNN
F 3 "" H 6000 3950 60  0000 C CNN
	1    6000 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J3
U 1 1 60304AE7
P 10250 2250
F 0 "J3" H 10222 2182 50  0000 R CNN
F 1 "Rotary Encoder 1" H 10222 2273 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B5B-EH-A_1x05_P2.50mm_Vertical" H 10250 2250 50  0001 C CNN
F 3 "~" H 10250 2250 50  0001 C CNN
	1    10250 2250
	-1   0    0    1   
$EndComp
$Comp
L Connector:XLR3 J2
U 1 1 60309042
P 3350 5450
F 0 "J2" V 3396 5678 50  0000 L CNN
F 1 "DMX OUT" V 3305 5678 50  0000 L CNN
F 2 "Clockdiv-KiCad:XLR Buchse" H 3350 5450 50  0000 C CNN
F 3 " ~" H 3350 5450 50  0001 C CNN
	1    3350 5450
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60310DB9
P 5200 1450
F 0 "SW1" H 5200 1735 50  0000 C CNN
F 1 "Btn_1_Max" H 5200 1644 50  0000 C CNN
F 2 "KiCad_CherryMx:CherryMX_PCBmount_NoDiodeNoLED" H 5200 1650 50  0001 C CNN
F 3 "~" H 5200 1650 50  0001 C CNN
	1    5200 1450
	0    1    1    0   
$EndComp
$Comp
L Clockdiv-KiCad-library:MAX485-Shield A1
U 1 1 6034CA70
P 2150 5550
F 0 "A1" H 2000 6200 50  0000 C CNN
F 1 "MAX485-Shield" H 2000 6050 50  0000 C CNN
F 2 "Clockdiv-KiCad:MAX485-Shield" H 2400 5550 50  0001 C CNN
F 3 "" H 2400 5550 50  0001 C CNN
	1    2150 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW2
U 1 1 6034D0AB
P 2500 3550
F 0 "SW2" H 2900 3950 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 3250 3850 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 2350 3710 50  0001 C CNN
F 3 "~" H 2500 3810 50  0001 C CNN
	1    2500 3550
	1    0    0    -1  
$EndComp
$Comp
L dk_Barrel-Power-Connectors:PJ-102A 6-24V1
U 1 1 603582C3
P 1450 6950
F 0 "6-24V1" H 1383 7175 50  0000 C CNN
F 1 "PJ-102A" H 1383 7084 50  0000 C CNN
F 2 "digikey-footprints:Barrel_Jack_5.5mmODx2.1mmID_PJ-102A" H 1650 7150 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/pj-102a.pdf" H 1650 7250 60  0001 L CNN
F 4 "CP-102A-ND" H 1650 7350 60  0001 L CNN "Digi-Key_PN"
F 5 "PJ-102A" H 1650 7450 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1650 7550 60  0001 L CNN "Category"
F 7 "Barrel - Power Connectors" H 1650 7650 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/pj-102a.pdf" H 1650 7750 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/PJ-102A/CP-102A-ND/275425" H 1650 7850 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN PWR JACK 2X5.5MM SOLDER" H 1650 7950 60  0001 L CNN "Description"
F 11 "CUI Inc." H 1650 8050 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1650 8150 60  0001 L CNN "Status"
	1    1450 6950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 6035AB95
P 5200 2050
F 0 "SW4" H 5200 2335 50  0000 C CNN
F 1 "Btn_1_Min" H 5200 2244 50  0000 C CNN
F 2 "KiCad_CherryMx:CherryMX_PCBmount_NoDiodeNoLED" H 5200 2250 50  0001 C CNN
F 3 "~" H 5200 2250 50  0001 C CNN
	1    5200 2050
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 6035B001
P 6550 1450
F 0 "SW5" H 6550 1735 50  0000 C CNN
F 1 "Btn_3_Max" H 6550 1644 50  0000 C CNN
F 2 "KiCad_CherryMx:CherryMX_PCBmount_NoDiodeNoLED" H 6550 1650 50  0001 C CNN
F 3 "~" H 6550 1650 50  0001 C CNN
	1    6550 1450
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 6035B938
P 5900 1450
F 0 "SW6" H 5900 1735 50  0000 C CNN
F 1 "Btn_2_Max" H 5900 1644 50  0000 C CNN
F 2 "KiCad_CherryMx:CherryMX_PCBmount_NoDiodeNoLED" H 5900 1650 50  0001 C CNN
F 3 "~" H 5900 1650 50  0001 C CNN
	1    5900 1450
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW7
U 1 1 6035BB8D
P 6550 2050
F 0 "SW7" H 6550 2335 50  0000 C CNN
F 1 "Btn_3_Min" H 6550 2244 50  0000 C CNN
F 2 "KiCad_CherryMx:CherryMX_PCBmount_NoDiodeNoLED" H 6550 2250 50  0001 C CNN
F 3 "~" H 6550 2250 50  0001 C CNN
	1    6550 2050
	0    1    1    0   
$EndComp
$Comp
L Clockdiv-KiCad-library:OLED-I2C A2
U 1 1 603262FA
P 5100 7050
F 0 "A2" H 4900 6600 50  0000 L CNN
F 1 "OLED-I2C" H 4800 6700 50  0000 L CNN
F 2 "Clockdiv-KiCad:OLED-I2C" H 5200 6700 50  0001 C CNN
F 3 "" H 5100 7300 50  0001 C CNN
	1    5100 7050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60328DAA
P 1850 6950
F 0 "#FLG0101" H 1850 7025 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 7123 50  0000 C CNN
F 2 "" H 1850 6950 50  0001 C CNN
F 3 "~" H 1850 6950 50  0001 C CNN
	1    1850 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60378BD3
P 3750 5450
F 0 "#PWR02" H 3750 5200 50  0001 C CNN
F 1 "GND" H 3755 5277 50  0000 C CNN
F 2 "" H 3750 5450 50  0001 C CNN
F 3 "" H 3750 5450 50  0001 C CNN
	1    3750 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 5450 3750 5450
Wire Wire Line
	2850 5450 3050 5450
Wire Wire Line
	2850 5600 2850 5750
Wire Wire Line
	2850 5750 3350 5750
$Comp
L power:GND #PWR01
U 1 1 603826B2
P 2500 6100
F 0 "#PWR01" H 2500 5850 50  0001 C CNN
F 1 "GND" H 2505 5927 50  0000 C CNN
F 2 "" H 2500 6100 50  0001 C CNN
F 3 "" H 2500 6100 50  0001 C CNN
	1    2500 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5950 2500 6100
Wire Wire Line
	1550 6950 1850 6950
Connection ~ 1850 6950
Wire Wire Line
	1850 6950 2250 6950
Connection ~ 1850 7150
Wire Wire Line
	1550 7150 1850 7150
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 603299FD
P 1850 7150
F 0 "#FLG0102" H 1850 7225 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 7323 50  0000 C CNN
F 2 "" H 1850 7150 50  0001 C CNN
F 3 "~" H 1850 7150 50  0001 C CNN
	1    1850 7150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 4900 2500 5100
$Comp
L Regulator_Linear:LM7805_TO220 U2
U 1 1 6038D2B2
P 2900 6950
F 0 "U2" H 2900 7192 50  0000 C CNN
F 1 "LM7805_TO220" H 2900 7101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2900 7175 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 2900 6900 50  0001 C CNN
	1    2900 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7150 2100 7250
Wire Wire Line
	2100 7250 2250 7250
Wire Wire Line
	1850 7150 2100 7150
$Comp
L power:+5V #PWR010
U 1 1 603912F8
P 3650 6950
F 0 "#PWR010" H 3650 6800 50  0001 C CNN
F 1 "+5V" V 3665 7078 50  0000 L CNN
F 2 "" H 3650 6950 50  0001 C CNN
F 3 "" H 3650 6950 50  0001 C CNN
	1    3650 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 6950 3350 6950
$Comp
L Device:CP C3
U 1 1 603923D7
P 2250 7100
F 0 "C3" H 2368 7146 50  0000 L CNN
F 1 "100uF" H 2368 7055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2288 6950 50  0001 C CNN
F 3 "~" H 2250 7100 50  0001 C CNN
	1    2250 7100
	1    0    0    -1  
$EndComp
Connection ~ 2250 6950
Wire Wire Line
	2250 6950 2600 6950
Connection ~ 2250 7250
Wire Wire Line
	2250 7250 2900 7250
$Comp
L Device:CP C4
U 1 1 603935FF
P 3350 7100
F 0 "C4" H 3468 7146 50  0000 L CNN
F 1 "100uF" H 3468 7055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3388 6950 50  0001 C CNN
F 3 "~" H 3350 7100 50  0001 C CNN
	1    3350 7100
	1    0    0    -1  
$EndComp
Connection ~ 3350 6950
Wire Wire Line
	3350 6950 3650 6950
Wire Wire Line
	2900 7250 3350 7250
Connection ~ 2900 7250
$Comp
L power:+5V #PWR08
U 1 1 60396C22
P 2500 4900
F 0 "#PWR08" H 2500 4750 50  0001 C CNN
F 1 "+5V" H 2515 5073 50  0000 C CNN
F 2 "" H 2500 4900 50  0001 C CNN
F 3 "" H 2500 4900 50  0001 C CNN
	1    2500 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 603973B4
P 1100 5600
F 0 "#PWR04" H 1100 5450 50  0001 C CNN
F 1 "+5V" V 1115 5728 50  0000 L CNN
F 2 "" H 1100 5600 50  0001 C CNN
F 3 "" H 1100 5600 50  0001 C CNN
	1    1100 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 5600 1300 5600
Wire Wire Line
	1500 5450 1300 5450
Wire Wire Line
	1300 5450 1300 5600
Connection ~ 1300 5600
Wire Wire Line
	1300 5600 1500 5600
NoConn ~ 1500 5300
Text GLabel 4750 5650 0    50   Input ~ 0
Pin17
Wire Wire Line
	4750 5650 5000 5650
Text GLabel 1300 5750 0    50   Input ~ 0
Pin17
Wire Wire Line
	1300 5750 1500 5750
Text GLabel 4750 5750 0    50   Input ~ 0
SDA
Text GLabel 4750 5850 0    50   Input ~ 0
SCL
Wire Wire Line
	4750 5850 5000 5850
Wire Wire Line
	4750 5750 5000 5750
Text GLabel 4900 7200 0    50   Input ~ 0
SDA
Text GLabel 4900 7100 0    50   Input ~ 0
SCL
Wire Wire Line
	4900 7200 5100 7200
Wire Wire Line
	4900 7100 5100 7100
$Comp
L power:+5V #PWR012
U 1 1 6039D02A
P 4850 7000
F 0 "#PWR012" H 4850 6850 50  0001 C CNN
F 1 "+5V" V 4865 7128 50  0000 L CNN
F 2 "" H 4850 7000 50  0001 C CNN
F 3 "" H 4850 7000 50  0001 C CNN
	1    4850 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 7000 5100 7000
$Comp
L power:GND #PWR013
U 1 1 6039DD8A
P 4900 6850
F 0 "#PWR013" H 4900 6600 50  0001 C CNN
F 1 "GND" H 4905 6677 50  0000 C CNN
F 2 "" H 4900 6850 50  0001 C CNN
F 3 "" H 4900 6850 50  0001 C CNN
	1    4900 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 6900 4900 6900
Wire Wire Line
	4900 6900 4900 6850
$Comp
L power:+5V #PWR015
U 1 1 603A1198
P 7150 5650
F 0 "#PWR015" H 7150 5500 50  0001 C CNN
F 1 "+5V" V 7165 5778 50  0000 L CNN
F 2 "" H 7150 5650 50  0001 C CNN
F 3 "" H 7150 5650 50  0001 C CNN
	1    7150 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 5650 7150 5650
$Comp
L power:GND #PWR014
U 1 1 603A2609
P 7150 4850
F 0 "#PWR014" H 7150 4600 50  0001 C CNN
F 1 "GND" H 7155 4677 50  0000 C CNN
F 2 "" H 7150 4850 50  0001 C CNN
F 3 "" H 7150 4850 50  0001 C CNN
	1    7150 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 4850 7150 4850
$Comp
L power:+5V #PWR016
U 1 1 603A588F
P 8100 2050
F 0 "#PWR016" H 8100 1900 50  0001 C CNN
F 1 "+5V" V 8115 2178 50  0000 L CNN
F 2 "" H 8100 2050 50  0001 C CNN
F 3 "" H 8100 2050 50  0001 C CNN
	1    8100 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 2450 10050 2350
Text GLabel 8700 2050 0    50   Input ~ 0
ENC-1A
Text GLabel 8700 2150 0    50   Input ~ 0
ENC-1B
Text GLabel 8700 3500 0    50   Input ~ 0
ENC-2A
Text GLabel 8700 3600 0    50   Input ~ 0
ENC-2B
Text GLabel 8700 4950 0    50   Input ~ 0
ENC-3A
Text GLabel 8700 5050 0    50   Input ~ 0
ENC-3B
Wire Wire Line
	8700 2050 8900 2050
Wire Wire Line
	8700 2150 8900 2150
Text GLabel 4900 3950 0    50   Input ~ 0
ENC-1A
Text GLabel 4900 4050 0    50   Input ~ 0
ENC-1B
Text GLabel 4900 4250 0    50   Input ~ 0
ENC-2A
Text GLabel 4900 4150 0    50   Input ~ 0
ENC-2B
Text GLabel 4900 4450 0    50   Input ~ 0
ENC-3A
Text GLabel 4900 4350 0    50   Input ~ 0
ENC-3B
Wire Wire Line
	4900 3950 5000 3950
Wire Wire Line
	4900 4050 5000 4050
Wire Wire Line
	4900 4150 5000 4150
Wire Wire Line
	4900 4250 5000 4250
Wire Wire Line
	4900 4350 5000 4350
Wire Wire Line
	4900 4450 5000 4450
$Comp
L Device:R R3
U 1 1 603C4902
P 8900 1900
F 0 "R3" H 8970 1946 50  0000 L CNN
F 1 "10k" H 8970 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8830 1900 50  0001 C CNN
F 3 "~" H 8900 1900 50  0001 C CNN
	1    8900 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 603C4D86
P 8900 2300
F 0 "R4" H 8970 2346 50  0000 L CNN
F 1 "10k" H 8970 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8830 2300 50  0001 C CNN
F 3 "~" H 8900 2300 50  0001 C CNN
	1    8900 2300
	1    0    0    -1  
$EndComp
Connection ~ 8900 2150
Connection ~ 10050 2350
Wire Wire Line
	9550 2350 10050 2350
$Comp
L power:GND #PWR020
U 1 1 603A35C8
P 9550 2450
F 0 "#PWR020" H 9550 2200 50  0001 C CNN
F 1 "GND" H 9555 2277 50  0000 C CNN
F 2 "" H 9550 2450 50  0001 C CNN
F 3 "" H 9550 2450 50  0001 C CNN
	1    9550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2350 9550 2450
$Comp
L Device:C C5
U 1 1 603D7D84
P 9300 1850
F 0 "C5" H 9415 1896 50  0000 L CNN
F 1 "0.01uF" H 9415 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9338 1700 50  0001 C CNN
F 3 "~" H 9300 1850 50  0001 C CNN
	1    9300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1750 8200 1750
Wire Wire Line
	8200 1750 8200 2050
Wire Wire Line
	8200 2450 8900 2450
Wire Wire Line
	8900 2450 9300 2450
Wire Wire Line
	9300 2450 9300 2250
Wire Wire Line
	9300 2250 10050 2250
Connection ~ 8900 2450
Wire Wire Line
	8200 2050 8200 2450
Connection ~ 8200 2050
$Comp
L power:GND #PWR019
U 1 1 603E5035
P 9550 1550
F 0 "#PWR019" H 9550 1300 50  0001 C CNN
F 1 "GND" H 9555 1377 50  0000 C CNN
F 2 "" H 9550 1550 50  0001 C CNN
F 3 "" H 9550 1550 50  0001 C CNN
	1    9550 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 603E72FB
P 9800 1850
F 0 "C8" H 9915 1896 50  0000 L CNN
F 1 "0.01uF" H 9915 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9838 1700 50  0001 C CNN
F 3 "~" H 9800 1850 50  0001 C CNN
	1    9800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2150 9800 2000
Connection ~ 9800 2150
Wire Wire Line
	9800 2150 10050 2150
Connection ~ 8900 2050
Wire Wire Line
	10050 2050 9300 2050
Wire Wire Line
	8900 2150 9800 2150
Wire Wire Line
	9300 2050 9300 2000
Connection ~ 9300 2050
Wire Wire Line
	9300 2050 8900 2050
Wire Wire Line
	9800 1700 9550 1700
Wire Wire Line
	8100 2050 8200 2050
Wire Wire Line
	9550 1550 9550 1700
Connection ~ 9550 1700
Wire Wire Line
	9550 1700 9300 1700
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 60416CBA
P 10250 3700
F 0 "J1" H 10222 3632 50  0000 R CNN
F 1 "Rotary Encoder 2" H 10222 3723 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B5B-EH-A_1x05_P2.50mm_Vertical" H 10250 3700 50  0001 C CNN
F 3 "~" H 10250 3700 50  0001 C CNN
	1    10250 3700
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 60416CC0
P 8100 3500
F 0 "#PWR017" H 8100 3350 50  0001 C CNN
F 1 "+5V" V 8115 3628 50  0000 L CNN
F 2 "" H 8100 3500 50  0001 C CNN
F 3 "" H 8100 3500 50  0001 C CNN
	1    8100 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 3900 10050 3800
Wire Wire Line
	8700 3500 8900 3500
Wire Wire Line
	8700 3600 8900 3600
$Comp
L Device:R R5
U 1 1 60416CCB
P 8900 3350
F 0 "R5" H 8970 3396 50  0000 L CNN
F 1 "10k" H 8970 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8830 3350 50  0001 C CNN
F 3 "~" H 8900 3350 50  0001 C CNN
	1    8900 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 60416CD1
P 8900 3750
F 0 "R6" H 8970 3796 50  0000 L CNN
F 1 "10k" H 8970 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8830 3750 50  0001 C CNN
F 3 "~" H 8900 3750 50  0001 C CNN
	1    8900 3750
	1    0    0    -1  
$EndComp
Connection ~ 8900 3600
Connection ~ 10050 3800
Wire Wire Line
	9550 3800 10050 3800
$Comp
L power:GND #PWR022
U 1 1 60416CE0
P 9550 3900
F 0 "#PWR022" H 9550 3650 50  0001 C CNN
F 1 "GND" H 9555 3727 50  0000 C CNN
F 2 "" H 9550 3900 50  0001 C CNN
F 3 "" H 9550 3900 50  0001 C CNN
	1    9550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3800 9550 3900
$Comp
L Device:C C6
U 1 1 60416CE7
P 9300 3300
F 0 "C6" H 9415 3346 50  0000 L CNN
F 1 "0.01uF" H 9415 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9338 3150 50  0001 C CNN
F 3 "~" H 9300 3300 50  0001 C CNN
	1    9300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3200 8200 3200
Wire Wire Line
	8200 3200 8200 3500
Wire Wire Line
	8200 3900 8900 3900
Wire Wire Line
	8900 3900 9300 3900
Wire Wire Line
	9300 3900 9300 3700
Wire Wire Line
	9300 3700 10050 3700
Connection ~ 8900 3900
Wire Wire Line
	8200 3500 8200 3900
Connection ~ 8200 3500
$Comp
L power:GND #PWR021
U 1 1 60416CF6
P 9550 3000
F 0 "#PWR021" H 9550 2750 50  0001 C CNN
F 1 "GND" H 9555 2827 50  0000 C CNN
F 2 "" H 9550 3000 50  0001 C CNN
F 3 "" H 9550 3000 50  0001 C CNN
	1    9550 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 60416CFC
P 9800 3300
F 0 "C9" H 9915 3346 50  0000 L CNN
F 1 "0.01uF" H 9915 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9838 3150 50  0001 C CNN
F 3 "~" H 9800 3300 50  0001 C CNN
	1    9800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3600 9800 3450
Connection ~ 9800 3600
Wire Wire Line
	9800 3600 10050 3600
Connection ~ 8900 3500
Wire Wire Line
	10050 3500 9300 3500
Wire Wire Line
	8900 3600 9800 3600
Wire Wire Line
	9300 3500 9300 3450
Connection ~ 9300 3500
Wire Wire Line
	9300 3500 8900 3500
Wire Wire Line
	9800 3150 9550 3150
Wire Wire Line
	8100 3500 8200 3500
Wire Wire Line
	9550 3000 9550 3150
Connection ~ 9550 3150
Wire Wire Line
	9550 3150 9300 3150
$Comp
L Connector:Conn_01x05_Male J4
U 1 1 6041DEFC
P 10250 5150
F 0 "J4" H 10222 5082 50  0000 R CNN
F 1 "Rotary Encoder 3" H 10222 5173 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B5B-EH-A_1x05_P2.50mm_Vertical" H 10250 5150 50  0001 C CNN
F 3 "~" H 10250 5150 50  0001 C CNN
	1    10250 5150
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 6041DF02
P 8100 4950
F 0 "#PWR018" H 8100 4800 50  0001 C CNN
F 1 "+5V" V 8115 5078 50  0000 L CNN
F 2 "" H 8100 4950 50  0001 C CNN
F 3 "" H 8100 4950 50  0001 C CNN
	1    8100 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 5350 10050 5250
Wire Wire Line
	8700 4950 8900 4950
Wire Wire Line
	8700 5050 8900 5050
$Comp
L Device:R R7
U 1 1 6041DF0D
P 8900 4800
F 0 "R7" H 8970 4846 50  0000 L CNN
F 1 "10k" H 8970 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8830 4800 50  0001 C CNN
F 3 "~" H 8900 4800 50  0001 C CNN
	1    8900 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 6041DF13
P 8900 5200
F 0 "R8" H 8970 5246 50  0000 L CNN
F 1 "10k" H 8970 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8830 5200 50  0001 C CNN
F 3 "~" H 8900 5200 50  0001 C CNN
	1    8900 5200
	1    0    0    -1  
$EndComp
Connection ~ 8900 5050
Connection ~ 10050 5250
Wire Wire Line
	9550 5250 10050 5250
$Comp
L power:GND #PWR024
U 1 1 6041DF22
P 9550 5350
F 0 "#PWR024" H 9550 5100 50  0001 C CNN
F 1 "GND" H 9555 5177 50  0000 C CNN
F 2 "" H 9550 5350 50  0001 C CNN
F 3 "" H 9550 5350 50  0001 C CNN
	1    9550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5250 9550 5350
$Comp
L Device:C C7
U 1 1 6041DF29
P 9300 4750
F 0 "C7" H 9415 4796 50  0000 L CNN
F 1 "0.01uF" H 9415 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9338 4600 50  0001 C CNN
F 3 "~" H 9300 4750 50  0001 C CNN
	1    9300 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4650 8200 4650
Wire Wire Line
	8200 4650 8200 4950
Wire Wire Line
	8200 5350 8900 5350
Wire Wire Line
	8900 5350 9300 5350
Wire Wire Line
	9300 5350 9300 5150
Wire Wire Line
	9300 5150 10050 5150
Connection ~ 8900 5350
Wire Wire Line
	8200 4950 8200 5350
Connection ~ 8200 4950
$Comp
L power:GND #PWR023
U 1 1 6041DF38
P 9550 4450
F 0 "#PWR023" H 9550 4200 50  0001 C CNN
F 1 "GND" H 9555 4277 50  0000 C CNN
F 2 "" H 9550 4450 50  0001 C CNN
F 3 "" H 9550 4450 50  0001 C CNN
	1    9550 4450
	-1   0    0    1   
$EndComp
$Comp
L Device:C C10
U 1 1 6041DF3E
P 9800 4750
F 0 "C10" H 9915 4796 50  0000 L CNN
F 1 "0.01uF" H 9915 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9838 4600 50  0001 C CNN
F 3 "~" H 9800 4750 50  0001 C CNN
	1    9800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5050 9800 4900
Connection ~ 9800 5050
Wire Wire Line
	9800 5050 10050 5050
Connection ~ 8900 4950
Wire Wire Line
	10050 4950 9300 4950
Wire Wire Line
	8900 5050 9800 5050
Wire Wire Line
	9300 4950 9300 4900
Connection ~ 9300 4950
Wire Wire Line
	9300 4950 8900 4950
Wire Wire Line
	9800 4600 9550 4600
Wire Wire Line
	8100 4950 8200 4950
Wire Wire Line
	9550 4450 9550 4600
Connection ~ 9550 4600
Wire Wire Line
	9550 4600 9300 4600
Text GLabel 4900 3850 0    50   Input ~ 0
ENC-4Btn
Text GLabel 4900 3750 0    50   Input ~ 0
ENC-4B
Text GLabel 4900 3650 0    50   Input ~ 0
ENC-4A
Text GLabel 2950 3650 2    50   Input ~ 0
ENC-4Btn
$Comp
L power:GND #PWR09
U 1 1 6047D31E
P 2950 3450
F 0 "#PWR09" H 2950 3200 50  0001 C CNN
F 1 "GND" V 2955 3322 50  0000 R CNN
F 2 "" H 2950 3450 50  0001 C CNN
F 3 "" H 2950 3450 50  0001 C CNN
	1    2950 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 3450 2950 3450
Wire Wire Line
	2800 3650 2950 3650
$Comp
L power:GND #PWR07
U 1 1 6048444C
P 2150 3550
F 0 "#PWR07" H 2150 3300 50  0001 C CNN
F 1 "GND" V 2155 3422 50  0000 R CNN
F 2 "" H 2150 3550 50  0001 C CNN
F 3 "" H 2150 3550 50  0001 C CNN
	1    2150 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 3550 2200 3550
$Comp
L Device:C C1
U 1 1 60488038
P 2050 3100
F 0 "C1" H 2165 3146 50  0000 L CNN
F 1 "0.01uF" H 2165 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2088 2950 50  0001 C CNN
F 3 "~" H 2050 3100 50  0001 C CNN
	1    2050 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60488D91
P 2050 3950
F 0 "C2" H 2165 3996 50  0000 L CNN
F 1 "0.01uF" H 2165 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2088 3800 50  0001 C CNN
F 3 "~" H 2050 3950 50  0001 C CNN
	1    2050 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60489452
P 2050 2950
F 0 "#PWR05" H 2050 2700 50  0001 C CNN
F 1 "GND" H 2055 2777 50  0000 C CNN
F 2 "" H 2050 2950 50  0001 C CNN
F 3 "" H 2050 2950 50  0001 C CNN
	1    2050 2950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60489A11
P 2050 4100
F 0 "#PWR06" H 2050 3850 50  0001 C CNN
F 1 "GND" H 2055 3927 50  0000 C CNN
F 2 "" H 2050 4100 50  0001 C CNN
F 3 "" H 2050 4100 50  0001 C CNN
	1    2050 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6048A234
P 1350 3450
F 0 "R1" V 1557 3450 50  0000 C CNN
F 1 "10k" V 1466 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1280 3450 50  0001 C CNN
F 3 "~" H 1350 3450 50  0001 C CNN
	1    1350 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 6048E9CC
P 1350 3650
F 0 "R2" V 1550 3650 50  0000 C CNN
F 1 "10k" V 1450 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1280 3650 50  0001 C CNN
F 3 "~" H 1350 3650 50  0001 C CNN
	1    1350 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 3450 1700 3450
Wire Wire Line
	1500 3650 1700 3650
Wire Wire Line
	2050 3250 2050 3450
Connection ~ 2050 3450
Wire Wire Line
	2050 3450 2200 3450
Wire Wire Line
	2050 3800 2050 3650
Connection ~ 2050 3650
Wire Wire Line
	2050 3650 2200 3650
$Comp
L power:+5V #PWR03
U 1 1 604A5180
P 1100 3550
F 0 "#PWR03" H 1100 3400 50  0001 C CNN
F 1 "+5V" V 1115 3678 50  0000 L CNN
F 2 "" H 1100 3550 50  0001 C CNN
F 3 "" H 1100 3550 50  0001 C CNN
	1    1100 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 3450 1200 3550
Wire Wire Line
	1100 3550 1200 3550
Connection ~ 1200 3550
Wire Wire Line
	1200 3550 1200 3650
Text GLabel 1700 3350 1    50   Input ~ 0
ENC-4A
Text GLabel 1700 3750 3    50   Input ~ 0
ENC-4B
Wire Wire Line
	1700 3750 1700 3650
Connection ~ 1700 3650
Wire Wire Line
	1700 3650 2050 3650
Wire Wire Line
	1700 3350 1700 3450
Connection ~ 1700 3450
Wire Wire Line
	1700 3450 2050 3450
$Comp
L power:GND #PWR011
U 1 1 604C6B23
P 4800 3350
F 0 "#PWR011" H 4800 3100 50  0001 C CNN
F 1 "GND" V 4805 3222 50  0000 R CNN
F 2 "" H 4800 3350 50  0001 C CNN
F 3 "" H 4800 3350 50  0001 C CNN
	1    4800 3350
	0    1    1    0   
$EndComp
NoConn ~ 5000 3450
NoConn ~ 5000 3550
Wire Wire Line
	4900 3650 5000 3650
Wire Wire Line
	4900 3750 5000 3750
Wire Wire Line
	4900 3850 5000 3850
$Comp
L Switch:SW_Push SW3
U 1 1 60355E35
P 5900 2050
F 0 "SW3" H 5900 2335 50  0000 C CNN
F 1 "Btn_2_Min" H 5900 2244 50  0000 C CNN
F 2 "KiCad_CherryMx:CherryMX_PCBmount_NoDiodeNoLED" H 5900 2250 50  0001 C CNN
F 3 "~" H 5900 2250 50  0001 C CNN
	1    5900 2050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 6057956A
P 5100 1750
F 0 "#PWR026" H 5100 1500 50  0001 C CNN
F 1 "GND" V 5105 1622 50  0000 R CNN
F 2 "" H 5100 1750 50  0001 C CNN
F 3 "" H 5100 1750 50  0001 C CNN
	1    5100 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 1750 5200 1750
Wire Wire Line
	6550 1750 6550 1650
Wire Wire Line
	6550 1750 6550 1850
Connection ~ 6550 1750
Wire Wire Line
	5900 1650 5900 1750
Connection ~ 5900 1750
Wire Wire Line
	5900 1750 6550 1750
Wire Wire Line
	5900 1750 5900 1850
Wire Wire Line
	5200 1650 5200 1750
Connection ~ 5200 1750
Wire Wire Line
	5200 1750 5900 1750
Wire Wire Line
	5200 1750 5200 1850
Text GLabel 5200 1200 1    50   Input ~ 0
Btn_1_Max
Wire Wire Line
	5200 1250 5200 1200
Text GLabel 5900 1200 1    50   Input ~ 0
Btn_2_Max
Text GLabel 6550 1200 1    50   Input ~ 0
Btn_3_Max
Text GLabel 6550 2300 3    50   Input ~ 0
Btn_3_Min
Text GLabel 5900 2300 3    50   Input ~ 0
Btn_2_Min
Text GLabel 5200 2300 3    50   Input ~ 0
Btn_1_Min
Wire Wire Line
	6550 2250 6550 2300
Wire Wire Line
	5900 2250 5900 2300
Wire Wire Line
	5200 2250 5200 2300
Text GLabel 4900 4550 0    50   Input ~ 0
Btn_1_Min
Text GLabel 4900 4650 0    50   Input ~ 0
Btn_1_Max
Text GLabel 4900 5950 0    50   Input ~ 0
Btn_2_Min
Text GLabel 4900 6050 0    50   Input ~ 0
Btn_2_Max
Text GLabel 7100 6050 2    50   Input ~ 0
Btn_3_Min
Text GLabel 7100 5950 2    50   Input ~ 0
Btn_3_Max
Wire Wire Line
	7000 5950 7100 5950
Wire Wire Line
	7000 6050 7100 6050
Wire Wire Line
	4900 6050 5000 6050
Wire Wire Line
	4900 5950 5000 5950
Wire Wire Line
	4900 4650 5000 4650
Wire Wire Line
	4900 4550 5000 4550
$Comp
L power:GND #PWR025
U 1 1 60610C7E
P 4750 4950
F 0 "#PWR025" H 4750 4700 50  0001 C CNN
F 1 "GND" V 4755 4822 50  0000 R CNN
F 2 "" H 4750 4950 50  0001 C CNN
F 3 "" H 4750 4950 50  0001 C CNN
	1    4750 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 4950 5000 4950
NoConn ~ 7000 3350
NoConn ~ 7000 3450
NoConn ~ 7000 3550
NoConn ~ 7000 3650
NoConn ~ 7000 3750
NoConn ~ 7000 3850
NoConn ~ 7000 3950
NoConn ~ 7000 4050
NoConn ~ 7000 4150
NoConn ~ 7000 4250
NoConn ~ 7000 4350
NoConn ~ 7000 4450
NoConn ~ 7000 4550
NoConn ~ 7000 4650
NoConn ~ 7000 4750
NoConn ~ 7000 4950
NoConn ~ 7000 5250
NoConn ~ 7000 5350
NoConn ~ 7000 5450
NoConn ~ 7000 5550
NoConn ~ 7000 5750
NoConn ~ 7000 5850
NoConn ~ 5000 5550
NoConn ~ 5000 5450
NoConn ~ 5000 5350
NoConn ~ 5000 5250
NoConn ~ 5000 5150
NoConn ~ 5000 5050
NoConn ~ 5000 4850
NoConn ~ 5000 4750
NoConn ~ 1550 7050
Wire Wire Line
	5900 1200 5900 1250
Wire Wire Line
	6550 1200 6550 1250
Wire Wire Line
	4800 3350 5000 3350
$Comp
L power:GND #PWR0101
U 1 1 606F4861
P 3350 7350
F 0 "#PWR0101" H 3350 7100 50  0001 C CNN
F 1 "GND" H 3355 7177 50  0000 C CNN
F 2 "" H 3350 7350 50  0001 C CNN
F 3 "" H 3350 7350 50  0001 C CNN
	1    3350 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 7350 3350 7250
Connection ~ 3350 7250
$EndSCHEMATC