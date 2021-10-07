/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 048C43D3
/// @DnDArgument : "code" "//draw textbox$(13_10)draw_sprite(spr_textbox, 0, x, y);$(13_10)$(13_10)$(13_10)//draw text$(13_10)draw_set_font(fnt_tutorial);$(13_10)$(13_10)draw_text_ext(x, y+45, text, stringHeight, boxWidth);"
//draw textbox
draw_sprite(spr_textbox, 0, x, y);


//draw text
draw_set_font(fnt_tutorial);

draw_text_ext(x, y+45, text, stringHeight, boxWidth);