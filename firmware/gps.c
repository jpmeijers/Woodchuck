/**
 * Woodchuck by CU Spaceflight
 *
 * This file is part of the Woodchuck project by Cambridge University
 * Spaceflight.
 *
 * Based on the gps driver from the JOEY-M project by Cambridge University
 * Spaceflight.
 * 
 * Jon Sowman 2012
 * Jamie Wood 2016
 */

#include <libopencm3/stm32/usart.h>
#include "gps.h"
#include "led.h"
//#include "radio.h"

// Choose which USART module to use
#define USART       USART2

// Header sync bytes - no touching!
#define UBX_SYNC_1  (0xB5)
#define UBX_SYNC_2  (0x62)

// Class and ID bytes - no touching!
#define UBX_NAV_CLASS       (0x01)
#define UBX_ACK_CLASS       (0x05)
#define UBX_CFG_CLASS       (0x06)

#define UBX_NAV_POSLLH_ID   (0x02)
#define UBX_NAV_SOL_ID      (0x06)
#define UBX_NAV_TIMEUTC_ID  (0x21)
#define UBX_ACK_ACK_ID      (0x01)
#define UBX_CFG_PRT_ID      (0x00)
#define UBX_CFG_MSG_ID      (0x01)
#define UBX_CFG_NAV5_ID     (0x24)

/**
 * Set up USART for communication with the uBlox GPS at 38400 baud.
 * 
 * We have to start at 9600, then tell the uBlox to change up to 38400 baud.
 */
void gps_init(void)
{
    // 9600 baud rate
    usart_set_baudrate(USART, 9600);
    
    // 8-N-1 data format
    usart_set_databits(USART, 8);
    usart_set_parity(USART, USART_PARITY_NONE);
    usart_set_stopbits(USART, USART_CR2_STOP_1_0BIT);
    
    // No flow control
    usart_set_flow_control(USART, USART_FLOWCONTROL_NONE);
    
    // Enable transmit and receive modes
    usart_set_mode(USART, USART_MODE_TX_RX);
    
    // Enable the USART
    usart_enable(USART);
    
    // Try to upgrade to 38400 baud rate
    _gps_set_baud(38400);
    
    // Set the GPS into the correct mode (<1g airborne)
    gps_set_mode();
}

/**
 * Poll the GPS for a position message then extract the useful
 * information from it, using a NAV-POSLLH message.
 */
void gps_get_position(int32_t* lat, int32_t* lon, int32_t* alt)
{
    // Request a NAV-POSLLH message from the GPS
    uint8_t request[8] = {UBX_SYNC_1, UBX_SYNC_2, UBX_NAV_CLASS,
        UBX_NAV_POSLLH_ID, 0x00, 0x00, 0x03, 0x0A};
    _gps_send_msg(request, 8);
    
    uint8_t buf[36];
    uint8_t i = 0;
    for(i = 0; i < 36; i++)
        buf[i] = _gps_get_byte();

    // Verify the sync and header bits
    if( buf[0] != UBX_SYNC_1 || buf[1] != UBX_SYNC_2 )
        led_set(LED_RED, 1);
    if( buf[2] != UBX_NAV_CLASS || buf[3] != UBX_NAV_POSLLH_ID )
        led_set(LED_RED, 1);

    // 4 bytes of longitude (1e-7)
    *lon = (int32_t)buf[10] | (int32_t)buf[11] << 8 | 
        (int32_t)buf[12] << 16 | (int32_t)buf[13] << 24;
    
    // 4 bytes of latitude (1e-7)
    *lat = (int32_t)buf[14] | (int32_t)buf[15] << 8 | 
        (int32_t)buf[16] << 16 | (int32_t)buf[17] << 24;
    
    // 4 bytes of altitude above MSL (mm)
    *alt = (int32_t)buf[22] | (int32_t)buf[23] << 8 | 
        (int32_t)buf[24] << 16 | (int32_t)buf[25] << 24;

    if( !_gps_verify_checksum(&buf[2], 32) ) led_set(LED_RED, 1);
}

/**
 * Get the hour, minute and second from the GPS using the NAV-TIMEUTC
 * message.
 */
