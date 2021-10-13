/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28532001
/// @DnDArgument : "code" "pistol = instance_create_layer(0,0,"Items",obj_pistol);$(13_10)pistol.ammo = 30;$(13_10)// ensure the gun is "disabled"$(13_10)pistol.currently_using = false;$(13_10)// add the gun to the player's inventory$(13_10)array_push(obj_player.inventory,pistol);$(13_10)$(13_10)/*$(13_10)wall_placer = instance_create_layer(0, 0, "Items", obj_placeable);$(13_10)wall_placer.object_index_to_place = obj_wall;$(13_10)wall_placer.ammo = 15;$(13_10)wall_placer.floor_only = true;$(13_10)array_push(obj_player.inventory, wall_placer);$(13_10)$(13_10)ghost_placer = instance_create_layer(0, 0, "Items", obj_placeable);$(13_10)ghost_placer.object_index_to_place = obj_ghost;$(13_10)ghost_placer.ammo = 99;$(13_10)array_push(obj_player.inventory, ghost_placer);$(13_10)*/"
pistol = instance_create_layer(0,0,"Items",obj_pistol);
pistol.ammo = 30;
// ensure the gun is "disabled"
pistol.currently_using = false;
// add the gun to the player's inventory
array_push(obj_player.inventory,pistol);

/*
wall_placer = instance_create_layer(0, 0, "Items", obj_placeable);
wall_placer.object_index_to_place = obj_wall;
wall_placer.ammo = 15;
wall_placer.floor_only = true;
array_push(obj_player.inventory, wall_placer);

ghost_placer = instance_create_layer(0, 0, "Items", obj_placeable);
ghost_placer.object_index_to_place = obj_ghost;
ghost_placer.ammo = 99;
array_push(obj_player.inventory, ghost_placer);
*//**/

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7932D2C6
/// @DnDArgument : "script" "scr_give_player_item"
/// @DnDArgument : "arg" "pistol"
/// @DnDSaveInfo : "script" "scr_give_player_item"
script_execute(scr_give_player_item, pistol);