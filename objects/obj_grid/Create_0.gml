/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3F68A421
/// @DnDInput : 4
/// @DnDArgument : "expr" "32"
/// @DnDArgument : "expr_1" "32"
/// @DnDArgument : "expr_2" "room_width div cell_width"
/// @DnDArgument : "expr_3" "room_height div cell_height"
/// @DnDArgument : "var" "cell_width"
/// @DnDArgument : "var_1" "cell_height"
/// @DnDArgument : "var_2" "h_cells"
/// @DnDArgument : "var_3" "v_cells"
cell_width = 32;
cell_height = 32;
h_cells = room_width div cell_width;
v_cells = room_height div cell_height;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 60AAD646
/// @DnDArgument : "code" "global.grid = mp_grid_create(0, 0, h_cells, v_cells, cell_width, cell_height)$(13_10)mp_grid_add_instances(global.grid, obj_wall, false)"
global.grid = mp_grid_create(0, 0, h_cells, v_cells, cell_width, cell_height)
mp_grid_add_instances(global.grid, obj_wall, false)