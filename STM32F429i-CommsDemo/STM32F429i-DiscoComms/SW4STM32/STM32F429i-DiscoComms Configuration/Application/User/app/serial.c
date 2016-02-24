/*
 * serial.c
 *
 *  Created on: Jan 28, 2016
 *      Author: Chris
 *
 *
 *  Utilities to manage the serial ports
 *
 *  Once we have them defined, we refer by number 0...n
 *
 *  Much of the initialisation etc is setup and maintained separately by Cube
 *
 *  This adds readline and software flow control
 *
 *  Scan for the next line of input in the DMA buffer.
 *
 *  My strategy will be to give most of the physical RAM to DMA so we can accept large chunks
 *     of data without buffer overflow.
 *
 *
 */
#include <string.h>
#include "stddef.h"

#include "stm32f4xx.h"
#include "stm32f4xx_hal.h"

#include "stm32f4xx_hal_rcc.h"

#include "stm32f4xx_hal_usart.h"

#include "usart.h"

#define XON (0x11)
#define XOFF (0x13)


extern DMA_HandleTypeDef hdma_usart2_rx;
extern DMA_HandleTypeDef hdma_usart2_tx;
UART_HandleTypeDef UartHandle;


#define RXBUFFERSIZE 132
#define RX_DMA_BUFLEN (133*2)


uint8_t SER_RxBuffer[RXBUFFERSIZE];  // readline and RX put chars in here for application

unsigned char usart_RxBuf[2][RX_DMA_BUFLEN];
uint8_t *SER_next;
uint8_t SER_rxPaused = 0;   // 0 or
uint8_t SER_fcQueue = 0;    // one byte queued XON or XOFF will send at end of current DMA Tx
uint8_t SER_transmitting = 0;

uint8_t RL_rxPaused = 0;

void SER_init(void) {
	  memset(usart_RxBuf[0],0,RX_DMA_BUFLEN);
	  memset(usart_RxBuf[1],0,RX_DMA_BUFLEN);

	  HAL_UART_Receive_DMA(&huart5,usart_RxBuf[0],RX_DMA_BUFLEN);
	  HAL_UART_Receive_DMA(&huart1,usart_RxBuf[1],RX_DMA_BUFLEN);
}

uint32_t SERIAL_available(UART_HandleTypeDef *usart) {
	int32_t av = RXBUFFERSIZE;
  int32_t cndtr =  hdma_usart2_rx.Instance->NDTR;   //CNDTR??
  int32_t nrlb = SER_next-SER_RxBuffer;
	av -= cndtr;
	av -= nrlb;

	if (av < 0) av += RXBUFFERSIZE;

	if ((av > RX_DMA_BUFLEN) &&(RL_rxPaused)) {
			if (SER_transmitting) {
					SER_fcQueue = XON;      // que it til the Tx is complete
			} else{
					UartHandle.Instance->DR = XON;  // TDR?? just stuff it in the tx register and it goes immediately
			}
	}
	return av;
}

/**
Check for end of line, consume chars as we go into a RxBuffer
this means we get a faster reception of the line as we don't need to scan twice
This routine is blocking, but does call HAL_Delay() so we can still do BG tasks
*/

uint8_t *SERIAL_ReadLine(UART_HandleTypeDef *huart) {
			//uint8_t *endPtr = SER_NextReadlineBuf;
			uint8_t *out = SER_RxBuffer;
			int32_t count =  SERIAL_available(huart);
	    uint8_t more = 255;
	    //&SER_DMARxBuffer[RX_DMASIZE]


	while (more) {  // this is the DMA Rx memory pointer
					// refill our buffer if needed
					uint8_t ch = *SER_next++;
					switch(ch) {

						case  '\t': *out++ = ' ';
										break;
						case  '\r':   //break;
						case  '\n':
										//*out = 0;
									  more =0;
										break;
						case 0: SER_next--;
								if (SER_next < SER_RxBuffer)
									SER_next = &SER_RxBuffer[RX_DMA_BUFLEN-1];

									 break;
						case 8: if(out > SER_RxBuffer)
											out--;
									 break;
						case XON: HAL_UART_DMAResume(&UartHandle);
									break;
						case XOFF:HAL_UART_DMAPause(&UartHandle);
									break;
						default: *out++ = ch;
										break;
						}

						if (SER_next > &SER_RxBuffer[RX_DMA_BUFLEN-1]) {
								SER_next = SER_RxBuffer;
						}
					count--;
					if ((count <=0) && more) {
							HAL_Delay(50);
						  count = SERIAL_available(huart);
					}
				}
		*out = 0;		// terminate
		return SER_RxBuffer;
}

/**
   Read a line from the serial port DMA buffer in HPGL protocol
*/

uint8_t *SERIAL_ReadHPLine(UART_HandleTypeDef *huart) {
	//		uint8_t *endPtr = SER_NextReadlineBuf;
			uint8_t *out = SER_RxBuffer;
			int32_t count =  SERIAL_available(huart);
	    uint8_t more = 255;
	    //&SER_DMARxBuffer[RX_DMASIZE]
			while(*out) out++; // scan over what we hgave processed

			while (more) {  // this is the DMA Rx memory pointer
					// refill our buffer if needed
					uint8_t ch = *SER_next++;
					switch (ch) {
						case  '\r':
						case  '\n':
						case 	' ':
										break;
						case ';':
								more = 0;
								*out =0;
								break;

						case 0x1A:    // control Z
								count = 0;
								*out =ch;
								break;
											// these respond the Tx to received XON and XOFF
						case XON: HAL_UART_DMAResume(&UartHandle);
									break;
						case XOFF:HAL_UART_DMAPause(&UartHandle);
									break;

						default: *out++ = ch;

					}
				   if (SER_next > &SER_RxBuffer[RX_DMA_BUFLEN-1]) {
								SER_next = SER_RxBuffer;
						}
					count--;
					while ((more) && (count <=0)) {
						  HAL_Delay(50);
						  count = SERIAL_available(huart);
					}
		}
		return SER_RxBuffer;
}

char *readline(uint8_t uart) {
	return (char *) NULL;
}



