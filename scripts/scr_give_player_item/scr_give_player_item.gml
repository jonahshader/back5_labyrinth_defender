// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function give_player_item(item)
{
	// ensure the gun is "disabled"
	item.currently_using = false;
	// add the gun to the player's inventory
	array_push(obj_player.inventory, item);
}