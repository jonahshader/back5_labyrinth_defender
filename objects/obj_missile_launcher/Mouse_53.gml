/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4EA81291
/// @DnDArgument : "code" "if (currently_using) {$(13_10)	if (current_clip > 0 && clip_reload_timer == 0) {$(13_10)		$(13_10)		var missile = instance_create_layer(x,y,obj_player.layer,obj_missile);$(13_10)		var player_angle_rad = obj_player.look_dir * pi/180;$(13_10)		missile.image_angle = obj_player.look_dir;$(13_10)		missile.hspeed = cos(player_angle_rad) * bullet_velocity; $(13_10)		missile.vspeed = -sin(player_angle_rad) * bullet_velocity; $(13_10)		$(13_10)		current_clip--;$(13_10)		clip_reload_timer = clip_reload_time;$(13_10)	}$(13_10)}"
if (currently_using) {
	if (current_clip > 0 && clip_reload_timer == 0) {
		
		var missile = instance_create_layer(x,y,obj_player.layer,obj_missile);
		var player_angle_rad = obj_player.look_dir * pi/180;
		missile.image_angle = obj_player.look_dir;
		missile.hspeed = cos(player_angle_rad) * bullet_velocity; 
		missile.vspeed = -sin(player_angle_rad) * bullet_velocity; 
		
		current_clip--;
		clip_reload_timer = clip_reload_time;
	}
}