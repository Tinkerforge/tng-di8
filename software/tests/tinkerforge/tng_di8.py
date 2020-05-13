# -*- coding: utf-8 -*-
#############################################################
# This file was automatically generated on 2019-07-09.      #
#                                                           #
# Python Bindings Version 2.1.22                            #
#                                                           #
# If you have a bugfix for this file and want to commit it, #
# please fix the bug in the generator. You can find a link  #
# to the generators git repository on tinkerforge.com       #
#############################################################

#### __DEVICE_IS_NOT_RELEASED__ ####

from collections import namedtuple

try:
    from .ip_connection import Device, IPConnection, Error, create_char, create_char_list, create_string, create_chunk_data
except ValueError:
    from ip_connection import Device, IPConnection, Error, create_char, create_char_list, create_string, create_chunk_data

GetValue = namedtuple('Value', ['timestamp', 'value'])
GetSelectedValue = namedtuple('SelectedValue', ['timestamp', 'value'])
GetQueueValue = namedtuple('QueueValue', ['timestamp', 'value', 'queue_size_remaining'])
GetQueueConfiguration = namedtuple('QueueConfiguration', ['queue_type', 'period'])

class TNGDI8(Device):
    """
    TBD
    """

    DEVICE_IDENTIFIER = 201
    DEVICE_DISPLAY_NAME = 'TNG DI8'
    DEVICE_URL_PART = 'di8' # internal

    CALLBACK_EDGE_TRIGGERED_VALUE = 8
    CALLBACK_FIXED_PERIOD_VALUE_LOW_LEVEL = 9

    CALLBACK_FIXED_PERIOD_VALUE = -9

    FUNCTION_GET_VALUE = 1
    FUNCTION_GET_SELECTED_VALUE = 2
    FUNCTION_GET_QUEUE_VALUE = 3
    FUNCTION_SET_QUEUE_CONFIGURATION = 4
    FUNCTION_GET_QUEUE_CONFIGURATION = 5
    FUNCTION_SET_QUEUE_VALUE_CALLBACK_CONFIGURATION = 6
    FUNCTION_GET_QUEUE_VALUE_CALLBACK_CONFIGURATION = 7
    FUNCTION_GET_TIMESTAMP = 234
    FUNCTION_COPY_FIRMWARE = 235
    FUNCTION_SET_WRITE_FIRMWARE_POINTER = 237
    FUNCTION_WRITE_FIRMWARE = 238
    FUNCTION_RESET = 243

    CHANNEL_0 = 0
    CHANNEL_1 = 1
    CHANNEL_2 = 2
    CHANNEL_3 = 3
    CHANNEL_4 = 4
    CHANNEL_5 = 5
    CHANNEL_6 = 6
    CHANNEL_7 = 7
    QUEUE_TYPE_EDGE_TRIGGERED = 0
    QUEUE_TYPE_FIXED_PERIOD = 1
    COPY_STATUS_OK = 0
    COPY_STATUS_DEVICE_IDENTIFIER_INCORRECT = 1
    COPY_STATUS_MAGIC_NUMBER_INCORRECT = 2
    COPY_STATUS_LENGTH_MALFORMED = 3
    COPY_STATUS_CRC_MISMATCH = 4

    def __init__(self, uid, ipcon):
        """
        Creates an object with the unique device ID *uid* and adds it to
        the IP Connection *ipcon*.
        """
        Device.__init__(self, uid, ipcon)

        self.api_version = (2, 0, 0)

        self.response_expected[TNGDI8.FUNCTION_GET_VALUE] = TNGDI8.RESPONSE_EXPECTED_ALWAYS_TRUE
        self.response_expected[TNGDI8.FUNCTION_GET_SELECTED_VALUE] = TNGDI8.RESPONSE_EXPECTED_ALWAYS_TRUE
        self.response_expected[TNGDI8.FUNCTION_GET_QUEUE_VALUE] = TNGDI8.RESPONSE_EXPECTED_ALWAYS_TRUE
        self.response_expected[TNGDI8.FUNCTION_SET_QUEUE_CONFIGURATION] = TNGDI8.RESPONSE_EXPECTED_FALSE
        self.response_expected[TNGDI8.FUNCTION_GET_QUEUE_CONFIGURATION] = TNGDI8.RESPONSE_EXPECTED_ALWAYS_TRUE
        self.response_expected[TNGDI8.FUNCTION_SET_QUEUE_VALUE_CALLBACK_CONFIGURATION] = TNGDI8.RESPONSE_EXPECTED_TRUE
        self.response_expected[TNGDI8.FUNCTION_GET_QUEUE_VALUE_CALLBACK_CONFIGURATION] = TNGDI8.RESPONSE_EXPECTED_ALWAYS_TRUE
        self.response_expected[TNGDI8.FUNCTION_GET_TIMESTAMP] = TNGDI8.RESPONSE_EXPECTED_ALWAYS_TRUE
        self.response_expected[TNGDI8.FUNCTION_COPY_FIRMWARE] = TNGDI8.RESPONSE_EXPECTED_ALWAYS_TRUE
        self.response_expected[TNGDI8.FUNCTION_SET_WRITE_FIRMWARE_POINTER] = TNGDI8.RESPONSE_EXPECTED_FALSE
        self.response_expected[TNGDI8.FUNCTION_WRITE_FIRMWARE] = TNGDI8.RESPONSE_EXPECTED_ALWAYS_TRUE
        self.response_expected[TNGDI8.FUNCTION_RESET] = TNGDI8.RESPONSE_EXPECTED_FALSE

        self.callback_formats[TNGDI8.CALLBACK_EDGE_TRIGGERED_VALUE] = 'Q 8! H'
        self.callback_formats[TNGDI8.CALLBACK_FIXED_PERIOD_VALUE_LOW_LEVEL] = 'Q H H 52B'

        self.high_level_callbacks[TNGDI8.CALLBACK_FIXED_PERIOD_VALUE] = [(None, 'stream_length', 'stream_chunk_offset', 'stream_chunk_data'), {'fixed_length': None, 'single_chunk': False}, None]

    def get_value(self):
        """
        Returns the input value as bools, *true* refers to high and *false* refers to low.
        """
        return GetValue(*self.ipcon.send_request(self, TNGDI8.FUNCTION_GET_VALUE, (), '', 'Q 8!'))

    def get_selected_value(self, channel):
        """

        """
        channel = int(channel)

        return GetSelectedValue(*self.ipcon.send_request(self, TNGDI8.FUNCTION_GET_SELECTED_VALUE, (channel,), 'B', 'Q !'))

    def get_queue_value(self):
        """

        """
        return GetQueueValue(*self.ipcon.send_request(self, TNGDI8.FUNCTION_GET_QUEUE_VALUE, (), '', 'Q 8! H'))

    def set_queue_configuration(self, queue_type, period):
        """

        """
        queue_type = int(queue_type)
        period = int(period)

        self.ipcon.send_request(self, TNGDI8.FUNCTION_SET_QUEUE_CONFIGURATION, (queue_type, period), 'B I', '')

    def get_queue_configuration(self):
        """

        """
        return GetQueueConfiguration(*self.ipcon.send_request(self, TNGDI8.FUNCTION_GET_QUEUE_CONFIGURATION, (), '', 'B I'))

    def set_queue_value_callback_configuration(self, enable):
        """

        """
        enable = bool(enable)

        self.ipcon.send_request(self, TNGDI8.FUNCTION_SET_QUEUE_VALUE_CALLBACK_CONFIGURATION, (enable,), '!', '')

    def get_queue_value_callback_configuration(self):
        """

        """
        return self.ipcon.send_request(self, TNGDI8.FUNCTION_GET_QUEUE_VALUE_CALLBACK_CONFIGURATION, (), '', '!')

    def get_timestamp(self):
        """
        TODO
        """
        return self.ipcon.send_request(self, TNGDI8.FUNCTION_GET_TIMESTAMP, (), '', 'Q')

    def copy_firmware(self):
        """
        TODO
        """
        return self.ipcon.send_request(self, TNGDI8.FUNCTION_COPY_FIRMWARE, (), '', 'B')

    def set_write_firmware_pointer(self, pointer):
        """
        TODO
        """
        pointer = int(pointer)

        self.ipcon.send_request(self, TNGDI8.FUNCTION_SET_WRITE_FIRMWARE_POINTER, (pointer,), 'I', '')

    def write_firmware(self, data):
        """
        TODO
        """
        data = list(map(int, data))

        return self.ipcon.send_request(self, TNGDI8.FUNCTION_WRITE_FIRMWARE, (data,), '64B', 'B')

    def reset(self):
        """
        Calling this function will reset the TNG module. All configurations
        will be lost.

        After a reset you have to create new device objects,
        calling functions on the existing ones will result in
        undefined behavior!
        """
        self.ipcon.send_request(self, TNGDI8.FUNCTION_RESET, (), '', '')

    def register_callback(self, callback_id, function):
        """
        Registers the given *function* with the given *callback_id*.
        """
        if function is None:
            self.registered_callbacks.pop(callback_id, None)
        else:
            self.registered_callbacks[callback_id] = function
