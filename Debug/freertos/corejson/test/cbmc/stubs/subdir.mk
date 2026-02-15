################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freertos/corejson/test/cbmc/stubs/skipAnyLiteral.c \
../freertos/corejson/test/cbmc/stubs/skipAnyScalar.c \
../freertos/corejson/test/cbmc/stubs/skipCollection.c \
../freertos/corejson/test/cbmc/stubs/skipDigits.c \
../freertos/corejson/test/cbmc/stubs/skipEscape.c \
../freertos/corejson/test/cbmc/stubs/skipGeneric.c \
../freertos/corejson/test/cbmc/stubs/skipNumber.c \
../freertos/corejson/test/cbmc/stubs/skipSpace.c \
../freertos/corejson/test/cbmc/stubs/skipSpaceAndComma.c \
../freertos/corejson/test/cbmc/stubs/skipString.c \
../freertos/corejson/test/cbmc/stubs/skipUTF8.c 

C_DEPS += \
./freertos/corejson/test/cbmc/stubs/skipAnyLiteral.d \
./freertos/corejson/test/cbmc/stubs/skipAnyScalar.d \
./freertos/corejson/test/cbmc/stubs/skipCollection.d \
./freertos/corejson/test/cbmc/stubs/skipDigits.d \
./freertos/corejson/test/cbmc/stubs/skipEscape.d \
./freertos/corejson/test/cbmc/stubs/skipGeneric.d \
./freertos/corejson/test/cbmc/stubs/skipNumber.d \
./freertos/corejson/test/cbmc/stubs/skipSpace.d \
./freertos/corejson/test/cbmc/stubs/skipSpaceAndComma.d \
./freertos/corejson/test/cbmc/stubs/skipString.d \
./freertos/corejson/test/cbmc/stubs/skipUTF8.d 

OBJS += \
./freertos/corejson/test/cbmc/stubs/skipAnyLiteral.o \
./freertos/corejson/test/cbmc/stubs/skipAnyScalar.o \
./freertos/corejson/test/cbmc/stubs/skipCollection.o \
./freertos/corejson/test/cbmc/stubs/skipDigits.o \
./freertos/corejson/test/cbmc/stubs/skipEscape.o \
./freertos/corejson/test/cbmc/stubs/skipGeneric.o \
./freertos/corejson/test/cbmc/stubs/skipNumber.o \
./freertos/corejson/test/cbmc/stubs/skipSpace.o \
./freertos/corejson/test/cbmc/stubs/skipSpaceAndComma.o \
./freertos/corejson/test/cbmc/stubs/skipString.o \
./freertos/corejson/test/cbmc/stubs/skipUTF8.o 


# Each subdirectory must supply rules for building sources it contributes
freertos/corejson/test/cbmc/stubs/%.o: ../freertos/corejson/test/cbmc/stubs/%.c freertos/corejson/test/cbmc/stubs/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_MCXN947VDF -DCPU_MCXN947VDF_cm33 -DCPU_MCXN947VDF_cm33_core0 -DSERIAL_PORT_TYPE_UART=1 -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DUSE_RTOS=1 -DSDK_OS_FREE_RTOS -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\drivers" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\device" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities\debug_console" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\uart" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities\debug_console\config" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\serial_manager" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\lists" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\device\periph" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\CMSIS" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\CMSIS\m-profile" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\utilities\str" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\osa" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\component\osa\config" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\include" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\board" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\template" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\template\ARM_CM33_3_priority_bits" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\freertos\freertos-kernel\portable\GCC\ARM_CM33\non_secure" -I"C:\Users\david\OneDrive\Documentos\Sistemas_Operativos\Free_RTOS\source" -O0 -fno-common -g3 -gdwarf-4 -Wall -c -ffunction-sections -fdata-sections -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-freertos-2f-corejson-2f-test-2f-cbmc-2f-stubs

clean-freertos-2f-corejson-2f-test-2f-cbmc-2f-stubs:
	-$(RM) ./freertos/corejson/test/cbmc/stubs/skipAnyLiteral.d ./freertos/corejson/test/cbmc/stubs/skipAnyLiteral.o ./freertos/corejson/test/cbmc/stubs/skipAnyScalar.d ./freertos/corejson/test/cbmc/stubs/skipAnyScalar.o ./freertos/corejson/test/cbmc/stubs/skipCollection.d ./freertos/corejson/test/cbmc/stubs/skipCollection.o ./freertos/corejson/test/cbmc/stubs/skipDigits.d ./freertos/corejson/test/cbmc/stubs/skipDigits.o ./freertos/corejson/test/cbmc/stubs/skipEscape.d ./freertos/corejson/test/cbmc/stubs/skipEscape.o ./freertos/corejson/test/cbmc/stubs/skipGeneric.d ./freertos/corejson/test/cbmc/stubs/skipGeneric.o ./freertos/corejson/test/cbmc/stubs/skipNumber.d ./freertos/corejson/test/cbmc/stubs/skipNumber.o ./freertos/corejson/test/cbmc/stubs/skipSpace.d ./freertos/corejson/test/cbmc/stubs/skipSpace.o ./freertos/corejson/test/cbmc/stubs/skipSpaceAndComma.d ./freertos/corejson/test/cbmc/stubs/skipSpaceAndComma.o ./freertos/corejson/test/cbmc/stubs/skipString.d ./freertos/corejson/test/cbmc/stubs/skipString.o ./freertos/corejson/test/cbmc/stubs/skipUTF8.d ./freertos/corejson/test/cbmc/stubs/skipUTF8.o

.PHONY: clean-freertos-2f-corejson-2f-test-2f-cbmc-2f-stubs

