################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/startup_stm32f334x8.s 

OBJS += \
./Application/SW4STM32/startup_stm32f334x8.o 


# Each subdirectory must supply rules for building sources it contributes
Application/SW4STM32/startup_stm32f334x8.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/CMSIS/Device/ST/STM32F3xx/Source/Templates/gcc/startup_stm32f334x8.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


