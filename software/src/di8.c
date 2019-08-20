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

#include <string.h>

uint8_t led_test_count = 0;
uint32_t led_test[11] = {
	GPIO_PIN_2,
	GPIO_PIN_3,
	GPIO_PIN_4,
	GPIO_PIN_5,
	GPIO_PIN_6,
	GPIO_PIN_15,
	GPIO_PIN_14,
	GPIO_PIN_13,
	GPIO_PIN_8,
	GPIO_PIN_9,
	GPIO_PIN_10,
};

DI8 di8;

volatile bool test = false; // TODO: Remove this when we move from 072 to 070

// Circular buffer overflow callbacks (not used)
#if 0
void DMA1_Channel4_5_6_7_IRQHandler() {
	HAL_DMA_IRQHandler(&dma);
}

void data_tramsmitted_handler(DMA_HandleTypeDef *hdma) {
	logd("transmitted\n\r");
}

void transmit_error_handler(DMA_HandleTypeDef *hdma) {
	logd("error\n\r");
}
#endif

void di8_init_dma(void) {
	__HAL_RCC_TIM1_CLK_ENABLE();
	__HAL_RCC_DMA1_CLK_ENABLE();

	// Enable timer for DMA
	TIM_HandleTypeDef tim;
	tim.Instance = TIM1;
	tim.Init.Prescaler = 48-1;
	tim.Init.CounterMode = TIM_COUNTERMODE_UP;
	tim.Init.Period = DI8_MEASURE_PERIOD_US-1;
	tim.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
	tim.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
	tim.Init.RepetitionCounter = 0;
	if(HAL_TIM_Base_Init(&tim) != HAL_OK) {
		loge("Coud not initialize TIM\n\r");
	}

	// Enable circular peripheral (gpio) to memory DMA and link it to timer
	DMA_HandleTypeDef dma; 
	dma.Instance = DMA1_Channel5;
	dma.Init.Direction = DMA_PERIPH_TO_MEMORY;
	dma.Init.PeriphInc = DMA_PINC_DISABLE;
	dma.Init.MemInc = DMA_MINC_ENABLE;
	dma.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE; // 8 bits
	dma.Init.MemDataAlignment = DMA_PDATAALIGN_BYTE;
	dma.Init.Mode = DMA_CIRCULAR;
	dma.Init.Priority = DMA_PRIORITY_MEDIUM;
	if(HAL_DMA_Init(&dma) != HAL_OK) {
		loge("Coud not initialize DMA\n\r");
	}

	__HAL_LINKDMA(&tim, hdma[TIM_DMA_ID_UPDATE], dma);

	// Circular buffer overflow callbacks (not used)
#if 0
	NVIC_SetPriority(DMA1_Channel4_5_6_7_IRQn, 0); // enable DMA IRQ
	NVIC_EnableIRQ(DMA1_Channel4_5_6_7_IRQn);
	tim.hdma[TIM_DMA_ID_UPDATE]->XferCpltCallback = data_tramsmitted_handler;
	tim.hdma[TIM_DMA_ID_UPDATE]->XferErrorCallback = transmit_error_handler;
#endif

	// Start timer
	__HAL_TIM_ENABLE_DMA(&tim, TIM_DMA_UPDATE);
	__HAL_TIM_ENABLE(&tim);

	// Start circular GPIO DMA -> memory
	HAL_DMA_Start_IT(tim.hdma[TIM_DMA_ID_UPDATE], (uint32_t)&GPIOB->IDR, (uint32_t)&di8.dma_buffer[0], DI8_DMA_BUFFER_SIZE);

	// TODO: Remove this when we move from 072 to 070
	while(!test) {
		__NOP();
	}

	__disable_irq();
	const uint16_t cndtr1 = DMA1_Channel5->CNDTR;
	uint16_t cndtr2 = DMA1_Channel5->CNDTR;
	while(cndtr1 != cndtr2) {
		cndtr2 = DMA1_Channel5->CNDTR;
	}
	di8.dma_buffer_start_index = DI8_DMA_BUFFER_SIZE - cndtr2;
	di8.dma_buffer_start_time = system_timer_get_us();
	__enable_irq();
}

