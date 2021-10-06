/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F327E43
/// @DnDArgument : "code" "// draw inventory. ammo count? is that gonna be baked in to the gun sprites like ruar suggested?$(13_10)var inventory_size = array_length(inventory);$(13_10)var spacing = 32;$(13_10)var left_padding = 32;$(13_10)var start = (view_hport[0] / 2) - spacing * (inventory_size / 2);$(13_10)$(13_10)for (var i = 0; i < inventory_size; ++i) {$(13_10)	var inventory_item = array_get(inventory, i);$(13_10)	draw_sprite_ext(inventory_item.sprite_index, 0, left_padding, start + i * spacing, 1, 1, 0, $FFFFFF & $ffffff, 1);$(13_10)}"
// draw inventory. ammo count? is that gonna be baked in to the gun sprites like ruar suggested?
var inventory_size = array_length(inventory);
var spacing = 32;
var left_padding = 32;
var start = (view_hport[0] / 2) - spacing * (inventory_size / 2);

for (var i = 0; i < inventory_size; ++i) {
	var inventory_item = array_get(inventory, i);
	draw_sprite_ext(inventory_item.sprite_index, 0, left_padding, start + i * spacing, 1, 1, 0, $FFFFFF & $ffffff, 1);
}