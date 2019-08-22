#!/usr/bin/env python
# -*- coding: utf-8 -*-

HOST = "localhost"
PORT = 4223
UID = "XYZ" # Change XYZ to the UID of your TNG DI8

from tinkerforge.ip_connection import IPConnection
from tinkerforge.tng_di8 import TNGDI8

if __name__ == "__main__":
    ipcon = IPConnection() # Create IP connection
    di8 = TNGDI8(UID, ipcon) # Create device object

    ipcon.connect(HOST, PORT) # Connect to brickd
    # Don't use device before ipcon is connected

    # Get current value
    value = di8.get_value()

    print("Channel 0: " + str(value[0]))
    print("Channel 1: " + str(value[1]))
    print("Channel 2: " + str(value[2]))
    print("Channel 3: " + str(value[3]))
    print("Channel 4: " + str(value[4]))
    print("Channel 5: " + str(value[5]))
    print("Channel 6: " + str(value[6]))
    print("Channel 7: " + str(value[7]))

    raw_input("Press key to exit\n") # Use input() in Python 3
    ipcon.disconnect()
