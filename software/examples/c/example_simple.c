#include <stdio.h>

#include "ip_connection.h"
#include "tng_di8.h"

#define HOST "localhost"
#define PORT 4223
#define UID "XYZ" // Change XYZ to the UID of your TNG DI8

int main(void) {
	// Create IP connection
	IPConnection ipcon;
	ipcon_create(&ipcon);

	// Create device object
	DI8 di8;
	di8_create(&di8, UID, &ipcon);

	// Connect to brickd
	if(ipcon_connect(&ipcon, HOST, PORT) < 0) {
		fprintf(stderr, "Could not connect\n");
		return 1;
	}
	// Don't use device before ipcon is connected

	// Get current value
	bool value[8];
	if(di8_get_value(&di8, value) < 0) {
		fprintf(stderr, "Could not get value, probably timeout\n");
		return 1;
	}

	printf("Channel 0: %s\n", value[0] ? "true" : "false");
	printf("Channel 1: %s\n", value[1] ? "true" : "false");
	printf("Channel 2: %s\n", value[2] ? "true" : "false");
	printf("Channel 3: %s\n", value[3] ? "true" : "false");
	printf("Channel 4: %s\n", value[4] ? "true" : "false");
	printf("Channel 5: %s\n", value[5] ? "true" : "false");
	printf("Channel 6: %s\n", value[6] ? "true" : "false");
	printf("Channel 7: %s\n", value[7] ? "true" : "false");

	printf("Press key to exit\n");
	getchar();
	di8_destroy(&di8);
	ipcon_destroy(&ipcon); // Calls ipcon_disconnect internally
	return 0;
}
