with(objAudioEditor){
var file = file_text_open_write("audioEditor");
var fakemap = ds_map_create();
ds_map_add_list(fakemap,"history",editing_history);

var searchlist = ds_list_create(),n = ds_list_size(containers);
for(var i=0;i<n;i+=1){
    var con = ds_list_find_value(containers,i);
    if is_string(con){
        var cid = real(con);
        if ds_list_find_index(locked_containers,container_name(cid))==-1{
            ds_list_add(searchlist,container_name(cid));
        }
    } 
}

var str=string(editing);
if !editing_audio and editing!=-1{str = container_name(editing)}

file_text_write_string(file,str); file_text_writeln(file);
file_text_write_real(file,history_id); file_text_writeln(file);
file_text_write_string(file,json_encode(fakemap)); file_text_writeln(file);
file_text_write_string(file,string(objAudio.audio_loaded)); file_text_writeln(file);
//file_text_write_string(file,ds_list_write(searchlist));
file_text_close(file);

ds_map_delete(fakemap,"history");
ds_map_destroy(fakemap);
ds_list_destroy(searchlist);

file_copy("audioEditor",
"backups\\audio\\audioEditor_"+string(audio_data_version)); //for undo
}
