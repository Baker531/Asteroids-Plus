#region global constants
#macro none "none"
#macro ASTEROID_INCREASE 30
#macro REQUIRED_ASTEROIDS 30
#endregion
#region global variables
score = 0;
lives = 3;
health = 100;
global.level = 1;
global.destroyed_asteroids = 0;
global.total_asteroids = 150;
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
function spawn_asteroids() {
	spawn_obj(obj_asteroid, global.total_asteroids, 200);
	spawn_obj(obj_raider, 20, 200);
	spawn_obj(obj_hunter, 15, 200);
	spawn_obj(obj_brute, 10, 200);
}
#endregion