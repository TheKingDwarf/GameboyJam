//parameter update
if deleted{
	instance_destroy();
	exit;
}

var update_sound = true; 
//always true, but you could turn it off in some cases if you want...
//below somewhere is a commented line that onlys lets music update on beat events, which can be a good optimization
if ds_list_size(playing)>0{
	if bpm>0 and !varyingbpm{
		if delta_time>(500000){
			start_time += (delta_time/1000);
			beat_time += 1000/60;
		}else{
			beat_time += delta_time/1000;
		}
	    //add half a frame of time
	    var beatcalc = (current_time+(1000/(room_speed*2))-start_time)/1000/60*bpm*pitch,
	        beat = floor(beatcalc),
			new_beat = (beat!=beat_p);
		if !new_beat{was_beat = false;}
		else{
			if was_beat{new_beat = false;} //beats on consecutive frames are discarded, game maker was buggy with this
			else{was_beat = true;}
			}

	    if music{
			objAudio.music_bpm = bpm*pitch;
	        objAudio.container_has_beat = true;
	        objAudio.beat_event = new_beat and !first_beat;
	        if new_beat{
					if !first_beat{
							beats += 1;
							if delta_time>(500000){
								beats = beat;
							}
							//show_debug_message("beat updated from nonvarying container! t:"+string(current_time/500));
						}
				beat_time = 0;
			}
	        objAudio.measure_event = objAudio.beat_event and ((beats mod objAudio.beat_count)==0);
	        if objAudio.measure_event{objAudio.measure += 1;}
	        objAudio.beat = beats;
	        objAudio.beat_time = beat_time;
        
	        if objAudio.beat_event{
	            objAudio.doublebeated = false;
	            objAudio.doublebeat_event = true;
	        }else{
	            if !objAudio.doublebeated and round(beatcalc)!=beat_p{
	                objAudio.doublebeated = true;
	                objAudio.doublebeat_event = true;
	            }else{
	                objAudio.doublebeat_event = false;
	            }
	        }
        
	        }  
	    if new_beat{
	        first_beat = false;
	        }
		//else{update_sound = false;} //stop music from updating except on beat events?
			//good idea on paper which we tried in wandersong
			//but in practice it was better for us to handle the timing of parameter changes manually
			//so some happened on beats (like section changes) but some were smooth (like fades).
	    beat_p = beat;
	}

	if varyingbpm and music{
	    var beat,nbeat,beatcalc;
	    if group_playing and group!=-1{
			var group_pos = audio_sync_group_get_track_pos(group);
			///here because of game maker bug, ideally can be removed later
			if abs(group_pos-group_track_pos)<2{
				group_track_pos = max(group_pos,group_track_pos);
			}else{
				group_track_pos = group_pos;	
			}
			beatcalc = group_track_pos/(60/bpm);
	        beat = floor(beatcalc);
	    }else{
	    var snd = ds_list_find_value(playing,0),
	        aud = ds_map_find_value(snd,"aud");
			///here because of game maker bug, ideally can be removed later
			var group_pos = audio_sound_get_track_position(aud);
			if fake_sync{
				if group_pos<group_track_pos and abs(group_pos-group_track_pos)>2{
					for(var i=1;i<ds_list_size(playing);i+=1){
						var faud = ds_map_find_value(ds_list_find_value(playing,i),"aud");
						audio_sound_set_track_position(faud,group_pos);
					}
				}
			}
		
			if abs(group_pos-group_track_pos)<2{
				group_track_pos = max(group_pos,group_track_pos);
			}else{
				group_track_pos = group_pos;	
			}
			beatcalc = group_track_pos/(60/bpm);
	        beat = floor(beatcalc);
	    }
	
		var nbeat = (beat!=beat_p);
		if nbeat{
			if was_beat{nbeat = false;}
			else{was_beat = true;}
		}else{
			was_beat = false;	
		}
	
	        objAudio.music_bpm = bpm*pitch;
	        objAudio.container_has_beat = true;
	        objAudio.beat_event = nbeat;
	        if nbeat{
	            objAudio.doublebeat_event = true;
	            objAudio.doublebeated = false;
			
	        }else{
	            if !objAudio.doublebeated and (beat!=beat_p){
	                objAudio.doublebeat_event = true;
	                objAudio.doublebeated = true;
	            }else{
	                objAudio.doublebeat_event = false;
	            }
	        }
        
	        if nbeat{
					beats += 1; beat_time = 0;
					if delta_time>(500000){
								beats = beat;
							}
					//show_debug_message("beat updated from varying container! t:"+string(current_time/500)+" g:"+string(group_pos));
					}
	        objAudio.measure_event = (nbeat and (beat mod objAudio.beat_count)==0);
	        if objAudio.measure_event{objAudio.measure += 1;}
	        objAudio.beat = beats;
	        objAudio.beat_time = beat_time;
	    beat_p = beat;
	}
}

if group_playing and group!=-1{
    if !audio_sync_group_is_playing(group){
        group_playing = false;
        audio_destroy_sync_group(group);
        group = -1;
        }
}

