if (max_hp > 10) {
    var _health = (hp / max_hp) * 100
    var y1 = y - (sprite_height + hb_y_off)
    var wdt = hb_width / 2
    draw_healthbar(x - wdt, y1, x + wdt, y1 + hb_height, _health, c_white, c_red, c_lime, 0, false, false)    
}
draw_self()