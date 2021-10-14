/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6CE3E54E
/// @DnDArgument : "code" "if (currently_using) {$(13_10)	if (current_clip > 0 && clip_reload_timer == 0 && fire_timer == 0) {$(13_10)		var bullet = instance_create_layer(x,y,obj_player.layer,obj_bullet);$(13_10)		var player_angle_rad = obj_player.look_dir * pi/180;$(13_10)		bullet.image_angle = obj_player.look_dir;$(13_10)		bullet.hspeed = cos(player_angle_rad) * bullet_velocity; $(13_10)		bullet.vspeed = -sin(player_angle_rad) * bullet_velocity; $(13_10)		current_clip--;$(13_10)		fire_timer = fire_time;$(13_10)	}$(13_10)}"
if (currently_using) {
	if (current_clip > 0 && clip_reload_timer == 0 && fire_timer == 0) {
		var bullet = instance_create_layer(x,y,obj_player.layer,obj_bullet);
		var player_angle_rad = obj_player.look_dir * pi/180;
		bullet.image_angle = obj_player.look_dir;
		bullet.hspeed = cos(player_angle_rad) * bullet_velocity; 
		bullet.vspeed = -sin(player_angle_rad) * bullet_velocity; 
		current_clip--;
		fire_timer = fire_time;
	}
}