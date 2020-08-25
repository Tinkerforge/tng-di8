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

    # Get current values
    values = di8.get_values()

    print("Channel 0: " + str(values[0]))
    print("Channel 1: " + str(values[1]))
    print("Channel 2: " + str(values[2]))
    print("Channel 3: " + str(values[3]))
    print("Channel 4: " + str(values[4]))
    print("Channel 5: " + str(values[5]))
    print("Channel 6: " + str(values[6]))
    print("Channel 7: " + str(values[7]))

    input("Press key to exit\n") # Use raw_input() in Python 2
    ipcon.disconnect()
