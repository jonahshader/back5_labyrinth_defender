/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 610F2467
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2259B60E
/// @DnDArgument : "expr" "object_index_to_throw != -1"
if(object_index_to_throw != -1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E73A65D
	/// @DnDParent : 2259B60E
	/// @DnDArgument : "expr" "object_get_sprite(object_index_to_throw)"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = object_get_sprite(object_index_to_throw);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 68CC0282
	/// @DnDParent : 2259B60E
	/// @DnDArgument : "expr" "ammo > 0 && currently_using"
	if(ammo > 0 && currently_using)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 776E4875
		/// @DnDParent : 68CC0282
		/// @DnDArgument : "x" "mouse_x"
		/// @DnDArgument : "y" "mouse_y"
		/// @DnDArgument : "alpha" ".6"
		/// @DnDArgument : "sprite" "object_get_sprite(object_index_to_throw)"
		draw_sprite_ext(object_get_sprite(object_index_to_throw), 0, mouse_x, mouse_y, 1, 1, 0, $FFFFFF & $ffffff, .6);
	}
}