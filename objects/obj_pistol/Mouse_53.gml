if (currently_using) {
	if (current_clip > 0 && clip_reload_timer == 0 && fire_timer == 0) {
		var bullet = instance_create_layer(x,y,obj_player.layer,obj_bullet);
		var player_angle_rad = obj_player.look_dir * pi/180;
		bullet.image_angle = obj_player.look_dir;
		bullet.hspeed = cos(player_angle_rad) * BULLET_VELOCITY; 
		bullet.vspeed = -sin(player_angle_rad) * BULLET_VELOCITY; 
		current_clip--;
		fire_timer = FIRE_TIME;
	}
}