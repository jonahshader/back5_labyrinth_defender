/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 42B73FE8
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 048C43D3
/// @DnDArgument : "code" "//draw textbox$(13_10)draw_sprite(spr_textbox, 0, view_wport[0]/2, view_hport[0]/2);$(13_10)$(13_10)$(13_10)//draw text$(13_10)draw_set_font(fnt_tutorial);$(13_10)$(13_10)draw_text_ext(view_wport[0]/2, view_hport[0]/2, array_get(text, text_index), stringHeight, boxWidth);$(13_10)$(13_10)bar_width = boxWidth*timer/MAX_TIME/37;"
//draw textbox
draw_sprite(spr_textbox, 0, view_wport[0]/2, view_hport[0]/2);


//draw text
draw_set_font(fnt_tutorial);

draw_text_ext(view_wport[0]/2, view_hport[0]/2, array_get(text, text_index), stringHeight, boxWidth);

bar_width = boxWidth*timer/MAX_TIME/37;

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6E498CC9
/// @DnDArgument : "color" "$FFFF0000"
draw_set_colour($FFFF0000 & $ffffff);
var l6E498CC9_0=($FFFF0000 >> 24);
draw_set_alpha(l6E498CC9_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 07705590
/// @DnDArgument : "x1" "(-bar_width/2)+(view_wport[0]/2)"
/// @DnDArgument : "y1" "(-10)+(view_hport[0]/2)"
/// @DnDArgument : "x2" "(bar_width/2)+(view_wport[0]/2)"
/// @DnDArgument : "y2" "view_hport[0]/2"
/// @DnDArgument : "fill" "1"
draw_rectangle((-bar_width/2)+(view_wport[0]/2), (-10)+(view_hport[0]/2), (bar_width/2)+(view_wport[0]/2), view_hport[0]/2, 0);