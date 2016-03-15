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
LIBS:cga0402mlc-12g
LIBS:FDN304P
LIBS:FG6943010R
LIBS:hmc5883l
LIBS:irf7910
LIBS:jsta
LIBS:l3g4200d
LIBS:ms5611-01ba03
LIBS:quarter_wave_ant
LIBS:radiometrix_mtx2
LIBS:resistor
LIBS:rfm69w
LIBS:sma
LIBS:stm32f072cbt6
LIBS:stm32f405vgt
LIBS:swd
LIBS:tvsd
LIBS:u-blox_cam-m8q
LIBS:uSD_holder
LIBS:agg-kicad
LIBS:woodchuck_2-cache
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
L ADP3335 IC3
U 1 1 56D6307F
P 9750 1450
F 0 "IC3" H 9550 1150 60  0000 C CNN
F 1 "ADP3335" H 9700 1650 60  0000 C CNN
F 2 "Woodchuck:MSOP8" H 9750 1750 60  0000 C CNN
F 3 "" H 10150 1050 60  0000 C CNN
F 4 "Value" H 9750 1450 60  0001 C CNN "Digikey"
F 5 "2067775" H 9750 1450 60  0001 C CNN "Farnell"
F 6 "Value" H 9750 1450 60  0001 C CNN "Fieldname"
	1    9750 1450
	1    0    0    -1  
$EndComp
Text Notes 10000 750  0    60   ~ 0
Power regulator
$Comp
L C C19
U 1 1 56D6308A
P 10400 1600
F 0 "C19" H 10425 1700 50  0000 L CNN
F 1 "1n" H 10425 1500 50  0000 L CNN
F 2 "agg:0402" H 10400 1400 30  0001 C CNN
F 3 "" H 10400 1600 60  0000 C CNN
F 4 "Value" H 10400 1600 60  0001 C CNN "Digikey"
F 5 "2280640" H 10400 1600 60  0001 C CNN "Farnell"
F 6 "Value" H 10400 1600 60  0001 C CNN "Fieldname"
	1    10400 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 56D6309B
P 10650 1900
F 0 "#PWR01" H 10650 1650 50  0001 C CNN
F 1 "GND" H 10650 1750 50  0000 C CNN
F 2 "" H 10650 1900 60  0000 C CNN
F 3 "" H 10650 1900 60  0000 C CNN
	1    10650 1900
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 56D630A4
P 8950 1600
F 0 "C17" H 8975 1700 50  0000 L CNN
F 1 "2u2" H 8975 1500 50  0000 L CNN
F 2 "agg:0603" H 8950 1400 30  0001 C CNN
F 3 "" H 8950 1600 60  0000 C CNN
F 4 "Value" H 8950 1600 60  0001 C CNN "Digikey"
F 5 "2332678" H 8950 1600 60  0001 C CNN "Farnell"
F 6 "Value" H 8950 1600 60  0001 C CNN "Fieldname"
	1    8950 1600
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 56D630AE
P 8550 1600
F 0 "P3" H 8550 1750 50  0000 C CNN
F 1 "CONN_01X02" V 8650 1600 50  0000 C CNN
F 2 "Woodchuck:S02B-PASK-2" V 8800 1550 60  0000 C CNN
F 3 "" H 8550 1600 60  0000 C CNN
F 4 "Value" H 8550 1600 60  0001 C CNN "Digikey"
F 5 "1830747" H 8550 1600 60  0001 C CNN "Farnell"
F 6 "Value" H 8550 1600 60  0001 C CNN "Fieldname"
	1    8550 1600
	-1   0    0    1   
$EndComp
$Comp
L +BATT #PWR02
U 1 1 56D630B5
P 8750 1350
F 0 "#PWR02" H 8750 1200 50  0001 C CNN
F 1 "+BATT" H 8750 1490 50  0000 C CNN
F 2 "" H 8750 1350 60  0000 C CNN
F 3 "" H 8750 1350 60  0000 C CNN
	1    8750 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 56D63104
P 8750 1800
F 0 "#PWR03" H 8750 1550 50  0001 C CNN
F 1 "GND" H 8750 1650 50  0000 C CNN
F 2 "" H 8750 1800 50  0000 C CNN
F 3 "" H 8750 1800 50  0000 C CNN
	1    8750 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 56D64902
P 5200 5000
F 0 "#PWR04" H 5200 4750 50  0001 C CNN
F 1 "GND" H 5200 4850 50  0000 C CNN
F 2 "" H 5200 5000 60  0000 C CNN
F 3 "" H 5200 5000 60  0000 C CNN
	1    5200 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 56D64912
P 2300 1750
F 0 "#PWR05" H 2300 1500 50  0001 C CNN
F 1 "GND" H 2300 1600 50  0000 C CNN
F 2 "" H 2300 1750 60  0000 C CNN
F 3 "" H 2300 1750 60  0000 C CNN
	1    2300 1750
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 56D6491B
P 2050 1400
F 0 "C6" H 2075 1500 50  0000 L CNN
F 1 "0.1uF" H 2075 1300 50  0000 L CNN
F 2 "agg:0402" H 2088 1250 30  0001 C CNN
F 3 "" H 2050 1400 60  0000 C CNN
F 4 "Value" H 2050 1400 60  0001 C CNN "Digikey"
F 5 "2496771" H 2050 1400 60  0001 C CNN "Farnell"
F 6 "Value" H 2050 1400 60  0001 C CNN "Fieldname"
	1    2050 1400
	1    0    0    -1  
$EndComp
Text Notes 2800 850  2    60   ~ 0
NOTE: Place one near each\nVDD pin (24, 48) and one\nnear VDDIO2 (36)
$Comp
L C C2
U 1 1 56D64926
P 950 1400
F 0 "C2" H 975 1500 50  0000 L CNN
F 1 "10nF" H 975 1300 50  0000 L CNN
F 2 "agg:0402" H 988 1250 30  0001 C CNN
F 3 "" H 950 1400 60  0000 C CNN
F 4 "Value" H 950 1400 60  0001 C CNN "Digikey"
F 5 "1414575" H 950 1400 60  0001 C CNN "Farnell"
F 6 "Value" H 950 1400 60  0001 C CNN "Fieldname"
	1    950  1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56D6492D
P 950 1650
F 0 "#PWR06" H 950 1400 50  0001 C CNN
F 1 "GND" H 950 1500 50  0000 C CNN
F 2 "" H 950 1650 60  0000 C CNN
F 3 "" H 950 1650 60  0000 C CNN
	1    950  1650
	1    0    0    -1  
