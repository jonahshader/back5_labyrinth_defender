/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5583994B
/// @DnDArgument : "expr" "currently_using && ammo > 0 && object_index_to_place != -1 && valid_placement"
if(currently_using && ammo > 0 && object_index_to_place != -1 && valid_placement)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 741ECEBB
	/// @DnDParent : 5583994B
	/// @DnDArgument : "xpos" "x_place"
	/// @DnDArgument : "ypos" "y_place"
	/// @DnDArgument : "objectid" "object_index_to_place"
	/// @DnDArgument : "layer" ""Items""
	instance_create_layer(x_place, y_place, "Items", object_index_to_place);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21F451F4
	/// @DnDParent : 5583994B
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ammo"
	ammo += -1;
}