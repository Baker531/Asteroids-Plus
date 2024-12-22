draw_set_font(fnt_main)

switch(room) {
    
    
case rm_game:
    //set_text_style(fnt_hud, c_white, fa_left);
    scribble("[fnt_hud]SCORE: " + string(score)).draw(20, 20);
    draw_text(20, 40, "LEFT: " + string(max(global.scoreRequired-global.levelScore, 0)));
    
    var _health = (obj_ship.hp/obj_ship.max_hp)*100;
    draw_healthbar(
        180, 20, 320, 30, _health,
        c_white, c_red, c_lime, 0, true, false
    );

    scribble("[fa_right][fnt_hud]LIVES: " + string(lives)).draw(480, 20);
    scribble("[fa_right][fnt_hud]LEVEL: " + string(global.level)).draw(480, 40);
    if (global.levelDisplay) {
        //set_text_style(fnt_main, c_white, fa_center)
        nextLevelAlpha -= 1/textDuration;
        scribble("[fa_center][alpha," + string(nextLevelAlpha) + "]LEVEL " + string(global.level))
        .draw(display_get_gui_width()/2, display_get_gui_height()/2 - 13);
    }
    break;
    
case rm_start:
    scribble("[fnt_head][c_yellow][fa_center]ASTEROIDS").draw(room_width / 2, 30);
    
    .draw(room_width / 2, 80);
    break;
case rm_win:
    set_text_style(fnt_head, c_lime, fa_center);
    draw_text(room_width / 2, 200, "YOU WON!");
    draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
    break;
case rm_gameover:
    set_text_style(fnt_head, c_red, fa_center);
    draw_text_(room_width / 2, 150, "GAME OVER");
    
    set_text_style(fnt_main, c_white)
    draw_text(room_width / 2, 250, "FINAL SCORE: " + string(score));
    draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
}