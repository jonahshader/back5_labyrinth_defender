if (currently_using) {
	if (current_clip > 0 && clip_reload_timer == 0 && fire_timer == 0) {
		
		for (var i = 0; i < bullets_per_shot; ++i) {
			var bullet = instance_create_layer(x,y,obj_player.layer,obj_bullet);
			var player_angle_rad = (obj_player.look_dir + random_range(-bullet_spread_degrees/2, bullet_spread_degrees/2)) * pi/180;
			bullet.image_angle = player_angle_rad * 180 / pi;
			bullet.hspeed = cos(player_angle_rad) * bullet_velocity; 
			bullet.vspeed = -sin(player_angle_rad) * bullet_velocity; 
		}

		current_clip--;
		fire_timer = fire_time;
	}
}