if keyboard_check(vk_control) and audio_loaded{
if file_exists("backups\\audio\\audioData_"+string(audio_data_version-1)){
    audio_data_version -= 1;
    //show_message("goto version "+string(audio_data_version));
    //FS_file_copy(working_directory+"backups\audio\audioData_"+string(audio_data_version),
    //global.project_directory+"datafiles\audioData");
    if file_exists("backups\\audio\\audioEditor_"+string(audio_data_version)){
        loaded_search = false;
        var n = ds_list_size(containers);
        for(var i=0;i<n;i+=1){
            var con = ds_list_find_value(containers,i);
            if is_string(con){
                if ds_list_find_index(locked_containers,container_name(real(con)))==-1{
                    ds_list_delete(containers,i);
                    i -= 1;
                    n -= 1;
                }
            }
        }
        ds_list_clear(params);
    }
    
    load_audioedit(audio_data_version);
    show_message("version "+string(audio_data_version));
}
}

