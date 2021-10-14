/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 191E29C8
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 145DFD12
/// @DnDInput : 3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "110"
/// @DnDArgument : "expr_2" "20"
/// @DnDArgument : "var" "clip_size"
/// @DnDArgument : "var_1" "clip_reload_time"
/// @DnDArgument : "var_2" "bullet_velocity"
clip_size = 1;
clip_reload_time = 110;
bullet_velocity = 20;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E47BD04
/// @DnDInput : 3
/// @DnDArgument : "expr_1" "clip_size"
/// @DnDArgument : "expr_2" "40"
/// @DnDArgument : "var" "clip_reload_timer"
/// @DnDArgument : "var_1" "current_clip"
/// @DnDArgument : "var_2" "hold_radius"
clip_reload_timer = 0;
current_clip = clip_size;
hold_radius = 40;