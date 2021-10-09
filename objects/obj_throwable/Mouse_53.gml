/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 725BEFA4
/// @DnDArgument : "expr" "currently_using && ammo > 0 && object_index_to_throw != -1 && cooldown_timer == 0"
if(currently_using && ammo > 0 && object_index_to_throw != -1 && cooldown_timer == 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 30BF915A
	/// @DnDParent : 725BEFA4
	/// @DnDArgument : "code" "ammo--;$(13_10)$(13_10)var dist = distance_to_point(mouse_x, mouse_y);$(13_10)var travel_time = dist / THROW_VELOCITY;$(13_10)var thrown = instance_create_layer(x, y, "Items", obj_thrown);$(13_10)thrown.hspeed = ((mouse_x - x) / dist) * THROW_VELOCITY;$(13_10)thrown.vspeed = ((mouse_y - y) / dist) * THROW_VELOCITY;$(13_10)thrown.travel_time = travel_time;$(13_10)thrown.sprite_index = object_get_sprite(object_index_to_throw);$(13_10)thrown.object_to_instantiate = object_index_to_throw;$(13_10)$(13_10)cooldown_timer = COOLDOWN_TIME;"
	ammo--;
	
	var dist = distance_to_point(mouse_x, mouse_y);
	var travel_time = dist / THROW_VELOCITY;
	var thrown = instance_create_layer(x, y, "Items", obj_thrown);
	thrown.hspeed = ((mouse_x - x) / dist) * THROW_VELOCITY;
	thrown.vspeed = ((mouse_y - y) / dist) * THROW_VELOCITY;
	thrown.travel_time = travel_time;
	thrown.sprite_index = object_get_sprite(object_index_to_throw);
	thrown.object_to_instantiate = object_index_to_throw;
	
	cooldown_timer = COOLDOWN_TIME;
}