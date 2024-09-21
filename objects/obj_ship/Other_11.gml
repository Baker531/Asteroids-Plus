/// @description Hit

health -= other.damage;

effect_create_above(ef_explosion, x, y, EXPLOSION_SIZE, c_white);
instance_destroy(other)
if (health <= 0) {
	room_restart();
	health = 100;
	if (--lives <= 0) {
		room_goto(rm_gameover);
	}
}