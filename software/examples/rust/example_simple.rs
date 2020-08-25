use std::{error::Error, io};

use tinkerforge::{di8_tng::*, ip_connection::IpConnection};

const HOST: &str = "localhost";
const PORT: u16 = 4223;
const UID: &str = "XYZ"; // Change XYZ to the UID of your TNG DI8.

fn main() -> Result<(), Box<dyn Error>> {
    let ipcon = IpConnection::new(); // Create IP connection.
    let di8 = Di8Tng::new(UID, &ipcon); // Create device object.

    ipcon.connect((HOST, PORT)).recv()??; // Connect to brickd.
                                          // Don't use device before ipcon is connected.

    // Get current values.
    let values = di8.get_values().recv()?;

    println!("Channel 0: {}", values[0]);
    println!("Channel 1: {}", values[1]);
    println!("Channel 2: {}", values[2]);
    println!("Channel 3: {}", values[3]);
    println!("Channel 4: {}", values[4]);
    println!("Channel 5: {}", values[5]);
    println!("Channel 6: {}", values[6]);
    println!("Channel 7: {}", values[7]);

    println!("Press enter to exit.");
    let mut _input = String::new();
    io::stdin().read_line(&mut _input)?;
    ipcon.disconnect();
    Ok(())
}
