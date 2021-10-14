var start_new_wave = false;
if (!instance_exists(obj_enemy_base)) {
	if (wave_start_timer > 0) {
		wave_start_timer--;
	} else {
		wave_start_timer = WAVE_COOLDOWN;
		global.current_wave++;
		start_new_wave = true;
	}
}

if (start_new_wave) {
	var local_wave = (global.current_wave-1) mod wave_count;
	if (local_wave == 0 && global.current_wave != 1) {
		global.difficulty_scalar++;
	}
	
	var spawner_count = instance_number(obj_spawner);
	var curr_wave_index = enemy_types * local_wave;
	for (i = 0; i < waves[curr_wave_index]; ++i) {
		with (instance_find(obj_spawner, irandom(spawner_count - 1))) {
			normal_q++;
		}
	}
	for (i = 0; i < waves[curr_wave_index + 1]; ++i) {
		with (instance_find(obj_spawner, irandom(spawner_count - 1))) {
			runner_q++;
		}
	}
	for (i = 0; i < waves[curr_wave_index + 2]; ++i) {
		with (instance_find(obj_spawner, irandom(spawner_count - 1))) {
			gunner_q++;
		}
	}
	for (i = 0; i < waves[curr_wave_index + 3]; ++i) {
		with (instance_find(obj_spawner, irandom(spawner_count - 1))) {
			tank_q++;
		}
	}
	for (i = 0; i < waves[curr_wave_index + 4]; ++i) {
		with (instance_find(obj_spawner, irandom(spawner_count - 1))) {
			bomber_q++;
		}
	}
}

