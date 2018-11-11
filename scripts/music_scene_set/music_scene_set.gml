/// @description music_scene_set(name)
/// @param name
//objLevel.level_music = argument0;

if !is_equal(objAudio.music_scene, argument0){
        objAudio.music_scene = argument0;
        if is_real(argument0) and argument0<0{objAudio.fading_out = true;}
    }

