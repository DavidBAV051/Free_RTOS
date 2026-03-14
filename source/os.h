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
#include "queue.h"

#define MAX_LOG_LENGTH 20


/* 9600 Hz significa que 1 Tick = ~104 microsegundos (1 bit a 9600 baudios)
#define configTICK_RATE_HZ ((TickType_t)9600) */

extern QueueHandle_t log_queue;

/* --- Wrappers para las funciones de FreeRTOS -- */
BaseType_t os_create_task(TaskFunction_t pvTaskCode, const char * const pcName,
			const uint16_t usStackDepth, void * const pvParameters,
			UBaseType_t uxPriority,TaskHandle_t * const pxCreatedTask);



void os_set_priority(TaskHandle_t task, uint32_t new_priority);

void os_task_scheduler(void);


//Funciones para queue
void log_init(uint32_t queue_length, uint32_t max_log_lenght);

void log_task(void *pvParameters);

void log_add(char *log);

void queue_pop_all();

#endif /* OS_H_ */
