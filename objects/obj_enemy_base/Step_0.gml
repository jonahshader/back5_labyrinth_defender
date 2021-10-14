/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04FAFF04
/// @DnDArgument : "code" "if (health_current <= 0) {$(13_10)	if instance_exists(obj_player) {$(13_10)		// give the player some points$(13_10)		obj_player.points_current += points_reward * sqrt(global.difficulty_scalar);$(13_10)	}$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)if instance_exists(obj_player) {$(13_10)	if (react == 0 ) {$(13_10)		targetx = (obj_player.x div 32)*32+16;$(13_10)		targety = (obj_player.y div 32)*32+16;$(13_10)		react = reaction_time;$(13_10)		if (mp_grid_path(global.grid, path, x, y, targetx, targety, true)) {$(13_10)			if (tarred == true){$(13_10)				path_start(path, move_speed * 0.5, path_action_stop, false);$(13_10)			}$(13_10)			else {$(13_10)				path_start(path, move_speed, path_action_stop, false);$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		react--;$(13_10)	}$(13_10)	$(13_10)}$(13_10)if (cooldown > 0) {$(13_10)	cooldown--;$(13_10)}$(13_10)if (tartimer > 0) {$(13_10)	tartimer--;$(13_10)}$(13_10)else {$(13_10)	tarred = false;$(13_10)}"
if (health_current <= 0) {
	if instance_exists(obj_player) {
		// give the player some points
		obj_player.points_current += points_reward * sqrt(global.difficulty_scalar);
	}
	instance_destroy();
}

if instance_exists(obj_player) {
	if (react == 0 ) {
		targetx = (obj_player.x div 32)*32+16;
		targety = (obj_player.y div 32)*32+16;
		react = reaction_time;
		if (mp_grid_path(global.grid, path, x, y, targetx, targety, true)) {
			if (tarred == true){
				path_start(path, move_speed * 0.5, path_action_stop, false);
			}
			else {
				path_start(path, move_speed, path_action_stop, false);
			}
		}
	}
	else
	{
		react--;
	}
	
}
if (cooldown > 0) {
	cooldown--;
}
if (tartimer > 0) {
	tartimer--;
}
else {
	tarred = false;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 54C3B1D2
/// @DnDArgument : "angle" "direction"
image_angle = direction;