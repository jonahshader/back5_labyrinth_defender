/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 55755B47
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 452089E4
/// @DnDInput : 6
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "expr_1" "25"
/// @DnDArgument : "expr_2" "70"
/// @DnDArgument : "expr_3" "11"
/// @DnDArgument : "expr_4" "6"
/// @DnDArgument : "expr_5" "10"
/// @DnDArgument : "var" "clip_size"
/// @DnDArgument : "var_1" "fire_time"
/// @DnDArgument : "var_2" "clip_reload_time"
/// @DnDArgument : "var_3" "bullet_velocity"
/// @DnDArgument : "var_4" "bullets_per_shot"
/// @DnDArgument : "var_5" "bullet_spread_degrees"
clip_size = 4;
fire_time = 25;
clip_reload_time = 70;
bullet_velocity = 11;
bullets_per_shot = 6;
bullet_spread_degrees = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 32627294
/// @DnDInput : 4
/// @DnDArgument : "expr_2" "clip_size"
/// @DnDArgument : "expr_3" "40"
/// @DnDArgument : "var" "fire_timer"
/// @DnDArgument : "var_1" "clip_reload_timer"
/// @DnDArgument : "var_2" "current_clip"
/// @DnDArgument : "var_3" "hold_radius"
fire_timer = 0;
clip_reload_timer = 0;
current_clip = clip_size;
hold_radius = 40;