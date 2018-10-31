/// @description 
shader_set(shdGameboyLock);
draw_set_color(c_black);

//draw left rectangle
draw_rectangle( 0, 0, 35*multiplier, 90*multiplier, false);


//draw right rectangle
draw_rectangle((160-35)*multiplier , 0,160*multiplier , 90*multiplier, false);

draw_set_color(c_white);