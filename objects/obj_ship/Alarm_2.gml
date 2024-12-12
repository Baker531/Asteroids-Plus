///@description Destroy
if (lives <= 0) {
    health = 100;
    room_goto(rm_gameover);
} else {
    resetLevel();
}