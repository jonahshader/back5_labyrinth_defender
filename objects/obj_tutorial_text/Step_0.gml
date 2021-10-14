/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6769D546
/// @DnDArgument : "code" "if(timer>0) {$(13_10)	timer--;$(13_10)}$(13_10)else {$(13_10)	timer = MAX_TIME;$(13_10)	if(text_index == array_length(text)-1) {$(13_10)		room_goto(rm_level);$(13_10)	}$(13_10)	else {$(13_10)		text_index++;$(13_10)	}$(13_10)}"
if(timer>0) {
	timer--;
}
else {
	timer = MAX_TIME;
	if(text_index == array_length(text)-1) {
		room_goto(rm_level);
	}
	else {
		text_index++;
	}
}