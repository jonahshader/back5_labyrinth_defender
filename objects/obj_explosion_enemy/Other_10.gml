/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3558FBB7
/// @DnDArgument : "code" "var _list = ds_list_create();$(13_10)var _num = instance_place_list(x, y, obj_player, _list, false);$(13_10)$(13_10)if _num > 0$(13_10){$(13_10)    for (var i = 0; i < _num; ++i;)$(13_10)    {$(13_10)		ds_list_find_value(_list,i).health_current -= damage;$(13_10)    }$(13_10)}$(13_10)$(13_10)ds_list_destroy(_list); $(13_10)$(13_10)"
var _list = ds_list_create();
var _num = instance_place_list(x, y, obj_player, _list, false);

if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {
		ds_list_find_value(_list,i).health_current -= damage;
    }
}

ds_list_destroy(_list);