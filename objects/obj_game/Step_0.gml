var skipDown = keyboard_check_pressed(vk_enter);
var nextDown = keyboard_check_pressed(vk_space);
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
    switch(room) {
    case rm_start:
        if (nextDown) {
        if (text.instructions.on_last_page()) {
            room_goto(rm_game); 
        }
        else {
            text.page++;
        }
        }
        else {
            room_goto(rm_game); 
        }
        break;
    case rm_gameover: 
        game_restart();
        break;
    case rm_win:
        game_restart();
        break
    }
}