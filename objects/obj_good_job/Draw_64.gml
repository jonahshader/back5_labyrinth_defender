/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1CEB3A28
draw_set_colour($FFFFFFFF & $ffffff);
var l1CEB3A28_0=($FFFFFFFF >> 24);
draw_set_alpha(l1CEB3A28_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 09DF5BC4
/// @DnDArgument : "font" "fnt_tutorial"
/// @DnDSaveInfo : "font" "fnt_tutorial"
draw_set_font(fnt_tutorial);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1988A38E
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 13908A93
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Good job on the tutorial!! Now you can play the real game :)""
draw_text(x + 0, y + 0, string("Good job on the tutorial!! Now you can play the real game :)") + "");