/// @description 
mask_index = sprPlayerRun;
getInput();

var onGround = instance_place(x, y+1, objSolid);
switch (state) {
	case PS.run:
		if (hAxis == 0) {
			vx = approach(vx, 0, runDecel);
			image_speed = 0;
			image_index = 0;
		} else {
			vx = approach(vx, runSpeed*sign(hAxis), runAccel)
			image_xscale = hAxis
			image_speed = 1;
		}
		
		
		if (vAxis == -1) {
			state = PS.jump;
			vy = -jumpSpeed;	
		}
		if (!onGround) {
			state = PS.jump;
			alarm[0] = coyoteTime;
		}
		if (vAxis ==  1)
			state = PS.crouch;
	
		break;
	case PS.jump:
		if (hAxis == 0) {
			vx = approach(vx, 0, runDecel);
		} else {
			vx = approach(vx, runSpeed*sign(hAxis), runAccel)
			image_xscale = sign(hAxis);	
		}
		if (instance_place(x,y-1,objSolid)) {
			vy = 0;	
		}
		if (onGround) {
			vy = 0;
			state = PS.run;
		} else 
			if (vy < 0) {
			vy = approach( vy, jumpSpeed, jumpDecel*(2 - abs(vAxis)))
			} else {
			vy = approach( vy, jumpSpeed, jumpDecel)				
			}
		break;
	case PS.crouch:
		//mask_index = smaller	
		if (hAxis == 0) {
			vx = approach(vx, 0, runDecel);
			image_speed = 0;
			image_index = 0;
		} else {
			vx = approach(vx, crouchSpeed*sign(hAxis), runAccel)
			image_xscale = hAxis
			image_speed = 1;
		}
		if (!onGround) {
			state = PS.jump;
		}
		if (vAxis !=  1) {
			state = PS.run;
		}
		break;
}
if (jumpReleased) {
	alarm[0] = -1;
	jumped = false;
}

//////
for (var i = 0; i < abs(vx); i++) {
	if (!place_meeting(x+sign(vx), y, objSolid)) {
		x += sign(vx);	
	}
}

for (var i = 0; i < abs(vy); i++) {
	if (!place_meeting(x, y+sign(vy), objSolid)) {
		y += sign(vy);	
	}
}
////
