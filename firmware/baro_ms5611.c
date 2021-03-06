/*
 * MS5611-01BA03 Driver
 * Woodchuck
 * 
 * Adapted from
 * M2FC - 2014 Adam Greig, Cambridge University Spaceflight
 * 
 * Woodchuck - 2016 Eivind Roson Eide, Cambridge University Spaceflight
 */

/*
 * TODO: 
 * set gpio to correct configuration, 
 * create a timer script to time conversions, 
 * create a Kalmanfilter to estimate the altitude, 
 * remove old code, 
 * include logging functionality and tweeter functionality
 * 
 */
 
#include <libopencm3/stm32/spi.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/rcc.h>

#include "baro_ms5611.h"
#include "gps.h"
//#include "led.h"
//#include "radio.h"

/*
 * The microcontroller talks to the barometer using SPI,
 * The driver uses libopemcm3/spi.h 
 * (documentation: http://libopencm3.github.io/docs/latest/stm32f0/html/group__spi__file.html)
 * Ports and pins are defined in: http://www.st.com/web/en/resource/technical/document/datasheet/DM00090510.pdf
 * SPI interface page 9
 */

#define MS5611_SPID         SPI1        //Checked with datasheet 
#define MS5611_SPI_PORT     GPIOB       //Checked with datasheet
#define MS5611_SPI_CLK      GPIO3       //Checked with datasheet PB3
#define MS5611_SPI_MISO     GPIO4       //Checked with datasheet PB4
#define MS5611_SPI_MOSI     GPIO5       //Checked with datasheet PB5
#define GPIOB_SPI_AF_NUM    0           //Checked: Table 15: AF for GPIOB

//This definition appears to be missing in the header file:
 #define SPI_CR1_DFF_8BIT (0 << 11)

static void ms5611_reset(void);
static void ms5611_read_u16(uint8_t adr, uint16_t* c);
static void ms5611_read_s24(uint8_t adr, int32_t* d);
static void ms5611_pin_setup();
static void ms5611_read_cal(MS5611CalData* cal_data);
static void ms5611_read(MS5611CalData* cal_data,
                        int32_t* temperature, int32_t* pressure);

int32_t global_temperature;
int32_t global_pressure;

static MS5611CalData cal_data;
static int32_t temperature, pressure;


/*
 * Resets the MS5611. Sends 0x1E, waits 5ms.
 * 
 */
static void ms5611_reset()
{
    uint8_t adr = 0x1E;         // Wgat is stored here?
    uint16_t i = 0;
    spi_enable(MS5611_SPID);    // The SPI peripheral is enabled. // CHIBIOS spiSelect(&MS5611_SPID);
    spi_send8(MS5611_SPID, adr); // Data is written to the SPI interface after the previous write transfer has finished.
                                // Note that in chibios an adress is sent, while here the origenal data is sent?? 
                                //    spiSend(&MS5611_SPID, 1, (void*)&adr);
    //TODO: time this instead
    for (i = 0; i < 10000; i++)
    {
        __asm__("nop");  //Not a pretty way of doing this, but will do for now //    chThdSleepMilliseconds(5);
    }
    
    spi_disable(MS5611_SPID); //    spiUnselect(&MS5611_SPID);
}

/*
 * Reads a uint16 from the MS5611 address `adr`, stores it to `c`.
 */
static void ms5611_read_u16(uint8_t adr, uint16_t* c)
{
    /* adr must be 0xA0 to 0xAE */
    
    uint16_t data_received; 
    spi_enable(MS5611_SPID);    // The SPI peripheral is enabled. // CHIBIOS spiSelect(&MS5611_SPID);
    spi_send8(MS5611_SPID, adr); // Data is written to the SPI interface after the previous write transfer has finished.
    data_received = spi_read(MS5611_SPID); //A PROM read returns a 2 byte result
    spi_disable(MS5611_SPID); //    spiUnselect(&MS5611_SPID);
    *c = data_received;
}


/*
 * Reads an int24 from the MS5611 address `adr`, stores it to `d`.
 */
static void ms5611_read_s24(uint8_t adr, int32_t* d)
{
    uint32_t data_received; //To store result
    uint8_t adc_adr = 0x00; //Command to read ADC from baro

    spi_enable(MS5611_SPID);    // The SPI peripheral is enabled. // CHIBIOS spiSelect(&MS5611_SPID);
    spi_send8(MS5611_SPID, adr); // Data is written to the SPI interface after the previous write transfer has finished.
    
    //TODO: Sleep for 1 ms
    /*
     * Wait for conversion to complete. There doesn't appear to be any way
     * to do this without timing it, unfortunately.
     *
     * If we just watch the clock we'll consume enormous CPU time for little
     * gain. Instead we'll sleep for "roughly" 1ms and then wait until at least
     * the desired 0.6ms have passed.
     */
    
    spi_send8(MS5611_SPID, adc_adr); // Asks the device to send the results from the ADC.
    data_received = spi_read(MS5611_SPID); //A ADC_READ command returns a 3 byte result

    *d = data_received;
    
    /*
    //OLD CODE:
    uint8_t adc_adr = 0x00, rx[3];
    int32_t t0;
    
    */
    /* Start conversion */
    //spiSelect(&MS5611_SPID);
    //spiSend(&MS5611_SPID, 1, (void*)&adr);
    
    /*
     * Wait for conversion to complete. There doesn't appear to be any way
     * to do this without timing it, unfortunately.
     *
     * If we just watch the clock we'll consume enormous CPU time for little
     * gain. Instead we'll sleep for "roughly" 1ms and then wait until at least
     * the desired 0.6ms have passed.
     */
   // t0 = halGetCounterValue();
    //chThdSleepMilliseconds(1);
    //while(halGetCounterValue() - t0 < US2RTT(600)) {
   //     chThdYield();
    //}

    /* Deassert CS */
    //spiUnselect(&MS5611_SPID);

    /* Read ADC result */
//    spiSelect(&MS5611_SPID);
  //  spiSend(&MS5611_SPID, 1, (void*)&adc_adr);
   // spiReceive(&MS5611_SPID, 3, (void*)rx);
    //spiUnselect(&MS5611_SPID);

   // *d = rx[0] << 16 | rx[1] << 8 | rx[2];
}

