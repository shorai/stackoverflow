################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Chris/STM32Cube/Repository/STM32Cube_FW_F4_V1.7.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.c \
C:/Users/Chris/STM32Cube/Repository/STM32Cube_FW_F4_V1.7.0/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c \
C:/Users/Chris/STM32Cube/Repository/STM32Cube_FW_F4_V1.7.0/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c \
C:/Users/Chris/STM32Cube/Repository/STM32Cube_FW_F4_V1.7.0/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c 

OBJS += \
./Middlewares/USB_Device_Library/usbd_cdc.o \
./Middlewares/USB_Device_Library/usbd_core.o \
./Middlewares/USB_Device_Library/usbd_ctlreq.o \
./Middlewares/USB_Device_Library/usbd_ioreq.o 

C_DEPS += \
./Middlewares/USB_Device_Library/usbd_cdc.d \
./Middlewares/USB_Device_Library/usbd_core.d \
./Middlewares/USB_Device_Library/usbd_ctlreq.d \
./Middlewares/USB_Device_Library/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/USB_Device_Library/usbd_cdc.o: C:/Users/Chris/STM32Cube/Repository/STM32Cube_FW_F4_V1.7.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Middlewares/USB_Device_Library/usbd_cdc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/USB_Device_Library/usbd_core.o: C:/Users/Chris/STM32Cube/Repository/STM32Cube_FW_F4_V1.7.0/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Middlewares/USB_Device_Library/usbd_core.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/USB_Device_Library/usbd_ctlreq.o: C:/Users/Chris/STM32Cube/Repository/STM32Cube_FW_F4_V1.7.0/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Middlewares/USB_Device_Library/usbd_ctlreq.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/USB_Device_Library/usbd_ioreq.o: C:/Users/Chris/STM32Cube/Repository/STM32Cube_FW_F4_V1.7.0/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F429xx -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -I..\..\..\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\portable\GCC\ARM_CM4F -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Core\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\ST\STM32_USB_Device_Library\Class\CDC\Inc -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Middlewares\Third_Party\FreeRTOS\Source\CMSIS_RTOS -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Include -IC:\Users\Chris\STM32Cube\Repository\STM32Cube_FW_F4_V1.7.0\Drivers\CMSIS\Device\ST\STM32F4xx\Include -I..\..\..\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc -I..\..\..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy -I../../../Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Middlewares/USB_Device_Library/usbd_ioreq.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


