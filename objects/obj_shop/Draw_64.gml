/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 090E1F2C
/// @DnDArgument : "expr" "open"
if(open)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 5A014067
	/// @DnDParent : 090E1F2C
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 43D4D2C1
	/// @DnDParent : 090E1F2C
	/// @DnDArgument : "font" "fnt_body"
	/// @DnDSaveInfo : "font" "fnt_body"
	draw_set_font(fnt_body);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0F2704B4
	/// @DnDParent : 090E1F2C
	/// @DnDArgument : "color" "$61FFFFFF"
	draw_set_colour($61FFFFFF & $ffffff);
	var l0F2704B4_0=($61FFFFFF >> 24);
	draw_set_alpha(l0F2704B4_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 3905581E
	/// @DnDParent : 090E1F2C
	/// @DnDArgument : "x2" "view_wport[0]"
	/// @DnDArgument : "y2" "view_hport[0]"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(0, 0, view_wport[0], view_hport[0], 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 41212777
	/// @DnDParent : 090E1F2C
	draw_set_colour($FFFFFFFF & $ffffff);
	var l41212777_0=($FFFFFFFF >> 24);
	draw_set_alpha(l41212777_0 / $ff);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6854FEC9
	/// @DnDParent : 090E1F2C
	/// @DnDArgument : "code" "draw_width = view_hport[0] * .8;$(13_10)spacing = draw_width / item_count;$(13_10)$(13_10)for (i = 0; i < item_count; ++i) {$(13_10)	var _x = (view_wport[0] / 2) + (i - item_count/2) * spacing;$(13_10)	var _y = (view_hport[0] / 2) - 30;$(13_10)	var x_min = _x - (spacing/2);$(13_10)	var x_max = _x + (spacing/2);$(13_10)	var mouse_over = window_mouse_get_x() > x_min && window_mouse_get_x() < x_max;$(13_10)	if (available[i]) {$(13_10)		if (mouse_over) {$(13_10)			draw_sprite_ext(object_get_sprite(shop_items[i]), 0, _x, _y, 1.5, 1.5, 0, $ffffff, 1);$(13_10)		} else {$(13_10)			draw_sprite_ext(object_get_sprite(shop_items[i]), 0, _x, _y, 1, 1, 0, $ffffff, 1);$(13_10)		}$(13_10)		$(13_10)	} else {$(13_10)		draw_sprite_ext(object_get_sprite(shop_items[i]), 0, _x, _y, 1, 1, 0, $ffffff, .25);$(13_10)	}$(13_10)	$(13_10)	draw_text(_x, _y + 48, "Price: " + string(costs[i]));$(13_10)	$(13_10)	if (!placeable[i] && !throwable[i]) {$(13_10)		draw_text(_x, _y + 64, "Ammo Price: " + string(ammo_costs[i]));$(13_10)	}$(13_10)	$(13_10)	$(13_10)	if (mouse_check_button_pressed(mb_left)) {$(13_10)		if (mouse_over) {$(13_10)			if (obj_player.points_current >= costs[i]) {$(13_10)				obj_player.points_current -= costs[i];$(13_10)				if (available[i]) {$(13_10)					if (!placeable[i] && !throwable[i]) {$(13_10)						var new_wep = instance_create_layer(0,0,"Items",shop_items[i]);$(13_10)						// add the gun to the player's inventory$(13_10)						array_push(obj_player.inventory,new_wep);$(13_10)						available[i] = false;$(13_10)					} else if (placeable[i]) {$(13_10)						if (ref[i] == noone) {$(13_10)							var new_item = instance_create_layer(0, 0, "Items", obj_placeable);$(13_10)							/*if (shop_items[i] == obj_turret_pistol) {$(13_10)								new_item.object_index_to_place = obj_turret_pistol;$(13_10)							} else if (shop_items[i] == obj_spikes) {$(13_10)								new_item.object_index_to_place = obj_spikes;$(13_10)							}*/$(13_10)							new_item.object_index_to_place = shop_items[i];$(13_10)							//new_item.object_index_to_place = obj_turret_pistol;$(13_10)							$(13_10)							new_item.ammo = 1;$(13_10)							new_item.wall_only = wall_only[i];$(13_10)							new_item.floor_only = floor_only[i];$(13_10)							new_item.center_offset = center_offset[i];$(13_10)							array_push(obj_player.inventory, new_item);$(13_10)							ref[i] = new_item;$(13_10)						} else {$(13_10)							ref[i].ammo++;$(13_10)						}$(13_10)					} else if (throwable[i]) {$(13_10)						if (ref[i] == noone) {$(13_10)						$(13_10)							var new_item = instance_create_layer(0, 0, "Items", obj_throwable);$(13_10)							new_item.object_index_to_throw = shop_items[i];$(13_10)							new_item.ammo = 1;$(13_10)							array_push(obj_player.inventory, new_item);$(13_10)							ref[i] = new_item;$(13_10)						} else {$(13_10)							ref[i].ammo++;$(13_10)						}$(13_10)					}$(13_10)				}$(13_10)$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if (!placeable[i] && !throwable[i] && !available[i]) {$(13_10)		if (mouse_check_button_pressed(mb_right)) {$(13_10)			if (mouse_over) {$(13_10)				if (obj_player.points_current >= ammo_costs[i]) {$(13_10)					obj_player.points_current -= ammo_costs[i];$(13_10)					shop_items[i].ammo++;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}"
	draw_width = view_hport[0] * .8;
	spacing = draw_width / item_count;
	
	for (i = 0; i < item_count; ++i) {
		var _x = (view_wport[0] / 2) + (i - item_count/2) * spacing;
		var _y = (view_hport[0] / 2) - 30;
		var x_min = _x - (spacing/2);
		var x_max = _x + (spacing/2);
		var mouse_over = window_mouse_get_x() > x_min && window_mouse_get_x() < x_max;
		if (available[i]) {
			if (mouse_over) {
				draw_sprite_ext(object_get_sprite(shop_items[i]), 0, _x, _y, 1.5, 1.5, 0, $ffffff, 1);
			} else {
				draw_sprite_ext(object_get_sprite(shop_items[i]), 0, _x, _y, 1, 1, 0, $ffffff, 1);
			}
			
		} else {
			draw_sprite_ext(object_get_sprite(shop_items[i]), 0, _x, _y, 1, 1, 0, $ffffff, .25);
		}
		
		draw_text(_x, _y + 48, "Price: " + string(costs[i]));
		
		if (!placeable[i] && !throwable[i]) {
			draw_text(_x, _y + 64, "Ammo Price: " + string(ammo_costs[i]));
		}
		
		
		if (mouse_check_button_pressed(mb_left)) {
			if (mouse_over) {
				if (obj_player.points_current >= costs[i]) {
					obj_player.points_current -= costs[i];
					if (available[i]) {
						if (!placeable[i] && !throwable[i]) {
							var new_wep = instance_create_layer(0,0,"Items",shop_items[i]);
							// add the gun to the player's inventory
							array_push(obj_player.inventory,new_wep);
							available[i] = false;
						} else if (placeable[i]) {
							if (ref[i] == noone) {
								var new_item = instance_create_layer(0, 0, "Items", obj_placeable);
								/*if (shop_items[i] == obj_turret_pistol) {
									new_item.object_index_to_place = obj_turret_pistol;
								} else if (shop_items[i] == obj_spikes) {
									new_item.object_index_to_place = obj_spikes;
								}*/
								new_item.object_index_to_place = shop_items[i];
								//new_item.object_index_to_place = obj_turret_pistol;
								
								new_item.ammo = 1;
								new_item.wall_only = wall_only[i];
								new_item.floor_only = floor_only[i];
								new_item.center_offset = center_offset[i];
								array_push(obj_player.inventory, new_item);
								ref[i] = new_item;
							} else {
								ref[i].ammo++;
							}
						} else if (throwable[i]) {
							if (ref[i] == noone) {
							
								var new_item = instance_create_layer(0, 0, "Items", obj_throwable);
								new_item.object_index_to_throw = shop_items[i];
								new_item.ammo = 1;
								array_push(obj_player.inventory, new_item);
								ref[i] = new_item;
							} else {
								ref[i].ammo++;
							}
						}
					}
	
				}
			}
		}
		
		if (!placeable[i] && !throwable[i] && !available[i]) {
			if (mouse_check_button_pressed(mb_right)) {
				if (mouse_over) {
					if (obj_player.points_current >= ammo_costs[i]) {
						obj_player.points_current -= ammo_costs[i];
						shop_items[i].ammo++;
					}
				}
			}
		}
	}/**/
}