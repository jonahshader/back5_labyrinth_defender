/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6FF99E3C
/// @DnDArgument : "code" "// set every item to not using$(13_10)var item_count = array_length(inventory);$(13_10)for (var i = 0; i < item_count; ++i) {$(13_10)	var item = array_get(inventory, i);$(13_10)	item.currently_using = false;$(13_10)}$(13_10)$(13_10)// set item at item holding index to using if it exists$(13_10)if (item_holding_index < item_count) {$(13_10)	array_get(inventory, item_holding_index).currently_using = true;$(13_10)		if (instance_exists(obj_shop)) {$(13_10)		if (obj_shop.open == true) {$(13_10)			array_get(inventory, item_holding_index).currently_using = false;$(13_10)		}$(13_10)	}$(13_10)}"
// set every item to not using
var item_count = array_length(inventory);
for (var i = 0; i < item_count; ++i) {
	var item = array_get(inventory, i);
	item.currently_using = false;
}

// set item at item holding index to using if it exists
if (item_holding_index < item_count) {
	array_get(inventory, item_holding_index).currently_using = true;
		if (instance_exists(obj_shop)) {
		if (obj_shop.open == true) {
			array_get(inventory, item_holding_index).currently_using = false;
		}
	}
}