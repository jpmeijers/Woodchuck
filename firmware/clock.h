#ifndef UTILS_H
#define UTILS_H

#include <stdint.h>
#include <stdbool.h>


/**
 * Delay for approximately a millisecond. Very roughly calibrated by eye to
 * within about 20% precision.
 * @param delay Number of milliseconds to delay.
 */
void delay_ms(const uint32_t delay);


/**
 * Delay for approximately a microsecond. Very roughly calibrated by eye to
 * within about 20% precision.
 * @param delay Number of microseconds to delay.
 */
void delay_us(const uint32_t delay);

/* Setup systick */
void systick_init(void);

/* Get current millisecond timer value */
uint32_t get_millis(void);

#endif