$EndComp
Text Notes 750  1900 1    60   ~ 0
NOTE: Place near VDDA (9)
Text Notes 5550 1900 0    60   ~ 0
NOTE: VDD supply needs 4.7uF across it
$Comp
L SWD P1
U 1 1 56D64942
P 1350 2800
F 0 "P1" H 1600 3100 60  0000 C CNN
F 1 "SWD" H 1050 3100 60  0000 C CNN
F 2 "Woodchuck:FTSH-105-01-F-D-K" H 1700 2600 60  0001 C CNN
F 3 "" H 1700 2600 60  0000 C CNN
F 4 "Value" H 1350 2800 60  0001 C CNN "Digikey"
F 5 "1865285" H 1350 2800 60  0001 C CNN "Farnell"
F 6 "Value" H 1350 2800 60  0001 C CNN "Fieldname"
	1    1350 2800
	1    0    0    -1  
$EndComp
Text Label 6200 2750 0    60   ~ 0
nRST
Text Label 1950 3000 0    60   ~ 0
nRST
NoConn ~ 1800 2800
NoConn ~ 1800 2900
Text Label 1950 2700 0    60   ~ 0
SWCLK
Text Label 1950 2600 0    60   ~ 0
SWDIO
Text Label 3950 4300 2    60   ~ 0
SWDIO
Text Label 3950 4400 2    60   ~ 0
SWCLK
$Comp
L GND #PWR07
U 1 1 56D64951
P 750 3100
F 0 "#PWR07" H 750 2850 50  0001 C CNN
F 1 "GND" H 750 2950 50  0000 C CNN
F 2 "" H 750 3100 60  0000 C CNN
F 3 "" H 750 3100 60  0000 C CNN
	1    750  3100
	1    0    0    -1  
$EndComp
Text Notes 2300 3350 2    60   ~ 0
SWD PORT
Text Notes 2900 2100 2    60   ~ 0
SUPPLY CAPS
$Comp
L +3.3V #PWR08
U 1 1 56D649AA
P 2300 1050
F 0 "#PWR08" H 2300 900 50  0001 C CNN
F 1 "+3.3V" H 2300 1190 50  0000 C CNN
F 2 "" H 2300 1050 50  0000 C CNN
F 3 "" H 2300 1050 50  0000 C CNN
	1    2300 1050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 56D649B0
P 950 1150
F 0 "#PWR09" H 950 1000 50  0001 C CNN
F 1 "+3.3V" H 950 1290 50  0000 C CNN
F 2 "" H 950 1150 50  0000 C CNN
F 3 "" H 950 1150 50  0000 C CNN
	1    950  1150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 56D649B6
P 5100 1800
F 0 "#PWR010" H 5100 1650 50  0001 C CNN
F 1 "+3.3V" H 5100 1940 50  0000 C CNN
F 2 "" H 5100 1800 50  0000 C CNN
F 3 "" H 5100 1800 50  0000 C CNN
	1    5100 1800
	1    0    0    -1  
$EndComp
NoConn ~ 6000 3000
NoConn ~ 6000 3100
NoConn ~ 6000 3200
NoConn ~ 6000 3800
NoConn ~ 6000 3900
NoConn ~ 6000 4200
NoConn ~ 4150 4000
NoConn ~ 4150 3800
NoConn ~ 4150 3700
NoConn ~ 4150 3000
NoConn ~ 4150 2800
NoConn ~ 4150 2700
NoConn ~ 4150 2600
NoConn ~ 4150 2500
NoConn ~ 4150 2350
NoConn ~ 4800 2000
$Comp
L RESISTOR R1
U 1 1 56D649F7
P 3300 3650
F 0 "R1" H 3150 3700 60  0000 C CNN
F 1 "510" H 3300 3500 60  0001 C CNN
F 2 "agg:0402" H 3300 3650 60  0001 C CNN
F 3 "" H 3300 3650 60  0000 C CNN
F 4 "Value" H 3300 3650 60  0001 C CNN "Digikey"
F 5 "2073095" H 3300 3650 60  0001 C CNN "Farnell"
F 6 "Value" H 3300 3650 60  0001 C CNN "Fieldname"
	1    3300 3650
	1    0    0    -1  
$EndComp
$Comp
L STM32F072CBT6 U1
U 1 1 56D64A01
P 4350 2200
F 0 "U1" H 4400 2250 60  0000 C CNN
F 1 "STM32F072CBT6" H 5600 2250 60  0000 C CNN
F 2 "Woodchuck:LQFP48" H 4700 2300 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2006534.pdf" H 4700 2300 60  0001 C CNN
F 4 "Value" H 4350 2200 60  0001 C CNN "Digikey"
F 5 "2432094" H 4350 2200 60  0001 C CNN "Farnell"
F 6 "Value" H 4350 2200 60  0001 C CNN "Fieldname"
	1    4350 2200
	1    0    0    -1  
$EndComp
$Comp
L 24AA01 IC2
U 1 1 56D64A1D
P 7500 2900
F 0 "IC2" H 7300 3100 50  0000 L CNN
F 1 "24AA01" H 7300 2700 50  0000 L CNN
F 2 "agg:SOT-23-5" H 7300 2600 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21711c.pdf" H 7300 2500 50  0001 L CNN
F 4 "1331269" H 7300 2400 50  0001 L CNN "Farnell"
	1    7500 2900
	-1   0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 56D64A27
P 8150 2900
F 0 "C16" H 8175 3000 50  0000 L CNN
F 1 "0.1uF" H 8175 2800 50  0000 L CNN
F 2 "agg:0402" H 8188 2750 30  0001 C CNN
F 3 "" H 8150 2900 60  0000 C CNN
F 4 "Value" H 8150 2900 60  0001 C CNN "Digikey"
F 5 "2496771" H 8150 2900 60  0001 C CNN "Farnell"
F 6 "Value" H 8150 2900 60  0001 C CNN "Fieldname"
	1    8150 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 56D64A2E
P 8150 3200
F 0 "#PWR011" H 8150 2950 50  0001 C CNN
F 1 "GND" H 8150 3050 50  0000 C CNN
F 2 "" H 8150 3200 60  0000 C CNN
F 3 "" H 8150 3200 60  0000 C CNN
	1    8150 3200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 56D64A34
P 8150 2650
F 0 "#PWR012" H 8150 2500 50  0001 C CNN
F 1 "+3.3V" H 8150 2790 50  0000 C CNN
F 2 "" H 8150 2650 50  0000 C CNN
F 3 "" H 8150 2650 50  0000 C CNN
	1    8150 2650
	1    0    0    -1  
$EndComp
Text Notes 8500 3500 2    60   ~ 0
EEPROM
$Comp
L RESISTOR R3
U 1 1 56D64A3E
P 7000 2500
F 0 "R3" H 7120 2590 60  0000 C CNN
F 1 "10K" H 7000 2350 60  0001 C CNN
F 2 "agg:0402" H 7000 2500 60  0001 C CNN
F 3 "" H 7000 2500 60  0000 C CNN
F 4 "Value" H 7000 2500 60  0001 C CNN "Digikey"
F 5 "2072517" H 7000 2500 60  0001 C CNN "Farnell"
F 6 "Value" H 7000 2500 60  0001 C CNN "Fieldname"
	1    7000 2500
	0    1    1    0   
