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
/// @DnDInput : 2
/// @DnDArgument : "expr" "BASE_HEALTH * health_multiplier"
/// @DnDArgument : "expr_1" "1000"
/// @DnDArgument : "var" "health_current"
/// @DnDArgument : "var_1" "points_current"
health_current = BASE_HEALTH * health_multiplier;
points_current = 1000;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 69F2FA5D
/// @DnDInput : 2
/// @DnDArgument : "var" "look_dir"
/// @DnDArgument : "var_1" "item_holding_index"
look_dir = 0;
item_holding_index = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 111FB1B4
/// @DnDArgument : "code" "inventory = [];"
inventory = [];

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 078BBFBB
/// @DnDInput : 2
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "difficulty_scalar"
/// @DnDArgument : "var_1" "current_wave"
global.difficulty_scalar = 1;
global.current_wave = 0;