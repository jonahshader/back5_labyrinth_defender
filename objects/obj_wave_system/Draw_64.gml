/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 21DA1570
/// @DnDArgument : "obj" "obj_enemy_base"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_enemy_base"
var l21DA1570_0 = false;
l21DA1570_0 = instance_exists(obj_enemy_base);
if(!l21DA1570_0)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 6924AEF0
	/// @DnDParent : 21DA1570
	draw_set_colour($FFFFFFFF & $ffffff);
	var l6924AEF0_0=($FFFFFFFF >> 24);
	draw_set_alpha(l6924AEF0_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 3CBC4D66
	/// @DnDParent : 21DA1570
	/// @DnDArgument : "font" "fnt_heading"
	/// @DnDSaveInfo : "font" "fnt_heading"
	draw_set_font(fnt_heading);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 2485D476
	/// @DnDParent : 21DA1570
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 67FB15D2
	/// @DnDParent : 21DA1570
	/// @DnDArgument : "x" "view_wport[0]/2"
	/// @DnDArgument : "y" "view_hport[0]/3"
	/// @DnDArgument : "caption" ""Wave  " + string(global.current_wave+1) + " starting in " + string(wave_start_timer div 60) + " seconds.""
	draw_text(view_wport[0]/2, view_hport[0]/3, string("Wave  " + string(global.current_wave+1) + " starting in " + string(wave_start_timer div 60) + " seconds.") + "");
}