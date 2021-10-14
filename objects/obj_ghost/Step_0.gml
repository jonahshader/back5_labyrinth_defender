/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4889B6EA
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l4889B6EA_0 = false;
l4889B6EA_0 = instance_exists(obj_player);
if(l4889B6EA_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 35EB9DA6
	/// @DnDParent : 4889B6EA
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2A80C129
	/// @DnDParent : 4889B6EA
	/// @DnDArgument : "speed" "1.5"
	speed = 1.5;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 7D851600
	/// @DnDParent : 4889B6EA
	/// @DnDArgument : "direction" "dir_offset"
	/// @DnDArgument : "direction_relative" "1"
	direction += dir_offset;
}