if spec_time>0{
    spec_time -= delta_time/1000000;
    if spec_time<=0{
        spec_time = 0;
		instance_activate_object(owner);
        container_play(container,1);
    }
}

//cull sounds no longer playing
//if group==-1 or !group_playing{
var n = ds_list_size(playing),pos=0,dopos = update_sound and bpm>0,
    n2 = ds_list_size(delay_sounds);
if n+n2==0 and !group_playing and !group_delay and spec_time<=0{am_playing = false;}


for(var i=0;i<n;i+=1){
    var s = ds_list_find_value(playing,i),
        aud = ds_map_find_value(s,"aud");
    if !audio_is_playing(aud) and !((group_playing or group_delay) and ds_map_Find_value(s,"sync")){
        ds_map_destroy(s); //done on below delete because it's added as a map (?)
        ds_list_delete(playing,i);
        i-=1;
        n-=1;
        if auto_play and (
            index<ds_list_size(container_contents(container)) or ds_map_Find_value(container,"loop")
            ){
            spec_time = random_range(container_attribute(container,"specmin"),container_attribute(container,"specmax"));
            if spec_time<=0{
				instance_activate_object(owner);
                container_play(container,1);
            }
        }else{
            if n+n2<=0 and !group_playing and !group_delay and spec_time<=0{am_playing = false;}
        }
    }
}

if update_sound and parameters_updated>0 and ds_list_size(playing)>0{
    if parameters_updated>1{
        ds_map_replace(global.audio_state,"UNIQUE_PARAM",unique_param);
    }
    
            var nn=ds_list_size(playing);
            if !simple_sound{
                for(var j=nn-1;j>=0;j-=1){
                    var aud = ds_list_find_value(playing,j);
                    if ds_map_exists(aud,"index"){
                        ds_map_replace(global.audio_list_index,ds_map_find_value(aud,"container"),ds_map_find_value(aud,"index"));
                    }
                }
            }
            
            var ulist = list_Create();
            var idmap = map_Create();
            containerSounds(container,ulist,-1,id,idmap);
            var naud = ds_list_find_value(ulist,0);
            
            for(var j=0;j<nn;j+=1){
                var aud = ds_list_find_value(playing,j),idd=-1;
                if !simple_sound{
                    idd=ds_map_find_value(aud,"id");
                    naud = ds_map_Find_value(idmap,idd);
                }
                if ds_list_find_index(fadeout_sounds,ds_map_find_value(aud,"aud"))==-1 //not fading out already
                and (uniquep==-1 or ds_map_find_value(aud,"playid")==uniquep){
                /*
                var dstr= "",nnn=ds_list_size(ulist);
                for(var k=0;k<nnn;k+=1){
                    var a = ds_list_find_value(ulist,k);
                    dstr+=ds_map_find_value(a,"id")+","
                    if ds_map_find_value(a,"id")==idd{naud = a; break;}
                }*/
                //show_debug_message("found "+ds_map_string(naud)+" looking for "+ds_map_string(aud)+" in #"+ds_map_string(idmap));
                /////////////
                
                if naud!=0{ //kind of hacky
                        //debug_1 = "from "+string(ds_map_Find_value(aud,"vol"))+" to "+string(ds_map_Find_value(naud,"vol"));
                    ds_map_copy_keys_excepting(aud,naud,"ind","aud","playstart","playid","delayout",);
                    var snd = ds_map_find_value(aud,"aud"),file = ds_map_find_value(aud,"file");
                    if ds_map_Find_value(aud,"sync"){snd = file;}
                        var file_vol = (ds_map_Find_value(global.audio_asset_vol,file)),
                            bus_vol = ds_map_find_value(aud,"bus_vol");
                        if room==rmAudioEditor{file_vol = (ds_map_Find_value(global.audio_asset_vol,audio_get_name(file)))/100;}
                        ds_map_replace(aud,"current_vol",(ds_map_Find_value(aud,"vol")+1)*(file_vol+1)*(bus_vol+1));
                        audio_sound_gain(snd,lerp(0,clamp(ds_map_find_value(aud,"current_vol"),0,1),QuadInOut(volume)*(1+ds_map_Find_value(aud,"blend"))),0);
                    audio_sound_pitch(snd,1+ds_map_Find_value(aud,"pitch"));
                    
                    var pp = pitch;
                    pitch = 1+(container_attribute(container,"pitch")/100);
                    if pitch!=pp and bpm>0{
                        first_beat = true;
                        }
                    }
                }
            }
            
            ds_map_destroy(idmap);
            nn = ds_list_size(ulist);
            for(var j=0;j<nn;j+=1){
                ds_map_destroy(ds_list_find_value(ulist,j));
            }
            
            ds_list_destroy(ulist);

    parameters_updated = 0;
    uniquep = -1;
}

