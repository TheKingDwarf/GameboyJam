draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_color(color_fg);
draw_set_alpha(sqrt(saved_fx));
draw_text(display_get_gui_width(),display_get_gui_height(),string_hash_to_newline("AUTOSAVED!!!!!"));
draw_set_alpha(1);
draw_set_valign(fa_top);
draw_set_halign(fa_left);//?

