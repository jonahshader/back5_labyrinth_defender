if (currently_using) {
	if (fire_timer > 0) {
		fire_timer--;
	}
	
	if (clip_reload_timer > 0) {
		clip_reload_timer--;
		if (clip_reload_timer == 0) {
			var ammoNeede = CLIP_SIZE - current_clip;
			if (ammo >= ammoNeede) {
				current_clip += ammoNeede;
				ammo -= ammoNeede;
			} else {
				current_clip = ammo;
				ammo = 0;
			}
		}
	}
	// update position
	x = obj_player.x + cos(obj_player.look_dir * pi / 180) * hold_radius;
	y = obj_player.y + -sin(obj_player.look_dir * pi / 180) * hold_radius;
	// change current subframe base on clip
	image_index = CLIP_SIZE - current_clip;
}