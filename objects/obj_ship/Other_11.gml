/// @description Hit

if (shield) exit;

hp -= other.damage;

if (other.id == obj_bullet) {
	global.cameraShake = 2;	
}

instance_destroy(other)
if (hp <= 0 && !dead) {
	dead = true;
	lives--;
	alarm[2] = 2*target_fps;
	debris(30, DEBRIS_SPEED, DEBRIS_SPEED_VARIANCE);
} else {
	debris(other.damage, DEBRIS_SPEED, DEBRIS_SPEED_VARIANCE);
}