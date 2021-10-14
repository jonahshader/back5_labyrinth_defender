/*normal_q = 0;
runner_q = 0;
gunner_q = 0;
tank_q = 0;
bomber_q = 0;*/


queue_empty = normal_q == 0 && runner_q == 0 && gunner_q == 0 && tank_q == 0 && bomber_q == 0;


if (spawn_timer > 0) {
	spawn_timer--;
} else {
	spawn_timer = SPAWN_TIME;
	if (!queue_empty) {
		var to_spawn = noone;
		switch(irandom(4)) {
			case 0: if (normal_q > 0) {to_spawn = obj_enemy_base; normal_q--;} break;
			case 1: if (runner_q > 0) {to_spawn = obj_enemy_runner; runner_q--;} break;
			case 2: if (gunner_q > 0) {to_spawn = obj_enemy_gunner; gunner_q--;} break;
			case 3: if (tank_q   > 0) {to_spawn = obj_enemy_tank; tank_q--;} break;
			case 4: if (bomber_q > 0) {to_spawn = obj_enemy_bomber; bomber_q--;} break;
			
			default:
				break;
		}	
		
		if (to_spawn == noone) {
			if (normal_q > 0) {to_spawn = obj_enemy_base; normal_q--;}
			else if (runner_q > 0) {to_spawn = obj_enemy_runner; runner_q--;}
			else if (gunner_q > 0) {to_spawn = obj_enemy_gunner; gunner_q--;}
			else if (tank_q > 0) {to_spawn = obj_enemy_tank; tank_q--;}
			else if (bomber_q > 0) {to_spawn = obj_enemy_bomber; bomber_q--;}
		}
		
		var new_enemy = instance_create_layer(x, y, layer, to_spawn);
		new_enemy.health_max *= sqrt(global.difficulty_scalar);
		new_enemy.move_speed *= power(global.difficulty_scalar, 1/3.0);
	}
}

queue_empty = normal_q == 0 && runner_q == 0 && gunner_q == 0 && tank_q == 0 && bomber_q == 0;