function octave_example_simple()
    more off;

    HOST = "localhost";
    PORT = 4223;
    UID = "XYZ"; % Change XYZ to the UID of your TNG DI8

    ipcon = javaObject("com.tinkerforge.IPConnection"); % Create IP connection
    di8 = javaObject("com.tinkerforge.TNGDI8", UID, ipcon); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Get current value
    value = di8.getValue();

    fprintf("Channel 0: %d\n", value(1));
    fprintf("Channel 1: %d\n", value(2));
    fprintf("Channel 2: %d\n", value(3));
    fprintf("Channel 3: %d\n", value(4));
    fprintf("Channel 4: %d\n", value(5));
    fprintf("Channel 5: %d\n", value(6));
    fprintf("Channel 6: %d\n", value(7));
    fprintf("Channel 7: %d\n", value(8));

    input("Press key to exit\n", "s");
    ipcon.disconnect();
end
