/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 057D23C1
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 64EE8C10
/// @DnDArgument : "expr" "object_index_to_place != -1 && ammo > 0 && currently_using"
if(object_index_to_place != -1 && ammo > 0 && currently_using)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28A06E6A
	/// @DnDParent : 64EE8C10
	/// @DnDArgument : "expr" "object_index_to_place.sprite_index"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = object_index_to_place.sprite_index;

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