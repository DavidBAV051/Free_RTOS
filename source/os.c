/*
 * os.c
 *
 *  Created on: Feb 14, 2026
 *      Author: david
 */

#include "os.h"

BaseType os_create_task(TaskFunction_t pvTaskCode, const char * const pcName,
			const uint16_t usStackDepth, void * const pvParameters,
			UBaseType_t uxPriority,TaskHandle_t * const pxCreatedTask){

	return xTaskCreate(pvTaskCode, pcName, usStackDepth, pvParameters,
			uxPriority, pxCreatedTask);
}

void os_set_priority(TaskHandle_t task, uint32_t new_priority) {
    vTaskPrioritySet(task, (UBaseType_t)new_priority);
}

void os_task_scheduler(void){
	vTaskStartScheduler();
}
