################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../component/mem_manager/fsl_component_mem_manager_freertos.c 

C_DEPS += \
./component/mem_manager/fsl_component_mem_manager_freertos.d 

OBJS += \
./component/mem_manager/fsl_component_mem_manager_freertos.o 


# Each subdirectory must supply rules for building sources it contributes
component/mem_manager/%.o: ../component/mem_manager/%.c component/mem_manager/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_MCXN947VDF -DCPU_MCXN947VDF_cm33 -DCPU_MCXN947VDF_cm33_core0 -DSDK_OS_BAREMETAL -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DSDK_OS_FREE_RTOS -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\drivers" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\device" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities\debug_console" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\uart" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities\debug_console\config" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\serial_manager" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\lists" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\device\periph" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\CMSIS" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\CMSIS\m-profile" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities\str" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\include" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\coremqtt\source\include" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\coremqtt\source\interface" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\corejson\source\include" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\mem_manager" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\board" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\template" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\template\ARM_CM33_3_priority_bits" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\source" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-component-2f-mem_manager

clean-component-2f-mem_manager:
	-$(RM) ./component/mem_manager/fsl_component_mem_manager_freertos.d ./component/mem_manager/fsl_component_mem_manager_freertos.o

.PHONY: clean-component-2f-mem_manager