$EndComp
$Comp
L RESISTOR R2
U 1 1 56D64A48
P 6900 2500
F 0 "R2" H 7020 2590 60  0000 C CNN
F 1 "10K" H 6900 2350 60  0001 C CNN
F 2 "agg:0402" H 6900 2500 60  0001 C CNN
F 3 "" H 6900 2500 60  0000 C CNN
F 4 "Value" H 6900 2500 60  0001 C CNN "Digikey"
F 5 "2072517" H 6900 2500 60  0001 C CNN "Farnell"
F 6 "Value" H 6900 2500 60  0001 C CNN "Fieldname"
	1    6900 2500
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR013
U 1 1 56D64A4F
P 6950 2150
F 0 "#PWR013" H 6950 2000 50  0001 C CNN
F 1 "+3.3V" H 6950 2290 50  0000 C CNN
F 2 "" H 6950 2150 50  0000 C CNN
F 3 "" H 6950 2150 50  0000 C CNN
	1    6950 2150
	1    0    0    -1  
$EndComp
NoConn ~ 6000 4500
$Comp
L C C9
U 1 1 56D64A56
P 2800 1400
F 0 "C9" H 2825 1500 50  0000 L CNN
F 1 "4u7" H 2825 1300 50  0000 L CNN
F 2 "agg:0402" H 2800 1100 50  0001 C CNN
F 3 "" H 2800 1400 50  0000 C CNN
F 4 "Value" H 2800 1400 60  0001 C CNN "Digikey"
F 5 "2426952" H 2800 1400 60  0001 C CNN "Farnell"
F 6 "Value" H 2800 1400 60  0001 C CNN "Fieldname"
	1    2800 1400
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 56D64A5D
P 1350 1400
F 0 "C4" H 1375 1500 50  0000 L CNN
F 1 "1u" H 1375 1300 50  0000 L CNN
F 2 "agg:0402" H 1350 1150 50  0001 C CNN
F 3 "" H 1350 1400 50  0000 C CNN
F 4 "Value" H 1350 1400 60  0001 C CNN "Digikey"
F 5 "2496814" H 1350 1400 60  0001 C CNN "Farnell"
F 6 "Value" H 1350 1400 60  0001 C CNN "Fieldname"
	1    1350 1400
	1    0    0    -1  
$EndComp
$Comp
L PART X2
U 1 1 56D64AF2
P 5050 1250
F 0 "X2" H 5100 1350 50  0000 L CNN
F 1 "Mounting hole" H 5100 1250 50  0000 L CNN
F 2 "Woodchuck:M3_MOUNT" H 5050 1250 50  0001 C CNN
F 3 "" H 5050 1250 50  0001 C CNN
	1    5050 1250
	1    0    0    -1  
$EndComp
$Comp
L PART X1
U 1 1 56D64AF9
P 5050 900
F 0 "X1" H 5100 1000 50  0000 L CNN
F 1 "Mounting hole" H 5100 900 50  0000 L CNN
F 2 "Woodchuck:M3_MOUNT" H 5050 900 50  0001 C CNN
F 3 "" H 5050 900 50  0001 C CNN
	1    5050 900 
	1    0    0    -1  
$EndComp
$Comp
L PART X3
U 1 1 56D64B00
P 5800 900
F 0 "X3" H 5850 1000 50  0000 L CNN
F 1 "CUSF LOGO" H 5850 900 50  0000 L CNN
F 2 "Woodchuck:cusf_logo" H 5800 900 50  0001 C CNN
F 3 "" H 5800 900 50  0001 C CNN
	1    5800 900 
	1    0    0    -1  
$EndComp
$Comp
L PART X4
U 1 1 56D64B07
P 5800 1250
F 0 "X4" H 5850 1350 50  0000 L CNN
F 1 "CUSF LOGO BACK" H 5850 1250 50  0000 L CNN
F 2 "Woodchuck:cusf_logo_full" H 5800 1250 50  0001 C CNN
F 3 "" H 5800 1250 50  0001 C CNN
	1    5800 1250
	1    0    0    -1  
$EndComp
$Comp
L MAX-7Q IC4
U 1 1 56D62FFF
P 10100 5450
F 0 "IC4" H 9700 5950 50  0000 L CNN
F 1 "MAX-7Q" H 9700 4750 50  0000 L CNN
F 2 "unchecked:MAX-7Q" H 9700 4650 50  0001 L CNN
F 3 "" H 10050 5450 50  0001 C CNN
F 4 "Value" H 10100 5450 60  0001 C CNN "Digikey"
F 5 "Value" H 10100 5450 60  0001 C CNN "Farnell"
F 6 "Value" H 10100 5450 60  0001 C CNN "Fieldname"
F 7 "MAX-7Q" H 9700 4550 50  0001 L CNN "HabSupplies"
	1    10100 5450
	1    0    0    -1  
$EndComp
$Comp
L Si4460 IC1
U 1 1 56D6309C
P 2250 6850
F 0 "IC1" H 1950 7550 50  0000 L CNN
F 1 "Si4460" H 1950 6150 50  0000 L CNN
F 2 "agg:QFN-20-EP-SI" H 1950 6050 50  0001 L CNN
F 3 "" H 1850 7450 50  0001 C CNN
F 4 "2462635" H 1950 5950 50  0001 L CNN "Farnell"
	1    2250 6850
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 56D682B2
P 9350 5200
F 0 "C18" H 9375 5300 50  0000 L CNN
F 1 "100n" H 9375 5100 50  0000 L CNN
F 2 "agg:0402" H 9388 5050 30  0001 C CNN
F 3 "" H 9350 5200 60  0000 C CNN
F 4 "Value" H 9350 5200 60  0001 C CNN "Digikey"
F 5 "2496771" H 9350 5200 60  0001 C CNN "Farnell"
F 6 "Value" H 9350 5200 60  0001 C CNN "Fieldname"
	1    9350 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 56D6869F
P 9350 5400
F 0 "#PWR014" H 9350 5150 50  0001 C CNN
F 1 "GND" H 9350 5250 50  0000 C CNN
F 2 "" H 9350 5400 60  0000 C CNN
F 3 "" H 9350 5400 60  0000 C CNN
	1    9350 5400
	1    0    0    -1  
$EndComp
Text Label 9500 5650 2    60   ~ 0
RX_GPS_from_MCU
Text Label 9500 5750 2    60   ~ 0
TX_GPS_from_MCU
NoConn ~ 9600 5950
NoConn ~ 9600 6050
NoConn ~ 10500 6050
NoConn ~ 10500 5950
NoConn ~ 10500 5850
NoConn ~ 10500 5750
$Comp
L GND #PWR015
U 1 1 56D694AF
P 10550 5000
F 0 "#PWR015" H 10550 4750 50  0001 C CNN
F 1 "GND" H 10550 4850 50  0000 C CNN
F 2 "" H 10550 5000 60  0000 C CNN
F 3 "" H 10550 5000 60  0000 C CNN
	1    10550 5000
	-1   0    0    1   
