/// @description ds_map_Find_value(map, key)
/// @param map
/// @param  key
var map = argument0, key=argument1;
if ds_map_exists(map,key){return ds_map_find_value(map,key);}
else{return 0;}
