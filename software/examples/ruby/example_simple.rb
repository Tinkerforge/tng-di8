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

# Get current value
value = di8.get_value

puts "Channel 0: #{value[0]}"
puts "Channel 1: #{value[1]}"
puts "Channel 2: #{value[2]}"
puts "Channel 3: #{value[3]}"
puts "Channel 4: #{value[4]}"
puts "Channel 5: #{value[5]}"
puts "Channel 6: #{value[6]}"
puts "Channel 7: #{value[7]}"

puts 'Press key to exit'
$stdin.gets
ipcon.disconnect
