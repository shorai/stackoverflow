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
#include "stm32l0xx_hal.h"

/* USER CODE BEGIN Includes */
#include <string.h>
#include <stdio.h>

#include "stm32l0xx_hal_adc.h"
#include "stm32l0xx_hal_comp.h"
#include "stm32l0xx_hal_dac.h"
#include "stm32l0xx_hal_gpio.h"
#include "stm32l0xx_hal_usart.h"

//#include "main.h"

// need to delay so the DAC output can stabilise and charge the circuit capacitance
// even with long delays and sampling times, the first read is not what we expect (close to DAC)
#define WAIT_BEFORE_READING

// for testing, disable the comparators so we can test the ADC alone
// must also define in _it.c
#define USE_COMPARATORS

// either we read the comparator state or its output pin in the interrupt
//#define COMP_USE_HAL_STATE


/* USER CODE END Includes */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc;
DMA_HandleTypeDef hdma_adc;

#ifdef USE_COMPARATORS
void MX_COMP1_Init(void);
COMP_HandleTypeDef hcomp1;
COMP_HandleTypeDef hcomp2;
#endif

DAC_HandleTypeDef hdac;

UART_HandleTypeDef huart2;
DMA_HandleTypeDef hdma_usart2_tx;


uint8_t compValues[2];

/* USER CODE BEGIN PV */
/* Private variables ---------------------------------------------------------*/

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_ADC_Init(void);
#ifdef USE_COMPARATORS
static void MX_COMP2_Init(void);
#endif
static void MX_DAC_Init(void);
static void MX_USART2_UART_Init(void);

/* USER CODE BEGIN PFP */
/* Private function prototypes -----------------------------------------------*/
void APP_ADC_Init(ADC_HandleTypeDef *hadc);

/* USER CODE END PFP */

/* USER CODE BEGIN 0 */

DAC_ChannelConfTypeDef dacConfig;
uint8_t *str = (uint8_t *) "Comparator and ADC simultaneous usage test\r\n";
uint8_t *heading   = (uint8_t *) " Count       DAC           ADC1           ADC2         Comp1  Comp2   PA6/7\r\n";
uint8_t dataline[120];

#define DAC_STEPSIZE 128

// at 1cycle5 bufsize 16 works, 2 dies because half /full IRQ too busy
#define ADC_BUFSIZE 4
uint32_t adcBuf[ADC_BUFSIZE*4];


void itoa(int32_t i, char *buf, uint32_t len) {
	memset(buf,' ',len);
	uint32_t x = len;

	while((i) &&(x)) {
		char ch = '0' + i%10;
		buf[x--] = ch;
		i/=10;
	}
	if(x==len)
		buf[x] = '0';
}

/* USER CODE END 0 */


int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration----------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC_Init();
  APP_ADC_Init(&hadc);

#ifdef USE_COMPARATORS
  MX_COMP1_Init();
  MX_COMP2_Init();
#endif
  MX_DAC_Init();
  MX_USART2_UART_Init();

  /* USER CODE BEGIN 2 */


  HAL_UART_Transmit(&huart2,str,strlen((const char *) str),1000);
  HAL_UART_Transmit(&huart2,heading,strlen((const char *) heading),1000);

  dacConfig.DAC_Trigger =  DAC_TRIGGER_NONE;
  dacConfig.DAC_OutputBuffer = DAC_OUTPUTBUFFER_DISABLE;
  HAL_DAC_ConfigChannel(&hdac,&dacConfig,DAC_CHANNEL_1);
  HAL_DAC_SetValue(&hdac,DAC_CHANNEL_1,DAC_ALIGN_12B_R,2048);
  HAL_DAC_Start(&hdac,DAC_CHANNEL_1);


  /* Initialize ADC peripheral according to the passed parameters */
  if (HAL_ADC_Init(&hadc) != HAL_OK)
  {
    while(-1);
  }


  /* ### - 2 - Start calibration ############################################ */
  if (HAL_ADCEx_Calibration_Start(&hadc, ADC_SINGLE_ENDED) != HAL_OK)
  {
	  while(-1);
  }

  /* ### - 3 - Channel configuration ######################################## */
  /* Select Channel 0 to be converted */
  ///sConfig.Channel = ADC_CHANNEL_0;
  //if (HAL_ADC_ConfigChannel(&hadc, &sConfig) != HAL_OK)
  //{
  //  Error_Handler();
  //}

  /* ### - 4 - Start conversion in DMA mode ################################# */
  if (HAL_ADC_Start_DMA(&hadc, (uint32_t *) adcBuf,ADC_BUFSIZE) != HAL_OK)
  {
	  while(-1);
  }
  compValues[0]= '-';
  compValues[1]= '-';