void gps_get_time(uint8_t* hour, uint8_t* minute, uint8_t* second)
{
    // Send a NAV-TIMEUTC message to the receiver
    uint8_t request[8] = {UBX_SYNC_1, UBX_SYNC_2, UBX_NAV_CLASS,
        UBX_NAV_TIMEUTC_ID, 0x00, 0x00, 0x22, 0x67};
    _gps_send_msg(request, 8);

    // Get the message back from the GPS
    uint8_t buf[28];
    uint8_t i = 0;
    for(i = 0; i < 28; i++)
        buf[i] = _gps_get_byte();

    // Verify the sync and header bits
    if( buf[0] != UBX_SYNC_1 || buf[1] != UBX_SYNC_2 )
        led_set(LED_RED, 1);
    if( buf[2] != UBX_NAV_CLASS || buf[3] != UBX_NAV_TIMEUTC_ID )
        led_set(LED_RED, 1);

    *hour = buf[22];
    *minute = buf[23];
    *second = buf[24];

    if( !_gps_verify_checksum(&buf[2], 24) ) led_set(LED_RED, 1);
}

/**
 * Check the navigation status to determine the quality of the
 * fix currently held by the receiver with a NAV-SOL message.
 */
void gps_check_lock(uint8_t* lock, uint8_t* numsats)
{
    // Construct the request to the GPS
    uint8_t request[8] = {UBX_SYNC_1, UBX_SYNC_2, UBX_NAV_CLASS, UBX_NAV_SOL_ID,
        0x00, 0x00, 0x07, 0x16};
    _gps_send_msg(request, 8);

    // Get the message back from the GPS
    uint8_t buf[60];
    uint8_t i;
    for(i = 0; i < 60; i++)
        buf[i] = _gps_get_byte();

    // Verify the sync and header bits
    if( buf[0] != UBX_SYNC_1 || buf[1] != UBX_SYNC_2 )
        led_set(LED_RED, 1);
    if( buf[2] != UBX_NAV_CLASS || buf[3] != UBX_NAV_SOL_ID )
        led_set(LED_RED, 1);

    // Check 60 bytes minus SYNC and CHECKSUM (4 bytes)
    if( !_gps_verify_checksum(&buf[2], 56) ) led_set(LED_RED, 1);

    // Return the value if GPSfixOK is set in 'flags'
    if( buf[17] & 0x01 )
        *lock = buf[16];
    else
        *lock = 0;

    *numsats = buf[53];
}

/**
 * Set the GPS to <1g airborne navigation mode, using a CFG-NAV5 message.
 */
void gps_set_mode(void)
{
    /* Parameters:
     * mask:        0x0001 (only apply dynModel setting)
     * dynModel:    0x06 (airborne <1g)
     * blank x33:   0x00 (not needed due to mask)
     * 
     * Checksum bytes are pre-computed
     */ 
    uint8_t request[44] = {UBX_SYNC_1, UBX_SYNC_2, UBX_CFG_CLASS,
        UBX_CFG_NAV5_ID, 0x00, 36, 0x00, 0x01, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x55, 0x8f};
    _gps_send_msg(request, 44);
    
    // Read the response from the GPS
    uint8_t buf[10];
    uint8_t i = 0;
    for(i = 0; i < 10; i++)
        buf[i] = _gps_get_byte();

    // Verify sync and header bytes
    if( buf[0] != UBX_SYNC_1 || buf[1] != UBX_SYNC_2 )
        led_set(LED_RED, 1);
    if( buf[2] != UBX_ACK_CLASS)
        led_set(LED_RED, 1);

    // Check message checksum
    if( !_gps_verify_checksum(&buf[2], 6) ) led_set(LED_RED, 1);
    
    // Check if we received an ACK or NACK
    if(buf[3] != UBX_ACK_ACK_ID){ // If not an ACK
        led_set(LED_RED, 1);
    }
}

/**
 * Verify that the uBlox 6 GPS receiver is set to the <1g airborne
 * navigaion mode, using a CFG-NAV5 message.
 */
uint8_t gps_check_nav(void)
{
    uint8_t request[8] = {UBX_SYNC_1, UBX_SYNC_2, UBX_CFG_CLASS, UBX_CFG_NAV5_ID, 0x00, 0x00,
        0x2A, 0x84};
    _gps_send_msg(request, 8);

    // Get the message back from the GPS
    uint8_t buf[44];
    uint8_t i = 0;
    for(i = 0; i < 44; i++)
        buf[i] = _gps_get_byte();

    // Verify sync and header bytes
    if( buf[0] != UBX_SYNC_1 || buf[1] != UBX_SYNC_2 )
        led_set(LED_RED, 1);
    if( buf[2] != UBX_CFG_CLASS || buf[3] != UBX_CFG_NAV5_ID )
        led_set(LED_RED, 1);

    // Check 40 bytes of message checksum
    if( !_gps_verify_checksum(&buf[2], 40) ) led_set(LED_RED, 1);

    // Clock in and verify the ACK/NACK
    uint8_t ack[10];
    for(i = 0; i < 10; i++)
        ack[i] = _gps_get_byte();

    // If we got a NACK, then return 0xFF
    if( ack[3] == 0x00 ) return 0xFF;

    // Return the navigation mode and let the caller analyse it
    return buf[8];
}

