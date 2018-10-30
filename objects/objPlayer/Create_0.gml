/// @description 
outline_init();

state = PS.run;

//physics values
vx = 0;
vy = 0;

runSpeed = 4;
jumpSpeed = 10;
crouchSpeed = 2;
coyoteTime = 4

jumpDecel = 1;
runAccel = 1;
runDecel = 1;

//sprite
sprites[PS.run] = sprPlayerRun;
sprites[PS.jump] = sprPlayerJump;
sprites[PS.crouch] = sprPlayerCrouch;

guns[PS.run] = sprGunRun;
guns[PS.jump] = sprGunJump;
guns[PS.crouch] = sprGunCrouch;

//input
hAxis = 0;
vAxis = 0;
	
but1 = 0;
but2 = 0;
but3 = 0;

//gameplay values
hp = 3;
weapon = 0;
immuneTime = 15;
jumped = false;
gunAngle = 0;
maxAmmo = 6;
ammo = maxAmmo;
reloadSpeed = 10;
spread = 20;
pelletAmount = 6;