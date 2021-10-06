/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07C72A11
/// @DnDArgument : "code" "if (array_length(inventory) > 0) {$(13_10)	item_holding_index++;$(13_10)	if (item_holding_index >= array_length(inventory)) {$(13_10)		item_holding_index -= array_length(inventory);$(13_10)	}$(13_10)}$(13_10)"
if (array_length(inventory) > 0) {
	item_holding_index++;
	if (item_holding_index >= array_length(inventory)) {
		item_holding_index -= array_length(inventory);
	}
}