/// @description ds_map_Replace(map, key,value)
/// @param map
/// @param  key
/// @param value

if ds_map_exists(argument0,argument1){return ds_map_replace(argument0,argument1,argument2);}
else{return ds_map_add(argument0,argument1,argument2);}
