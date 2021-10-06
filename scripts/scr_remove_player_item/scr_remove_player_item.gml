/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 671E2CD9
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_remove_player_item"
/// @DnDArgument : "arg" "item"
/// @DnDArgument : "static" "1"
static scr_remove_player_item = function(item) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 685A2FDE
	/// @DnDParent : 671E2CD9
	/// @DnDArgument : "code" "var item_index = -1;$(13_10)for (var i = 0; i < array_length(obj_player.inventory); ++i) {$(13_10)	if (array_get(obj_player.inventory, i) == item) {$(13_10)		item_index = i;$(13_10)		break;$(13_10)	}$(13_10)}$(13_10)array_delete(obj_player.inventory, item_index, 1);$(13_10)instance_destroy(item);"
	var item_index = -1;
	for (var i = 0; i < array_length(obj_player.inventory); ++i) {
		if (array_get(obj_player.inventory, i) == item) {
			item_index = i;
			break;
		}
	}
	array_delete(obj_player.inventory, item_index, 1);
	instance_destroy(item);
}