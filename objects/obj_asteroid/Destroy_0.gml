if (global.destroyed_asteroids >= REQUIRED_ASTEROIDS) {
	global.level++;
	global.destroyed_asteroids = 0;
	global.total_asteroids += ASTEROID_INCREASE;
	room_restart();
}