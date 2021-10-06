/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 4BA13D63
/// @DnDInput : 3
/// @DnDArgument : "macro" "BASE_ACCELERATION"
/// @DnDArgument : "value" "2"
/// @DnDArgument : "macro_1" "BASE_MAX_VEL"
/// @DnDArgument : "value_1" "5"
/// @DnDArgument : "macro_2" "BASE_HEALTH"
/// @DnDArgument : "value_2" "10"
#macro BASE_ACCELERATION 2
#macro BASE_MAX_VEL 5
#macro BASE_HEALTH 10

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1F2F54C1
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "var" "speed_multiplier"
/// @DnDArgument : "var_1" "health_multiplier"
speed_multiplier = 1;
health_multiplier = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2E071DD0
/// @DnDArgument : "expr" "BASE_HEALTH * health_multiplier"
/// @DnDArgument : "var" "health_current"
health_current = BASE_HEALTH * health_multiplier;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 69F2FA5D
/// @DnDArgument : "var" "look_dir"
look_dir = 0;