$EndComp
$Comp
L COAX P4
U 1 1 56D695D7
P 10750 5050
F 0 "P4" H 10750 5150 50  0000 C CNN
F 1 "COAX" H 10750 4900 50  0000 C CNN
F 2 "unchecked:SMA-142-0701-801" H 10750 4840 50  0001 C CNN
F 3 "" H 10850 4950 50  0001 C CNN
F 4 "Value" H 10750 5050 60  0001 C CNN "Digikey"
F 5 "1608592" H 10750 4770 50  0001 C CNN "Farnell"
F 6 "Value" H 10750 5050 60  0001 C CNN "Fieldname"
	1    10750 5050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR016
U 1 1 56D69F3B
P 10850 5250
F 0 "#PWR016" H 10850 5000 50  0001 C CNN
F 1 "GND" H 10850 5100 50  0000 C CNN
F 2 "" H 10850 5250 60  0000 C CNN
F 3 "" H 10850 5250 60  0000 C CNN
	1    10850 5250
	1    0    0    -1  
$EndComp
NoConn ~ 10500 5350
Text Notes 11000 6300 2    60   ~ 0
UBLOX MAX-7Q GPS
Text Label 3950 3200 2    60   ~ 0
TX_GPS_from_MCU
Text Label 3950 3300 2    60   ~ 0
RX_GPS_from_MCU
$Comp
L C C3
U 1 1 56D736FB
P 1100 6400
F 0 "C3" H 1125 6500 50  0000 L CNN
F 1 "100n" H 1125 6300 50  0000 L CNN
F 2 "agg:0402" H 1138 6250 30  0001 C CNN
F 3 "" H 1100 6400 60  0000 C CNN
F 4 "Value" H 1100 6400 60  0001 C CNN "Digikey"
F 5 "2496771" H 1100 6400 60  0001 C CNN "Farnell"
F 6 "Value" H 1100 6400 60  0001 C CNN "Fieldname"
	1    1100 6400
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 56D73780
P 850 6400
F 0 "C1" H 875 6500 50  0000 L CNN
F 1 "100p" H 875 6300 50  0000 L CNN
F 2 "agg:0402" H 888 6250 30  0001 C CNN
F 3 "" H 850 6400 60  0000 C CNN
F 4 "Value" H 850 6400 60  0001 C CNN "Digikey"
F 5 "2496792" H 850 6400 60  0001 C CNN "Farnell"
F 6 "Value" H 850 6400 60  0001 C CNN "Fieldname"
	1    850  6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 56D74D6B
P 1550 6650
F 0 "#PWR017" H 1550 6400 50  0001 C CNN
F 1 "GND" H 1550 6500 50  0000 C CNN
F 2 "" H 1550 6650 60  0000 C CNN
F 3 "" H 1550 6650 60  0000 C CNN
	1    1550 6650
	1    0    0    -1  
$EndComp
Text Label 2750 7300 0    60   ~ 0
Radio_nIRQ
NoConn ~ 2650 6750
NoConn ~ 2650 6850
NoConn ~ 2650 6950
NoConn ~ 2650 7050
NoConn ~ 2650 6550
Text Label 1750 7450 2    60   ~ 0
Radio_nSEL
Text Label 1750 7350 2    60   ~ 0
Radio_SDI
Text Label 1750 7250 2    60   ~ 0
Radio_SDO
Text Label 1750 7150 2    60   ~ 0
Radio_SCLK
NoConn ~ 1850 7050
NoConn ~ 1850 6750
$Comp
L TCXO Y1
U 1 1 56D778F7
P 1150 6850
F 0 "Y1" H 950 6950 50  0000 L CNN
F 1 "TCXO" H 950 6650 50  0000 L CNN
F 2 "Woodchuck:TG-5006CJ" H 950 6850 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1804154.pdf" H 950 6850 50  0001 C CNN
F 4 "Value" H 1150 6850 60  0001 C CNN "Digikey"
F 5 "2428493" H 950 6550 50  0001 L CNN "Farnell"
F 6 "Value" H 1150 6850 60  0001 C CNN "Fieldname"
	1    1150 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 56D781CE
P 650 7150
F 0 "#PWR018" H 650 6900 50  0001 C CNN
F 1 "GND" H 650 7000 50  0000 C CNN
F 2 "" H 650 7150 60  0000 C CNN
F 3 "" H 650 7150 60  0000 C CNN
	1    650  7150
	1    0    0    -1  
$EndComp
Text Notes 4600 7750 2    60   ~ 0
Si4460 radio
Text Label 3950 4500 2    60   ~ 0
Radio_nSEL
Text Label 6150 3500 0    60   ~ 0
Radio_SDI
Text Label 6150 3400 0    60   ~ 0
Radio_SDO
Text Label 6150 3300 0    60   ~ 0
Radio_SCLK
NoConn ~ 4150 4100
NoConn ~ 6000 4300
NoConn ~ 6000 4400
NoConn ~ 6000 4000
NoConn ~ 6000 4100
Text Label 3950 4200 2    60   ~ 0
Radio_nIRQ
$Comp
L C C10
U 1 1 56D85768
P 3050 6050
F 0 "C10" V 3100 6200 50  0000 L CNN
F 1 "3pF" V 3100 5850 50  0000 L CNN
F 2 "agg:0402" H 3088 5900 30  0001 C CNN
F 3 "" H 3050 6050 60  0000 C CNN
F 4 "Value" H 3050 6050 60  0001 C CNN "Digikey"
F 5 "2210752" H 3050 6050 60  0001 C CNN "Farnell"
F 6 "Value" H 3050 6050 60  0001 C CNN "Fieldname"
	1    3050 6050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR019
U 1 1 56D85DF9
P 3550 6050
F 0 "#PWR019" H 3550 5800 50  0001 C CNN
F 1 "GND" H 3550 5900 50  0000 C CNN
F 2 "" H 3550 6050 60  0000 C CNN
F 3 "" H 3550 6050 60  0000 C CNN
	1    3550 6050
	1    0    0    -1  
$EndComp
$Comp
L L L2
U 1 1 56D876D8
P 3050 6350
F 0 "L2" H 3100 6400 50  0000 C CNN
F 1 "18nH" H 3100 6300 50  0000 C CNN
F 2 "agg:0603-L" H 3050 6350 50  0001 C CNN
F 3 "" H 3050 6350 50  0001 C CNN
F 4 "Value" H 3050 6350 60  0001 C CNN "Digikey"
F 5 "2424720" H 3050 6350 60  0001 C CNN "Farnell"
F 6 "Value" H 3050 6350 60  0001 C CNN "Fieldname"
	1    3050 6350
	0    1    1    0   
