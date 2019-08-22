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

	// Get current value.
	value, _ := di8.GetValue()

	fmt.Printf("Channel 0: \n", value[0])
	fmt.Printf("Channel 1: \n", value[1])
	fmt.Printf("Channel 2: \n", value[2])
	fmt.Printf("Channel 3: \n", value[3])
	fmt.Printf("Channel 4: \n", value[4])
	fmt.Printf("Channel 5: \n", value[5])
	fmt.Printf("Channel 6: \n", value[6])
	fmt.Printf("Channel 7: \n", value[7])

	fmt.Print("Press enter to exit.")
	fmt.Scanln()
}
