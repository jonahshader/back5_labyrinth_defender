if (currently_using) {
	if (fire_timer > 0) {
		fire_timer--;
	}
	
	if (clip_reload_timer > 0) {
		clip_reload_timer--;
		if (clip_reload_timer == 0) {
			if (ammo >= CLIP_SIZE) {
				current_clip = CLIP_SIZE;
				ammo -= CLIP_SIZE;
			} else {
				current_clip = ammo;
				ammo = 0;
			}
		}
	}
	

}