#ifdef USE_COMPARATORS

  HAL_COMP_Start_IT(&hcomp1);
  HAL_COMP_Start_IT(&hcomp2);
#endif

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  uint16_t cnt=0;
  uint16_t dacValue = 0;
  memset(dataline, ' ', sizeof(dataline));
  dataline[sizeof(dataline)-1] = 0;

  while (1)
  {
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */
	  HAL_DAC_SetValue(&hdac,DAC_CHANNEL_1,DAC_ALIGN_12B_R,dacValue);


#ifdef WAIT_BEFORE_READING
	  int i;
	  for(i=0; i < 10000; i++);
#endif
	  itoa (cnt,(char *) &dataline[0],5);
	  itoa (dacValue,(char *)&dataline[10],5);

	  itoa (adcBuf[0],(char *)&dataline[20],4);
	  dataline[25] = '/';
	  itoa (adcBuf[2],(char *)&dataline[25],4);

	  itoa (adcBuf[1],(char *)&dataline[40],4);
	  dataline[45] = '/';
	  itoa (adcBuf[3],(char *)&dataline[45],4);

#ifdef USE_COMPARATORS
	  dataline[60] =  compValues[0];
	  dataline[65] =  compValues[1];
#else
//	  memcpy("Not Used",dataline[60],8);
#endif
	  dataline[70] =  (HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_6)==GPIO_PIN_SET)?'X':'0';
	  dataline[75] =  (HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_7)==GPIO_PIN_SET)?'X':'0';

	  dataline[87] = '\r';
	  dataline[88] = '\n';
	  dataline[89] = 0;

	  HAL_UART_Transmit(&huart2,dataline,strlen((const char *) dataline),1000);
	  cnt++;

	  dacValue = (dacValue >= (4096-DAC_STEPSIZE))?0:dacValue+DAC_STEPSIZE;
  }
  /* USER CODE END 3 */

}

/** System Clock Configuration
*/
void SystemClock_Config(void)
{

  RCC_OscInitTypeDef RCC_OscInitStruct;
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_PeriphCLKInitTypeDef PeriphClkInit;

  __PWR_CLK_ENABLE();

  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = 16;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  HAL_RCC_OscConfig(&RCC_OscInitStruct);

  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_SYSCLK;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
  HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0);

  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART2;
  PeriphClkInit.Usart2ClockSelection = RCC_USART2CLKSOURCE_PCLK1;
  HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit);

  HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);

  HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);

}

