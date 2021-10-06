if (currently_using) {
	x = obj_player.x + cos(obj_player.look_dir * pi / 180) * hold_radius;
	y = obj_player.y + -sin(obj_player.look_dir * pi / 180) * hold_radius;
	draw_sprite_ext(sprite_index, CLIP_SIZE - current_clip, x, y, 1, 1, obj_player.look_dir, $FFFFFF & $ffffff, 1);
}