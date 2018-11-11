/// @description point_read(string)
/// @param string
var p=string_split(argument0,","),
    xx=real(ds_list_find_value(p,0)),
    yy=real(ds_list_find_value(p,1));
ds_list_destroy(p);
return point(xx,yy);
