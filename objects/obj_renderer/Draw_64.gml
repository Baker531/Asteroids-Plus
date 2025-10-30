draw_set_font(fnt_main)

switch(room) {
    
    
case rm_game:
    set_text_style(fnt_hud, c_white, fa_left);
    draw_text(20, 20, "SCORE: " + string(score));
    draw_text(20, 40, "LEFT: " + string(max(global.scoreRequired-global.levelScore, 0)));
    
    var _health = (obj_ship.hp/obj_ship.max_hp)*100;
    draw_healthbar(
        180, 20, 320, 30, _health,
        c_white, c_red, c_lime, 0, true, false
    );

    draw_set_halign(fa_right);
    draw_text(480, 20, "LIVES: " + string(lives));
    draw_text(480, 40, "LEVEL: " + string(global.level))
    if (global.levelDisplay) {
        set_text_style(fnt_main, c_white, fa_center)
        nextLevelAlpha -= 1/textDuration
        draw_set_alpha(nextLevelAlpha)
        draw_text(display_get_gui_width()/2, display_get_gui_height()/2 - 13, "LEVEL " + string(global.level))
        draw_set_alpha(1);
    }
    break;
    
case rm_start:
    parse_text(text.instructions, text.page)
    set_text_style(fnt_main, c_lime)
    draw_set_valign(fa_bottom)
    draw_text(20, display_get_gui_height() - 16, "Press Space to continue")
    break;
case rm_win:
    set_text_style(fnt_head, c_lime, fa_center);
    draw_text(room_width / 2, 200, "YOU WON!");
    set_text_style(fnt_main, c_white)
    draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
    break;
case rm_gameover:
    set_text_style(fnt_head, c_red, fa_center);
    draw_text(room_width / 2, 150, "GAME OVER");
    
    set_text_style(fnt_main, c_white)
    draw_text(room_width / 2, 250, "FINAL SCORE: " + string(score));
    draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
}