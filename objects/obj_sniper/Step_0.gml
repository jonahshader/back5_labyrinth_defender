/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3ACEE8D4
/// @DnDArgument : "code" "if (currently_using) {$(13_10)	if (clip_reload_timer > 0) {$(13_10)		clip_reload_timer--;$(13_10)		if (clip_reload_timer == 0) {$(13_10)			if(ammo > 0) {$(13_10)				current_clip++;$(13_10)				ammo--;$(13_10)			} else {$(13_10)				current_clip = ammo;$(13_10)				ammo = 0;	$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	// auto reload $(13_10)	if (current_clip < clip_size && clip_reload_timer = 0) {$(13_10)		clip_reload_timer = clip_reload_time;$(13_10)	}$(13_10)	$(13_10)	// update position$(13_10)	x = obj_player.x + cos(obj_player.look_dir * pi / 180) * hold_radius;$(13_10)	y = obj_player.y + -sin(obj_player.look_dir * pi / 180) * hold_radius;$(13_10)	// change current subframe base on clip$(13_10)	image_index = current_clip;$(13_10)}"
if (currently_using) {
	if (clip_reload_timer > 0) {
		clip_reload_timer--;
		if (clip_reload_timer == 0) {
			if(ammo > 0) {
				current_clip++;
				ammo--;
			} else {
				current_clip = ammo;
				ammo = 0;	
			}
		}
	}
	
	// auto reload 
	if (current_clip < clip_size && clip_reload_timer = 0) {
		clip_reload_timer = clip_reload_time;
	}
	
	// update position
	x = obj_player.x + cos(obj_player.look_dir * pi / 180) * hold_radius;
	y = obj_player.y + -sin(obj_player.look_dir * pi / 180) * hold_radius;
	// change current subframe base on clip
	image_index = current_clip;
}