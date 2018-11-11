/// @description music_set(name)
/// @param name
//objLevel.level_music = argument0;
if !is_equal(argument0,objAudio.music_current){
    objAudio.music_p = objAudio.music_current;
    objAudio.fading_out = true;
    objAudio.music_current = argument0;
}
