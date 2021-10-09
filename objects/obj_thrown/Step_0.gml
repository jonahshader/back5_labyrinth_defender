if (travel_time > 0) {
	travel_time--;
} else {
	instance_create_layer(x, y, "Items", object_to_instantiate);
	instance_destroy();
}