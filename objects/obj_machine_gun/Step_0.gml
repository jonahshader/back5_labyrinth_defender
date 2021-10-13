/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 104B8F1B
/// @DnDArgument : "code" "if (currently_using) {$(13_10)	if (fire_timer > 0) {$(13_10)		fire_timer--;$(13_10)	}$(13_10)	$(13_10)	if (clip_reload_timer > 0) {$(13_10)		clip_reload_timer--;$(13_10)		if (clip_reload_timer == 0) {$(13_10)			var ammoNeeded = clip_size - current_clip;$(13_10)			if (ammo >= ammoNeeded) {$(13_10)				current_clip += ammoNeeded;$(13_10)				ammo -= ammoNeeded;$(13_10)			} else {$(13_10)				current_clip = ammo;$(13_10)				ammo = 0;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	// update position$(13_10)	x = obj_player.x + cos(obj_player.look_dir * pi / 180) * hold_radius;$(13_10)	y = obj_player.y + -sin(obj_player.look_dir * pi / 180) * hold_radius;$(13_10)	// change current subframe base on clip$(13_10)	image_index = clip_size - current_clip;$(13_10)}"
if (currently_using) {
	if (fire_timer > 0) {
		fire_timer--;
	}
	
	if (clip_reload_timer > 0) {
		clip_reload_timer--;
		if (clip_reload_timer == 0) {
			var ammoNeeded = clip_size - current_clip;
			if (ammo >= ammoNeeded) {
				current_clip += ammoNeeded;
				ammo -= ammoNeeded;
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
	image_index = clip_size - current_clip;
}