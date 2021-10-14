/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 772AEAB5
/// @DnDArgument : "color" "$C6FFFFFF"
draw_set_colour($C6FFFFFF & $ffffff);
var l772AEAB5_0=($C6FFFFFF >> 24);
draw_set_alpha(l772AEAB5_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 6E860956
/// @DnDArgument : "x1" "90"
/// @DnDArgument : "y1" "90"
/// @DnDArgument : "x2" "view_wport[0] - 90"
/// @DnDArgument : "y2" "view_hport[0] - 90"
/// @DnDArgument : "fill" "1"
draw_rectangle(90, 90, view_wport[0] - 90, view_hport[0] - 90, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 41FC93B6
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 53525730
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l53525730_0=($FF000000 >> 24);
draw_set_alpha(l53525730_0 / $ff);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70E4917C
/// @DnDArgument : "code" "//draw text$(13_10)draw_set_font(fnt_heading);$(13_10)$(13_10)draw_text(view_wport[0]/2, (view_hport[0]/2) - 90, "You died.");$(13_10)if (room == rm_tutorial) {$(13_10)	draw_text(view_wport[0]/2, (view_hport[0]/2) - 60, "Lol you died in the tutorial");$(13_10)} else {$(13_10)	draw_text(view_wport[0]/2, (view_hport[0]/2), "You made it to wave " + string(global.current_wave));$(13_10)	draw_text(view_wport[0]/2, (view_hport[0]/2) - 60, "Press any key to restart");$(13_10)	draw_text(view_wport[0]/2, (view_hport[0]/2) - 30, "Tip: Press F to open the shop");$(13_10)	draw_text(view_wport[0]/2, (view_hport[0]/2) + 0, "In the shop, left click to purchase and right click to buy ammo");$(13_10)	draw_text(view_wport[0]/2, (view_hport[0]/2) + 30, "Kill enemies to get points to spend in the shop!");$(13_10)}$(13_10)$(13_10)"
//draw text
draw_set_font(fnt_heading);

draw_text(view_wport[0]/2, (view_hport[0]/2) - 90, "You died.");
if (room == rm_tutorial) {
	draw_text(view_wport[0]/2, (view_hport[0]/2) - 60, "Lol you died in the tutorial");
} else {
	draw_text(view_wport[0]/2, (view_hport[0]/2), "You made it to wave " + string(global.current_wave));
	draw_text(view_wport[0]/2, (view_hport[0]/2) - 60, "Press any key to restart");
	draw_text(view_wport[0]/2, (view_hport[0]/2) - 30, "Tip: Press F to open the shop");
	draw_text(view_wport[0]/2, (view_hport[0]/2) + 0, "In the shop, left click to purchase and right click to buy ammo");
	draw_text(view_wport[0]/2, (view_hport[0]/2) + 30, "Kill enemies to get points to spend in the shop!");
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 50353D6F
draw_set_colour($FFFFFFFF & $ffffff);
var l50353D6F_0=($FFFFFFFF >> 24);
draw_set_alpha(l50353D6F_0 / $ff);