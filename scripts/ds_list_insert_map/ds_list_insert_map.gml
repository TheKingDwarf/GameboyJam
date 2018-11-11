/// @description ds_list_insert_map(list, pos, thing to add)
/// @param list
/// @param  pos
/// @param  thing to add
var list=argument0,pos=max(0,argument1),new=argument2;
ds_list_insert(list,pos,new);
ds_list_mark_as_map(list,pos);
