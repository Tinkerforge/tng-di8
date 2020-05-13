/* ***********************************************************
 * This file was automatically generated on 2019-07-01.      *
 *                                                           *
 * C/C++ Bindings Version 2.1.25                             *
 *                                                           *
 * If you have a bugfix for this file and want to commit it, *
 * please fix the bug in the generator. You can find a link  *
 * to the generators git repository on tinkerforge.com       *
 *************************************************************/

#ifndef TNG_DI8_H
#define TNG_DI8_H

#include "ip_connection.h"

#ifdef __cplusplus
extern "C" {
#endif

/**
 * \defgroup TNGDI8 TNG DI8
 */

/**
 * \ingroup TNGDI8
 *
 * TBD
 */
typedef Device DI8;

/**
 * \ingroup TNGDI8
 */
#define DI8_FUNCTION_GET_VALUE 1

/**
 * \ingroup TNGDI8
 */
#define DI8_FUNCTION_COPY_FIRMWARE 236

/**
 * \ingroup TNGDI8
 */
#define DI8_FUNCTION_SET_WRITE_FIRMWARE_POINTER 237

/**
 * \ingroup TNGDI8
 */
#define DI8_FUNCTION_WRITE_FIRMWARE 238

/**
 * \ingroup TNGDI8
 */
#define DI8_FUNCTION_RESET 243


/**
 * \ingroup TNGDI8
 */
#define DI8_COPY_STATUS_OK 0

/**
 * \ingroup TNGDI8
 */
#define DI8_COPY_STATUS_DEVICE_IDENTIFIER_INCORRECT 1

/**
 * \ingroup TNGDI8
 */
#define DI8_COPY_STATUS_MAGIC_NUMBER_INCORRECT 2

/**
 * \ingroup TNGDI8
 */
#define DI8_COPY_STATUS_LENGTH_MALFORMED 3

/**
 * \ingroup TNGDI8
 */
#define DI8_COPY_STATUS_CRC_MISMATCH 4

/**
 * \ingroup TNGDI8
 *
 * This constant is used to identify a TNG DI8.
 *
 * The {@link di8_get_identity} function and the
 * {@link IPCON_CALLBACK_ENUMERATE} callback of the IP Connection have a
 * \c device_identifier parameter to specify the Brick's or Bricklet's type.
 */
#define DI8_DEVICE_IDENTIFIER 201

/**
 * \ingroup TNGDI8
 *
 * This constant represents the display name of a TNG DI8.
 */
#define DI8_DEVICE_DISPLAY_NAME "TNG DI8"

/**
 * \ingroup TNGDI8
 *
 * Creates the device object \c di8 with the unique device ID \c uid and adds
 * it to the IPConnection \c ipcon.
 */
void di8_create(DI8 *di8, const char *uid, IPConnection *ipcon);

/**
 * \ingroup TNGDI8
 *
 * Removes the device object \c di8 from its IPConnection and destroys it.
 * The device object cannot be used anymore afterwards.
 */
void di8_destroy(DI8 *di8);

/**
 * \ingroup TNGDI8
 *
 * Returns the response expected flag for the function specified by the
 * \c function_id parameter. It is *true* if the function is expected to
 * send a response, *false* otherwise.
 *
 * For getter functions this is enabled by default and cannot be disabled,
 * because those functions will always send a response. For callback
 * configuration functions it is enabled by default too, but can be disabled
 * via the di8_set_response_expected function. For setter functions it is
 * disabled by default and can be enabled.
 *
 * Enabling the response expected flag for a setter function allows to
 * detect timeouts and other error conditions calls of this setter as well.
 * The device will then send a response for this purpose. If this flag is
 * disabled for a setter function then no response is send and errors are
 * silently ignored, because they cannot be detected.
 */
int di8_get_response_expected(DI8 *di8, uint8_t function_id, bool *ret_response_expected);

/**
 * \ingroup TNGDI8
 *
 * Changes the response expected flag of the function specified by the
 * \c function_id parameter. This flag can only be changed for setter
 * (default value: *false*) and callback configuration functions
 * (default value: *true*). For getter functions it is always enabled.
 *
 * Enabling the response expected flag for a setter function allows to detect
 * timeouts and other error conditions calls of this setter as well. The device
 * will then send a response for this purpose. If this flag is disabled for a
 * setter function then no response is send and errors are silently ignored,
 * because they cannot be detected.
 */
int di8_set_response_expected(DI8 *di8, uint8_t function_id, bool response_expected);

/**
 * \ingroup TNGDI8
 *
 * Changes the response expected flag for all setter and callback configuration
 * functions of this device at once.
 */
int di8_set_response_expected_all(DI8 *di8, bool response_expected);


/**
 * \ingroup TNGDI8
 *
 * Returns the API version (major, minor, release) of the bindings for this
 * device.
 */
int di8_get_api_version(DI8 *di8, uint8_t ret_api_version[3]);

/**
 * \ingroup TNGDI8
 *
 * Returns the input value as bools, *true* refers to high and *false* refers to low.
 */
int di8_get_value(DI8 *di8, bool ret_value[8]);

/**
 * \ingroup TNGDI8
 *
 * TODO
 */
int di8_copy_firmware(DI8 *di8, uint8_t *ret_status);

/**
 * \ingroup TNGDI8
 *
 * TODO
 */
int di8_set_write_firmware_pointer(DI8 *di8, uint32_t pointer);

/**
 * \ingroup TNGDI8
 *
 * TODO
 */
int di8_write_firmware(DI8 *di8, uint8_t data[64], uint8_t *ret_status);

/**
 * \ingroup TNGDI8
 *
 * Calling this function will reset the TNG module. All configurations
 * will be lost.
 * 
 * After a reset you have to create new device objects,
 * calling functions on the existing ones will result in
 * undefined behavior!
 */
int di8_reset(DI8 *di8);

#ifdef __cplusplus
}
#endif

#endif
