#!/usr/bin/env python3
# -*- coding: utf-8 -*-

HOST = "localhost"
PORT = 4223
UID = "xyz" # Change XYZ to the UID of your DI8 TNG

from tinkerforge.ip_connection import IPConnection, time_data
from tinkerforge.tng_di8 import TNGDI8
import time

import matplotlib.pyplot as plt


if __name__ == "__main__":
    ipcon = IPConnection() # Create IP connection
    di8 = TNGDI8(UID, ipcon) # Create device object

    ipcon.connect(HOST, PORT) # Connect to brickd
    # Don't use device before ipcon is connected

    # Get current value
    data_expected = 0
    t = time.time()
    count = 0

    timestamps = []
    values     = []
    while True:
#    for i in range(50):
        time_data.append((11, time.time()))

#        for i in range(len(time_data)-1):
#            print("{0:2} to {1:2}: {2:f}".format(i, i+1, time_data[i+1][1] - time_data[i][1]))
#        print("\n")
        time_data.clear()


#        time.sleep(0.1)
        timestamp, value = di8.get_value()
#        print(timestamp, value)


        data = 0
        for i in range(len(value)):
            data |= (value[i] << i)

        timestamps.append(timestamp/100)
        values.append(data)

        if data_expected != data:
            print("Unexpected data: {0} vs {1}".format(data_expected, data))

        count += 1
        data_expected = (data + 1) % 256
        new_t = time.time()
        if new_t - t >= 1:
            t = new_t
            print("{0} msg/s".format(count))
            count = 0

    plt.plot(timestamps, values, '.')
    plt.show()
        
    raw_input("Press key to exit\n") # Use input() in Python 3
    ipcon.disconnect()