$EndComp
$Comp
L C C12
U 1 1 56D88057
P 3250 6550
F 0 "C12" H 3275 6650 50  0000 L CNN
F 1 "1.2pF" H 3275 6450 50  0000 L CNN
F 2 "agg:0402" H 3288 6400 30  0001 C CNN
F 3 "" H 3250 6550 60  0000 C CNN
F 4 "Value" H 3250 6550 60  0001 C CNN "Digikey"
F 5 "2218843" H 3250 6550 60  0001 C CNN "Farnell"
F 6 "Value" H 3250 6550 60  0001 C CNN "Fieldname"
	1    3250 6550
	0    1    1    0   
$EndComp
$Comp
L L L3
U 1 1 56D883DC
P 3300 6250
F 0 "L3" H 3350 6300 50  0000 C CNN
F 1 "22nH" H 3350 6200 50  0000 C CNN
F 2 "agg:0603-L" H 3300 6250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/360119.pdf" H 3300 6250 50  0001 C CNN
F 4 "Value" H 3300 6250 60  0001 C CNN "Digikey"
F 5 "1711755" H 3300 6250 60  0001 C CNN "Farnell"
F 6 "1711755" H 3300 6250 60  0001 C CNN "Fieldname"
	1    3300 6250
	-1   0    0    1   
$EndComp
$Comp
L L L1
U 1 1 56D887F3
P 2900 6800
F 0 "L1" H 2950 6850 50  0000 C CNN
F 1 "120nH" H 2950 6750 50  0000 C CNN
F 2 "agg:0603-L" H 2900 6800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1327494.pdf" H 2900 6800 50  0001 C CNN
F 4 "Value" H 2900 6800 60  0001 C CNN "Digikey"
F 5 "1865812" H 2900 6800 60  0001 C CNN "Farnell"
F 6 "1865812" H 2900 6800 60  0001 C CNN "Fieldname"
	1    2900 6800
	0    1    1    0   
$EndComp
$Comp
L C C11
U 1 1 56D88F67
P 3100 6950
F 0 "C11" H 3125 7050 50  0000 L CNN
F 1 "36pF" H 3125 6850 50  0000 L CNN
F 2 "agg:0402" H 3138 6800 30  0001 C CNN
F 3 "" H 3100 6950 60  0000 C CNN
F 4 "Value" H 3100 6950 60  0001 C CNN "Digikey"
F 5 "1865427" H 3100 6950 60  0001 C CNN "Farnell"
F 6 "Value" H 3100 6950 60  0001 C CNN "Fieldname"
	1    3100 6950
	0    1    1    0   
$EndComp
$Comp
L L L4
U 1 1 56D89011
P 3300 6950
F 0 "L4" H 3350 7000 50  0000 C CNN
F 1 "6.8nH" H 3350 6900 50  0000 C CNN
F 2 "agg:0603-L" H 3300 6950 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/321058.pdf" H 3300 6950 50  0001 C CNN
F 4 "Value" H 3300 6950 60  0001 C CNN "Digikey"
F 5 "1515395" H 3300 6950 60  0001 C CNN "Farnell"
F 6 "1515395" H 3300 6950 60  0001 C CNN "Fieldname"
	1    3300 6950
	1    0    0    -1  
$EndComp
$Comp
L L L5
U 1 1 56D89A38
P 3600 6950
F 0 "L5" H 3650 7000 50  0000 C CNN
F 1 "6.8nH" H 3650 6900 50  0000 C CNN
F 2 "agg:0603-L" H 3600 6950 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/321058.pdf" H 3600 6950 50  0001 C CNN
F 4 "Value" H 3600 6950 60  0001 C CNN "Digikey"
F 5 "1515395" H 3600 6950 60  0001 C CNN "Farnell"
F 6 "1515395" H 3600 6950 60  0001 C CNN "Fieldname"
	1    3600 6950
	1    0    0    -1  
$EndComp
$Comp
L L L6
U 1 1 56D89B45
P 3900 6950
F 0 "L6" H 3950 7000 50  0000 C CNN
F 1 "6.8nH" H 3950 6900 50  0000 C CNN
F 2 "agg:0603-L" H 3900 6950 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/321058.pdf" H 3900 6950 50  0001 C CNN
F 4 "Value" H 3900 6950 60  0001 C CNN "Digikey"
F 5 "1515395" H 3900 6950 60  0001 C CNN "Farnell"
F 6 "1515395" H 3900 6950 60  0001 C CNN "Fieldname"
	1    3900 6950
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 56D89BE4
P 3500 7200
F 0 "C13" H 3525 7300 50  0000 L CNN
F 1 "3.3pF" V 3450 6950 50  0000 L CNN
F 2 "agg:0402" H 3538 7050 30  0001 C CNN
F 3 "" H 3500 7200 60  0000 C CNN
F 4 "Value" H 3500 7200 60  0001 C CNN "Digikey"
F 5 "2434610" H 3500 7200 60  0001 C CNN "Farnell"
F 6 "Value" H 3500 7200 60  0001 C CNN "Fieldname"
	1    3500 7200
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 56D89CB4
P 3800 7200
F 0 "C14" H 3825 7300 50  0000 L CNN
F 1 "10pF" V 3750 6950 50  0000 L CNN
F 2 "agg:0402" H 3838 7050 30  0001 C CNN
F 3 "" H 3800 7200 60  0000 C CNN
F 4 "Value" H 3800 7200 60  0001 C CNN "Digikey"
F 5 "2496790" H 3800 7200 60  0001 C CNN "Farnell"
F 6 "Value" H 3800 7200 60  0001 C CNN "Fieldname"
	1    3800 7200
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 56D89D59
P 4100 7200
F 0 "C15" H 4125 7300 50  0000 L CNN
F 1 "4.7pF" V 4050 6950 50  0000 L CNN
F 2 "agg:0402" H 4138 7050 30  0001 C CNN
F 3 "" H 4100 7200 60  0000 C CNN
F 4 "Value" H 4100 7200 60  0001 C CNN "Digikey"
F 5 "2434644" H 4100 7200 60  0001 C CNN "Farnell"
F 6 "Value" H 4100 7200 60  0001 C CNN "Fieldname"
	1    4100 7200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 56D8A56D
P 3800 7500
F 0 "#PWR020" H 3800 7250 50  0001 C CNN
F 1 "GND" H 3800 7350 50  0000 C CNN
F 2 "" H 3800 7500 60  0000 C CNN
F 3 "" H 3800 7500 60  0000 C CNN
	1    3800 7500
	1    0    0    -1  
$EndComp
$Comp
L COAX P2
U 1 1 56D8AD20
P 4450 6950
F 0 "P2" H 4450 7050 50  0000 C CNN
F 1 "COAX" H 4450 6800 50  0000 C CNN
F 2 "unchecked:SMA-142-0701-801" H 4450 6740 50  0001 C CNN
F 3 "" H 4550 6850 50  0001 C CNN
F 4 "Value" H 4450 6950 60  0001 C CNN "Digikey"
F 5 "1608592" H 4450 6670 50  0001 C CNN "Farnell"
F 6 "Value" H 4450 6950 60  0001 C CNN "Fieldname"
	1    4450 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 56D8B721