/*
 * Reads MS5611 calibration data, writes it to `cal_data`.
 */
static void ms5611_read_cal(MS5611CalData* cal_data)
{
    uint16_t d0, d7;
    ms5611_read_u16(0xA0, &d0);
    ms5611_read_u16(0xA2, &(cal_data->c1));
    ms5611_read_u16(0xA4, &(cal_data->c2));
    ms5611_read_u16(0xA6, &(cal_data->c3));
    ms5611_read_u16(0xA8, &(cal_data->c4));
    ms5611_read_u16(0xAA, &(cal_data->c5));
    ms5611_read_u16(0xAC, &(cal_data->c6));
    ms5611_read_u16(0xAE, &d7);

   // TODO: LOG
//    log_u16(CHAN_CAL_BARO1, d0, cal_data->c1, cal_data->c2, cal_data->c3);
//    log_u16(CHAN_CAL_BARO2, cal_data->c4, cal_data->c5, cal_data->c6, d7);
}

/*
 * Sets the GPIO pins to SPI mode for the MS5611.
 * 
 */
static void ms5611_pin_setup()
{
    rcc_periph_clock_enable(RCC_SPI1); //Probably required
    gpio_mode_setup(GPIOB, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO3 | GPIO4 | GPIO5);
    //gpio_mode_setup (uint32_t gpioport, uint8_t mode, uint8_t pull_up_down, uint16_t gpios)
    gpio_set_af(GPIOB, GPIOB_SPI_AF_NUM ,GPIO3 | GPIO4 | GPIO5);
    //gpio_set_af (uint32_t gpioport, uint8_t alt_func_num, uint16_t gpios)
    spi_init_master(SPI1, SPI_CR1_BAUDRATE_FPCLK_DIV_8, SPI_CR1_CPOL, 
                        SPI_CR1_CPHA, SPI_CR1_DFF_8BIT, SPI_CR1_MSBFIRST); 
                    //SHOULD EQUAL: SPI_CR1_BR_1 | SPI_CR1_CPOL | SPI_CR1_CPHA in CHiBIOS
    
    // might require spi_enable_ss_output(SPI1); */ /* Required, see NSS, 25.3.1 section. */
}


/*
 * Initialise the MS5611.
 * (Public)
 * 
 * Sends a RESET and then reads in the calibration data.
 *
 * Call this once system startup, before attempting ms5611_read.
 *
 * cal_data should be a pointer to some memory to store the calibration in.
 */
void ms5611_init(MS5611CalData* cal_data)
{
    ms5611_reset();
    ms5611_read_cal(cal_data);
}

/*
 * Read and compensate a temperature and pressure from the MS5611.
 *
 * `cal_data` is previously read calibration data.
 * `temperature` and `pressure` are written to.
 *
 * `temperature` is in centidegrees Celcius,
 * `pressure` is in Pascals.
 */
static void ms5611_read(MS5611CalData* cal_data,
                        int32_t* temperature, int32_t* pressure)
{
    int32_t d1, d2;
    int64_t off, sens, dt;
    ms5611_read_s24(0x40, &d1);
    ms5611_read_s24(0x50, &d2);

    dt = (int64_t)d2 - (int64_t)cal_data->c5 * (1<<8);
    *temperature = 2000 + (dt * (int64_t)cal_data->c6) / (1<<23);
    
    off = (int64_t)cal_data->c2 * (1<<16) + \
          ((int64_t)cal_data->c4 * dt) / (1<<7);

    sens = (int64_t)cal_data->c1 * (1<<15) + \
           ((int64_t)cal_data->c3 * dt) / (1<<8);

    *pressure = ((d1 * sens) / (1<<21) - off) / (1<<15);
    
    /*update the global variables with the pressure and temperature information*/
    global_pressure = *pressure;
    global_temperature = *temperature;


    //TODO: Check what the tweeter is supposed to output + log
//    tweeter_set_error(ERROR_BARO, *pressure < 1000 || *pressure > 120000);
//    log_s32(CHAN_IMU_BARO, *pressure, *temperature);
}

/* 
 * Public function to read values and update state estimator for ms5611
 * 
 * Calls ms5611_read function and stores data in temperature and
 *  preassure variables
 * 
 * Calls state estimation function to convert reading to altitude
 */
void ms5611_run()
{
    ms5611_read(&cal_data, &temperature, &pressure);
    //TODO: Implement state estimator
    //state_estimation_new_pressure((float)pressure);   
}


