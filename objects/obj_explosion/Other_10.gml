var _list = ds_list_create();
var _num = instance_place_list(x, y, obj_enemy_base, _list, false);

if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {
		ds_list_find_value(_list,i).health_current -= damage;
    }
}

ds_list_destroy(_list); 

