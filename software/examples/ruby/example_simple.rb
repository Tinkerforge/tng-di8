#!/usr/bin/env ruby
# -*- ruby encoding: utf-8 -*-

require 'tinkerforge/ip_connection'
require 'tinkerforge/tng_di8'

include Tinkerforge

HOST = 'localhost'
PORT = 4223
UID = 'XYZ' # Change XYZ to the UID of your TNG DI8

ipcon = IPConnection.new # Create IP connection
di8 = TNGDI8.new UID, ipcon # Create device object

ipcon.connect HOST, PORT # Connect to brickd
# Don't use device before ipcon is connected

# Get current values
values = di8.get_values

puts "Channel 0: #{values[0]}"
puts "Channel 1: #{values[1]}"
puts "Channel 2: #{values[2]}"
puts "Channel 3: #{values[3]}"
puts "Channel 4: #{values[4]}"
puts "Channel 5: #{values[5]}"
puts "Channel 6: #{values[6]}"
puts "Channel 7: #{values[7]}"

puts 'Press key to exit'
$stdin.gets
ipcon.disconnect
