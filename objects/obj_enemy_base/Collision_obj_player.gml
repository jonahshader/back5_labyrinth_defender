/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43296BA6
/// @DnDArgument : "code" "if (cooldown == 0) {$(13_10)	obj_player.health_current -= contact_damage$(13_10)	cooldown = 60;$(13_10)}"
if (cooldown == 0) {
	obj_player.health_current -= contact_damage
	cooldown = 60;
}