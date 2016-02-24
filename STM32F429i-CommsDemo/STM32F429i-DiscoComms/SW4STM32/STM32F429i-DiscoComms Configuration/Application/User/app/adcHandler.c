
#include "adc.h"

#define ADC_BUFFER_LEN 2048

// we keep three values - first half, second half , latest
float adcValues[3][3];

uint16_t adc_buffer[3][ADC_BUFFER_LEN];


void adcHandlerInit() {
	// The ADC should all be running by now

	HAL_ADC_Start_DMA(&hadc1, (uint32_t *)adc_buffer[0],ADC_BUFFER_LEN);
	HAL_ADC_Start_DMA(&hadc2, (uint32_t *)adc_buffer[1],ADC_BUFFER_LEN);
	HAL_ADC_Start_DMA(&hadc3, (uint32_t *)adc_buffer[2],ADC_BUFFER_LEN);
}
/**
 * This is application specific code to sum the results for an ADC half buffer into values.
 * Two values are kept plus the latest
 *
 */
void adcSum(ADC_HandleTypeDef *hadc, uint16_t offset) {
	uint16_t i;
	float val = 0.0;
	uint8_t n;
	//int32_t sq = 0;
	uint16_t *p;

	if (hadc == &hadc1) {
		n=0;
	} else if (hadc==&hadc2) {
		n=1;
	} else {
		n=2;
	}
	p = &adc_buffer[n][offset*ADC_BUFFER_LEN/2];
	for (i=0 ; i < ADC_BUFFER_LEN/2; i++) {
		val += ((float)*p++)*3.3/4095/ADC_BUFFER_LEN;
	}
	adcValues[n][offset] = val;
	adcValues[n][2] = val;
}


float adcGetVolts(uint8_t adc) {
	return adcValues[adc][2];
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *adc) {
	adcSum(adc,1);
}

void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef *adc) {
	adcSum(adc,0);
}
