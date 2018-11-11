/// @description audio_param_unique_set(sound, id, new number)
/// @param sound
/// @param  id
/// @param  new number
var con = argument0;
if is_string(con){
    if ds_map_exists(global.audio_containers,con){
        con = ds_map_find_value(global.audio_containers,con);
    }else{
        show_debug_message("tried to play nonexistent container "+con);
        return noone;
    }
    }
    
with(objAudioContainer){
    if container==con
    and unique_param!=argument2{
        parameters_updated = 2;
        unique_param = argument2;
        uniquep = argument1;
        return id;   
    }
}
return noone;
//return ds_map_replace(globparam nameal.audio_state,argument0,min(100,max(0,argument1)));
