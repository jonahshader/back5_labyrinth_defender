/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 529B700F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDArgument : "destroylist" "false"
/// @DnDSaveInfo : "object" "obj_wall"
var l529B700F_0 = instance_place(x + 0, y + 0, obj_wall);
if ((l529B700F_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 61BEE6EF
	/// @DnDParent : 529B700F
	/// @DnDArgument : "expr" "collides_with_walls"
	if(collides_with_walls)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7224C910
		/// @DnDParent : 61BEE6EF
		instance_destroy();
	}
}