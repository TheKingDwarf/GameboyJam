/// @description gameaudio_is_playing(sound)
/// @param sound

if is_real(argument0){
    return audio_is_playing(argument0);
}else{
    return container_is_playing(argument0);
}
