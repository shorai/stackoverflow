/*
 * rcservo.c
 *
 *  Created on: Jan 28, 2016
 *      Author: Chris
 *
 *  Several of the timer ouputs are set to PWM out
 *       The overall settings are thus:-
 *
 *       - overall period 10mS  or 100Hz - this is the recommended repetition rate for RC servos
 *       - timer  clocks set to  1MHz
 *       - default pulse length set to 1.5ms (centre position) on all servos - adjust in Cube and regenerate
 *       - The RC servo needs to have a pulse length of 0.1->2ms
 *             which we make correspond to a setting of +-1000 i.e. from -1000 to 0 to 1000
 *
 *  As this all happens in the timer, we simply need to check the setting is in range and put it in the
 *  timer register.
 *
 *  At a later stage we will allow 'soft' limits to be set in software
 *
 */
#include "tim.h"

extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim4;
extern TIM_HandleTypeDef htim9;


#define RC_NUM_SERVOS 8

typedef struct {
	char *ServoName;
	int16_t currentPosition;
	int8_t enabled;
	int16_t trim;
	int16_t maxPos;
	int16_t minPos;
	TIM_HandleTypeDef * tim;
	uint8_t channel;
} RC_SERVO_TYPE;

RC_SERVO_TYPE rcServos[RC_NUM_SERVOS] = {
		{"X"  , 1500, 0, 0, 2000, 1000, &htim2, 2},
		{"Y"  , 1500, 0, 0, 2000, 1000, &htim2, 2},
		{"UP" , 1500, 0, 0, 2000, 1000, &htim3, 2},
		{"DN" , 1500, 0, 0, 2000, 1000, &htim3, 2},
		{"LT" , 1500, 0, 0, 2000, 1000, &htim4, 2},
		{"RT" , 1500, 0, 0, 2000, 1000, &htim4, 2},
		{"LX" , 1500, 0, 0, 2000, 1000, &htim9, 2},
		{"RX" , 1500, 0, 0, 2000, 1000, &htim9, 2},

};

void RCS_init(void) {
	uint8_t servo;

	for(servo=0; servo < 8; servo++) {
		rcServos[servo].tim->Instance->CCR1 = rcServos[servo].currentPosition;
		HAL_TIM_PWM_Start(rcServos[servo].tim,rcServos[servo].channel);
	}

}

void RCS_setServo(uint8_t servo, int16_t pos) {
	uint16_t p = 1500+pos;
	if (servo >=8)
		return;

	if ((p <= rcServos[servo].maxPos)
	&&  (p >= rcServos[servo].minPos)) {
		rcServos[servo].tim->Instance->CCR1 = p;
		rcServos[servo].currentPosition = p;
	}
}