P 4350 7150
F 0 "#PWR021" H 4350 6900 50  0001 C CNN
F 1 "GND" H 4350 7000 50  0000 C CNN
F 2 "" H 4350 7150 60  0000 C CNN
F 3 "" H 4350 7150 60  0000 C CNN
	1    4350 7150
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 56D73073
P 1350 6400
F 0 "C5" H 1375 6500 50  0000 L CNN
F 1 "1u" H 1375 6300 50  0000 L CNN
F 2 "agg:0402" H 1388 6250 30  0001 C CNN
F 3 "" H 1350 6400 60  0000 C CNN
F 4 "Value" H 1350 6400 60  0001 C CNN "Digikey"
F 5 "2496814" H 1350 6400 60  0001 C CNN "Farnell"
F 6 "Value" H 1350 6400 60  0001 C CNN "Fieldname"
	1    1350 6400
	1    0    0    -1  
$EndComp
NoConn ~ 4150 3100
NoConn ~ 4150 3500
$Comp
L LED D1
U 1 1 56E487CC
P 2950 3950
F 0 "D1" H 2950 4050 50  0000 C CNN
F 1 "GRN_LED" H 2950 3850 50  0000 C CNN
F 2 "agg:0603-LED" H 2950 3950 60  0001 C CNN
F 3 "" H 2950 3950 60  0000 C CNN
F 4 "Value" H 2950 3950 60  0001 C CNN "Digikey"
F 5 "2290328" H 2950 3950 60  0001 C CNN "Farnell"
F 6 "Value" H 2950 3950 60  0001 C CNN "Fieldname"
	1    2950 3950
	0    -1   -1   0   
$EndComp
NoConn ~ 4150 3400
$Comp
L PWR #FLG022
U 1 1 56E51F62
P 10500 1900
F 0 "#FLG022" H 10500 2060 50  0001 C CNN
F 1 "PWR" H 10500 1990 50  0000 C CNN
F 2 "" H 10500 1900 50  0001 C CNN
F 3 "" H 10500 1900 50  0001 C CNN
	1    10500 1900
	1    0    0    -1  
$EndComp
$Comp
L PWR #FLG023
U 1 1 56E52A48
P 8950 1350
F 0 "#FLG023" H 8950 1510 50  0001 C CNN
F 1 "PWR" H 8950 1440 50  0000 C CNN
F 2 "" H 8950 1350 50  0001 C CNN
F 3 "" H 8950 1350 50  0001 C CNN
	1    8950 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 56E531BB
P 6600 2600
F 0 "#PWR024" H 6600 2350 50  0001 C CNN
F 1 "GND" H 6600 2450 50  0000 C CNN
F 2 "" H 6600 2600 60  0000 C CNN
F 3 "" H 6600 2600 60  0000 C CNN
	1    6600 2600
	1    0    0    -1  
$EndComp
$Comp
L RESISTOR R4
U 1 1 56E53B18
P 6350 2500
F 0 "R4" H 6470 2590 60  0000 C CNN
F 1 "10K" H 6350 2350 60  0001 C CNN
F 2 "agg:0402" H 6350 2500 60  0001 C CNN
F 3 "" H 6350 2500 60  0000 C CNN
F 4 "Value" H 6350 2500 60  0001 C CNN "Digikey"
F 5 "2072517" H 6350 2500 60  0001 C CNN "Farnell"
F 6 "Value" H 6350 2500 60  0001 C CNN "Fieldname"
	1    6350 2500
	-1   0    0    1   
$EndComp
$Comp
L TESTPAD TP1
U 1 1 56E540B9
P 6050 2450
F 0 "TP1" H 6050 2500 50  0000 L CNN
F 1 "TESTPAD" H 6050 2375 50  0001 L CNN
F 2 "agg:TESTPAD" H 6050 2300 50  0001 L CNN
F 3 "" H 6050 2450 50  0001 C CNN
	1    6050 2450
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR025
U 1 1 56E58E19
P 750 2450
F 0 "#PWR025" H 750 2300 50  0001 C CNN
F 1 "+3.3V" H 750 2590 50  0000 C CNN
F 2 "" H 750 2450 50  0000 C CNN
F 3 "" H 750 2450 50  0000 C CNN
	1    750  2450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR026
U 1 1 56E599A7
P 10400 1300
F 0 "#PWR026" H 10400 1150 50  0001 C CNN
F 1 "+3.3V" H 10400 1440 50  0000 C CNN
F 2 "" H 10400 1300 50  0000 C CNN
F 3 "" H 10400 1300 50  0000 C CNN
	1    10400 1300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR027
U 1 1 56E5B86E
P 9550 5000
F 0 "#PWR027" H 9550 4850 50  0001 C CNN
F 1 "+3.3V" H 9550 5140 50  0000 C CNN
F 2 "" H 9550 5000 50  0000 C CNN
F 3 "" H 9550 5000 50  0000 C CNN
	1    9550 5000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR028
U 1 1 56E5CFD0
P 850 6150
F 0 "#PWR028" H 850 6000 50  0001 C CNN
F 1 "+3.3V" H 850 6290 50  0000 C CNN
F 2 "" H 850 6150 60  0000 C CNN
F 3 "" H 850 6150 60  0000 C CNN
	1    850  6150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR029
U 1 1 56E5DD32
P 650 6650
F 0 "#PWR029" H 650 6500 50  0001 C CNN
F 1 "+3.3V" H 650 6790 50  0000 C CNN
F 2 "" H 650 6650 60  0000 C CNN
F 3 "" H 650 6650 60  0000 C CNN
	1    650  6650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR030
U 1 1 56E5E6FD
P 2900 6750
F 0 "#PWR030" H 2900 6600 50  0001 C CNN
F 1 "+3.3V" H 2900 6890 50  0000 C CNN
F 2 "" H 2900 6750 60  0000 C CNN
F 3 "" H 2900 6750 60  0000 C CNN
	1    2900 6750
	1    0    0    -1  
$EndComp
NoConn ~ 4150 3900
$Comp
L C C7
U 1 1 56E8400E
P 2300 1400
F 0 "C7" H 2325 1500 50  0000 L CNN
F 1 "0.1uF" H 2325 1300 50  0000 L CNN
F 2 "agg:0402" H 2338 1250 30  0001 C CNN
F 3 "" H 2300 1400 60  0000 C CNN
F 4 "Value" H 2300 1400 60  0001 C CNN "Digikey"
F 5 "2496771" H 2300 1400 60  0001 C CNN "Farnell"
F 6 "Value" H 2300 1400 60  0001 C CNN "Fieldname"
	1    2300 1400
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 56E840B9
P 2550 1400
F 0 "C8" H 2575 1500 50  0000 L CNN
F 1 "0.1uF" H 2575 1300 50  0000 L CNN
F 2 "agg:0402" H 2588 1250 30  0001 C CNN
F 3 "" H 2550 1400 60  0000 C CNN
F 4 "Value" H 2550 1400 60  0001 C CNN "Digikey"
F 5 "2496771" H 2550 1400 60  0001 C CNN "Farnell"
F 6 "Value" H 2550 1400 60  0001 C CNN "Fieldname"
	1    2550 1400
	1    0    0    -1  
