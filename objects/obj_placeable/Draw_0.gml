/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 057D23C1
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6C3FB269
/// @DnDArgument : "expr" "object_index_to_place != -1"
if(object_index_to_place != -1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28A06E6A
	/// @DnDParent : 6C3FB269
	/// @DnDArgument : "expr" "object_get_sprite(object_index_to_place)"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = object_get_sprite(object_index_to_place);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 64EE8C10
	/// @DnDParent : 6C3FB269
	/// @DnDArgument : "expr" "ammo > 0 && currently_using && valid_placement"
	if(ammo > 0 && currently_using && valid_placement)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 75430FAB
		/// @DnDParent : 64EE8C10
		/// @DnDArgument : "x" "x_place"
		/// @DnDArgument : "y" "y_place"
		/// @DnDArgument : "alpha" "cos(lifetime * pi/30.0) * .25 + .5"
		/// @DnDArgument : "sprite" "object_get_sprite(object_index_to_place)"
		draw_sprite_ext(object_get_sprite(object_index_to_place), 0, x_place, y_place, 1, 1, 0, $FFFFFF & $ffffff, cos(lifetime * pi/30.0) * .25 + .5);
	}
}