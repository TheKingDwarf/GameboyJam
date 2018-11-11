/// @description container_create(name)
/// @param name
var name = argument0;
if !ds_map_exists(global.audio_containers,name){
if string_number(name)!=name{
var new = ds_map_create();
ds_map_add(new,"name",argument0);
ds_map_add_list(new,"cont",ds_list_create());

ds_map_add_map(global.audio_containers,name,new);
return new;
}else{
  show_message("A container name has to include letters");
    return -1;  
}
}
else{
    show_message("Warning! The container name "+name+" is used twice");
    return -1;
    }
