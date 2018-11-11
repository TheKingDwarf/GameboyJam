/// @description beat time and delta time step
var delta_current_time = (current_time-current_time_p);


if global.audio_gameplay{
    beat_time += delta_current_time;
    measure_time += delta_current_time*(1/beat_count);
    
    if !container_has_beat{
        doublebeat_event = false;
        if beat_time>=beatMs()/2 and !doublebeated{
            doublebeated = true;
            doublebeat_event = true;
        }
    }
    
    if beat_time>=beatMs(){
        if !container_has_beat{
            beat_event = true;
            measure_event = ((beat mod beat_count)==0);
            if measure_event{
                measure += 1;
                measure_time -= beatMs()*4;
                }
            beat += 1;
            //show_debug_message("beat updated from objgame! t:"+string(current_time/500));
			
            doublebeated = false;
            doublebeat_event = true;
            }else{
                if measure_time>=beatMs()*4{
                    measure_time -= beatMs()*4;
                }
            }
        beat_time -= beatMs();
        
    }else{
        if !container_has_beat{beat_event = false;}
    }
    
}

current_time_p = current_time;

