/// @description container_play(name,option,play_on_gamepad)
/// @param name
/// @param option
/// @param play_on_gamepad

var con = argument[0],option=false,play_on_gamepad=false;
if argument_count>=2{option=argument[1]}

if is_string(con){
    if ds_map_exists(global.audio_containers,con){
        con = ds_map_find_value(global.audio_containers,con);
    }else{
        show_debug_message("tried to play nonexistent container "+con);
        return noone;
    }
    }
    
if ds_list_size(container_contents(con))>0{
var obj = noone;
with(objAudioContainer){if container==con and setup and instance_exists(id){obj = id; break;}}
if obj==noone{
    obj = instance_create_depth(0,0,0,objAudioContainer);
    obj.container = con;
    obj.setup = false;
    with(obj){
        //container_setup();
        event_user(0);
        }
}
//show_debug_message("created obj "+string(obj.id));
if !obj.setup{
    show_debug_message("playing container "+container_name(con)+" failed for unknowable reasons");
    return noone;
    }
obj.play_id += 1;
obj.seed = random_get_seed();
obj.am_playing = true;
if object_index!=objAudioContainer 
or obj.owner==noone{obj.owner = id;}
obj.name = ds_map_Find_value(obj.container,"name");
with(obj){
    bpm = container_attribute(container,"bpm");
    varyingbpm = container_attribute(container,"varybpm");
    if ds_map_Find_value(container,"music")/* and container_type(container)==2*/{
        music = true;
		group_track_pos = 0;
    }else{music = false;}
}
var playlist = list_Create();
var idmap = ds_map_create();

containerSounds(con,playlist,-1,obj,idmap,option); 

ds_map_destroy(idmap);


if obj.sync{
	if !global.DISABLE_SYNCGROUPS{
		obj.group = audio_create_sync_group(obj.group_loop);
	}else{
		obj.fake_sync = true;
	}
}


var n = ds_list_size(playlist);
if n>1{obj.simple_sound = false;}
var typ= container_type(con);
var threed = false;
for(var i=0;i<n;i+=1){
    var s = ds_list_find_value(playlist,i);
    if  ((ds_map_Find_value(s,"delayin")<=0 or option) or ds_map_Find_value(s,"sync") or (ds_map_Find_value(s,"specmin")>0 and !option)){
        //show_debug_message("playing con "+container_name(con)+" sound "+ds_map_string(s)+" obj "+string(obj));
        container_sound_play(s,con,obj);
    }else{
        ds_list_add_map(obj.delay_sounds,s);
    }
}
//if obj.group!=-1{audio_sync_group_debug(obj.group);}
obj.auto_play = (typ==0 and ds_map_Find_value(con,"contin"));
if obj.group!=-1 and !obj.group_delay{
    audio_start_sync_group(obj.group);
    obj.group_playing = true;
	obj.group_track_pos = 0;
    }
obj.start_time = current_time;
obj.first_beat = true;
ds_list_destroy(playlist);

/* ???? with(obj) maybe???
if obj.music and n>0 and !option{
    //as written, it makes it so the playing object has these things set... and when it's objAudio that messed stuff up
    beat = 0;
    beat_time = 0;
    measure_event = false;
    beat_event = false;
}*/

obj.firstplay = true;
return obj;
}

return noone;
