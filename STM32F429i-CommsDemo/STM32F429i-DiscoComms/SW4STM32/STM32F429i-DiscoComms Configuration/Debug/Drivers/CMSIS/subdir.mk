################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Chris/STM32Cube/Repository/STM32Cube_FW_F4_V1.7.0/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32f4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f4xx.o: C:/Users/Chris/STM32Cube/Repository/STM32Cube_FW_F4_V1.7.0/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/CMSIS/system_stm32f4xx.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


