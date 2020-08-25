using System;
using Tinkerforge;

class Example
{
	private static string HOST = "localhost";
	private static int PORT = 4223;
	private static string UID = "XYZ"; // Change XYZ to the UID of your TNG DI8

	static void Main()
	{
		IPConnection ipcon = new IPConnection(); // Create IP connection
		TNGDI8 di8 = new TNGDI8(UID, ipcon); // Create device object

		ipcon.Connect(HOST, PORT); // Connect to brickd
		// Don't use device before ipcon is connected

		// Get current values
		bool[] values = di8.GetValues();

		Console.WriteLine("Channel 0: " + values[0]);
		Console.WriteLine("Channel 1: " + values[1]);
		Console.WriteLine("Channel 2: " + values[2]);
		Console.WriteLine("Channel 3: " + values[3]);
		Console.WriteLine("Channel 4: " + values[4]);
		Console.WriteLine("Channel 5: " + values[5]);
		Console.WriteLine("Channel 6: " + values[6]);
		Console.WriteLine("Channel 7: " + values[7]);

		Console.WriteLine("Press enter to exit");
		Console.ReadLine();
		ipcon.Disconnect();
	}
}
