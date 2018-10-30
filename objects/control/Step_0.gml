/// @description 

switch(cameraState) {
	case CS.static:
		
		break;
	case CS.follow:
		 objectLookahead = lerp(objectLookahead, sign(objectFollowing.image_xscale)*10, .1)
		 x -= (x - (objectFollowing.x + objectLookahead));
		 y -= (y - (objectFollowing.y));
		
		break;
	case CS.cutscene:
}

camera_set_view_pos(view_camera[0], x-80, y-45)