/**
 * Set the baudrate of the GPS using a CFG-PRT message.
 * We also update our own baudrate to match.
 */
void _gps_set_baud(uint32_t baudrate)
{
    // Backup the old baudrate incase something goes wrong
    uint32_t oldBRR = USART_BRR(USART);
    
    /* Parameters:
     * portID:      0x01 (UART)
     * reserved:    0x00
     * txReady:     0x0000 (disable txReady pin)
     * mode:        0x000008C0 (1 stop bit, no parity, 8 data bits)
     * baudrate:    <baudrate> (little endian)
     * inProtoMask: 0x0001 (UBX input only)
     * outProtoMask:0x0001 (UBX output only)
     * flags:       0x0000 (disable extended timeout)
     * reserved x2: 0x0000
     */
    uint8_t cka = 0;
    uint8_t ckb = 0;
    uint8_t request[28] = {UBX_SYNC_1, UBX_SYNC_2, UBX_CFG_CLASS,
        UBX_CFG_PRT_ID, 0x00, 20, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0xC0,
        baudrate & 0xff, (baudrate >> 8) & 0xff, (baudrate >> 16) & 0xff,
        (baudrate >> 24) & 0xff, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,
        0x00, cka, ckb};
    
    // Compute the checksum and fill it out
    _gps_ubx_checksum(&request[2], 24, &cka, &ckb);
    request[26] = cka;
    request[27] = ckb;
    
    // Transmit the request
    _gps_send_msg(request, 27);
    
    // Change our baud rate to match the new speed
    usart_set_baudrate(USART, baudrate);
    
    // Read the response from the GPS
    uint8_t buf[9];
    uint8_t i = 0;
    for(i = 0; i < 9; i++)
        buf[i] = _gps_get_byte();

    // Verify sync and header bytes
    if( buf[0] != UBX_SYNC_1 || buf[1] != UBX_SYNC_2 )
        led_set(LED_RED, 1);
    if( buf[2] != UBX_ACK_CLASS)
        led_set(LED_RED, 1);

    // Check message checksum
    if( !_gps_verify_checksum(&buf[2], 5) ) led_set(LED_RED, 1);
    
    // Check if we received an ACK or NACK
    if(buf[3] != UBX_ACK_ACK_ID){ // If not an ACK
        led_set(LED_RED, 1);
        // Restore the old baud rate.
        USART_BRR(USART) = oldBRR;
    }
}

/**
 * Verify the checksum for the given data and length.
 */
bool _gps_verify_checksum(uint8_t* data, uint8_t len)
{
    uint8_t a, b;
    _gps_ubx_checksum(data, len, &a, &b);
    if( a != *(data + len) || b != *(data + len + 1))
        return false;
    else
        return true;
}

/**
 * Calculate a UBX checksum using 8-bit Fletcher (RFC1145)
 */
void _gps_ubx_checksum(uint8_t* data, uint8_t len, uint8_t* cka, uint8_t* ckb)
{
    *cka = 0;
    *ckb = 0;
    uint8_t i = 0;
    for( i = 0; i < len; i++ )
    {
        *cka += *data;
        *ckb += *cka;
        data++;
    }
}

/**
 * Send a binary message to the GPS of length len.
 */
void _gps_send_msg(uint8_t* data, uint8_t len)
{
    _gps_flush_buffer();
    uint8_t i = 0;
    for(i = 0; i < len; i++)
    {
        usart_send_blocking(USART, *data);
        data++;
    }
}

/**
 * Receive a single byte from the GPS and return it.
 */
uint8_t _gps_get_byte(void)
{
    return usart_recv_blocking(USART);
}

/**
 * Flush the USART recieve buffer.
 */
void _gps_flush_buffer(void)
{
    uint8_t dummy;
    while ( USART_ISR(USART) & USART_ISR_RXNE )
    {
        dummy = usart_recv(USART);
    };
    (void)dummy;
}
