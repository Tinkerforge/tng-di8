/* tng-di8
 * Copyright (C) 2019 Olaf Lüke <olaf@tinkerforge.com>
 *
 * communication.c: TFP protocol message handling
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

#include "communication.h"

#include "bricklib2/utility/communication_callback.h"
#include "bricklib2/protocols/tfp/tfp.h"
#include "bricklib2/tng/usb_stm32/usb.h"
#include "bricklib2/hal/system_timer/system_timer.h"

#include "di8.h"

TNGHandleMessageResponse handle_message(const void *message, void *response) {
	switch(tfp_get_fid_from_message(message)) {
		case FID_GET_VALUE: return get_value(message, response);
		case FID_GET_SELECTED_VALUE: return get_selected_value(message, response);
		case FID_GET_QUEUE_VALUE: return get_queue_value(message, response);
		case FID_SET_QUEUE_CONFIGURATION: return set_queue_configuration(message);
		case FID_GET_QUEUE_CONFIGURATION: return get_queue_configuration(message, response);
		case FID_SET_QUEUE_VALUE_CALLBACK_CONFIGURATION: return set_queue_value_callback_configuration(message);
		case FID_GET_QUEUE_VALUE_CALLBACK_CONFIGURATION: return get_queue_value_callback_configuration(message, response);
		default: return HANDLE_MESSAGE_RESPONSE_NOT_SUPPORTED;
	}
}


TNGHandleMessageResponse get_value(const GetValue *data, GetValue_Response *response) {
	response->header.length = sizeof(GetValue_Response);
	response->timestamp     = system_timer_get_us();
	response->value[0]      = di8_get_value();

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}

TNGHandleMessageResponse get_selected_value(const GetSelectedValue *data, GetSelectedValue_Response *response) {
	response->header.length = sizeof(GetSelectedValue_Response);
	response->timestamp     = system_timer_get_us();
	response->value         = di8_get_value() & (1 << data->channel);

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}

TNGHandleMessageResponse get_queue_value(const GetQueueValue *data, GetQueueValue_Response *response) {
	response->header.length = sizeof(GetQueueValue_Response);
	if(di8.buffer_start_index == di8.buffer_end_index) {
		response->queue_size_remaining = 0;
		response->timestamp = 0;
		response->value[0]  = di8_get_value();
	} else {
		response->value[0]  = di8.buffer_values[di8.buffer_start_index];
		response->timestamp = di8.buffer_timestamps[di8.buffer_start_index];
		di8.buffer_start_index++;
		response->queue_size_remaining = (uint8_t)(di8.buffer_end_index - di8.buffer_start_index);
	}

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}

TNGHandleMessageResponse set_queue_configuration(const SetQueueConfiguration *data) {
	di8.queue_type           = data->queue_type;
	di8.queue_period         = data->period;

	return HANDLE_MESSAGE_RESPONSE_EMPTY;
}

TNGHandleMessageResponse get_queue_configuration(const GetQueueConfiguration *data, GetQueueConfiguration_Response *response) {
	response->header.length = sizeof(GetQueueConfiguration_Response);
	response->queue_type    = di8.queue_type;
	response->period        = di8.queue_period;

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}

TNGHandleMessageResponse set_queue_value_callback_configuration(const SetQueueValueCallbackConfiguration *data) {
	di8.queue_callback_enabled = data->enable;

	return HANDLE_MESSAGE_RESPONSE_EMPTY;
}

TNGHandleMessageResponse get_queue_value_callback_configuration(const GetQueueValueCallbackConfiguration *data, GetQueueValueCallbackConfiguration_Response *response) {
	response->header.length = sizeof(GetQueueValueCallbackConfiguration_Response);
	response->enabled       = di8.queue_callback_enabled;

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}




bool handle_edge_triggered_value_callback(void) {
	static bool is_buffered = false;
	static EdgeTriggeredValue_Callback cb;

	if(!is_buffered) {
		if((!di8.queue_callback_enabled) || (di8.queue_type != DI8_QUEUE_TYPE_EDGE_TRIGGERED) || (di8.buffer_start_index == di8.buffer_end_index)) {
			return false;
		}
	
		tfp_make_default_header(&cb.header, tng_get_uid(), sizeof(EdgeTriggeredValue_Callback), FID_CALLBACK_EDGE_TRIGGERED_VALUE);
	
		cb.value[0]  = di8.buffer_values[di8.buffer_start_index];
		cb.timestamp = di8.buffer_timestamps[di8.buffer_start_index];
		di8.buffer_start_index++;
		cb.queue_size_remaining = (uint8_t)(di8.buffer_end_index - di8.buffer_start_index);
	}

	if(usb_send((uint8_t*)&cb, sizeof(EdgeTriggeredValue_Callback))) {
		is_buffered = false;
		return true;
	} else {
		is_buffered = true;
	}

	return false;
}

bool handle_fixed_period_value_low_level_callback(void) {
	static bool is_buffered = false;
	static FixedPeriodValueLowLevel_Callback cb;

	if(!is_buffered) {
		if((!di8.queue_callback_enabled) || (di8.queue_type != DI8_QUEUE_TYPE_FIXED_PERIOD) || (di8.buffer_start_index == di8.buffer_end_index)) {
			return false;
		}

		tfp_make_default_header(&cb.header, tng_get_uid(), sizeof(FixedPeriodValueLowLevel_Callback), FID_CALLBACK_FIXED_PERIOD_VALUE_LOW_LEVEL);
		// TODO: Implement FixedPeriodValueLowLevel callback handling

	}

	if(usb_send((uint8_t*)&cb, sizeof(FixedPeriodValueLowLevel_Callback))) {
		is_buffered = false;
		return true;
	} else {
		is_buffered = true;
	}

	return false;
}

void communication_tick(void) {
	handle_edge_triggered_value_callback();
	handle_fixed_period_value_low_level_callback();
}

void communication_init(void) {
}
