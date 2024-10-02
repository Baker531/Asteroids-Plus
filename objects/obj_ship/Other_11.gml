/// @description Hit

if (shield) exit;

health -= other.damage;

instance_destroy(other)
if (health <= 0) {
	room_restart();
	health = 100;
	if (--lives <= 0) {
		room_goto(rm_gameover);
	}
	debris(30, DEBRIS_SPEED, DEBRIS_SPEED_VARIANCE);
} else {
	debris(other.damage, DEBRIS_SPEED, DEBRIS_SPEED_VARIANCE);
}