/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F66E728
/// @DnDArgument : "code" "var left_right = (keyboard_check(ord("A")) ? -1 : 0) + (keyboard_check(ord("D")) ? 1 : 0);$(13_10)var up_down = (keyboard_check(ord("S")) ? 1 : 0) + (keyboard_check(ord("W")) ? -1 : 0);$(13_10)$(13_10)var not_moving = left_right == 0 && up_down == 0;$(13_10)$(13_10)var magnitude = sqrt(left_right * left_right + up_down * up_down);$(13_10)if (magnitude > 0) {$(13_10)	left_right /= magnitude;$(13_10)	up_down /= magnitude;$(13_10)}$(13_10)$(13_10)var accel = BASE_ACCELERATION * speed_multiplier;$(13_10)var spd = BASE_MAX_VEL * speed_multiplier;$(13_10)if (not_moving) {$(13_10)	if (speed > accel) speed -= accel;$(13_10)	else speed = 0;$(13_10)} else {$(13_10)	hspeed += left_right * accel;$(13_10)	vspeed += up_down * accel;$(13_10)}$(13_10)if (speed > spd) speed = spd;$(13_10)$(13_10)look_dir = point_direction(x, y, mouse_x, mouse_y);$(13_10)$(13_10)$(13_10)/*$(13_10)$(13_10)var x_target_spd = left_right * BASE_MAX_VEL * speed_multiplier;$(13_10)var y_target_spd = up_down * BASE_MAX_VEL * speed_multiplier;$(13_10)$(13_10)var x_delta_spd = x_target_spd - hspeed;$(13_10)var y_delta_spd = y_target_spd - vspeed;$(13_10)$(13_10)magnitude = sqrt(x_delta_spd * x_delta_spd + y_delta_spd * y_delta_spd);$(13_10)if (magnitude > 0) {$(13_10)	x_delta_spd /= magnitude;$(13_10)	y_delta_spd /= magnitude;$(13_10)}$(13_10)$(13_10)x_delta_spd *= BASE_ACCELERATION * speed_multiplier;$(13_10)y_delta_spd *= BASE_ACCELERATION * speed_multiplier;$(13_10)$(13_10)var p_hspeed = hspeed;$(13_10)var p_vspeed = vspeed;$(13_10)hspeed += x_delta_spd;$(13_10)vspeed += y_delta_spd;$(13_10)$(13_10)var speed_change_dot = p_hspeed * hspeed + p_vspeed * vspeed;$(13_10)$(13_10)$(13_10)if (speed_change_dot < 0) {$(13_10)	speed = 0;$(13_10)} else if (speed > BASE_MAX_VEL * speed_multiplier) {$(13_10)	speed = BASE_MAX_VEL * speed_multiplier;$(13_10)}$(13_10)$(13_10)*/$(13_10)$(13_10)"
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