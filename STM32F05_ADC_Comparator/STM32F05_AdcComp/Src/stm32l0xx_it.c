/**
  ******************************************************************************
  * @file    stm32l0xx_it.c
  * @brief   Interrupt Service Routines.
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
#include "stm32l0xx.h"
#include "stm32l0xx_it.h"

#include "main.h"
/* USER CODE BEGIN 0 */
#define USE_COMPARATORS
/* USER CODE END 0 */

/* External variables --------------------------------------------------------*/
extern DMA_HandleTypeDef hdma_adc;
extern DMA_HandleTypeDef hdma_usart2_tx;

#ifdef USE_COMPARATORS
extern COMP_HandleTypeDef hcomp1;
extern COMP_HandleTypeDef hcomp2;
#endif
/******************************************************************************/
/*            Cortex-M0+ Processor Interruption and Exception Handlers         */ 
/******************************************************************************/

/**
* @brief This function handles System tick timer.
*/
void SysTick_Handler(void)
{
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
  HAL_SYSTICK_IRQHandler();
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}

/******************************************************************************/
/* STM32L0xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32l0xx.s).                    */
/******************************************************************************/

/**
* @brief This function handles DMA1 Channel 1 interrupt. (ADC)
*/
void DMA1_Channel1_IRQHandler(void)
{
  /* USER CODE BEGIN DMA1_Channel1_IRQn 0 */

  /* USER CODE END DMA1_Channel1_IRQn 0 */
  HAL_DMA_IRQHandler(&hdma_adc);
  /* USER CODE BEGIN DMA1_Channel1_IRQn 1 */

  /* USER CODE END DMA1_Channel1_IRQn 1 */
}

/**
* @brief This function handles DMA1 Channel 4, Channel 5, Channel 6 and Channel 7 interrupts.
*/
void DMA1_Channel4_5_6_7_IRQHandler(void)
{
  /* USER CODE BEGIN DMA1_Channel4_5_6_7_IRQn 0 */

  /* USER CODE END DMA1_Channel4_5_6_7_IRQn 0 */
  HAL_DMA_IRQHandler(&hdma_usart2_tx);
  /* USER CODE BEGIN DMA1_Channel4_5_6_7_IRQn 1 */

  /* USER CODE END DMA1_Channel4_5_6_7_IRQn 1 */
}

/* USER CODE BEGIN 1 */
/**
* @brief This function handles ADC1, COMP1 and COMP2 (through EXTI lines 21 and 22) interrupts.
*/
#ifdef USE_COMPARATORS
void ADC1_COMP_IRQHandler(void)
{
  /* USER CODE BEGIN ADC1_COMP_IRQn 0 */

  /* USER CODE END ADC1_COMP_IRQn 0 */
 // HAL_ADC_IRQHandler(&hadc);
  HAL_COMP_IRQHandler(&hcomp1);
  HAL_COMP_IRQHandler(&hcomp2);
  /* USER CODE BEGIN ADC1_COMP_IRQn 1 */

  /* USER CODE END ADC1_COMP_IRQn 1 */
}
#endif
/* USER CODE END 1 */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
