var tmp = instance_create_layer(x + 0, y + 0, layer, obj_explosion);
tmp.damage = 5;

with(tmp) {
event_user(0);
}

instance_destroy();