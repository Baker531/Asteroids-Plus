///@description Destroy
if (lives <= 0) {
    room_goto(rm_gameover);
} else {
    resetLevel();
}