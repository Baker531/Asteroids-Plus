///@description Destroy
if (lives <= 0) {
    room_goto(rm_gameover);
} else {
    health = 100;
    global.destroyed_asteroids = 0;
    room_restart();
}