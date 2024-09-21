#region global constants
#macro none "none"
#macro ASTEROID_INCREASE 30
#macro REQUIRED_ASTEROIDS 50
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
	repeat(global.total_asteroids) {
		var xx, yy;
		do {
			xx = irandom_range(0, room_width);
			yy = irandom_range(0, room_height);
		} until (point_distance(xx, yy, obj_ship.x, obj_ship.y) > 100)
	    instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
}
#endregion