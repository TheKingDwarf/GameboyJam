if setup and !deleted{
for(var i=0;i<ds_list_size(playing);i+=1){
    var s = ds_list_find_value(playing,i);
    if ds_map_find_value(s,"loop"){
        audio_stop_sound(ds_map_find_value(s,"aud")); //they will delete on their own
    }
    ds_map_destroy(s);
}

ds_list_destroy(playing);
ds_list_destroy(parameters);
ds_list_destroy(parameters_update);

ds_list_destroy(delay_sounds);
ds_list_destroy(delayout_sounds);
ds_list_destroy(fadeout_sounds);
ds_list_destroy(bus_update);
ds_list_destroy(audio_busses);

if group!=-1{
    audio_destroy_sync_group(group);
}

/*
if unique_param!=-1{
    ds_map_destroy(unique_param);
}
*/

if objAudio.music_playing == id{objAudio.music_playing = -1;}
if objAudio.ambiance_playing == id{objAudio.ambiance_playing = -1;}
if objAudio.ambiance_p_playing == id{objAudio.ambiance_p_playing = -1;}

if emitter!=-1{
    if audio_emitter_exists(emitter){
		/*
	    var stop = false;
	    with(objAudioContainer){
	        if setup and !deleted and emitter==other.emitter and id!=other.id{stop = true; break;}
	    }
	    if !stop{ //don't delete it if someone else is using it!
	            audio_emitter_Free(emitter);
	    }
		*/
		if made_emitter{
			audio_emitter_Free(emitter);
		}
    }
}
}

deleted = true;

/* */
/*  */
