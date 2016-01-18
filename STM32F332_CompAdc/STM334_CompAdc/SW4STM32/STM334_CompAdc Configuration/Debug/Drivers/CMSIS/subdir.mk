################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32f3xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f3xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f3xx.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/system_stm32f3xx.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/CMSIS/system_stm32f3xx.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


