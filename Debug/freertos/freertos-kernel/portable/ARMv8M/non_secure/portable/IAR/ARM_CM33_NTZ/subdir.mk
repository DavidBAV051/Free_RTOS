################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../freertos/freertos-kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/portasm.s 

S_UPPER_SRCS += \
../freertos/freertos-kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/mpu_wrappers_v2_asm.S 

OBJS += \
./freertos/freertos-kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/mpu_wrappers_v2_asm.o \
./freertos/freertos-kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/portasm.o 


# Each subdirectory must supply rules for building sources it contributes
freertos/freertos-kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/%.o: ../freertos/freertos-kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/%.S freertos/freertos-kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\drivers" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\device" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities\debug_console" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\uart" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities\debug_console\config" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\serial_manager" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\lists" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\device\periph" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\CMSIS" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\CMSIS\m-profile" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities\str" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\osa" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\osa\config" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\include" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\template" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\template\ARM_CM33_3_priority_bits" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\board" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\portable\GCC\ARM_CM33\non_secure" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\source" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\portable\GCC\ARM_CM33_NTZ\non_secure" -g3 -gdwarf-4 -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

freertos/freertos-kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/%.o: ../freertos/freertos-kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/%.s freertos/freertos-kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\drivers" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\device" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities\debug_console" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\uart" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities\debug_console\config" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\serial_manager" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\lists" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\device\periph" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\CMSIS" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\CMSIS\m-profile" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities\str" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\osa" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\osa\config" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\include" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\template" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\template\ARM_CM33_3_priority_bits" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\board" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\portable\GCC\ARM_CM33\non_secure" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\source" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\portable\GCC\ARM_CM33_NTZ\non_secure" -g3 -gdwarf-4 -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-freertos-2f-freertos-2d-kernel-2f-portable-2f-ARMv8M-2f-non_secure-2f-portable-2f-IAR-2f-ARM_CM33_NTZ

clean-freertos-2f-freertos-2d-kernel-2f-portable-2f-ARMv8M-2f-non_secure-2f-portable-2f-IAR-2f-ARM_CM33_NTZ:
	-$(RM) ./freertos/freertos-kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/mpu_wrappers_v2_asm.o ./freertos/freertos-kernel/portable/ARMv8M/non_secure/portable/IAR/ARM_CM33_NTZ/portasm.o

.PHONY: clean-freertos-2f-freertos-2d-kernel-2f-portable-2f-ARMv8M-2f-non_secure-2f-portable-2f-IAR-2f-ARM_CM33_NTZ

