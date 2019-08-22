<?php

require_once('Tinkerforge/IPConnection.php');
require_once('Tinkerforge/TNGDI8.php');

use Tinkerforge\IPConnection;
use Tinkerforge\TNGDI8;

const HOST = 'localhost';
const PORT = 4223;
const UID = 'XYZ'; // Change XYZ to the UID of your TNG DI8

$ipcon = new IPConnection(); // Create IP connection
$di8 = new TNGDI8(UID, $ipcon); // Create device object

$ipcon->connect(HOST, PORT); // Connect to brickd
// Don't use device before ipcon is connected

// Get current value
$value = $di8->getValue();

echo "Channel 0: " . $value[0] . "\n";
echo "Channel 1: " . $value[1] . "\n";
echo "Channel 2: " . $value[2] . "\n";
echo "Channel 3: " . $value[3] . "\n";
echo "Channel 4: " . $value[4] . "\n";
echo "Channel 5: " . $value[5] . "\n";
echo "Channel 6: " . $value[6] . "\n";
echo "Channel 7: " . $value[7] . "\n";

echo "Press key to exit\n";
fgetc(fopen('php://stdin', 'r'));
$ipcon->disconnect();

?>
