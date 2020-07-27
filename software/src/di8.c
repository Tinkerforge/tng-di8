/* tng-di8-bricklet
 * Copyright (C) 2019 Olaf Lüke <olaf@tinkerforge.com>
 *
 * di8.c: Driver for 8 inputs
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

#include "di8.h"

#include "configs/config_di8.h"
#include "bricklib2/os/coop_task.h"
#include "bricklib2/logging/logging.h"
#include "bricklib2/hal/system_timer/system_timer.h"
#include "bricklib2/tng/tng_led.h"

#include <string.h>

DI8 di8;

void di8_init(void) {
	memset(&di8, 0, sizeof(DI8));

	__HAL_RCC_GPIOB_CLK_ENABLE();
	__HAL_RCC_GPIOA_CLK_ENABLE();

	GPIO_InitTypeDef gpio_in = {
		.Mode  = GPIO_MODE_INPUT,
		.Pull  = GPIO_PULLUP,
		.Speed = GPIO_SPEED_FREQ_LOW
	};

	gpio_in.Pin = GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3 | GPIO_PIN_4 | GPIO_PIN_5 | GPIO_PIN_6 | GPIO_PIN_7;
	HAL_GPIO_Init(GPIOB, &gpio_in);
}

uint8_t di8_get_value(void) {
	const uint8_t value = GPIOB->IDR & 0xFF;

	return ((value & (1 << 0)) << 6) |   // 0 -> 6
	       ((value & (1 << 1)) << 6) |   // 1 -> 7
		   ((value & (1 << 2)) << 2) |   // 2 -> 4
		   ((value & (1 << 3)) << 2) |   // 3 -> 5
		   ((value & (1 << 4)) >> 2) |   // 4 -> 2
		   ((value & (1 << 5)) >> 2) |   // 5 -> 3
		   ((value & (1 << 6)) >> 6) |   // 6 -> 0
		   ((value & (1 << 7)) >> 6);    // 7 -> 1
}

void di8_tick(void) {
	const uint8_t value = di8_get_value();
	for(uint8_t i = 0; i < DI8_CHANNEL_NUM; i++) {
		tng_led_channel_set(i, value & (1 << i));
	}

//	tng_led_status_set(0, 0, 0);
}
