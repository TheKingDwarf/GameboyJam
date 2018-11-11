/// @description container_stop(name, optional id, only stop loops)
/// @param name
/// @param  OptionalId
/// @param  StopLoopsOnly
var con = argument[0],
    sid = -1,
    option = false;
if argument_count>1{sid = argument[1];}
if argument_count>2{option = argument[2];}
//show_message("called from "+object_get_name(object_index));
if is_string(con){
    con = ds_map_find_value(global.audio_containers,con);
    }
 
var obj = noone;
with(objAudioContainer){
    if setup and !deleted and container==con {obj = id; break;}
}
if obj==noone{return -1;}
else{
    var type = container_type(con);
    
    if obj.group!=-1{
            /*var n = ds_list_size(obj.playing),str="";
            for(var i=0;i<n;i+=1){
                var v = ds_list_find_value(obj.playing,i);
                str += string(v)+" ("+string(ds_exists(v,ds_type_map))+")#"
            }
            show_message(str);*/
        audio_stop_sync_group(obj.group);
        obj.group_playing = false;
        audio_destroy_sync_group(obj.group);
        obj.group = -1;
        obj.group_delay = false;
        //obj.am_playing = false;
    }
    //else{
        var n = ds_list_size(obj.playing),stopped = true;
        for(var i=0;i<n;i+=1){
            var s = ds_list_find_value(obj.playing,i);
            if sid>-1{
                if ds_map_Find_value(s,"playid")!=sid{
                    stopped = false;
                    continue;
                }
            }
            if option and ds_map_Find_value(s,"loop")==0{
				if option<2{
					audio_sound_gain(ds_map_find_value(s,"aud"),clamp(ds_map_find_value(s,"current_vol"),0,1)/2,100); //!
	                //show_debug_message("not stopping: "+ds_map_string(s));
	                continue;
				}else{
					if ds_map_Find_value(s,"fadeout")<=0{
						audio_sound_gain(ds_map_find_value(s,"aud"),0,200); //no matter how long it is, causes clips sometimes
						continue;
					}
				}
            }
            if ds_map_Find_value(s,"delayout")<=0{
                if ds_map_Find_value(s,"fadeout")<=0{
                    audio_stop_sound(ds_map_find_value(s,"aud")); //they will delete on their own
                }else{
                    audio_sound_gain(ds_map_find_value(s,"aud"),0,ds_map_Find_value(s,"fadeout")*1000);
                    ds_list_add(obj.fadeout_sounds,ds_map_find_value(s,"aud"));
                }
            }else{
                ds_list_add_map(obj.delayout_sounds,s);
                //stopped = false;
            }
        }
        if stopped{ds_list_clear(obj.delay_sounds);}
        obj.am_playing = !stopped;
    //}
    if type==0{
        if ds_map_Find_value(con,"contin"){
            obj.index = 0;
            obj.auto_play = false;
        }
    }
    if container_type(con)==1 and !option{ //looop tail
        container_play(con,1);
    }
    if obj.music or obj.bpm>0{objAudio.container_has_beat = false;}//give control back to objAudio
    obj.spec_time = 0;
} 
return 1;