var bn = ds_list_size(bus_update);
if bn>0{
    var n = ds_list_size(playing);
        for(var i=0;i<n;i+=1){
            var s = ds_list_find_value(playing,i),
                b = ds_map_Find_value(s,"bus");
            if ds_list_find_index(bus_update,b)!=-1{
                    //if is_equal(bus,b){
                        var ng = bus_calculate(b),
                            bp = ds_map_Find_value(s,"bus_vol"),
                            snd = ds_map_find_value(s,"aud");
                    if ng!=bp{
                        var file = ds_map_find_value(s,"file");
                        if ds_map_Find_value(s,"sync"){snd = file;}
                        if ds_list_find_index(fadeout_sounds,snd)==-1 or ds_map_Find_value(s,"sync"){ //not fading out already
                            var file_vol = (ds_map_Find_value(global.audio_asset_vol,file)),
                                bus_vol = ng;
                            if room==rmAudioEditor{file_vol = (ds_map_Find_value(global.audio_asset_vol,audio_get_name(file)))/100;}
                            ds_map_replace(s,"current_vol",(ds_map_Find_value(s,"vol")+1)*(file_vol+1)*(bus_vol+1));
                            //ds_map_replace(s,"current_vol",ds_map_find_value(s,"current_vol")*(ng+1)/(bp+1)); //old (bad) way
                            audio_sound_gain(snd,lerp(0,clamp(ds_map_find_value(s,"current_vol"),0,1),QuadInOut(volume)*(1+ds_map_Find_value(s,"blend"))),0);
                            ds_map_Replace(s,"bus_vol",bus_vol);
                        }
                    }
                //}
                }
            }
}

ds_list_clear(bus_update);

if fading_out>0{
	volume -= fading_out;
	if volume<=0{
		instance_destroy();
		exit;
	}
}

//object volume change
if volume!=volume_p{
    volume_p = volume;
    var n = ds_list_size(playing);
    for(var i=0;i<n;i+=1){
        var s = ds_list_find_value(playing,i);
        var snd = ds_map_find_value(s,"aud");
        if ds_list_find_index(fadeout_sounds,snd)==-1{ //not fading out already
            var file = ds_map_find_value(s,"file");
            if ds_map_Find_value(s,"sync"){snd = file;}
            var file_vol = (ds_map_Find_value(global.audio_asset_vol,file)),
                bus_vol = ds_map_find_value(s,"bus_vol");
            if room==rmAudioEditor{file_vol = (ds_map_Find_value(global.audio_asset_vol,audio_get_name(file)))/100;}
            ds_map_replace(s,"current_vol",(ds_map_Find_value(s,"vol")+1)*(file_vol+1)*(bus_vol+1));
            audio_sound_gain(snd,lerp(0,clamp(ds_map_find_value(s,"current_vol"),0,1),QuadInOut(volume)*(1+ds_map_Find_value(s,"blend"))),0);
        }
    }
}

////delay sounds
for(var i=0;i<ds_list_size(delay_sounds);i+=1){
    var s = ds_list_find_value(delay_sounds,i);
    //var del = ds_map_Find_value(s,"delayin") - (delta_time/1000000);//(1/room_speed);
    //if del>0{ds_map_Replace(s,"delayin",del);}
    //else
    if current_time >= ds_map_find_value(s,"playstart")+(ds_map_find_value(s,"delayin")*1000)
    {
        if ds_map_Find_value(s,"sync") and group!=-1{
            if group_delay{
                group_playing = true;
                audio_start_sync_group(group);
                group_delay = false;
				group_track_pos = 0;
            }
        }else{
            container_sound_play(s,container,id);
			if music{
				group_track_pos = 0;	
			}
        }
        ds_list_delete(delay_sounds,i);
        i -= 1;
        }
}

///delayout sounds
var n = ds_list_size(delayout_sounds);
        for(var i=0;i<n;i+=1){
            var s = ds_list_find_value(delayout_sounds,i);
            if ds_exists(s,ds_type_map){
                var delay = ds_map_Find_value(s,"delayout") - (global.FTD/room_speed);
                if delay<=0{
                    if ds_map_Find_value(s,"fadeout")<=0{
                        audio_stop_sound(ds_map_find_value(s,"aud")); //they will delete on their own
                    }else{
                        audio_sound_gain(ds_map_find_value(s,"aud"),0,ds_map_Find_value(s,"fadeout")*1000);
                        ds_list_add(fadeout_sounds,ds_map_find_value(s,"aud"));
                    }
                    ds_list_delete(delayout_sounds,i);
                    i-=1; n-=1;
                }else{
                    ds_map_Replace(s,"delayout",delay)
                }
            }else{
                ds_list_delete(delayout_sounds,i);
                i-=1; n-=1;
            }
        }
        
///end faded out sounds
var fon = ds_list_size(fadeout_sounds);
for(var i=0;i<fon;i+=1){
    var a = ds_list_find_value(fadeout_sounds,i);
    if audio_sound_get_gain(a)<.01{
        audio_stop_sound(a);
        ds_list_delete(fadeout_sounds,i);
        i -= 1;
		fon -= 1;
    }
}

if persistent and (!global.audio_gameplay or (!am_playing)){
	instance_destroy();	//controversial????
}

/* */
/*  */
