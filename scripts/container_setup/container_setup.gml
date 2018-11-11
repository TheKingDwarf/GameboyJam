//container_setup()
////////////////////////UNUSED////////////////////////////////
show_debug_message(string(id)+" setup script");

playing = list_Create(); //currently playing sounds + attributes
parameters = list_Create(); //parameters our sounds are dependent on (watch them for updates)
index = 0;

delay_sounds = list_Create(); //souns that are waiting to play
delayout_sounds = list_Create(); //sounds that are waiting to stop?
fadeout_sounds = list_Create();

audio_busses = list_Create(); //busses that are relevant to me
bus_update = list_Create(); //busses that are updated each frame
deleted = false;

randomed = false;
auto_play = false;

group_delay = false;
group_loop = 0;

simple_sound = true; //when true, each sound "instance" is just one audio file so we can update params faster

play_id = -1; //each time we are played, this increments so the sounds playing together have the same id

am_playing = false;

spec_time = 0;
space_rand = false;

threed = false;
varyingbpm = false;

parent = noone; 

seed = -1;

bpm = 0;
start_time = 0;
beat_p = -1;
beats = 0;
beat_time = 0;
first_beat = true;

time_p = current_time;

pitch = 1;
dopitch = 1;

spot_size = 0;
spot_atten = 0;

debug_1 = 0;
debug_2 = 0;

music = false;
sync = false;
group = -1;
group_playing = false;

volume = 1; //used for fade in/out during gameplay, etc
volume_p = 1;

emitter = -1; //these are made and maintained by props, but this lets us know if we have one

setup = true;

if dopitch{
    pitch = 1+(container_attribute(container,"pitch")/100);
}

