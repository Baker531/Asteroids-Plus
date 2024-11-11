draw_set_font(fnt_main)

switch(room) {
    
    
case rm_game:
    set_text_style(fnt_hud, c_white, fa_left);
    draw_text(20, 20, "SCORE: " + string(score));
    draw_text(20, 40, "LIVES: " + string(lives));
    var _health = (obj_ship.hp/obj_ship.max_hp)*100;
    show_debug_message(_health)
    draw_healthbar(
        180, 20, 320, 30, _health,
        c_white, c_red, c_lime, 0, true, false
    );

    draw_set_halign(fa_right);
    draw_text(480, 20, "DEST: " + string(global.destroyed_asteroids));
    draw_text(480, 40, "LEVEL: " + string(global.level))
    break;
    
case rm_start:
    set_text_style(fnt_head, c_yellow, fa_center);
    draw_text(room_width / 2, 30, "ASTEROIDS");
    
    set_text_style(fnt_main, c_white);
    draw_text(room_width / 2, 80, 
    @"Destroy 30 asteroids to win the level!
    
    If you're hit, you lose:
    10 health for small asteroid
    15 health for medium asteroid
    20 health for large asteroid
    
    If you lose all your health,
    you lose a life and restart the level.
    
    CONTROLS:
    UP: accelerate
    DOWN: reverse
    LEFT/RIGHT: turn
    CMD or ALT: slow turn
    SPACE: shoot
    
    >>PRESS ENTER TO START<<");
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