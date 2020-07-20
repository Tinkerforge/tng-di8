/* tng-di8
 * Copyright (C) 2020 Olaf Lüke <olaf@tinkerforge.com>
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
#include "bricklib2/hal/system_timer/system_timer.h"
#include "bricklib2/protocols/tfp/tfp.h"
#include "bricklib2/tng/usb_stm32/usb.h"

#include "di8.h"

TNGHandleMessageResponse handle_message(const void *message, void *response) {
	switch(tfp_get_fid_from_message(message)) {
		case FID_GET_VALUES: return get_values(message, response);
		case FID_GET_SELECTED_VALUE: return get_selected_value(message, response);
		default: return HANDLE_MESSAGE_RESPONSE_NOT_SUPPORTED;
	}
}

TNGHandleMessageResponse get_values(const GetValues *data, GetValues_Response *response) {
	response->header.length = sizeof(GetValues_Response);

	__disable_irq();
	response->timestamp     = system_timer_get_us();
	response->values[0]     = di8_get_value();
	__enable_irq();

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}

TNGHandleMessageResponse get_selected_value(const GetSelectedValue *data, GetSelectedValue_Response *response) {
	if(data->channel >= DI8_CHANNEL_NUM) {
		return HANDLE_MESSAGE_RESPONSE_INVALID_PARAMETER;
	}

	response->header.length = sizeof(GetSelectedValue_Response);

	__disable_irq();
	response->timestamp     = system_timer_get_us();
	response->value         = di8_get_value() & (1 << data->channel);
	__enable_irq();

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}


void communication_tick(void) {
}

void communication_init(void) {
}
