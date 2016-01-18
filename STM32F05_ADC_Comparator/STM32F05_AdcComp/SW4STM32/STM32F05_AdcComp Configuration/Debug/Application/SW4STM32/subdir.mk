################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
D:/git/stackOverflow/STM32F05_ADC_Comparator/STM32F05_AdcComp/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l053xx.s 

OBJS += \
./Application/SW4STM32/startup_stm32l053xx.o 


# Each subdirectory must supply rules for building sources it contributes
Application/SW4STM32/startup_stm32l053xx.o: D:/git/stackOverflow/STM32F05_ADC_Comparator/STM32F05_AdcComp/Drivers/CMSIS/Device/ST/STM32L0xx/Source/Templates/gcc/startup_stm32l053xx.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	arm-none-eabi-as -mcpu=cortex-m0plus -mthumb -mfloat-abi=soft -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


