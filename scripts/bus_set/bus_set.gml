/// @description bus_set(bus name, set typically from -100 to 0)
/// @param bus name
/// @param  setFrom-100to0
var cv = ds_map_Find_value(global.audio_busses,argument0);
if ds_map_find_value(cv,"gain")!=argument1{
    ds_map_replace(cv,"gain",argument1);
    var calc = 0;
    if argument0!="master"
	and argument0!="ui_setting"{
        calc = bus_calculate(ds_map_find_value(cv,"parent"));
    }
    bus_recalculate(argument0,calc);
}
