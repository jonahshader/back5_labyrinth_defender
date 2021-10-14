/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4BE44546
/// @DnDInput : 5
/// @DnDArgument : "expr_1" "health_max"
/// @DnDArgument : "expr_3" "false"
/// @DnDArgument : "var" "react"
/// @DnDArgument : "var_1" "health_current"
/// @DnDArgument : "var_3" "tarred"
/// @DnDArgument : "var_4" "tartimer"
react = 0;
health_current = health_max;
variable = 0;
tarred = false;
tartimer = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08BF1CDE
/// @DnDArgument : "code" "path = path_add();$(13_10)cooldown = 0;"
path = path_add();
cooldown = 0;