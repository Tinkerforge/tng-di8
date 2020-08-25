package main

import (
	"fmt"
	"github.com/Tinkerforge/go-api-bindings/ipconnection"
	"github.com/Tinkerforge/go-api-bindings/tng_di8"
)

const ADDR string = "localhost:4223"
const UID string = "XYZ" // Change XYZ to the UID of your TNG DI8.

func main() {
	ipcon := ipconnection.New()
	defer ipcon.Close()
	di8, _ := tng_di8.New(UID, &ipcon) // Create device object.

	ipcon.Connect(ADDR) // Connect to brickd.
	defer ipcon.Disconnect()
	// Don't use device before ipcon is connected.

	// Get current values.
	values, _ := di8.GetValues()

	fmt.Printf("Channel 0: \n", values[0])
	fmt.Printf("Channel 1: \n", values[1])
	fmt.Printf("Channel 2: \n", values[2])
	fmt.Printf("Channel 3: \n", values[3])
	fmt.Printf("Channel 4: \n", values[4])
	fmt.Printf("Channel 5: \n", values[5])
	fmt.Printf("Channel 6: \n", values[6])
	fmt.Printf("Channel 7: \n", values[7])

	fmt.Print("Press enter to exit.")
	fmt.Scanln()
}
