/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3C28C226
/// @DnDArgument : "expr" "currently_using"
if(currently_using)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06112B0C
	/// @DnDParent : 3C28C226
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "lifetime"
	lifetime += 1;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6AE9F405
	/// @DnDParent : 3C28C226
	/// @DnDArgument : "code" "if (center_offset) {$(13_10)	x_place = floor((mouse_x - GRID_SIZE/2) / GRID_SIZE) * GRID_SIZE;$(13_10)	y_place = floor((mouse_y - GRID_SIZE/2) / GRID_SIZE) * GRID_SIZE;$(13_10)	x_place += GRID_SIZE/2;$(13_10)	y_place += GRID_SIZE/2;$(13_10)	$(13_10)}$(13_10)else {$(13_10)	x_place = floor(mouse_x / GRID_SIZE) * GRID_SIZE;$(13_10)	y_place = floor(mouse_y / GRID_SIZE) * GRID_SIZE;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)valid_placement = true;$(13_10)$(13_10)if (wall_only) {$(13_10)	if (instance_position(x_place, y_place, obj_wall) == noone) {$(13_10)		valid_placement = false;$(13_10)	}$(13_10)}$(13_10)$(13_10)if (floor_only) {$(13_10)	if (instance_position(x_place, y_place, obj_wall) != noone) {$(13_10)		valid_placement = false;$(13_10)	}$(13_10)}$(13_10)$(13_10)if (instance_position(x_place, y_place, object_index_to_place) != noone) {$(13_10)	valid_placement = false;$(13_10)}"
	if (center_offset) {
		x_place = floor((mouse_x - GRID_SIZE/2) / GRID_SIZE) * GRID_SIZE;
		y_place = floor((mouse_y - GRID_SIZE/2) / GRID_SIZE) * GRID_SIZE;
		x_place += GRID_SIZE/2;
		y_place += GRID_SIZE/2;
		
	}
	else {
		x_place = floor(mouse_x / GRID_SIZE) * GRID_SIZE;
		y_place = floor(mouse_y / GRID_SIZE) * GRID_SIZE;
	}
	
	
	
	
	
	valid_placement = true;
	
	if (wall_only) {
		if (instance_position(x_place, y_place, obj_wall) == noone) {
			valid_placement = false;
		}
	}
	
	if (floor_only) {
		if (instance_position(x_place, y_place, obj_wall) != noone) {
			valid_placement = false;
		}
	}
	
	if (instance_position(x_place, y_place, object_index_to_place) != noone) {
		valid_placement = false;
	}
}