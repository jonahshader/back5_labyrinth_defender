/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0DA16EDE
/// @DnDArgument : "code" "if (currently_using) {$(13_10)	if (current_clip < clip_size && clip_reload_timer = 0) {$(13_10)		clip_reload_timer = clip_reload_time;$(13_10)	}$(13_10)}"
if (currently_using) {
	if (current_clip < clip_size && clip_reload_timer = 0) {
		clip_reload_timer = clip_reload_time;
	}
}