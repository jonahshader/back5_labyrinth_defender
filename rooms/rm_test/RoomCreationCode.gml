/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 448DE957
/// @DnDArgument : "code" "pistol = instance_create_layer(0,0,"Items",obj_pistol);$(13_10)pistol.ammo = 30;$(13_10)// add the gun to the player's inventory$(13_10)array_push(obj_player.inventory,pistol);$(13_10)$(13_10)shotgun = instance_create_layer(0, 0, "Items", obj_shotgun);$(13_10)shotgun.ammo = 30;$(13_10)array_push(obj_player.inventory, shotgun);$(13_10)$(13_10)grenade = instance_create_layer(0, 0, "Items", obj_throwable);$(13_10)grenade.ammo = 30;$(13_10)grenade.object_index_to_throw = obj_grenade;$(13_10)array_push(obj_player.inventory, grenade);$(13_10)$(13_10)/*$(13_10)wall_placer = instance_create_layer(0, 0, "Items", obj_placeable);$(13_10)wall_placer.object_index_to_place = obj_wall;$(13_10)wall_placer.ammo = 15;$(13_10)wall_placer.floor_only = true;$(13_10)array_push(obj_player.inventory, wall_placer);$(13_10)$(13_10)ghost_placer = instance_create_layer(0, 0, "Items", obj_placeable);$(13_10)ghost_placer.object_index_to_place = obj_ghost;$(13_10)ghost_placer.ammo = 99;$(13_10)array_push(obj_player.inventory, ghost_placer);$(13_10)*/$(13_10)$(13_10)"
pistol = instance_create_layer(0,0,"Items",obj_pistol);
pistol.ammo = 30;
// add the gun to the player's inventory
array_push(obj_player.inventory,pistol);

shotgun = instance_create_layer(0, 0, "Items", obj_shotgun);
shotgun.ammo = 30;
array_push(obj_player.inventory, shotgun);

grenade = instance_create_layer(0, 0, "Items", obj_throwable);
grenade.ammo = 30;
grenade.object_index_to_throw = obj_grenade;
array_push(obj_player.inventory, grenade);

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
*/

/**/