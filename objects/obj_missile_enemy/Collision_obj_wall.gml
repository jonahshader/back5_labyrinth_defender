/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 14140909
/// @DnDArgument : "code" "var tmp = instance_create_layer(x + 0, y + 0, layer, obj_explosion_enemy);$(13_10)tmp.damage = 5;$(13_10)$(13_10)with(tmp) {$(13_10)event_user(0);$(13_10)}$(13_10)$(13_10)instance_destroy();"
var tmp = instance_create_layer(x + 0, y + 0, layer, obj_explosion_enemy);
tmp.damage = 5;

with(tmp) {
event_user(0);
}

instance_destroy();