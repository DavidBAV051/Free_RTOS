/*
 * app.c
 *
 *  Created on: Feb 14, 2026
 *      Author: david
 */

#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "fsl_debug_console.h"
#include "fsl_gpio.h"

#include "os.h"

/* ---- Definiciones -- */
#define VUART_TX_PORT GPIO1
#define VUART_TX_PIN  9U

/* --- Prototipos de Funciones --- */
void BOARD_InitHardware(void);
void vTask1(void *pvParameters);
void vTask2(void *pvParameters);

/* - Funciones UART - */
static inline void VUART_SetTxBit(uint8_t value);
void vUartSingleTask(void *pvParameters);

int main(void) {
	BOARD_InitHardware();

    gpio_pin_config_t uart_tx_config = {
        kGPIO_DigitalOutput,
        0,
    };
	GPIO_PinInit(VUART_TX_PORT, VUART_TX_PIN, &uart_tx_config);

	/*os_create_task(vTask1, "Task 1", 1000, NULL, 1, NULL); // Creamos Task1
	os_create_task(vTask2, "Task 2", 1000, NULL, 2, NULL); // Creamos Task2*/

	os_create_task(vUartSingleTask, "UART_TX", 1000, NULL, 2, NULL);
	os_task_scheduler();
    while(1);
    return 0 ;
}

static inline void VUART_SetTxBit(uint8_t value) { // Función auxiliar para escribir en el pin
    GPIO_PinWrite(VUART_TX_PORT, VUART_TX_PIN, value);
}

void vUartSingleTask(void *pvParameters) {
    uint8_t data_to_send = 'H'; // Byte a transmitir

    for(;;) {
        /* 1. START BIT (Bajo) */
        VUART_SetTxBit(0);
        vTaskDelay(1); // Esperar 1 bit de tiempo

        /* 2. DATA BITS (LSB Primero) */
        for(int i = 0; i < 8; i++) {
            uint8_t bit = (data_to_send >> i) & 0x01;
            VUART_SetTxBit(bit);
            vTaskDelay(1);
        }

        /* 3. STOP BIT (Alto) */
        VUART_SetTxBit(1);
        vTaskDelay(1);

        /* Pausa entre envíos */
        vTaskDelay(50);
    }
}

void BOARD_InitHardware(void){
    /* Init board hardware. */
    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitBootPeripherals();
#ifndef BOARD_INIT_DEBUG_CONSOLE_PERIPHERAL
    /* Init FSL debug console. */
    BOARD_InitDebugConsole();
#endif
}

/* void vTask1(void *pvParameters){

	for(;;){
		PRINTF("Task 1 is running\n\r");
		vTaskDelay(pdMS_TO_TICKS(500));
	}
}

void vTask2(void *pvParameters){

	for(;;){
		PRINTF("Task 2 is running\n\r");
		vTaskDelay(pdMS_TO_TICKS(500));
	}
}*/
