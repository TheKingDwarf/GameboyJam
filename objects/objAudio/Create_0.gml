/// @description PUT THIS IN THE FIRST ROOM OF YOUR GAME. IT LIVES FOREVER

//put this in c:/users/yourname/appdata/local/yourProjectName (auto-generated folder by game maker)
//the contents of the .txt file should be a path to the folder containing your game make project, ending in a slash, like this:
// C:/Users/banov/Wanderrepo/wandersong/
//the audio editor uses this path to look for audio files/folders in your project and create data containers for them
global.project_directory = "project_directory.txt";

//probably don't touch these
audio_listener_orientation(0,0,1,0,-1,0);
audio_falloff_set_model(audio_falloff_linear_distance_clamped);

//default 3D size for sounds (these were the values in wandersong based on the camera width/height, which was 1920x1080)
default_view_width = 1920; //default width of the view, uses this to track when the camera zooms in or out
global.default_sound_size = 1000; //if sounds are within this distance of the listener, they're full volume
global.default_sound_atten = 2125; //at this distance, sounds are inaudible
listener_distance = 500; //how far the listener is from the screen
global.max_listener_distance = 1500; //farthest the listener can zoom out based on camera size

global.DISABLE_SYNCGROUPS = true; //game maker has a feature called "sync groups" which let multiple audio tracks play in perfect sync
	//unfortunately it's not well supported and just before launch we hit tons of issues with them on various consoles
	//so i rewrote the logic to mimic them without actually using the feature, and it became more stable
	//feel free to set this to false and use the sync groups instead. when they work they're great.

//////audio groups, to augment game maker's built-in audio group loading
global.audio_groups = ds_map_create();
/* example audio group (wandersong had like 30-40 of these)
ds_map_add(global.audio_groups,
	"intro", //this is the name of the group
list_Create(
    ag_intro,ag_bardsword, //these are game maker audio groups
    foley_dream,ag_angel, //these are game maker audio groups
));*/
audio_loaded = "";

music_current = -1; //current music playing

//current "scene" music (if anything other than -4, it overrides the "current music.")
//so for example, you could enter a cutscene and set music_scene to that character's theme, then set it to -4 when the scene ends.
//the music playing will naturally transition to that character theme during the cutscene,
//then back to whatever is the default for that area afterward.
music_scene = -4; 
//d3d_start();


global.reload_audio = false; //if loading the audio editor and found some new files, this flips true exactly once so it reloads from the project exactly once

music_fade_time = room_speed*2; //how long does it take for music to fade out naturally when changing between tracks?

global.audio_emitters = ds_map_create(); //for tracking emitters


audio_debug_on = false;
audio_debug_setting = 0;

current_time_p = current_time;


//bunch of internal stuff for tracking state and fades
music_player = audio_emitter_Create();
music_scene_p = -4;
music_volume = 0;
music_cur_volume = 0;
music_playing = -1;
music_obj = noone;
music_p = -1;
fading_out = true;
music_bpm = 120;

ambiance_player = audio_emitter_Create();
ambiance_p_player = -1;
ambiance_p_volume = 0;
ambiance_p_playing = -1;
ambiance_current = -1;
ambiance_volume = 0;
ambiance_cur_volume = 0;
ambiance_playing = -1;
ambiance_p = -1;
amb_fading_out = false;
ambiance_obj = noone;
ambiance_p_obj = noone;

music_fade_save = 1;
music_fade_time = 0;
music_fade_to = "";
music_fade_start = 0;

beat_event = false;
doublebeat_event = false;
doublebeated = false;
container_has_beat = false;
beat = 0;
beat_time = 0;
measure = 0;
measure_time = 0;
measure_event = false;
beat_count = 4; //how many beats per measure?

///sound groups
global.audio_containers = ds_map_create(); //settings and contents of all containers
global.audio_params = ds_map_create(); //parameters and default values
global.audio_state = ds_map_create(); //current state of parameters, etc
global.audio_asset_vol = ds_map_create(); //volume settings for each sound asset
global.audio_busses = ds_map_create(); //audio busses
global.audio_asset_bus = ds_map_create(); //bus settings for each sound asset
global.audio_list_index = ds_map_create(); //for random containers
global.audio_bus_calculated = ds_map_create();

audio_loading = ds_list_create();
audio_loading_flag = ds_list_create();
unload_start = 0;
loading_audio = false;
preloading = false;
loading_fade = 0;
loading_prog = 0;
audio_room = false; //if a roomstart was delayed by audio loading

global.listener_x = 0;
global.listener_y = 0;
global.listener_z = 0;

global.audio_gameplay = false;

//locate project directory based on filename given at start
var pfile = global.project_directory;
//show_debug_message("looking for files in "+string(working_directory));
if file_exists(pfile){
	show_debug_message("found project file locator "+string(pfile));
	var file = file_text_open_read(pfile);
		global.project_directory = file_text_readln(file);
	file_text_close(file);
}else{
	global.project_directory = ""; //no directory	
}

event_user(10); //load and setup audio