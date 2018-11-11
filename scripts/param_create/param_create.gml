/// @description param_create(name, default)
/// @param name
/// @param  default
var name=argument0;

if !ds_map_exists(global.audio_params,name){
    var new  = map_Create("name",argument0,"default",argument1);
    ds_map_add_map(global.audio_params,name,new);
    ds_map_add(global.audio_state,name,param_default(new));
    return new;
}
else{
    show_message("there's already a parmeter with this name!");
    return -1;
}

