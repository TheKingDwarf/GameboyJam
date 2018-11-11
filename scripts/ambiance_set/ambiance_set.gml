/// @description ambiance_set(amb)
/// @param amb
var amb = argument0;
objAudio.ambiance_p = objAudio.ambiance_current;
        objAudio.ambiance_p_volume = objAudio.ambiance_volume;
        objAudio.ambiance_p_obj = objAudio.ambiance_obj;
        objAudio.ambiance_volume = 0;
        objAudio.ambiance_p_player = objAudio.ambiance_player;
        objAudio.ambiance_p_playing = objAudio.ambiance_playing;
        
    objAudio.ambiance_current = amb;
