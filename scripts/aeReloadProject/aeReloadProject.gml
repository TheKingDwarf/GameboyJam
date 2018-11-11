/// @description aeReloadProject()
//if global.STUDIO2{
    if file_exists("audioData_project"){
        file_delete("audioData_project");
    }
    audio_stop_all();
    room_restart();
//}
