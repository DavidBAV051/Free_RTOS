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

int main(void) {
	BOARD_InitHardware();

	os_task_scheduler();
    while(1);
    return 0 ;
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
