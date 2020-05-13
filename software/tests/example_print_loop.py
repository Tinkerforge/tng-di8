#!/usr/bin/env python3
# -*- coding: utf-8 -*-

HOST = "localhost"
PORT = 4223
UID = "3" # Change XYZ to the UID of your DI8 TNG

from tinkerforge.ip_connection import IPConnection, time_data
from tinkerforge.tng_di8 import TNGDI8
import time


if __name__ == "__main__":
    ipcon = IPConnection() # Create IP connection
    di8 = TNGDI8(UID, ipcon) # Create device object

    ipcon.connect(HOST, PORT) # Connect to brickd
    # Don't use device before ipcon is connected


    while True:
        timestamp, value = di8.get_value()
        print(timestamp, value)

        time.sleep(0.1)
    raw_input("Press key to exit\n") # Use input() in Python 3
    ipcon.disconnect()
