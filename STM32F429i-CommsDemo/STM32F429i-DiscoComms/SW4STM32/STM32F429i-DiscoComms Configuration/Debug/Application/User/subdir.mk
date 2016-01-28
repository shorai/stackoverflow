################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/adc.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/dma.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/freertos.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/gpio.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/i2c.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/main.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/spi.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/stm32f4xx_hal_msp.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/stm32f4xx_it.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/tim.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/usart.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/usb_device.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/usbd_cdc_if.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/usbd_conf.c \
D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/usbd_desc.c 

OBJS += \
./Application/User/adc.o \
./Application/User/dma.o \
./Application/User/freertos.o \
./Application/User/gpio.o \
./Application/User/i2c.o \
./Application/User/main.o \
./Application/User/spi.o \
./Application/User/stm32f4xx_hal_msp.o \
./Application/User/stm32f4xx_it.o \
./Application/User/tim.o \
./Application/User/usart.o \
./Application/User/usb_device.o \
./Application/User/usbd_cdc_if.o \
./Application/User/usbd_conf.o \
./Application/User/usbd_desc.o 

C_DEPS += \
./Application/User/adc.d \
./Application/User/dma.d \
./Application/User/freertos.d \
./Application/User/gpio.d \
./Application/User/i2c.d \
./Application/User/main.d \
./Application/User/spi.d \
./Application/User/stm32f4xx_hal_msp.d \
./Application/User/stm32f4xx_it.d \
./Application/User/tim.d \
./Application/User/usart.d \
./Application/User/usb_device.d \
./Application/User/usbd_cdc_if.d \
./Application/User/usbd_conf.d \
./Application/User/usbd_desc.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/adc.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/adc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/dma.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/dma.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/freertos.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/freertos.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/freertos.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/gpio.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/i2c.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/i2c.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/main.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/main.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/spi.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/spi.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/spi.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f4xx_hal_msp.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/stm32f4xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/stm32f4xx_hal_msp.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f4xx_it.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/stm32f4xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/stm32f4xx_it.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/tim.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/tim.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usart.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/usart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usb_device.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/usb_device.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/usb_device.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usbd_cdc_if.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/usbd_cdc_if.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/usbd_cdc_if.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usbd_conf.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/usbd_conf.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/usbd_conf.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usbd_desc.o: D:/git/stackOverflow/STM32F429i-CommsDemo/STM32F429i-DiscoComms/Src/usbd_desc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Application/User/usbd_desc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


