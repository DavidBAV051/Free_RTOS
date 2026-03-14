/*
 * os.c
 *
 *  Created on: Feb 14, 2026
 *      Author: david
 */

#include "os.h"
#include "fsl_debug_console.h"

QueueHandle_t log_queue = NULL;

BaseType_t os_create_task(TaskFunction_t pvTaskCode, const char * const pcName,
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

void log_init(uint32_t queue_length, uint32_t max_log_lenght)
{
    log_queue = xQueueCreate(queue_length, max_log_lenght);
    /* Enable queue view in MCUX IDE FreeRTOS TAD plugin. */
    if (log_queue != NULL)
    {
        vQueueAddToRegistry(log_queue, "LogQ");
    }
    if (xTaskCreate(log_task, "log_task", configMINIMAL_STACK_SIZE + 166, NULL, tskIDLE_PRIORITY + 1, NULL) != pdPASS)
    {
        PRINTF("Task creation failed!.\r\n");
        while (1)
            ;
    }
}

void log_task(void *pvParameters)
{
    uint32_t counter = 0;
    char log[MAX_LOG_LENGTH + 1];
    while (1)
    {
        if (xQueueReceive(log_queue, log, portMAX_DELAY) != pdTRUE)
        {
            PRINTF("Failed to receive queue.\r\n");
        }
        PRINTF("Log %d: %s\r\n", counter, log);
        counter++;
    }
}

void log_add(char *log)
{
	BaseType_t xStatus;
	xStatus = xQueueSend(log_queue, log, 0);
	if (xStatus == 1)
	{
		PRINTF("Queue enter\n");
	}
	else{
		PRINTF("Insertion failed\n");
	}
}

void queue_pop_all(void) {
    char temp_log[MAX_LOG_LENGTH + 1];
    uint32_t elements_to_pop = uxQueueMessagesWaiting(log_queue);

    PRINTF("Vaciando cola: %d elementos encontrados\n", (int)elements_to_pop);

    while (xQueueReceive(log_queue, temp_log, 0) == pdPASS) {
        PRINTF("Vaciado Manual: %s\r\n", temp_log);
    }

    PRINTF("Cola vacia.\n");
}




