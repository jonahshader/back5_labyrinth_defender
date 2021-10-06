/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 02B6CD02
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "give_player_item"
/// @DnDArgument : "arg" "item"
/// @DnDArgument : "static" "1"
static give_player_item = function(item) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4B10F92F
	/// @DnDParent : 02B6CD02
	/// @DnDArgument : "code" "// ensure the gun is "disabled"$(13_10)item.currently_using = false;$(13_10)// add the gun to the player's inventory$(13_10)array_push(obj_player.inventory, item);"
	// ensure the gun is "disabled"
	item.currently_using = false;
	// add the gun to the player's inventory
	array_push(obj_player.inventory, item);
}