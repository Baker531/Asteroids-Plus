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
        set_text_style(fnt_head, c_red)
        draw_text(display_get_width() / 2, display_get_height() / 2, "Game ended")
    } 
    game_end();
}