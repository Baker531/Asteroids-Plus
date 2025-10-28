if (!running) return;

obj_game.set_text_style(fnt_head, c_yellow)
draw_text(50, 50, "Paused")
obj_game.set_text_style(fnt_main, c_white)
draw_text(50, 100, "Press P to unpause")
draw_text(50, 140, "Press E to exit to instructions")
draw_text(50, 180, "Press Q to quit")