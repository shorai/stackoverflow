################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_adc.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_adc_ex.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_comp.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_cortex.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_dac.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_dac_ex.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_dma.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash_ex.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_gpio.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr_ex.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc.c \
D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc_ex.c 

OBJS += \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_adc.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_adc_ex.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_comp.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_cortex.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_dac.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_dac_ex.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_dma.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_flash.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_flash_ex.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_gpio.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_pwr.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_pwr_ex.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_rcc.o \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_rcc_ex.o 

C_DEPS += \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_adc.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_adc_ex.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_comp.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_cortex.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_dac.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_dac_ex.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_dma.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_flash.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_flash_ex.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_gpio.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_pwr.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_pwr_ex.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_rcc.d \
./Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_rcc_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_adc.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_adc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_adc_ex.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_adc_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_adc_ex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_comp.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_comp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_comp.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_cortex.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_cortex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_cortex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_dac.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_dac.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_dac.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_dac_ex.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_dac_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_dac_ex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_dma.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_dma.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_flash.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_flash.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_flash_ex.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_flash_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_flash_ex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_gpio.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_pwr.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_pwr.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_pwr_ex.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_pwr_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_pwr_ex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_rcc.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_rcc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_rcc_ex.o: D:/git/stackOverflow/STM32F332_CompAdc/STM334_CompAdc/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_hal_rcc_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F334x8 -I..\..\..\Inc -I..\..\..\Drivers\STM32F3xx_HAL_Driver\Inc -I..\..\..\Drivers\CMSIS\Include -I..\..\..\Drivers\CMSIS\Device\ST\STM32F3xx\Include -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Drivers/STM32F3xx_HAL_Driver/stm32f3xx_hal_rcc_ex.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


