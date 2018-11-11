/// @description ds_map_add_lists(map, key, value, key, value, etc)
/// @param map
/// @param  key
/// @param  value
/// @param  key
/// @param  value
/// @param  etc
var map = argument[0];
for(var i=1;i+1<argument_count;i+=2){
    ds_map_add_map(map,argument[i],argument[i+1]);
}
return map;
