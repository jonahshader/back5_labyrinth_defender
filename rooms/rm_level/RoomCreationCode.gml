/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 28532001
/// @DnDArgument : "code" "pistol = instance_create_layer(0,0,"Items",obj_pistol);$(13_10)pistol.ammo = 30;$(13_10)// ensure the gun is "disabled"$(13_10)pistol.currently_using = false;$(13_10)// add the gun to the player's inventory$(13_10)array_push(obj_player.inventory,pistol);"
pistol = instance_create_layer(0,0,"Items",obj_pistol);
pistol.ammo = 30;
// ensure the gun is "disabled"
pistol.currently_using = false;
// add the gun to the player's inventory
array_push(obj_player.inventory,pistol);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7932D2C6
/// @DnDArgument : "script" "scr_give_player_item"
/// @DnDArgument : "arg" "pistol"
/// @DnDSaveInfo : "script" "scr_give_player_item"
script_execute(scr_give_player_item, pistol);