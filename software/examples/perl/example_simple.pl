#!/usr/bin/perl

use strict;
use Tinkerforge::IPConnection;
use Tinkerforge::TNGDI8;

use constant HOST => 'localhost';
use constant PORT => 4223;
use constant UID => 'XYZ'; # Change XYZ to the UID of your TNG DI8

my $ipcon = Tinkerforge::IPConnection->new(); # Create IP connection
my $di8 = Tinkerforge::TNGDI8->new(&UID, $ipcon); # Create device object

$ipcon->connect(&HOST, &PORT); # Connect to brickd
# Don't use device before ipcon is connected

# Get current values
my $values = $di8->get_values();

print "Channel 0: " . @{$values}[0] . "\n";
print "Channel 1: " . @{$values}[1] . "\n";
print "Channel 2: " . @{$values}[2] . "\n";
print "Channel 3: " . @{$values}[3] . "\n";
print "Channel 4: " . @{$values}[4] . "\n";
print "Channel 5: " . @{$values}[5] . "\n";
print "Channel 6: " . @{$values}[6] . "\n";
print "Channel 7: " . @{$values}[7] . "\n";

print "Press key to exit\n";
<STDIN>;
$ipcon->disconnect();
