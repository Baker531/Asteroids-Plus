#region global constants
#macro none "none"
#macro ASTEROID_INCREASE 30
#macro REQUIRED_ASTEROIDS 30
#macro DEBRIS_SPEED 1
#macro DEBRIS_SPEED_VARIANCE 0.5
#macro target_fps game_get_speed(gamespeed_fps)

#endregion

#region global variables
score = 0;
global.levelScore = 0;
lives = 3;
global.level = 1;
global.destroyed_asteroids = 0;
global.total_asteroids = 150;
global.levelDisplay = false;
textDuration = 120;
nextLevelAlpha = 1;
#endregion

#region global toolkit
function set_text_style(font, color) {
    draw_set_font(font);
    draw_set_color(color);
    if (argument_count == 3) {
        draw_set_halign(argument[2])
    }
}

#endregion

#region global functions
function spawn_objects() {
    spawn_obj(obj_asteroid, global.total_asteroids, 200);
    
    spawn_obj(obj_par_enemy, global.config.totalShips, 200);
    
}
#endregion

#region enums
enum factions {
    enemy,
    ally,
    neutral
}
enum pwup {
    two,
    three,
    four,
    eight,
    laser,
    shield
}
#endregion

randomize()

displayLevel()

#region Text
scribble_font_set_default("fnt_main")
text = {};
text.page = 0;
var file_buffer = buffer_load(working_directory + "instructions.txt")
text.instructions = scribble(buffer_read(file_buffer, buffer_string))
buffer_delete(file_buffer)
#endregion