/* ADC init function */
void MX_ADC_Init(void)
{

  ADC_ChannelConfTypeDef sConfig;

    /**Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion) 
    */
  hadc.Instance = ADC1;
  hadc.Init.OversamplingMode = DISABLE;
  hadc.Init.ClockPrescaler = ADC_CLOCKPRESCALER_PCLK_DIV1;
  hadc.Init.Resolution = ADC_RESOLUTION12b;
  //hadc.Init.SamplingTime = ADC_SAMPLETIME_28CYCLES_5;
  //hadc.Init.SamplingTime = ADC_SAMPLETIME_41CYCLES_5;
  hadc.Init.SamplingTime = ADC_SAMPLETIME_239CYCLES_5;

  hadc.Init.ScanDirection = ADC_SCAN_DIRECTION_UPWARD;
  hadc.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc.Init.ContinuousConvMode = ENABLE;
  hadc.Init.DiscontinuousConvMode = DISABLE;
  hadc.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIG_EDGE_NONE;
  hadc.Init.DMAContinuousRequests = ENABLE;
  hadc.Init.EOCSelection = EOC_SEQ_CONV;
  hadc.Init.Overrun = OVR_DATA_OVERWRITTEN;
  hadc.Init.LowPowerAutoWait = DISABLE;
  hadc.Init.LowPowerFrequencyMode = DISABLE;
  hadc.Init.LowPowerAutoOff = DISABLE;
  HAL_ADC_Init(&hadc);

    /**Configure for the selected ADC regular channel to be converted. 
    */
  sConfig.Channel = ADC_CHANNEL_0;
  HAL_ADC_ConfigChannel(&hadc, &sConfig);

    /**Configure for the selected ADC regular channel to be converted. 
    */
  sConfig.Channel = ADC_CHANNEL_1;
  HAL_ADC_ConfigChannel(&hadc, &sConfig);

}
#ifdef USE_COMPARATORS
/* COMP1 init function */
void MX_COMP1_Init(void)
{

  hcomp1.Instance = COMP1;
  hcomp1.Init.InvertingInput = COMP_INVERTINGINPUT_1_4VREFINT;//DAC1;
  hcomp1.Init.NonInvertingInput = COMP_NONINVERTINGINPUT_IO1;
  hcomp1.Init.LPTIMConnection = COMP_LPTIMCONNECTION_DISABLED;
  hcomp1.Init.OutputPol = COMP_OUTPUTPOL_NONINVERTED;
  hcomp1.Init.Mode = COMP_MODE_LOWSPEED;
  hcomp1.Init.WindowMode = COMP_WINDOWMODE_DISABLED;
  hcomp1.Init.TriggerMode = COMP_TRIGGERMODE_IT_RISING_FALLING; //  IT_RISING;
  HAL_COMP_Init(&hcomp1);

}

/* COMP2 init function */
void MX_COMP2_Init(void)
{

  hcomp2.Instance = COMP2;
  hcomp2.Init.InvertingInput = COMP_INVERTINGINPUT_1_2VREFINT; //DAC1;
  hcomp2.Init.NonInvertingInput = COMP_NONINVERTINGINPUT_IO1; // IO1 == PA1, IO_2 =PA3 _IO2;
  hcomp2.Init.LPTIMConnection = COMP_LPTIMCONNECTION_DISABLED;
  hcomp2.Init.OutputPol = COMP_OUTPUTPOL_NONINVERTED;
  hcomp2.Init.Mode = COMP_MODE_HIGHSPEED;
  hcomp2.Init.WindowMode = COMP_WINDOWMODE_DISABLED;
  hcomp2.Init.TriggerMode = COMP_TRIGGERMODE_IT_RISING_FALLING;

  HAL_COMP_Init(&hcomp2);

}
#endif
/* DAC init function */
void MX_DAC_Init(void)
{

  DAC_ChannelConfTypeDef sConfig;

    /**DAC Initialization 
    */
  hdac.Instance = DAC;
  HAL_DAC_Init(&hdac);

    /**DAC channel OUT1 config 
    */
  sConfig.DAC_Trigger = DAC_TRIGGER_NONE;
  sConfig.DAC_OutputBuffer = DAC_OUTPUTBUFFER_ENABLE;
  HAL_DAC_ConfigChannel(&hdac, &sConfig, DAC_CHANNEL_1);

}

/* USART2 init function */
void MX_USART2_UART_Init(void)
{

  huart2.Instance = USART2;
  huart2.Init.BaudRate = 9600;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  huart2.Init.OneBitSampling = UART_ONEBIT_SAMPLING_DISABLED;
  huart2.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  HAL_UART_Init(&huart2);

}

