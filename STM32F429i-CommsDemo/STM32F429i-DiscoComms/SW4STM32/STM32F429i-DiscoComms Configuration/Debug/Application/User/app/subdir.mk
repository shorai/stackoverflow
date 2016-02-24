################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/User/app/adcHandler.c \
../Application/User/app/rcservo.c \
../Application/User/app/serial.c 

OBJS += \
./Application/User/app/adcHandler.o \
./Application/User/app/rcservo.o \
./Application/User/app/serial.o 

C_DEPS += \
./Application/User/app/adcHandler.d \
./Application/User/app/rcservo.d \
./Application/User/app/serial.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/app/%.o: ../Application/User/app/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


