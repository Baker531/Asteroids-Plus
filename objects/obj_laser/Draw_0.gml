var len = 500;
var width = 2;

var xend = x+lengthdir_x(len, direction)
var yend = y+lengthdir_y(len, direction)

draw_line_width_color(
	x,y, xend,yend, width,
	image_blend, image_blend
);

var inst = collision_line(
	x,y, xend,yend, obj_faction, false, false
);

if (inst != noone) {
	if (inst.faction != faction) {
		with (inst) event_perform(ev_other, ev_user1);
	}
}