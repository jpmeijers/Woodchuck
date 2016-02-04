EESchema Schematic File Version 2
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
LIBS:a2235-h
LIBS:adp3335
LIBS:adxl345
LIBS:alpha_trx433s
LIBS:buzzer
LIBS:FDN304P
LIBS:FG6943010R
LIBS:hmc5883l
LIBS:irf7910
LIBS:l3g4200d
LIBS:max-7q
LIBS:ms5611-01ba03
LIBS:resistor
LIBS:rfm69w
LIBS:stm32f405vgt
LIBS:swd
LIBS:tvsd
LIBS:u-blox_cam-m8q
LIBS:uSD_holder
LIBS:radiometrix_mtx2
LIBS:stm32f072cbt6
LIBS:jsta
LIBS:sma
LIBS:cga0402mlc-12g
LIBS:woodchuck-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 950  1050 2450 2800
U 56574088
F0 "GPS" 60
F1 "GPS_Ublox.sch" 60
F2 "GPS_FROM_MCU" I R 3400 1500 60 
F3 "GPS_TO_MCU" O R 3400 1600 60 
$EndSheet
$Sheet
S 950  4650 2450 2550
U 5657408B
F0 "Radio" 60
F1 "Radio.sch" 60
F2 "MTX2_P0" I R 3400 5000 60 
F3 "MTX2_P1" I R 3400 5150 60 
F4 "MTX2_TXD" I R 3400 5300 60 
F5 "MTX2_EN/PGM" I R 3400 5450 60 
$EndSheet
$Sheet
S 4200 1150 2100 4050
U 56574098
F0 "microcontroller" 60
F1 "microcontroller.sch" 60
F2 "GPS_FROM_MCU" O R 6300 1300 60 
F3 "GPS_TO_MCU" I R 6300 1400 60 
F4 "BARO_CS_N" O R 6300 1500 60 
F5 "BARO_CLK" O R 6300 1600 60 
F6 "BARO_MISO" I R 6300 1700 60 
F7 "BARO_MOSI" O R 6300 1800 60 
F8 "RADIO_TX" O R 6300 1900 60 
F9 "RADIO_EN" O R 6300 2000 60 
$EndSheet
$Sheet
S 7400 1300 2950 2200
U 5657409B
F0 "connectors" 60
F1 "connectors.sch" 60
$EndSheet
$Sheet
S 7400 4000 3050 1950
U 5657409E
F0 "barometer" 60
F1 "barometer.sch" 60
F2 "BARO_SCK" I L 7400 4300 60 
F3 "BARO_MOSI" I L 7400 4400 60 
F4 "BARO_MISO" O L 7400 4500 60 
F5 "BARO_CS" I L 7400 4600 60 
$EndSheet
$Comp
L ADP3335 IC101
U 1 1 565E3BA6
P 5200 6550
F 0 "IC101" H 5000 6250 60  0000 C CNN
F 1 "ADP3335" H 5150 6750 60  0000 C CNN
F 2 "Woodchuck:MSOP8" H 5200 6850 60  0000 C CNN
F 3 "" H 5600 6150 60  0000 C CNN
	1    5200 6550
	1    0    0    -1  
$EndComp
Text Notes 5450 5850 0    60   ~ 0
Power regulator
$Comp
L C C102
U 1 1 565E4A3A
P 5850 6700
F 0 "C102" H 5875 6800 50  0000 L CNN
F 1 "1n" H 5875 6600 50  0000 L CNN
F 2 "Woodchuck:C0603" H 5888 6550 30  0000 C CNN
F 3 "" H 5850 6700 60  0000 C CNN
F 4 "Value" H 5850 6700 60  0001 C CNN "Digikey"
F 5 "Value" H 5850 6700 60  0001 C CNN "Farnell"
F 6 "Value" H 5850 6700 60  0001 C CNN "Fieldname"
	1    5850 6700
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR01
U 1 1 565E4C8C
P 4200 6900
F 0 "#PWR01" H 4200 6650 50  0001 C CNN
F 1 "Earth" H 4200 6750 50  0001 C CNN
F 2 "" H 4200 6900 60  0000 C CNN
F 3 "" H 4200 6900 60  0000 C CNN
	1    4200 6900
	1    0    0    -1  
$EndComp
$Comp
L C C103
U 1 1 565E50FD
P 6100 6700
F 0 "C103" H 6125 6800 50  0000 L CNN
F 1 "2u2" H 6125 6600 50  0000 L CNN
F 2 "Woodchuck:C0603" H 6138 6550 30  0000 C CNN
F 3 "" H 6100 6700 60  0000 C CNN
F 4 "Value" H 6100 6700 60  0001 C CNN "Digikey"
F 5 "Value" H 6100 6700 60  0001 C CNN "Farnell"
F 6 "Value" H 6100 6700 60  0001 C CNN "Fieldname"
	1    6100 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 565E565A
P 6100 6850
F 0 "#PWR02" H 6100 6600 50  0001 C CNN
F 1 "GND" H 6100 6700 50  0000 C CNN
F 2 "" H 6100 6850 60  0000 C CNN
F 3 "" H 6100 6850 60  0000 C CNN
	1    6100 6850
	1    0    0    -1  
