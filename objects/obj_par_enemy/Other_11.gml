/// @description Hit
hp -= other.damage;

if (hp <= 0) {
	debris(20, DEBRIS_SPEED, DEBRIS_SPEED_VARIANCE);
	instance_destroy();	
} else {
	debris(5, DEBRIS_SPEED, DEBRIS_SPEED_VARIANCE);	
}