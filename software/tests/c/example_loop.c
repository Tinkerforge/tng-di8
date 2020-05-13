#include <stdio.h>
#include <math.h>
#include <inttypes.h>
#include <time.h>

#include "ip_connection.h"
#include "tng_di8.h"

#define HOST "localhost"
#define PORT 4223
#define UID "XYZ" // Change XYZ to the UID of your TNG DI8

uint64_t get_ms(void) {
    uint64_t ms; // Milliseconds
    time_t  s;  // Seconds
    struct timespec spec;

    clock_gettime(CLOCK_REALTIME, &spec);

    s  = spec.tv_sec;
    ms = spec.tv_nsec / 1.0e6;
    if (ms > 999) {
        s++;
        ms = 0;
    }

	return ms + 1000*s;
}

int main(void) {
	// Create IP connection
	IPConnection ipcon;
	ipcon_create(&ipcon);

	// Create device object
	DI8 di8;
	di8_create(&di8, UID, &ipcon);

	uint32_t count = 0;

	// Connect to brickd
	if(ipcon_connect(&ipcon, HOST, PORT) < 0) {
		fprintf(stderr, "Could not connect\n");
		return 1;
	}
	// Don't use device before ipcon is connected

	uint64_t ms = get_ms();
	uint8_t value_expected = 0;
	while(true) {
		// Get current value
		bool value[8];
		uint64_t timestamp;
		if(di8_get_value(&di8, &timestamp, value) < 0) {
			fprintf(stderr, "Could not get value, probably timeout\n");
			return 1;
		}

		uint8_t value_new = 0;
		for(uint8_t i = 0; i < 8; i++) {
			value_new |= value[i] << i;
		}

		if(value_expected != value_new) {
			printf("Unepxected data: %d vs %d\n", value_expected, value_new);
			value_expected = value_new;
		}

		value_expected++;
		count++;

		uint64_t new_ms = get_ms();
		if(new_ms - ms >= 1000) {
			ms = new_ms;
			printf("%d msg/s\n", count);
			count = 0;
		}
	}

	printf("Press key to exit\n");
	getchar();
	di8_destroy(&di8);
	ipcon_destroy(&ipcon); // Calls ipcon_disconnect internally
	return 0;
}
