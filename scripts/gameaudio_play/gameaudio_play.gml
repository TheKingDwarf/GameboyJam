/// @description gameaudio_play(sound,emitter,loops)
/// @param sound
/// @param emitter
/// @param loops

if is_real(argument0){
    return audio_play_sound_on(argument1,argument0,argument2,0);
}else{
    return container_play(argument0,0);
}
