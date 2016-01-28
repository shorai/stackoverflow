/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  *
  * COPYRIGHT(c) 2016 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"
#include "cmsis_os.h"
#include "adc.h"
#include "dma.h"
#include "i2c.h"
#include "spi.h"
#include "tim.h"
#include "usart.h"
#include "usb_device.h"
#include "gpio.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void MX_FREERTOS_Init(void);




/* USER CODE BEGIN PFP */
void task_one(void);
void task_two(void);
void taskADC(void);


/* Private function prototypes -----------------------------------------------*/

/* USER CODE END PFP */

/* USER CODE BEGIN 0 */

#define RX_BUFLEN (133*2)
unsigned char usart1_RxBuf[RX_BUFLEN];
//char usart1_TxBuf[132];

unsigned char uart5_RxBuf[RX_BUFLEN];
//char uart5_TxBuf[132];

uint8_t* str_one = "Hello USART 1, from Task one have a happy day!\r\n";
uint8_t* str_two = "Hello USART 1, from Task two have a happy day!\r\n";

/* USER CODE END 0 */

int main(void)
{

  /* USER CODE BEGIN 1 */
	 uint32_t i;
  /* USER CODE END 1 */

  /* MCU Configuration----------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC1_Init();
  MX_ADC2_Init();
  MX_ADC3_Init();
  MX_I2C3_Init();
  MX_SPI5_Init();
  MX_TIM2_Init();
  MX_TIM3_Init();
  MX_TIM4_Init();
  MX_TIM9_Init();
  MX_UART5_Init();
  MX_USART1_UART_Init();

  /* USER CODE BEGIN 2 */
  memset(uart5_RxBuf,0,RX_BUFLEN);
  memset(usart1_RxBuf,0,RX_BUFLEN);

  /* USER CODE END 2 */

  /* Call init function for freertos objects (in freertos.c) */
  MX_FREERTOS_Init();

  /* Start scheduler */
//  osKernelStart();
  
  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
   HAL_UART_Receive_DMA(&huart5,uart5_RxBuf,RX_BUFLEN);
   HAL_UART_Receive_DMA(&huart1,usart1_RxBuf,RX_BUFLEN);
   TaskHandle_t t1Handle;
   TaskHandle_t t2Handle;
   TaskHandle_t adcHandle;


                               /*(code, name,stacksize,
   	   	   	   	   	   	   	   void *pvParameters,
                               UBaseType_t uxPriority,
                               TaskHandle_t *pvCreatedTask
                               */
   BaseType_t task1 = xTaskCreate(task_one,"Task One",configMINIMAL_STACK_SIZE
		   ,(void *) NULL,(tskIDLE_PRIORITY + configMAX_PRIORITIES - 1)/2,&t1Handle);
   BaseType_t task2 = xTaskCreate(task_two,"Task Two",configMINIMAL_STACK_SIZE
		   ,(void *) NULL,(tskIDLE_PRIORITY + configMAX_PRIORITIES - 1)/2,&t2Handle);

   BaseType_t task3 = xTaskCreate(taskADC,"Task ADC",configMINIMAL_STACK_SIZE
   		   ,(void *) NULL,(tskIDLE_PRIORITY + configMAX_PRIORITIES - 1)/2,&adcHandle);


   //vTaskPrioritySet( t1Handle, tskIDLE_PRIORITY + 1 );
   //vTaskPrioritySet( t2Handle, tskIDLE_PRIORITY + 2 );


   configASSERT( t1Handle );
   configASSERT( t2Handle );
   configASSERT( adcHandle );


//   HAL_Delay(1000); HAL_Delay won't work with FreeRTOS, must do in a task
  // while(i++ < 1000000);

   osKernelStart();
  while (1)
  {
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */

  }
  /* USER CODE END 3 */

}

/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;

  __PWR_CLK_ENABLE();

  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 336;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 7;
  HAL_RCC_OscConfig(&RCC_OscInitStruct);

  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_SYSCLK|RCC_CLOCKTYPE_PCLK1
                              |RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;
  HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5);

  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

  /* SysTick_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);
}

/* USER CODE BEGIN 4 */

/**
 * This task manages UART1  communications
 * UART1 is used to communicate to the terminal. It has two helper tasks
 *      - DMA is used to manage transfers to and from Tx/Rx ports to memory
 *      - Readline - scans the DMA buffer for lines of text , maintains a circular queue of pointers
 *                 - called by TC and HalfFUll interrupts
 *      - TX holds a que of up to 10 buffers, queue management
 *             When a buffer is transmitted it is truncated by putting a null @ buf[0]
 */
void task_one(void) {

	while (-1) {
		while(HAL_UART_GetState(&huart5)==HAL_UART_STATE_BUSY_TX);
		HAL_UART_Transmit_DMA(&huart5,(uint8_t*) "Hello UART 5, have a nice day! from Task_1\r\n"  ,(unsigned) 44);
		//HAL_UART_Transmit_DMA(&huart1,str_one,strlen((char *) str_one));
		while(HAL_UART_GetState(&huart1)==HAL_UART_STATE_BUSY_TX);
		HAL_UART_Transmit_DMA(&huart1,str_one,strlen((char *) str_one));  // won't work because we initialized DMA

		vTaskDelay(1000);
	}
}

/**
 * Same as Task1  but for UART5
 *
 * Used to communicate to a primary VLDiscovery F3 or F4 device giving IO expansion
 * May be moved to SPI or I2C
 * May be equipped with a SIM800 GSM/Bluetooth device
 */

void task_two(void) {
	for(;;) {
		while(HAL_UART_GetState(&huart5)==HAL_UART_STATE_BUSY_TX);
		HAL_UART_Transmit_DMA(&huart5,(uint8_t*) "Hello UART 5, have a nice day! from Task_2\r\n"  ,(unsigned) 44);

		while(HAL_UART_GetState(&huart1)==HAL_UART_STATE_BUSY_TX);
		HAL_UART_Transmit_DMA(&huart1,str_two,strlen((char *) str_two));
		// HAL_UART_Transmit_IT(&huart1,str_two,strlen((char *) str_two));  // won't work because we initialized DMA
		vTaskDelay(1150);
	}
}

/**
 * This task provides stats from the ADC
 *     Buffers are averaged, SD, max and min
 */
void taskADC(void) {


}


/* USER CODE END 4 */

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
