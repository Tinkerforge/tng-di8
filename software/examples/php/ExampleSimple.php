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

// Get current values
$values = $di8->getValues();

echo "Channel 0: " . $values[0] . "\n";
echo "Channel 1: " . $values[1] . "\n";
echo "Channel 2: " . $values[2] . "\n";
echo "Channel 3: " . $values[3] . "\n";
echo "Channel 4: " . $values[4] . "\n";
echo "Channel 5: " . $values[5] . "\n";
echo "Channel 6: " . $values[6] . "\n";
echo "Channel 7: " . $values[7] . "\n";

echo "Press key to exit\n";
fgetc(fopen('php://stdin', 'r'));
$ipcon->disconnect();

?>
