/// @description list_of_lists(item 0, item 1, etc)
/// @param item 0
/// @param  item 1
/// @param  etc
var list = ds_list_create();
for(var i=0;i<argument_count;i+=1){
    ds_list_add_list(list,argument[i]);
}

return list;