$EndComp
Wire Notes Line
	8400 2150 11000 2150
Wire Notes Line
	11000 2150 11000 800 
Wire Notes Line
	11000 800  8400 800 
Wire Notes Line
	8400 800  8400 2150
Wire Wire Line
	10250 1350 10250 1550
Wire Wire Line
	10250 1550 10100 1550
Connection ~ 10250 1450
Wire Wire Line
	10100 1650 10200 1650
Wire Wire Line
	10200 1650 10200 1750
Wire Wire Line
	10200 1750 10400 1750
Connection ~ 10400 1450
Wire Wire Line
	9400 1650 9300 1650
Wire Wire Line
	9300 1650 9300 1750
Wire Wire Line
	9300 1750 8750 1750
Wire Wire Line
	9300 1350 9300 1550
Connection ~ 9300 1450
Wire Wire Line
	8750 1650 8750 1800
Wire Wire Line
	8750 1350 8750 1550
Connection ~ 8750 1750
Connection ~ 8950 1750
Connection ~ 8950 1450
Connection ~ 8750 1450
Wire Wire Line
	9400 1350 9300 1350
Wire Wire Line
	8750 1450 9400 1450
Wire Wire Line
	9300 1550 9400 1550
Wire Wire Line
	10100 1350 10250 1350
Wire Wire Line
	1350 1600 950  1600
Wire Wire Line
	1350 1550 1350 1600
Wire Wire Line
	1350 1200 1350 1250
Wire Wire Line
	950  1200 1350 1200
Connection ~ 2550 1650
Wire Wire Line
	2800 1650 2800 1550
Connection ~ 2550 1150
Wire Wire Line
	2800 1150 2800 1250
Connection ~ 950  1600
Connection ~ 950  1200
Wire Wire Line
	3950 3650 3950 3600
Wire Wire Line
	3550 3650 3950 3650
Connection ~ 6950 2200
Wire Wire Line
	6950 2150 6950 2200
Wire Wire Line
	7000 2200 7000 2250
Wire Wire Line
	6900 2200 7000 2200
Wire Wire Line
	6900 2250 6900 2200
Connection ~ 6900 2900
Connection ~ 7000 2800
Wire Notes Line
	7100 3500 7100 2450
Wire Notes Line
	8500 3500 7100 3500
Wire Notes Line
	8500 2450 8500 3500
Wire Notes Line
	7100 2450 8500 2450
Wire Wire Line
	7000 3700 6000 3700
Wire Wire Line
	7000 2750 7000 3700
Wire Wire Line
	7200 2800 7000 2800
Wire Wire Line
	6900 2900 7200 2900
Wire Wire Line
	6900 2750 6900 3600
Wire Wire Line
	6900 3600 6000 3600
Connection ~ 8150 3150
Wire Wire Line
	7200 3150 7200 3000
Wire Wire Line
	8150 3150 7200 3150
Wire Wire Line
	8150 2750 8150 2650
Wire Wire Line
	8150 3050 8150 3200
Wire Wire Line
	7950 3050 8150 3050
Wire Wire Line
	7950 3000 7950 3050
Wire Wire Line
	7800 3000 7950 3000
Wire Wire Line
	8000 2750 8150 2750
Wire Wire Line
	8000 2800 8000 2750
Wire Wire Line
	7800 2800 8000 2800
Wire Wire Line
	3950 3600 4150 3600
Connection ~ 5300 4900
Wire Wire Line
	5400 4900 5400 4800
Wire Wire Line
	4150 3300 3950 3300
Wire Wire Line
	4150 3200 3950 3200
Connection ~ 5000 1900
Connection ~ 5100 1900
Wire Wire Line
	4900 1900 4900 2000
Wire Wire Line
	6000 2750 6200 2750
Wire Wire Line
	950  1550 950  1650
Wire Notes Line
	600  600  600  2100
Wire Notes Line
	2900 600  600  600 
Wire Notes Line
	2900 2100 2900 600 
Wire Notes Line
	600  2100 2900 2100
Wire Notes Line
	2300 2250 600  2250
Wire Notes Line
	2300 3350 2300 2250
Wire Notes Line
	600  3350 2300 3350
Wire Notes Line
	600  2250 600  3350
Connection ~ 750  2800
Wire Wire Line
	850  2700 750  2700
Connection ~ 750  3000
Wire Wire Line
	850  2800 750  2800
Wire Wire Line
	750  2700 750  3100
Wire Wire Line
	750  3000 850  3000
Wire Wire Line
	750  2600 850  2600
Wire Wire Line
	4150 4400 3950 4400
Wire Wire Line
	4150 4300 3950 4300
Wire Wire Line
	1800 2600 1950 2600
Wire Wire Line
	1800 2700 1950 2700
Wire Wire Line
	1800 3000 1950 3000
Wire Wire Line
	5200 1900 5200 2000
Wire Wire Line
	950  1150 950  1250
Wire Wire Line
	2050 1150 2800 1150
Wire Wire Line
	2050 1650 2800 1650
Connection ~ 2300 1150
Wire Wire Line
	2050 1250 2050 1150
Wire Wire Line
	2050 1550 2050 1650
Connection ~ 2300 1650
Wire Wire Line
	4900 1900 5200 1900
Wire Wire Line
	5000 2000 5000 1900
Wire Wire Line
	5100 1800 5100 2000
Wire Wire Line
	5300 4900 5300 4800
Connection ~ 5200 4900
Wire Wire Line
	5200 4800 5200 5000
Wire Wire Line
	5100 4900 5400 4900
Wire Wire Line
	5100 4800 5100 4900
Wire Wire Line
	9350 5050 9600 5050
Wire Wire Line
	9550 5150 9600 5150
Wire Wire Line
	9550 5250 9600 5250
Connection ~ 9550 5150
Wire Wire Line
	9350 5350 9600 5350
Wire Wire Line
	9350 5400 9350 5350
Wire Wire Line
	9500 5750 9600 5750
Wire Wire Line
	9500 5650 9600 5650
Wire Wire Line
	10500 5050 10550 5050
Wire Wire Line
	10550 5050 10550 5000
Wire Wire Line
	10500 5150 10750 5150
Wire Wire Line
	10850 5150 10850 5250
Wire Wire Line
	10850 5250 10500 5250
Wire Notes Line
	11000 4800 8600 4800
Wire Notes Line
	8600 4800 8600 6300
Wire Notes Line
	8600 6300 11000 6300
