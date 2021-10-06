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
	/// @DnDArgument : "code" "x_place = floor(mouse_x / GRID_SIZE) * GRID_SIZE;$(13_10)y_place = floor(mouse_y / GRID_SIZE) * GRID_SIZE;"
	x_place = floor(mouse_x / GRID_SIZE) * GRID_SIZE;
	y_place = floor(mouse_y / GRID_SIZE) * GRID_SIZE;
}