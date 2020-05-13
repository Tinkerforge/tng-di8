/* ***********************************************************
 * This file was automatically generated on 2019-07-01.      *
 *                                                           *
 * C/C++ Bindings Version 2.1.25                             *
 *                                                           *
 * If you have a bugfix for this file and want to commit it, *
 * please fix the bug in the generator. You can find a link  *
 * to the generators git repository on tinkerforge.com       *
 *************************************************************/


#define IPCON_EXPOSE_INTERNALS

#include "tng_di8.h"

#include <string.h>

#ifdef __cplusplus
extern "C" {
#endif



#if defined _MSC_VER || defined __BORLANDC__
	#pragma pack(push)
	#pragma pack(1)
	#define ATTRIBUTE_PACKED
#elif defined __GNUC__
	#ifdef _WIN32
		// workaround struct packing bug in GCC 4.7 on Windows
		// http://gcc.gnu.org/bugzilla/show_bug.cgi?id=52991
		#define ATTRIBUTE_PACKED __attribute__((gcc_struct, packed))
	#else
		#define ATTRIBUTE_PACKED __attribute__((packed))
	#endif
#else
	#error unknown compiler, do not know how to enable struct packing
#endif

typedef struct {
	PacketHeader header;
} ATTRIBUTE_PACKED GetValue_Request;

typedef struct {
	PacketHeader header;
	uint8_t value[1];
} ATTRIBUTE_PACKED GetValue_Response;

typedef struct {
	PacketHeader header;
} ATTRIBUTE_PACKED CopyFirmware_Request;

typedef struct {
	PacketHeader header;
	uint8_t status;
} ATTRIBUTE_PACKED CopyFirmware_Response;

typedef struct {
	PacketHeader header;
	uint32_t pointer;
} ATTRIBUTE_PACKED SetWriteFirmwarePointer_Request;

typedef struct {
	PacketHeader header;
	uint8_t data[64];
} ATTRIBUTE_PACKED WriteFirmware_Request;

typedef struct {
	PacketHeader header;
	uint8_t status;
} ATTRIBUTE_PACKED WriteFirmware_Response;

typedef struct {
	PacketHeader header;
} ATTRIBUTE_PACKED Reset_Request;

#if defined _MSC_VER || defined __BORLANDC__
	#pragma pack(pop)
#endif
#undef ATTRIBUTE_PACKED

void di8_create(DI8 *di8, const char *uid, IPConnection *ipcon) {
	DevicePrivate *device_p;

	device_create(di8, uid, ipcon->p, 2, 0, 0);

	device_p = di8->p;

	device_p->response_expected[DI8_FUNCTION_GET_VALUE] = DEVICE_RESPONSE_EXPECTED_ALWAYS_TRUE;
	device_p->response_expected[DI8_FUNCTION_COPY_FIRMWARE] = DEVICE_RESPONSE_EXPECTED_ALWAYS_TRUE;
	device_p->response_expected[DI8_FUNCTION_SET_WRITE_FIRMWARE_POINTER] = DEVICE_RESPONSE_EXPECTED_FALSE;
	device_p->response_expected[DI8_FUNCTION_WRITE_FIRMWARE] = DEVICE_RESPONSE_EXPECTED_ALWAYS_TRUE;
	device_p->response_expected[DI8_FUNCTION_RESET] = DEVICE_RESPONSE_EXPECTED_FALSE;

}

void di8_destroy(DI8 *di8) {
	device_release(di8->p);
}

int di8_get_response_expected(DI8 *di8, uint8_t function_id, bool *ret_response_expected) {
	return device_get_response_expected(di8->p, function_id, ret_response_expected);
}

int di8_set_response_expected(DI8 *di8, uint8_t function_id, bool response_expected) {
	return device_set_response_expected(di8->p, function_id, response_expected);
}

int di8_set_response_expected_all(DI8 *di8, bool response_expected) {
	return device_set_response_expected_all(di8->p, response_expected);
}


int di8_get_api_version(DI8 *di8, uint8_t ret_api_version[3]) {
	return device_get_api_version(di8->p, ret_api_version);
}

int di8_get_value(DI8 *di8, bool ret_value[8]) {
	DevicePrivate *device_p = di8->p;
	GetValue_Request request;
	GetValue_Response response;
	int ret;
	int i;

	ret = packet_header_create(&request.header, sizeof(request), DI8_FUNCTION_GET_VALUE, device_p->ipcon_p, device_p);

	if (ret < 0) {
		return ret;
	}

	ret = device_send_request(device_p, (Packet *)&request, (Packet *)&response);

	if (ret < 0) {
		return ret;
	}

	for (i = 0; i < 8; i++) ret_value[i] = (response.value[i / 8] & (1 << (i % 8))) != 0;

	return ret;
}

int di8_copy_firmware(DI8 *di8, uint8_t *ret_status) {
	DevicePrivate *device_p = di8->p;
	CopyFirmware_Request request;
	CopyFirmware_Response response;
	int ret;

	ret = packet_header_create(&request.header, sizeof(request), DI8_FUNCTION_COPY_FIRMWARE, device_p->ipcon_p, device_p);

	if (ret < 0) {
		return ret;
	}

	ret = device_send_request(device_p, (Packet *)&request, (Packet *)&response);

	if (ret < 0) {
		return ret;
	}

	*ret_status = response.status;

	return ret;
}

int di8_set_write_firmware_pointer(DI8 *di8, uint32_t pointer) {
	DevicePrivate *device_p = di8->p;
	SetWriteFirmwarePointer_Request request;
	int ret;

	ret = packet_header_create(&request.header, sizeof(request), DI8_FUNCTION_SET_WRITE_FIRMWARE_POINTER, device_p->ipcon_p, device_p);

	if (ret < 0) {
		return ret;
	}

	request.pointer = leconvert_uint32_to(pointer);

	ret = device_send_request(device_p, (Packet *)&request, NULL);

	return ret;
}

int di8_write_firmware(DI8 *di8, uint8_t data[64], uint8_t *ret_status) {
	DevicePrivate *device_p = di8->p;
	WriteFirmware_Request request;
	WriteFirmware_Response response;
	int ret;

	ret = packet_header_create(&request.header, sizeof(request), DI8_FUNCTION_WRITE_FIRMWARE, device_p->ipcon_p, device_p);

	if (ret < 0) {
		return ret;
	}

	memcpy(request.data, data, 64 * sizeof(uint8_t));

	ret = device_send_request(device_p, (Packet *)&request, (Packet *)&response);

	if (ret < 0) {
		return ret;
	}

	*ret_status = response.status;

	return ret;
}

int di8_reset(DI8 *di8) {
	DevicePrivate *device_p = di8->p;
	Reset_Request request;
	int ret;

	ret = packet_header_create(&request.header, sizeof(request), DI8_FUNCTION_RESET, device_p->ipcon_p, device_p);

	if (ret < 0) {
		return ret;
	}

	ret = device_send_request(device_p, (Packet *)&request, NULL);

	return ret;
}

#ifdef __cplusplus
}
#endif
