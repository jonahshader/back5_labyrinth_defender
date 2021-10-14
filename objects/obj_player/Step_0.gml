var left_right = (keyboard_check(ord("A")) ? -1 : 0) + (keyboard_check(ord("D")) ? 1 : 0);
var up_down = (keyboard_check(ord("S")) ? 1 : 0) + (keyboard_check(ord("W")) ? -1 : 0);

var not_moving = left_right == 0 && up_down == 0;

var magnitude = sqrt(left_right * left_right + up_down * up_down);
if (magnitude > 0) {
	left_right /= magnitude;
	up_down /= magnitude;
}

var accel = BASE_ACCELERATION * speed_multiplier;
var spd = BASE_MAX_VEL * speed_multiplier;
if (not_moving) {
	if (speed > accel) speed -= accel;
	else speed = 0;
} else {
	hspeed += left_right * accel;
	vspeed += up_down * accel;
}
if (speed > spd) speed = spd;

look_dir = point_direction(x, y, mouse_x, mouse_y);

if (place_meeting(x + hspeed, y, obj_wall)) {
	hspeed = 0;
}
if (place_meeting(x, y + vspeed, obj_wall)) {
	vspeed = 0;
}
if (place_meeting(x + hspeed, y + vspeed, obj_wall)) {
	speed = 0;
}


if (health_current <= 0) {
	// create 
	if (!instance_exists(obj_death_score_info)) {
		instance_create_layer(0, 0, layer, obj_death_score_info);
	}
	
	instance_destroy(obj_base_usable);
	instance_destroy(obj_placeable);
	instance_destroy();
	
	// deactivate player
}
/*

var x_target_spd = left_right * BASE_MAX_VEL * speed_multiplier;
var y_target_spd = up_down * BASE_MAX_VEL * speed_multiplier;

var x_delta_spd = x_target_spd - hspeed;
var y_delta_spd = y_target_spd - vspeed;

magnitude = sqrt(x_delta_spd * x_delta_spd + y_delta_spd * y_delta_spd);
if (magnitude > 0) {
	x_delta_spd /= magnitude;
	y_delta_spd /= magnitude;
}

x_delta_spd *= BASE_ACCELERATION * speed_multiplier;
y_delta_spd *= BASE_ACCELERATION * speed_multiplier;

var p_hspeed = hspeed;
var p_vspeed = vspeed;
hspeed += x_delta_spd;
vspeed += y_delta_spd;

var speed_change_dot = p_hspeed * hspeed + p_vspeed * vspeed;


if (speed_change_dot < 0) {
	speed = 0;
} else if (speed > BASE_MAX_VEL * speed_multiplier) {
	speed = BASE_MAX_VEL * speed_multiplier;
}

*/

/**/