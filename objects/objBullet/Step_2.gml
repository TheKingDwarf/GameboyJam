/// @description destroy on wall collision
if (instance_place(x,y,objSolid)) {
	instance_destroy(id, false)	
}