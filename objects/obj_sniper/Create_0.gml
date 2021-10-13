/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 58CCDF18
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 63B68DEC
/// @DnDInput : 3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "100"
/// @DnDArgument : "expr_2" "35"
/// @DnDArgument : "var" "clip_size"
/// @DnDArgument : "var_1" "clip_reload_time"
/// @DnDArgument : "var_2" "bullet_velocity"
clip_size = 1;
clip_reload_time = 100;
bullet_velocity = 35;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48B3408C
/// @DnDInput : 3
/// @DnDArgument : "expr_1" "clip_size"
/// @DnDArgument : "expr_2" "40"
/// @DnDArgument : "var" "clip_reload_timer"
/// @DnDArgument : "var_1" "current_clip"
/// @DnDArgument : "var_2" "hold_radius"
clip_reload_timer = 0;
current_clip = clip_size;
hold_radius = 40;