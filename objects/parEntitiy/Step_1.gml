/// @description Compute Collision with damage object

var dInst = instance_place(x,y,parDamage)
if (dInst and (dInst.parent != id)) {
	hp -= dInst.damage;

	if (dInst.destroyOnCollision)
		instance_destroy(dInst);
}

if (hp <= 0) {
	state = GS.dead;
}