void di8_init(void) {
	memset(&di8, 0, sizeof(DI8));

	__HAL_RCC_GPIOB_CLK_ENABLE();
	__HAL_RCC_GPIOA_CLK_ENABLE();

	GPIO_InitTypeDef gpio_in = {
		.Mode  = GPIO_MODE_INPUT,
		.Pull  = GPIO_PULLUP,
		.Speed = GPIO_SPEED_FREQ_LOW
	};

	gpio_in.Pin = GPIO_PIN_0;
	HAL_GPIO_Init(GPIOB, &gpio_in);
	gpio_in.Pin = GPIO_PIN_1;
	HAL_GPIO_Init(GPIOB, &gpio_in);
	gpio_in.Pin = GPIO_PIN_2;
	HAL_GPIO_Init(GPIOB, &gpio_in);
	gpio_in.Pin = GPIO_PIN_3;
	HAL_GPIO_Init(GPIOB, &gpio_in);
	gpio_in.Pin = GPIO_PIN_4;
	HAL_GPIO_Init(GPIOB, &gpio_in);
	gpio_in.Pin = GPIO_PIN_5;
	HAL_GPIO_Init(GPIOB, &gpio_in);
	gpio_in.Pin = GPIO_PIN_6;
	HAL_GPIO_Init(GPIOB, &gpio_in);
	gpio_in.Pin = GPIO_PIN_7;
	HAL_GPIO_Init(GPIOB, &gpio_in);

	di8_init_dma();

	di8.last_value = di8_get_value();


	// LED TEST
	GPIO_InitTypeDef gpio_out = {
		.Mode  = GPIO_MODE_OUTPUT_PP,
		.Speed = GPIO_SPEED_FREQ_LOW
	};

	for(uint8_t i = 0; i < 11; i++) {
		gpio_out.Pin = led_test[i];
		HAL_GPIO_Init(GPIOA, &gpio_out);
	}
}

void led_test_all_off(void) {
	for(uint8_t i = 0; i < 11; i++) {
		HAL_GPIO_WritePin(GPIOA, led_test[i], GPIO_PIN_SET);
	}
}

uint8_t di8_get_value(void) {
	return GPIOB->IDR & 0xFF;
}

inline void di8_tick(void) {
	static uint32_t last_time = 0;
	static uint32_t count = 0;

	uint16_t dma_buffer_end_index = DI8_DMA_BUFFER_SIZE - DMA1_Channel5->CNDTR;

	while(di8.dma_buffer_start_index != dma_buffer_end_index) {
		const uint8_t new_value = di8.dma_buffer[di8.dma_buffer_start_index];
		if(new_value != di8.last_value) {
			di8.last_value = new_value;
			di8.buffer_timestamps[di8.buffer_end_index] = di8.dma_buffer_start_time + di8.dma_buffer_counter*DI8_MEASURE_PERIOD_US;
			di8.buffer_values[di8.buffer_end_index]     = new_value;
			di8.buffer_end_index++;
			if(di8.buffer_start_index == di8.buffer_end_index) {
				// TODO: Overflow Counter +1?
				di8.buffer_start_index++;
			}
		}
		di8.dma_buffer_start_index++;
		if(di8.dma_buffer_start_index >= DI8_DMA_BUFFER_SIZE) {
			di8.dma_buffer_start_index = 0;
		}
		di8.dma_buffer_counter++;
	}


	count++;
	//if(system_timer_is_time_elapsed_ms(last_time, 1000)) {
	if(system_timer_is_time_elapsed_ms(last_time, 250)) {
		uint32_t sys = (uint32_t)system_timer_get_us();
		uint32_t cur = (uint32_t)(di8.dma_buffer_start_time + di8.dma_buffer_counter*DI8_MEASURE_PERIOD_US);
		last_time = system_timer_get_ms();
		logd("count: %d -> S %d Time %d vs %d\n\r", count, (uint32_t)di8.dma_buffer_start_time, sys, cur);
		count = 0;

		led_test_count = (led_test_count + 1) % 11;
		led_test_all_off();
		HAL_GPIO_WritePin(GPIOA, led_test[led_test_count], GPIO_PIN_RESET);

	}
}
