if (currently_using) {
	if (current_clip > 0 && clip_reload_timer == 0) {
		var bullet = instance_create_layer(x,y,obj_player.layer,obj_bullet);
		var player_angle_rad = obj_player.look_dir * pi/180;
	}
}