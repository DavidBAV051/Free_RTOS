/*
 * os.h
 *
 *  Created on: Feb 14, 2026
 *      Author: david
 */

#ifndef OS_H_
#define OS_H_

#include "FreeRTOS.h"
#include "task.h"

/* --- Wrappers para las funciones de FreeRTOS -- */
BaseType_t os_create_task(TaskFunction_t pvTaskCode, const char * const pcName,
			const uint16_t usStackDepth, void * const pvParameters,
			UBaseType_t uxPriority,TaskHandle_t * const pxCreatedTask);

void os_set_priority(TaskHandle_t task, uint32_t new_priority);

void os_task_scheduler(void);

#endif /* OS_H_ */
