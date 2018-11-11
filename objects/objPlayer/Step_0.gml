/// @description 
mask_index = sprPlayerRun;
getInput();
var pitchRange = .05;
var onGround = instance_place(x, y+1, objSolid);
switch (state) {
	case PS.dead:
		//play death animation
		//set timer to respawn
		break;
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
		
		
		if (vAxis == -1) and (!instance_place(x, y-1, objSolid)){
			state = PS.jump;
			vy = -jumpSpeed;
			//play jump sound
			audio_sound_pitch(sndJump,random_range(1-pitchRange,1+pitchRange));
			audio_play_sound(sndJump, 5, 0);
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

if (but3 and (alarm[1] <= 0) and (alarm[2] <= 0)) {
	if (ammo > 0) {
		//play sounds
		audio_sound_pitch(sndShoot,random_range(.8-pitchRange,.8+pitchRange));
		audio_play_sound(sndShoot, 5, 0);
		
		//create bullets
		switch (state) {
			case PS.run:
				for (var i = 0; i < pelletAmount; i++) {
					var thisSpread = irandom_range(-spread, spread);//randomize the spread amount
					var barrelPosX = lengthdir_x(6, gunAngle + (90 * (1 - image_xscale)))//compute the x offset to get bullets coming out of the barrel
					var bullet = instance_create_layer(x + barrelPosX, y, layer, objBullet);//create the inst
					bullet.direction = thisSpread + (90 * (1 - image_xscale));//set the vars
					bullet.parent = id;
				}
				break;
			case PS.jump:
				for (var i = 0; i < pelletAmount; i++) {
					var thisSpread = irandom_range(-fallSpread, fallSpread);//randomize the spread amount
					var barrelPosX = lengthdir_x(6, gunAngle + (90 * (1 - image_xscale)))//compute the x offset to get bullets coming out of the barrel
					var bullet = instance_create_layer(x + barrelPosX, y, layer, objBullet);//create the inst
					bullet.direction = thisSpread + (90 * (1 - image_xscale));//set the vars
					bullet.parent = id;
				}
				break;
			case PS.crouch:
				for (var i = 0; i < pelletAmount; i++) {
					var thisSpread = irandom_range(-crouchSpread, crouchSpread);//randomize the spread amount
					var barrelPosX = lengthdir_x(6, gunAngle + (90 * (1 - image_xscale)))//compute the x offset to get bullets coming out of the barrel
					var bullet = instance_create_layer(x + barrelPosX, y, layer, objBullet);//create the inst
					bullet.direction = thisSpread + (90 * (1 - image_xscale));//set the vars
					bullet.parent = id;
				}
				break;
		}
		ammo--;
		alarm[1] = timeBetweenShots;
	} else {
		//reload timer	
		audio_play_sound(sndReload, 6, 0);
		alarm[2] = reloadSpeed*1.5;
	}
}
if (but2 and (alarm[2] <= 0) and ammo < maxAmmo) {
	audio_play_sound(sndReload, 6, 0);
	alarm[2] = reloadSpeed;
}
if ((image_index >= 1 and image_index < 2) or (image_index > 3)) and stepped = false {
	audio_sound_pitch(currentFootstepSound, random_range(1-pitchRange, 1+pitchRange));
	audio_sound_gain(currentFootstepSound, 1/state, 0)
	audio_play_sound(currentFootstepSound, 10, false)
	stepped = true;
} else {
	stepped = false;	
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
