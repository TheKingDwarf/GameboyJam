/// @description ds_list_add_postion_to_list(list, add to which list, start, end)
/// @param list
/// @param  add to which list
/// @param  start
/// @param  end
var l1=argument0, l2 = argument1;

for(var i=argument2;i<=argument3;i+=1){
    ds_list_add(l2,ds_list_find_value(l1,i));
}

return l2;
