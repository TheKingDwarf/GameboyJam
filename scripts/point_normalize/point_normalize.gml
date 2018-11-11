/// @description point_normalize(point)
/// @param point
var p = argument0,
    px = ds_grid_get(p,0,0),
    py = ds_grid_get(p,1,0),
    len = sqrt((px*px)+(py*py));
if len>0{
    //point_set(p,px/len,py/len);
    ds_grid_set(p,0,0,px/len);
    ds_grid_set(p,1,0,py/len);
    }
return p;
