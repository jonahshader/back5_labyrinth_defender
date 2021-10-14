/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6103274A
/// @DnDArgument : "obj" "obj_shop"
/// @DnDSaveInfo : "obj" "obj_shop"
var l6103274A_0 = false;
l6103274A_0 = instance_exists(obj_shop);
if(l6103274A_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 20C0D1E9
	/// @DnDParent : 6103274A
	/// @DnDArgument : "expr" "obj_shop.open"
	if(obj_shop.open)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C2813F5
		/// @DnDParent : 20C0D1E9
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "currently_using"
		currently_using = false;
	}
}