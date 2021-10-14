/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04FAFF04
/// @DnDArgument : "code" "if instance_exists(obj_player) {$(13_10)	if (react == 0 ) {$(13_10)		targetx = (obj_player.x div 32)*32+16;$(13_10)		targety = (obj_player.y div 32)*32+16;$(13_10)		react = reaction_time;$(13_10)		if (mp_grid_path(global.grid, path, x, y, targetx, targety, true)) {$(13_10)			path_start(path, move_speed, path_action_stop, false);$(13_10)		}$(13_10)		if !collision_line(self.x, self.y, obj_player.x, obj_player.y, obj_wall, false, true) {$(13_10)			switch (range_attack) {$(13_10)				case 1:$(13_10)					var bullet = instance_create_layer(x,y,obj_player.layer,obj_bullet_enemy);$(13_10)					var target_angle_rad = (direction * pi/180);$(13_10)					bullet.image_angle = direction;$(13_10)					bullet.hspeed = cos(direction) * 9; $(13_10)					bullet.vspeed = -sin(direction) * 9; $(13_10)					break;$(13_10)					$(13_10)				case 0:$(13_10)					break;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		react--$(13_10)	}$(13_10)	$(13_10)}$(13_10)if (cooldown > 0) {$(13_10)	cooldown--$(13_10)}"
if instance_exists(obj_player) {
	if (react == 0 ) {
		targetx = (obj_player.x div 32)*32+16;
		targety = (obj_player.y div 32)*32+16;
		react = reaction_time;
		if (mp_grid_path(global.grid, path, x, y, targetx, targety, true)) {
			path_start(path, move_speed, path_action_stop, false);
		}
		if !collision_line(self.x, self.y, obj_player.x, obj_player.y, obj_wall, false, true) {
			switch (range_attack) {
				case 1:
					var bullet = instance_create_layer(x,y,obj_player.layer,obj_bullet_enemy);
					var target_angle_rad = (direction * pi/180);
					bullet.image_angle = direction;
					bullet.hspeed = cos(direction) * 9; 
					bullet.vspeed = -sin(direction) * 9; 
					break;
					
				case 0:
					break;
			}
		}
	}
	else
	{
		react--
	}
	
}
if (cooldown > 0) {
	cooldown--
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 54C3B1D2
/// @DnDArgument : "angle" "direction"
image_angle = direction;