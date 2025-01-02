if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
    switch(room) {
    case rm_start:
        if (text.instructions.on_last_page()) {
            room_goto(rm_game); 
        }
        else {
            text.page++;
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