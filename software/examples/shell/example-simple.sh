#!/bin/sh
# Connects to localhost:4223 by default, use --host and --port to change this

uid=XYZ # Change XYZ to the UID of your TNG DI8

# Get current value
tinkerforge call di8-tng $uid get-value
