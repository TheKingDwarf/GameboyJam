draw_set_color(objAudioEditor.color_bg2);
draw_rectangle(l,t,r,b,false);
draw_set_color(objAudioEditor.color_fg);
draw_rectangle(l,t,r,b,true);
draw_line(l,t+top_h,r,t+top_h);

if title!=""{draw_text(l+4,t+2,string_hash_to_newline(title));}

