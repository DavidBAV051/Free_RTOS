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

#include "os.h"

/* --- Prototipos de Funciones --- */
void BOARD_InitHardware(void);
void vTask1(void *pvParameters);
void vTask2(void *pvParameters);

int main(void) {
	BOARD_InitHardware();

	PRINTF("Creating Task 1\n\r");
	os_create_task(vTask1, "Task 1", 1000, NULL, 1, NULL);
	PRINTF("Creating Task 2\n\r");
	os_create_task(vTask2, "Task 2", 1000, NULL, 1, NULL);

	os_task_scheduler();
    while(1);
    return 0 ;
}

void vTask1(void *pvParameters){

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
