/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 571F827B
event_inherited();

/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 507E87BA
/// @DnDInput : 4
/// @DnDArgument : "macro" "CLIP_SIZE"
/// @DnDArgument : "value" "6"
/// @DnDArgument : "macro_1" "FIRE_TIME"
/// @DnDArgument : "value_1" "10"
/// @DnDArgument : "macro_2" "CLIP_RELOAD_TIME"
/// @DnDArgument : "value_2" "60"
/// @DnDArgument : "macro_3" "BULLET_VELOCITY"
/// @DnDArgument : "value_3" "9"
#macro CLIP_SIZE 6
#macro FIRE_TIME 10
#macro CLIP_RELOAD_TIME 60
#macro BULLET_VELOCITY 9

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2BB5EF9E
/// @DnDInput : 3
/// @DnDArgument : "expr_2" "CLIP_SIZE"
/// @DnDArgument : "var" "fire_timer"
/// @DnDArgument : "var_1" "clip_reload_timer"
/// @DnDArgument : "var_2" "current_clip"
fire_timer = 0;
clip_reload_timer = 0;
current_clip = CLIP_SIZE;