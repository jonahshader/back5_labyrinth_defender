/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04FAFF04
/// @DnDArgument : "code" "if (health_current <= 0) {$(13_10)	if instance_exists(obj_player) {$(13_10)		// give the player some points$(13_10)		obj_player.points_current += points_reward * sqrt(global.difficulty_scalar);$(13_10)	}$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)if instance_exists(obj_player) {$(13_10)	if (react == 0 ) {$(13_10)		// track the player when we're ready to react$(13_10)		targetx = (obj_player.x div 32)*32+16;$(13_10)		targety = (obj_player.y div 32)*32+16;$(13_10)		react = reaction_time;$(13_10)		if (mp_grid_path(global.grid, path, x, y, targetx, targety, true)) {$(13_10)			path_start(path, move_speed, path_action_stop, false);$(13_10)		}$(13_10)		$(13_10)		if !collision_line(self.x, self.y, obj_player.x, obj_player.y, obj_wall, false, true) {$(13_10)			// check line of sight and begin ranged attacks if possible$(13_10)			switch (range_attack) {$(13_10)				case 1:$(13_10)				// basic gunner enemy$(13_10)					var bullet = instance_create_layer(x,y,obj_player.layer,obj_bullet_enemy);$(13_10)					var aim_angle = point_direction(self.x, self.y, obj_player.x, obj_player.y);$(13_10)					var target_angle_rad = (aim_angle * pi/180);$(13_10)					bullet.image_angle = aim_angle;$(13_10)					bullet.hspeed = cos(target_angle_rad) * proj_speed; $(13_10)					bullet.vspeed = -sin(target_angle_rad) * proj_speed; $(13_10)					// turn to face target and halt movement$(13_10)					direction = aim_angle;$(13_10)					react = shot_cooldown;$(13_10)					path_end();$(13_10)					break;$(13_10)					$(13_10)				case 2:$(13_10)				// bomber enemy$(13_10)					var rocket = instance_create_layer(x,y,obj_player.layer,obj_missile_enemy);$(13_10)					var aim_angle = point_direction(self.x, self.y, obj_player.x, obj_player.y);$(13_10)					var target_angle_rad = (aim_angle * pi/180);$(13_10)					rocket.image_angle = aim_angle;$(13_10)					rocket.hspeed = cos(target_angle_rad) * proj_speed;$(13_10)					rocket.vspeed = -sin(target_angle_rad) * proj_speed;$(13_10)					direction = aim_angle;$(13_10)					react = shot_cooldown;$(13_10)					path_end();$(13_10)					break;$(13_10)				case 0:$(13_10)				//melee only enemy$(13_10)					break;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		//iterate reaction timer$(13_10)		react--$(13_10)	}$(13_10)	$(13_10)}$(13_10)if (cooldown > 0) {$(13_10)	// iterate contact damage timer$(13_10)	cooldown--$(13_10)}$(13_10)	// rotate sprite to match new heading$(13_10)	image_angle = direction;"
if (health_current <= 0) {
	if instance_exists(obj_player) {
		// give the player some points
		obj_player.points_current += points_reward * sqrt(global.difficulty_scalar);
	}
	instance_destroy();
}

if instance_exists(obj_player) {
	if (react == 0 ) {
		// track the player when we're ready to react
		targetx = (obj_player.x div 32)*32+16;
		targety = (obj_player.y div 32)*32+16;
		react = reaction_time;
		if (mp_grid_path(global.grid, path, x, y, targetx, targety, true)) {
			path_start(path, move_speed, path_action_stop, false);
		}
		
		if !collision_line(self.x, self.y, obj_player.x, obj_player.y, obj_wall, false, true) {
			// check line of sight and begin ranged attacks if possible
			switch (range_attack) {
				case 1:
				// basic gunner enemy
					var bullet = instance_create_layer(x,y,obj_player.layer,obj_bullet_enemy);
					var aim_angle = point_direction(self.x, self.y, obj_player.x, obj_player.y);
					var target_angle_rad = (aim_angle * pi/180);
					bullet.image_angle = aim_angle;
					bullet.hspeed = cos(target_angle_rad) * proj_speed; 
					bullet.vspeed = -sin(target_angle_rad) * proj_speed; 
					// turn to face target and halt movement
					direction = aim_angle;
					react = shot_cooldown;
					path_end();
					break;
					
				case 2:
				// bomber enemy
					var rocket = instance_create_layer(x,y,obj_player.layer,obj_missile_enemy);
					var aim_angle = point_direction(self.x, self.y, obj_player.x, obj_player.y);
					var target_angle_rad = (aim_angle * pi/180);
					rocket.image_angle = aim_angle;
					rocket.hspeed = cos(target_angle_rad) * proj_speed;
					rocket.vspeed = -sin(target_angle_rad) * proj_speed;
					direction = aim_angle;
					react = shot_cooldown;
					path_end();
					break;
				case 0:
				//melee only enemy
					break;
			}
		}
	}
	else
	{
		//iterate reaction timer
		react--
	}
	
}
if (cooldown > 0) {
	// iterate contact damage timer
	cooldown--
}
	// rotate sprite to match new heading
	image_angle = direction;