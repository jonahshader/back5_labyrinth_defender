// draw inventory. ammo count? is that gonna be baked in to the gun sprites like ruar suggested?
var inventory_size = array_length(inventory);
var spacing = 32;
var left_padding = 32;
var start = (view_hport[0] / 2) - spacing * (inventory_size / 2);

for (var i = 0; i < inventory_size; ++i) {
	var inventory_item = array_get(inventory, i);
	if (inventory_item.sprite_index >=0) {
		draw_sprite_ext(inventory_item.sprite_index, inventory_item.image_index, left_padding, start + i * spacing, 1.5, 1.5, 0, $FFFFFF & $ffffff, inventory_item.currently_using ? 1 : .5);
	}
}