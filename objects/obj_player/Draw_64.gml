// draw inventory. ammo count? is that gonna be baked in to the gun sprites like ruar suggested?
var inventory_size = array_length(inventory);
var spacing = 64;
var left_padding = 32;
var start = (view_hport[0] / 2) - spacing * (inventory_size / 2);

for (var i = 0; i < inventory_size; ++i) {
	var inventory_item = array_get(inventory, i);
	if (inventory_item.sprite_index >=0) {
		draw_sprite_ext(inventory_item.sprite_index, inventory_item.image_index, left_padding, start + i * spacing, 1.5, 1.5, 0, $FFFFFF & $ffffff, inventory_item.currently_using ? 1 : .5);
	}
}

// render points value
draw_set_colour($FFFFFFFF & $ffffff);
var l7612B360_0=($FFFFFFFF >> 24);
draw_set_alpha(l7612B360_0 / $ff);

draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

draw_text(view_wport[0] - 10, view_hport[0] - 10, string("Points: ") + string(points_current));

health_width = health_current/BASE_HEALTH*500;
draw_set_colour($FF00FF00 & $ffffff);
var l44321FB6_0=($FF00FF00 >> 24);
draw_set_alpha(l44321FB6_0 / $ff);

draw_rectangle((-health_width/2)+(view_wport[0]/2), 15, (health_width/2)+(view_wport[0]/2), 50, 0);