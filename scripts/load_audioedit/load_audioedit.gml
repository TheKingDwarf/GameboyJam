/// @description load_audioedit()
    var filename = "audioData",ver=-1;
    if argument_count>0{ver = argument[0]; filename = "backups\\audio\\audioData_"+string(argument[0]);}

if file_exists(filename){
    var file = file_text_open_read(filename);
    var load_map;
    load_map = json_decode(file_text_read_string(file));
    
    if !file_text_eof(file){
        file_text_readln(file);
        ds_map_destroy(global.audio_params);
        global.audio_params = json_decode(file_text_read_string(file));
    }
    
    if !file_text_eof(file){
        file_text_readln(file);
        audio_data_version = file_text_read_real(file);
    }
    
    if !file_text_eof(file){
        file_text_readln(file);
        ds_map_read(global.audio_asset_vol,file_text_read_string(file));
    }
    
    if !file_text_eof(file){
        file_text_readln(file);
        ds_map_destroy(global.audio_busses);
        global.audio_busses = json_decode(file_text_read_string(file));
        //ds_map_read(global.audio_busses,file_text_read_string(file));
    }
    
    if !file_text_eof(file){
        file_text_readln(file);
        ds_map_read(global.audio_asset_bus,file_text_read_string(file));
    }
    
    var slist = -1;
    if !file_text_eof(file){
        file_text_readln(file);
        if room==rmAudioEditor{
        with(objAudioEditor){
            if !loaded_search{
                loaded_search = true;
                loaded_hier = true;
                slist = ds_list_create();
                ds_list_read(slist,file_text_read_string(file));    
            }
        }
    }
    }
    
    file_text_close(file);
    
    var loaded_containers = ds_list_create();
    
    var k = ds_map_find_first(load_map),n=ds_map_size(load_map);
    for(var i=0;i<n;i+=1){
        if k!="x" and k!="y"{ //hack fix bc i am a hack
        var c = ds_map_find_value(load_map,k);
        if ds_exists(c,ds_type_map){
        var name = container_name(c),new;
        if !ds_map_exists(global.audio_containers,name){
            //make a ttal new copy map with copy contents
            new = ds_map_create();
            var newcont = ds_list_create(),oldcont = container_contents(c);
            ds_map_copy(new,c);
            if !is_real(c) or !ds_exists(oldcont,ds_type_list){
				if debug_mode or !is_real(c){show_message("list for "+name+" doesnt exist");}
				}
                else{ ds_list_copy(newcont,oldcont);}
            ds_map_replace_list(new,"cont",newcont);
            
            ds_map_add_map(global.audio_containers,name,new);
            ds_list_add(loaded_containers,new);
            //with(objAudioEditor){ds_list_add(containers,string(new));}
        }else{
            new = ds_map_find_value(global.audio_containers,name);
            ds_map_copy_keys_excepting(new,c,"cont","name");
        }
        if ds_map_exists(c,"blend_map"){ //oh boy
            var old_blend = ds_map_find_value(c,"blend_map");
                if ds_exists(old_blend,ds_type_list){
                    var new_blend = ds_list_create(),obn = ds_list_size(old_blend);
                    for(var q=0;q<obn;q+=1){
                        var nmap = ds_map_create(), omap = ds_list_find_value(old_blend,q);
                        ds_map_copy(nmap,omap);
                        ds_list_add_map(new_blend,nmap);
                    }
                    ds_map_replace_list(new,"blend_map",new_blend);
                }else{
                    ds_map_delete(new,"blend_map");
                    ds_map_Replace(new,"blend_on",0);
                    if debug_mode{show_message("blend map "+string(old_blend)+" for "+name+" doesnt exist");}
                }
            }   
        }
        }
        k = ds_map_find_next(load_map,k);
    }
    

    
    /**/
    //after all the containers are in, swap out "name"s with "id"s
    var n=ds_list_size(loaded_containers);
    for(var i=0;i<n;i+=1){
        var c=container_contents(ds_list_find_value(loaded_containers,i)),
            cn = ds_list_size(c);
        for(var j=0;j<cn;j+=1){
            var cc = ds_list_find_value(c,j);
            if is_string(cc){
                var asset = asset_get_index(cc);
                if asset!=-1{
                    ds_list_replace(c,j,asset);
                }else{
                    if ds_map_exists(global.audio_containers,cc){
                        ds_list_replace(c,j,string(ds_map_find_value(global.audio_containers,cc)));
                    }else{
                        //if debug_mode{show_message(cc+" doesnt exist");}
                        ds_list_delete(c,j);
                        j-=1;cn-=1;
                    }
                }
            }
        }
    }
    ds_list_destroy(loaded_containers);
    
    ds_map_destroy(load_map);
    
//////same for searchlist
    if slist!=-1{
    var n = ds_list_size(slist);
            for(var i=0;i<n;i+=1){
                var name = ds_list_find_value(slist,i);
                if ds_map_exists(global.audio_containers,name){
                    with(objAudioEditor){
						var cn = string(ds_map_find_value(global.audio_containers,name));
						if ds_list_find_index(containers,cn)==-1{
							ds_list_add(containers,cn);
						}}
                }
            }
            ds_list_destroy(slist);
    }
    
    
    with(objAudioEditor){
        var p = ds_map_find_first(global.audio_params);
        for(var k=0;k<ds_map_size(global.audio_params);k+=1){
            ds_list_add(params,ds_map_find_value(global.audio_params,p));
            ds_map_add(global.audio_state,p,param_default(ds_map_find_value(global.audio_params,p)));
            p = ds_map_find_next(global.audio_params,p);
        }
        
        aeLoadEditor(ver);
    }
}
