/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5ABC66C1
/// @DnDArgument : "x" "cos(obj_player.look_dir * pi / 180) * hold_radius"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-sin(obj_player.look_dir * pi / 180) * hold_radius"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "rot" "obj_player.look_dir"
/// @DnDArgument : "sprite" "sprite_index"
draw_sprite_ext(sprite_index, 0, x + cos(obj_player.look_dir * pi / 180) * hold_radius, y + -sin(obj_player.look_dir * pi / 180) * hold_radius, 1, 1, obj_player.look_dir, $FFFFFF & $ffffff, 1);