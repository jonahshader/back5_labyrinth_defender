/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04FAFF04
/// @DnDArgument : "code" "if instance_exists(obj_player) {$(13_10)	if (react == 0 ) {$(13_10)		targetx = (obj_player.x div 32)*32+16;$(13_10)		targety = (obj_player.y div 32)*32+16;$(13_10)		react = reaction_time;$(13_10)		if (mp_grid_path(global.grid, path, x, y, targetx, targety, true)) {$(13_10)			path_start(path, move_speed, path_action_stop, false);$(13_10)		}$(13_10)		if !collision_line(self.x, self.y, obj_player.x, obj_player.y, obj_wall, false, true) {$(13_10)			switch (range_attack) {$(13_10)				case 1:$(13_10)					var bullet = instance_create_layer(x,y,obj_player.layer,obj_bullet_enemy);$(13_10)					var aim_angle = point_direction(self.x, self.y, obj_player.x, obj_player.y);$(13_10)					var target_angle_rad = (aim_angle * pi/180);$(13_10)					bullet.image_angle = aim_angle;$(13_10)					bullet.hspeed = cos(target_angle_rad) * proj_speed; $(13_10)					bullet.vspeed = -sin(target_angle_rad) * proj_speed; $(13_10)					direction = aim_angle;$(13_10)					react = shot_cooldown;$(13_10)					path_end();$(13_10)					break;$(13_10)					$(13_10)				case 2:$(13_10)					break;$(13_10)				case 0:$(13_10)					break;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		react--$(13_10)	}$(13_10)	$(13_10)}$(13_10)if (cooldown > 0) {$(13_10)	cooldown--$(13_10)}$(13_10)$(13_10)	image_angle = direction;"
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
					var aim_angle = point_direction(self.x, self.y, obj_player.x, obj_player.y);
					var target_angle_rad = (aim_angle * pi/180);
					bullet.image_angle = aim_angle;
					bullet.hspeed = cos(target_angle_rad) * proj_speed; 
					bullet.vspeed = -sin(target_angle_rad) * proj_speed; 
					direction = aim_angle;
					react = shot_cooldown;
					path_end();
					break;
					
				case 2:
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

	image_angle = direction;