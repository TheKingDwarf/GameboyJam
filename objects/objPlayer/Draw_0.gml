/// @description Insert description here
// You can write your code in this editor

outline_start(1,c_white)
sprite_index = sprites[state]
// Inherit the parent event
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
outline_start(1, c_white, guns[state]);
draw_sprite_ext(guns[state], 0, x, y, image_xscale, image_yscale, gunAngle, image_blend, image_alpha);
outline_end();