Wire Notes Line
	11000 6300 11000 4800
Wire Wire Line
	850  6150 850  6250
Wire Wire Line
	850  6250 1850 6250
Connection ~ 1100 6250
Connection ~ 1350 6250
Wire Wire Line
	1850 6350 1800 6350
Wire Wire Line
	1800 6350 1800 6250
Connection ~ 1800 6250
Wire Wire Line
	850  6550 1850 6550
Connection ~ 1100 6550
Connection ~ 1350 6550
Wire Wire Line
	1850 6450 1800 6450
Wire Wire Line
	1800 6450 1800 6550
Connection ~ 1800 6550
Wire Wire Line
	2750 6450 2650 6450
Wire Wire Line
	1550 6650 1550 6550
Connection ~ 1550 6550
Wire Wire Line
	1750 7150 1850 7150
Wire Wire Line
	1850 7250 1750 7250
Wire Wire Line
	1750 7350 1850 7350
Wire Wire Line
	1750 7450 1850 7450
Wire Notes Line
	550  5950 4600 5950
Wire Notes Line
	550  7750 4600 7750
Wire Notes Line
	550  7750 550  5950
Wire Wire Line
	3950 4500 4150 4500
Wire Wire Line
	6150 3300 6000 3300
Wire Wire Line
	6000 3400 6150 3400
Wire Wire Line
	6000 3500 6150 3500
Wire Wire Line
	2900 6050 2900 6250
Wire Wire Line
	3200 6050 3550 6050
Wire Wire Line
	2750 6450 2750 6950
Wire Wire Line
	2650 6250 3200 6250
Wire Wire Line
	2650 6350 2850 6350
Wire Wire Line
	2850 6350 2850 6550
Wire Wire Line
	2850 6550 3100 6550
Wire Wire Line
	3050 6550 3050 6450
Wire Wire Line
	3050 6250 3050 6350
Connection ~ 2900 6250
Connection ~ 3050 6550
Connection ~ 3050 6250
Wire Wire Line
	3300 6250 3400 6250
Wire Wire Line
	3400 6250 3400 6950
Wire Wire Line
	2900 6900 2900 6950
Connection ~ 3400 6550
Wire Wire Line
	3250 6950 3300 6950
Wire Wire Line
	2750 6950 2950 6950
Connection ~ 2900 6950
Wire Wire Line
	3400 6950 3600 6950
Wire Wire Line
	3700 6950 3900 6950
Wire Wire Line
	4000 6950 4350 6950
Wire Wire Line
	4100 6950 4100 7050
Wire Wire Line
	3800 7050 3800 6950
Connection ~ 3800 6950
Wire Wire Line
	3500 7050 3500 6950
Connection ~ 3500 6950
Wire Wire Line
	3500 7350 3500 7450
Wire Wire Line
	3500 7450 4100 7450
Wire Wire Line
	4100 7450 4100 7350
Wire Wire Line
	3800 7350 3800 7500
Connection ~ 3800 7450
Connection ~ 4100 6950
Wire Wire Line
	4350 7050 4350 7150
Wire Notes Line
	4600 7750 4600 5950
Wire Wire Line
	2750 7300 2700 7300
Wire Wire Line
	2700 7300 2700 7150
Wire Wire Line
	2700 7150 2650 7150
Wire Wire Line
	10650 1900 10500 1900
Wire Wire Line
	8950 1350 8750 1350
Wire Wire Line
	6100 2500 6000 2500
Wire Wire Line
	6600 2500 6600 2600
Wire Wire Line
	6050 2450 6050 2500
Connection ~ 6050 2500
Wire Wire Line
	750  2450 750  2600
Wire Wire Line
	10400 1450 10400 1300
Wire Wire Line
	9550 5000 9550 5250
Connection ~ 9550 5050
Wire Wire Line
	2900 6800 2900 6750
Wire Wire Line
	4150 4200 3950 4200
Wire Wire Line
	2300 1050 2300 1250
Wire Wire Line
	2550 1250 2550 1150
Wire Wire Line
	2550 1550 2550 1650
Wire Wire Line
	2300 1550 2300 1750
$Comp
L C C20
U 1 1 56E86418
P 10650 1600
F 0 "C20" H 10450 1700 50  0000 L CNN
F 1 "2u2" H 10450 1500 50  0000 L CNN
F 2 "agg:0603" H 10650 1400 30  0001 C CNN
F 3 "" H 10650 1600 60  0000 C CNN
F 4 "Value" H 10650 1600 60  0001 C CNN "Digikey"
F 5 "2332678" H 10650 1600 60  0001 C CNN "Farnell"
F 6 "Value" H 10650 1600 60  0001 C CNN "Fieldname"
	1    10650 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	10100 1450 10650 1450
Wire Wire Line
	10650 1750 10650 1900
$Comp
L GND #PWR031
U 1 1 56E8878F
P 2950 4250
F 0 "#PWR031" H 2950 4000 50  0001 C CNN
F 1 "GND" H 2950 4100 50  0000 C CNN
F 2 "" H 2950 4250 60  0000 C CNN
F 3 "" H 2950 4250 60  0000 C CNN
	1    2950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3750 2950 3650
Wire Wire Line
	2950 3650 3050 3650
Wire Wire Line
	2950 4250 2950 4150
$Comp
L C C21
U 1 1 56E8E772
P 650 6900
F 0 "C21" H 675 7000 50  0000 L CNN
F 1 "10nF" H 675 6800 50  0000 L CNN
F 2 "agg:0402" H 688 6750 30  0001 C CNN
F 3 "" H 650 6900 60  0000 C CNN
F 4 "Value" H 650 6900 60  0001 C CNN "Digikey"
F 5 "1414575" H 650 6900 60  0001 C CNN "Farnell"
F 6 "Value" H 650 6900 60  0001 C CNN "Fieldname"
	1    650  6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6850 800  6850
Wire Wire Line
	800  6850 800  6750
Wire Wire Line
	800  6750 650  6750
Wire Wire Line
	650  6750 650  6650
Wire Wire Line
	650  7050 650  7150
Wire Wire Line
	650  7050 800  7050
Wire Wire Line
	800  7050 800  6950
Wire Wire Line
	800  6950 850  6950
$Comp
L C C22
U 1 1 56E90F46
P 1650 6850
F 0 "C22" H 1675 6950 50  0000 L CNN
F 1 "100p" H 1675 6750 50  0000 L CNN
F 2 "agg:0402" H 1688 6700 30  0001 C CNN
F 3 "" H 1650 6850 60  0000 C CNN
F 4 "Value" H 1650 6850 60  0001 C CNN "Digikey"
F 5 "2496792" H 1650 6850 60  0001 C CNN "Farnell"
F 6 "Value" H 1650 6850 60  0001 C CNN "Fieldname"
	1    1650 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 6850 1450 6850
Wire Wire Line
	1800 6850 1850 6850
$EndSCHEMATC
