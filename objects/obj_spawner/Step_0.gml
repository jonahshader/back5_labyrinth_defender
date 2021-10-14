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
			case 1: if (runner_q > 0) {to_spawn = obj_enemy_base; runner_q--;} break;
			case 2: if (gunner_q > 0) {to_spawn = obj_enemy_gunner; gunner_q--;} break;
			case 3: if (tank_q   > 0) {to_spawn = obj_enemy_base; tank_q--;} break;
			case 4: if (bomber_q > 0) {to_spawn = obj_enemy_base; bomber_q--;} break;
			
			default:
				break;
		}	
		
		if (to_spawn == noone) {
			if (normal_q > 0) {to_spawn = obj_enemy_base; normal_q--;}
			else if (runner_q > 0) {to_spawn = obj_enemy_base; runner_q--;}
			else if (gunner_q > 0) {to_spawn = obj_enemy_gunner; gunner_q--;}
			else if (tank_q > 0) {to_spawn = obj_enemy_base; tank_q--;}
			else if (bomber_q > 0) {to_spawn = obj_enemy_base; bomber_q--;}
		}
		
		instance_create_layer(x, y, layer, to_spawn);	
	}
}

queue_empty = normal_q == 0 && runner_q == 0 && gunner_q == 0 && tank_q == 0 && bomber_q == 0;