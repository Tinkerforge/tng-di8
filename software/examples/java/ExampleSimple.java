import com.tinkerforge.IPConnection;
import com.tinkerforge.TNGDI8;

public class ExampleSimple {
	private static final String HOST = "localhost";
	private static final int PORT = 4223;

	// Change XYZ to the UID of your TNG DI8
	private static final String UID = "XYZ";

	// Note: To make the example code cleaner we do not handle exceptions. Exceptions
	//       you might normally want to catch are described in the documentation
	public static void main(String args[]) throws Exception {
		IPConnection ipcon = new IPConnection(); // Create IP connection
		TNGDI8 di8 = new TNGDI8(UID, ipcon); // Create device object

		ipcon.connect(HOST, PORT); // Connect to brickd
		// Don't use device before ipcon is connected

		// Get current values
		boolean[] values = di8.getValues(); // Can throw com.tinkerforge.TimeoutException

		System.out.println("Channel 0: " + values[0]);
		System.out.println("Channel 1: " + values[1]);
		System.out.println("Channel 2: " + values[2]);
		System.out.println("Channel 3: " + values[3]);
		System.out.println("Channel 4: " + values[4]);
		System.out.println("Channel 5: " + values[5]);
		System.out.println("Channel 6: " + values[6]);
		System.out.println("Channel 7: " + values[7]);

		System.out.println("Press key to exit"); System.in.read();
		ipcon.disconnect();
	}
}
