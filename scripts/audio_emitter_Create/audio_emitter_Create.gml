var em = audio_emitter_create();
var sstr = object_get_name(object_index)+" "+string(id);
ds_map_add(global.audio_emitters,em,sstr);
return em;
