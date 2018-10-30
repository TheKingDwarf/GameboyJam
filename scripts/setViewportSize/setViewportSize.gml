///@desc setViewportSize
///@param width
///@param height
///@param view_camera
window_set_size(argument[0], argument[1]);
view_set_wport(view_camera[argument[2]], argument[0]);
view_set_hport(view_camera[argument[2]], argument[1]);
control.alarm[0] = 1;