if (fadeout > 1) {
	fadeout--;
	image_alpha = fadeout / FADEOUT_TIME;
} else {
	instance_destroy();
}