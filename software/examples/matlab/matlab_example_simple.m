function matlab_example_simple()
    import com.tinkerforge.IPConnection;
    import com.tinkerforge.TNGDI8;

    HOST = 'localhost';
    PORT = 4223;
    UID = 'XYZ'; % Change XYZ to the UID of your TNG DI8

    ipcon = IPConnection(); % Create IP connection
    di8 = handle(TNGDI8(UID, ipcon), 'CallbackProperties'); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Get current values
    values = di8.getValues();

    fprintf('Channel 0: %i\n', values(1));
    fprintf('Channel 1: %i\n', values(2));
    fprintf('Channel 2: %i\n', values(3));
    fprintf('Channel 3: %i\n', values(4));
    fprintf('Channel 4: %i\n', values(5));
    fprintf('Channel 5: %i\n', values(6));
    fprintf('Channel 6: %i\n', values(7));
    fprintf('Channel 7: %i\n', values(8));

    input('Press key to exit\n', 's');
    ipcon.disconnect();
end
