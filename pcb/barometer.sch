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
Sheet 6 6
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
L MS5611-01BA03 IC703
U 1 1 565CC16E
P 3350 2050
F 0 "IC703" H 3200 2250 60  0000 C CNN
F 1 "MS5611-01BA03" H 3350 1750 60  0000 C CNN
F 2 "Woodchuck:MS5611-01BA" H 3600 2350 60  0000 C CNN
F 3 "" H 3350 2050 60  0000 C CNN
	1    3350 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1950 3850 1950
Wire Wire Line
	3700 2050 3850 2050
Text HLabel 3850 1950 2    60   Input ~ 0
BARO_SCK
Text HLabel 3850 2050 2    60   Input ~ 0
BARO_MOSI
Text HLabel 3850 2150 2    60   Input ~ 0
BARO_MISO
Wire Wire Line
	3700 2150 3850 2150
Text HLabel 3850 2250 2    60   Input ~ 0
BARO_CS
Wire Wire Line
	3700 2250 3850 2250
Wire Wire Line
	3000 2250 2850 2250
Wire Wire Line
	2850 2250 2850 2400
Wire Wire Line
	2850 2400 3900 2400
Wire Wire Line
	3800 2400 3800 2250
Connection ~ 3800 2250
Connection ~ 3800 2400
$Comp
L R R706
U 1 1 565D7136
P 4050 2400
F 0 "R706" V 4130 2400 47  0000 C CNN
F 1 "10k" V 4050 2400 50  0000 C CNN
F 2 "Woodchuck:0603" V 3980 2400 30  0000 C CNN
F 3 "" H 4050 2400 30  0000 C CNN
	1    4050 2400
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR026
U 1 1 565D7402
P 2850 1900
F 0 "#PWR026" H 2850 1750 50  0001 C CNN
F 1 "+3.3V" H 2850 2040 50  0000 C CNN
F 2 "" H 2850 1900 60  0000 C CNN
F 3 "" H 2850 1900 60  0000 C CNN
	1    2850 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 565D746E
P 2750 2150
F 0 "#PWR027" H 2750 1900 50  0001 C CNN
F 1 "GND" H 2750 2000 50  0000 C CNN
F 2 "" H 2750 2150 60  0000 C CNN
F 3 "" H 2750 2150 60  0000 C CNN
	1    2750 2150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR028
U 1 1 565D7486
P 2500 2050
F 0 "#PWR028" H 2500 1800 50  0001 C CNN
F 1 "GND" H 2500 1900 50  0000 C CNN
F 2 "" H 2500 2050 60  0000 C CNN
F 3 "" H 2500 2050 60  0000 C CNN
	1    2500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1950 2850 1950
Wire Wire Line
	2850 1950 2850 1900
Wire Wire Line
	2750 2150 3000 2150
Wire Wire Line
	3000 2050 2900 2050
Wire Wire Line
	2900 2050 2900 2150
Connection ~ 2900 2150
$Comp
L C C708
U 1 1 565D7512
P 2500 1800
F 0 "C708" H 2525 1900 50  0000 L CNN
F 1 "100n" H 2525 1700 50  0000 L CNN
F 2 "Woodchuck:0603" H 2200 1800 30  0000 C CNN
F 3 "" H 2500 1800 60  0000 C CNN
	1    2500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1950 2500 2050
Wire Wire Line
	2500 1550 2500 1650
$Comp
L +3V3 #PWR029
U 1 1 565D777C
P 4300 2400
F 0 "#PWR029" H 4300 2250 50  0001 C CNN
F 1 "+3V3" H 4300 2540 50  0000 C CNN
F 2 "" H 4300 2400 60  0000 C CNN
F 3 "" H 4300 2400 60  0000 C CNN
	1    4300 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 2400 4300 2400
$Comp
L +3V3 #PWR030
U 1 1 565D78F9
P 2500 1550
F 0 "#PWR030" H 2500 1400 50  0001 C CNN
F 1 "+3V3" H 2500 1690 50  0000 C CNN
F 2 "" H 2500 1550 60  0000 C CNN
F 3 "" H 2500 1550 60  0000 C CNN
	1    2500 1550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
