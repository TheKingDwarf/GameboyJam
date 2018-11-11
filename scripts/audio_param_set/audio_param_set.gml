/// @description audio_param_set(param name, new number)
/// @param param name
/// @param  new number
var newv = min(100,max(0,argument1)),
    oldv = ds_map_find_value(global.audio_state,argument0);
if newv!=oldv{
    //var checkedlist = false,
    //inlist = false;
    
    with(objAudioContainer){
        if (setup and !deleted and !parameters_updated and ds_list_find_index(parameters,argument0)!=-1){
            parameters_updated = 1;
        }
    }
    return ds_map_replace(global.audio_state,argument0,newv);
}
