if (currently_using) {
	draw_set_colour($FFFFFFFF & $ffffff);
	var l7612B360_0=($FFFFFFFF >> 24);
	draw_set_alpha(l7612B360_0 / $ff);

	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);

	draw_text(10, room_height - 10, string("Ammo: ") + string(ammo));
}