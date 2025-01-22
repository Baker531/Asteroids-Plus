if (!running) exit;

if (keyboard_check_pressed(ord("P"))) {
    show_debug_message("Unpaused")
    running = false;
    instance_activate_all()
} else if (keyboard_check_pressed(ord("E"))) {
    running = false;
    instance_activate_all();
    room_goto(rm_start);
} else if (keyboard_check_pressed(ord("Q"))) {
    if (os_browser != browser_not_a_browser) {
        scribble("[c_red][fnt_head]Game ended").draw(display_get_width() / 2, display_get_height() / 2);
    } 
    game_end();
}