/** 
  * Enable DMA controller clock
  */
void MX_DMA_Init(void) 
{
  /* DMA controller clock enable */
  __DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0, 0);   // adc
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
  HAL_NVIC_SetPriority(DMA1_Channel4_5_6_7_IRQn, 0, 0); // usart2
  HAL_NVIC_EnableIRQ(DMA1_Channel4_5_6_7_IRQn);

}

/** Configure pins as 
        * Analog 
        * Input 
        * Output
        * EVENT_OUT
        * EXTI
*/
void MX_GPIO_Init(void)
{

  GPIO_InitTypeDef GPIO_InitStruct;

  /* GPIO Ports Clock Enable */
  __GPIOC_CLK_ENABLE();
  __GPIOH_CLK_ENABLE();
  __GPIOA_CLK_ENABLE();
  __GPIOB_CLK_ENABLE();

  /*Configure GPIO pin : PC13 */
  GPIO_InitStruct.Pin = GPIO_PIN_13;
  GPIO_InitStruct.Mode = GPIO_MODE_EVT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pin : PA5    PA6==comp1 out PA7= comp2 out*/
  GPIO_InitStruct.Pin = GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */
void myClocks(void) {

	//  RCC_OscInitTypeDef RCC_OscInitStruct;
	//  RCC_ClkInitTypeDef RCC_ClkInitStruct;
	//  RCC_PeriphCLKInitTypeDef PeriphClkInit;


}


void APP_ADC_Init(ADC_HandleTypeDef *hadc)
{
  GPIO_InitTypeDef                 GPIO_InitStruct;
  static DMA_HandleTypeDef         DmaHandle;

  /*##-1- Enable peripherals and GPIO Clocks #################################*/
  /* Enable GPIO clock ****************************************/
  __GPIOA_CLK_ENABLE();
  /* ADC1 Periph clock enable */
 __ADC1_CLK_ENABLE();
  /* Enable DMA1 clock */
  __DMA1_CLK_ENABLE();


  /*##- 2- Configure peripheral GPIO #########################################*/
  /* ADC3 Channel8 GPIO pin configuration */
  GPIO_InitStruct.Pin = GPIO_PIN_0| GPIO_PIN_1;
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*##- 3- Configure DMA #####################################################*/

  /*********************** Configure DMA parameters ***************************/
  DmaHandle.Instance                 = DMA1_Channel1;
  DmaHandle.Init.Direction           = DMA_PERIPH_TO_MEMORY;
  DmaHandle.Init.PeriphInc           = DMA_PINC_DISABLE;
  DmaHandle.Init.MemInc              = DMA_MINC_ENABLE;
  DmaHandle.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
  DmaHandle.Init.MemDataAlignment    = DMA_MDATAALIGN_WORD;
  DmaHandle.Init.Mode                = DMA_CIRCULAR;
  DmaHandle.Init.Priority            = DMA_PRIORITY_MEDIUM;
  DmaHandle.Init.Request             = DMA_REQUEST_0;

  /* Deinitialize  & Initialize the DMA for new transfer */
  HAL_DMA_DeInit(&DmaHandle);
  HAL_DMA_Init(&DmaHandle);

  /* Associate the DMA handle */
  __HAL_LINKDMA(hadc, DMA_Handle, DmaHandle);

  /* NVIC configuration for DMA Input data interrupt */
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 1, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
}

#ifdef USE_COMPARATORS
void HAL_COMP_TriggerCallback(COMP_HandleTypeDef *hcomp)
{
	uint8_t comp;
	uint8_t valx=HAL_COMP_GetOutputLevel(hcomp);

	if (hcomp==&hcomp1) {
			   comp=0;
			} else {
			   comp = 1;
		   }
	compValues[comp] = valx + '0';

}
#endif
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
