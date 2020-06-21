################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Device/AD7226.c \
../src/Device/AD7416.c \
../src/Device/AD7829.c \
../src/Device/ad8032.c \
../src/Device/control.c \
../src/Device/dma_bd.c \
../src/Device/interrupt.c \
../src/Device/str_fun.c \
../src/Device/timer.c \
../src/Device/uart.c 

OBJS += \
./src/Device/AD7226.o \
./src/Device/AD7416.o \
./src/Device/AD7829.o \
./src/Device/ad8032.o \
./src/Device/control.o \
./src/Device/dma_bd.o \
./src/Device/interrupt.o \
./src/Device/str_fun.o \
./src/Device/timer.o \
./src/Device/uart.o 

C_DEPS += \
./src/Device/AD7226.d \
./src/Device/AD7416.d \
./src/Device/AD7829.d \
./src/Device/ad8032.d \
./src/Device/control.d \
./src/Device/dma_bd.d \
./src/Device/interrupt.d \
./src/Device/str_fun.d \
./src/Device/timer.d \
./src/Device/uart.d 


# Each subdirectory must supply rules for building sources it contributes
src/Device/%.o: ../src/Device/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../freeos_control_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


