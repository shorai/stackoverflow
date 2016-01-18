################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/git/stackOverflow/STM32F05_ADC_Comparator/STM32F05_AdcComp/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/system_stm32l0xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32l0xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32l0xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32l0xx.o: D:/git/stackOverflow/STM32F05_ADC_Comparator/STM32F05_AdcComp/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/system_stm32l0xx.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -mfloat-abi=soft -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32L053xx -I..\..\..\Inc -I..\..\..\Drivers\STM32L0xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32L0xx_HAL_Driver\Inc\Legacy -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32L0xx\Include -I..\..\..\Inc -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/CMSIS/system_stm32l0xx.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