$EndComp
$Comp
L C C101
U 1 1 565E43E2
P 4400 6700
F 0 "C101" H 4425 6800 50  0000 L CNN
F 1 "2u2" H 4425 6600 50  0000 L CNN
F 2 "Woodchuck:C0603" H 4438 6550 30  0000 C CNN
F 3 "" H 4400 6700 60  0000 C CNN
F 4 "Value" H 4400 6700 60  0001 C CNN "Digikey"
F 5 "Value" H 4400 6700 60  0001 C CNN "Farnell"
F 6 "Value" H 4400 6700 60  0001 C CNN "Fieldname"
	1    4400 6700
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P101
U 1 1 565EBDD9
P 4000 6700
F 0 "P101" H 4000 6850 50  0000 C CNN
F 1 "CONN_01X02" V 4100 6700 50  0000 C CNN
F 2 "Woodchuck:S02B-PASK-2" V 4250 6650 60  0000 C CNN
F 3 "" H 4000 6700 60  0000 C CNN
	1    4000 6700
	-1   0    0    1   
$EndComp
$Comp
L +BATT #PWR03
U 1 1 565EBEEE
P 4200 6550
F 0 "#PWR03" H 4200 6400 50  0001 C CNN
F 1 "+BATT" H 4200 6690 50  0000 C CNN
F 2 "" H 4200 6550 60  0000 C CNN
F 3 "" H 4200 6550 60  0000 C CNN
	1    4200 6550
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR04
U 1 1 565EC163
P 5850 6450
F 0 "#PWR04" H 5850 6300 50  0001 C CNN
F 1 "+3V3" H 5850 6590 50  0000 C CNN
F 2 "" H 5850 6450 60  0000 C CNN
F 3 "" H 5850 6450 60  0000 C CNN
	1    5850 6450
	1    0    0    -1  
$EndComp
Wire Notes Line
	3850 7250 6450 7250
Wire Notes Line
	6450 7250 6450 5900
Wire Notes Line
	6450 5900 3850 5900
Wire Wire Line
	4200 6550 4850 6550
Wire Notes Line
	3850 5900 3850 7250
Wire Wire Line
	5550 6450 5700 6450
Wire Wire Line
	5700 6450 5700 6650
Wire Wire Line
	5700 6650 5550 6650
Connection ~ 5700 6550
Wire Wire Line
	5550 6750 5650 6750
Wire Wire Line
	5650 6750 5650 6850
Wire Wire Line
	5650 6850 5850 6850
Connection ~ 5850 6550
Wire Wire Line
	4850 6750 4750 6750
Wire Wire Line
	4750 6750 4750 6850
Wire Wire Line
	4750 6850 4200 6850
Wire Wire Line
	5850 6550 5850 6450
Wire Wire Line
	5550 6550 6100 6550
Wire Wire Line
	4750 6650 4850 6650
Wire Wire Line
	4750 6450 4750 6650
Connection ~ 4750 6550
Wire Wire Line
	4200 6750 4200 6900
Wire Wire Line
	4200 6650 4200 6550
Wire Wire Line
	4750 6450 4850 6450
Connection ~ 4200 6850
Connection ~ 4400 6850
Connection ~ 4400 6550
Connection ~ 4200 6550
Wire Wire Line
	3400 1500 3550 1500
Wire Wire Line
	3400 1600 3550 1600
Text Label 3550 1500 0    60   ~ 0
GPS_FROM_MCU
Text Label 3550 1600 0    60   ~ 0
GPS_TO_MCU
Wire Wire Line
	6300 1300 6450 1300
Wire Wire Line
	6300 1400 6450 1400
Wire Wire Line
	6300 1500 6450 1500
Wire Wire Line
	6300 1600 6450 1600
Wire Wire Line
	6300 1700 6450 1700
Wire Wire Line
	6300 1800 6450 1800
Wire Wire Line
	6300 1900 6450 1900
Wire Wire Line
	6300 2000 6450 2000
Text Label 6450 1300 0    60   ~ 0
GPS_FROM_MCU
Text Label 6450 1400 0    60   ~ 0
GPS_TO_MCU
Text Label 6450 1500 0    60   ~ 0
BARO_CS_N
Text Label 6450 1600 0    60   ~ 0
BARO_CLK
Text Label 6450 1700 0    60   ~ 0
BARO_MISO
Text Label 6450 1800 0    60   ~ 0
BARO_MOSI
Text Label 6450 1900 0    60   ~ 0
RADIO_TX
Text Label 6450 2000 0    60   ~ 0
RADIO_EN
Wire Wire Line
	3400 5000 3550 5000
Wire Wire Line
	3400 5150 3550 5150
Wire Wire Line
	3400 5300 3550 5300
Wire Wire Line
	3400 5450 3550 5450
Text Label 3550 5000 0    60   ~ 0
MTX2_P0
Text Label 3550 5150 0    60   ~ 0
MTX2_P1
Text Label 3550 5300 0    60   ~ 0
RADIO_TX
Text Label 3550 5450 0    60   ~ 0
RADIO_EN
Wire Wire Line
	7400 4300 7250 4300
Wire Wire Line
	7400 4400 7250 4400
Wire Wire Line
	7400 4500 7250 4500
Wire Wire Line
	7400 4600 7250 4600
Text Label 7250 4300 2    60   ~ 0
BARO_SCK
Text Label 7250 4400 2    60   ~ 0
BARO_MOSI
Text Label 7250 4500 2    60   ~ 0
BARO_MISO
Text Label 7250 4600 2    60   ~ 0
BARO_CS
$EndSCHEMATC
