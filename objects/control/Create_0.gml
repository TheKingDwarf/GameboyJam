/// @description

globalvar partSystem;
partSystem = part_system_create();

globalvar cameraAngle;
cameraAngle = 0;

gpu_set_alphatestenable(true)
//camera jazz
view_enabled = true;

camera = camera_create_view(0,0,160,90,0, -1, -1, -1, 0, 0);

view_camera[0] = camera;
view_visible[0] = true;
enum CS {
	static,
	follow, 
	cutscene
}
cameraState = CS.follow;
objectFollowing = objPlayer;
objectLookahead = 10;

lerpAmount = .2;