/* tng-di8-bricklet
 * Copyright (C) 2019 Olaf Lüke <olaf@tinkerforge.com>
 *
 * driver.c: Driver for TEST
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#include "driver.h"

#include "configs/config_driver.h"
#include "bricklib2/os/coop_task.h"
#include "bricklib2/logging/logging.h"

#include <string.h>

Driver driver;
CoopTask driver_task;

void driver_task_tick(void) {
	uint32_t count = 0;

	__HAL_RCC_GPIOC_CLK_ENABLE();
	GPIO_InitTypeDef gpio_pp = {
		.Mode  = GPIO_MODE_OUTPUT_PP,
		.Speed = GPIO_SPEED_FREQ_LOW
	};

	gpio_pp.Pin = GPIO_PIN_6;
	HAL_GPIO_Init(GPIOC, &gpio_pp);
	gpio_pp.Pin = GPIO_PIN_7;
	HAL_GPIO_Init(GPIOC, &gpio_pp);
	gpio_pp.Pin = GPIO_PIN_8;
	HAL_GPIO_Init(GPIOC, &gpio_pp);
	gpio_pp.Pin = GPIO_PIN_9;
	HAL_GPIO_Init(GPIOC, &gpio_pp);

	while(true) {
		count++;
		logd("count: %d\n\r", count);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, GPIO_PIN_SET);
		coop_task_sleep_ms(500);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);
		coop_task_sleep_ms(500);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_SET);
		coop_task_sleep_ms(500);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_SET);
		coop_task_sleep_ms(500);
	}
}

void driver_init(void) {
	memset(&driver, 0, sizeof(Driver));

	coop_task_init(&driver_task, driver_task_tick);
}

void driver_tick(void) {
	coop_task_tick(&driver_task);
}