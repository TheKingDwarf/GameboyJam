/// @description bus_create(name)
/// @param name
var name=argument0;

if !ds_map_exists(global.audio_busses,name){
    var new  = map_Create("name",argument0,"gain",0,"parent",-1);
    ds_map_add_map(global.audio_busses,name,new);
    return new;
}
else{
    show_message("there's already a bus with this name!");
    return -1;
}

