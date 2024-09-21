effect_create_above(ef_explosion, x, y, EXPLOSION_SIZE, c_white);
instance_destroy(other);
switch(other.sprite_index) {
case spr_asteroid_small:
	health -= 10;
	break;
case spr_asteroid_med:
	health -= 15;
	break;
case spr_asteroid_big:
	health -= 20;
	break;
}

if (health <= 0) {
	room_restart();
	health = 100;
	if (--lives <= 0) {
		room_goto(rm_gameover);
	}
}