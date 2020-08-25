var Tinkerforge = require('tinkerforge');

var HOST = 'localhost';
var PORT = 4223;
var UID = 'XYZ'; // Change XYZ to the UID of your TNG DI8

var ipcon = new Tinkerforge.IPConnection(); // Create IP connection
var di8 = new Tinkerforge.TNGDI8(UID, ipcon); // Create device object

ipcon.connect(HOST, PORT,
    function (error) {
        console.log('Error: ' + error);
    }
); // Connect to brickd
// Don't use device before ipcon is connected

ipcon.on(Tinkerforge.IPConnection.CALLBACK_CONNECTED,
    function (connectReason) {
        // Get current values
        di8.getValues(
            function (values) {
                console.log('Channel 0: ' + values[0]);
                console.log('Channel 1: ' + values[1]);
                console.log('Channel 2: ' + values[2]);
                console.log('Channel 3: ' + values[3]);
                console.log('Channel 4: ' + values[4]);
                console.log('Channel 5: ' + values[5]);
                console.log('Channel 6: ' + values[6]);
                console.log('Channel 7: ' + values[7]);
            },
            function (error) {
                console.log('Error: ' + error);
            }
        );
    }
);

console.log('Press key to exit');
process.stdin.on('data',
    function (data) {
        ipcon.disconnect();
        process.exit(0);
    }
);
