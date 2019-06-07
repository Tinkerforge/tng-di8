/* tng-di8
 * Copyright (C) 2019 Olaf Lüke <olaf@tinkerforge.com>
 *
 * main.c: Initialization for TNG-DI8
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

#include "configs/config.h"

#include "stm32f0xx_hal.h"
#include "bricklib2/hal/system_timer/system_timer.h"

int main(void) {
	__HAL_RCC_GPIOC_CLK_ENABLE();
	GPIO_InitTypeDef GPIO_InitStructure; 
	GPIO_InitStructure.Pin   = GPIO_PIN_6;
	GPIO_InitStructure.Mode  = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStructure.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(GPIOC, &GPIO_InitStructure);

	GPIO_InitStructure.Pin   = GPIO_PIN_7;
	HAL_GPIO_Init(GPIOC, &GPIO_InitStructure);
	GPIO_InitStructure.Pin   = GPIO_PIN_8;
	HAL_GPIO_Init(GPIOC, &GPIO_InitStructure);
	GPIO_InitStructure.Pin   = GPIO_PIN_9;
	HAL_GPIO_Init(GPIOC, &GPIO_InitStructure);

	while(true) {
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, GPIO_PIN_SET);
		system_timer_sleep_ms(200);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_6, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_SET);
		system_timer_sleep_ms(200);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_7, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_SET);
		system_timer_sleep_ms(200);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_8, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(GPIOC, GPIO_PIN_9, GPIO_PIN_SET);
		system_timer_sleep_ms(200);
	}
}
