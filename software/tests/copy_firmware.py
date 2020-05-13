#!/usr/bin/env python
# -*- coding: utf-8 -*-

HOST = "localhost"
PORT = 4223
UID = "xyz" # Change XYZ to the UID of your DI8 TNG

from tinkerforge.ip_connection import IPConnection
from tinkerforge.tng_di8 import TNGDI8

if __name__ == "__main__":
    ipcon = IPConnection() # Create IP connection
    di8 = TNGDI8(UID, ipcon) # Create device object

    ipcon.connect(HOST, PORT) # Connect to brickd
    # Don't use device before ipcon is connected

    status = di8.copy_firmware()
    print(status)

    raw_input("Press key to exit\n") # Use input() in Python 3
    ipcon.disconnect()
