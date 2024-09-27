// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function debris(){
	repeat(20) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}
function create_bullet() {
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	inst.direction = image_angle;
	inst.speed = bulletSpeed + speed;
	inst.faction = faction;
	inst.image_blend = image_blend;
}
function spawn_obj(obj, num, radius) {
	repeat(num) {
		var xx, yy;
		do {
			xx = irandom_range(0, room_width);
			yy = irandom_range(0, room_height);
		} until (point_distance(xx, yy, obj_par_ship.x, obj_par_ship.y) > radius)
	    instance_create_layer(xx, yy, "Instances", obj);
	}
}
function near_obj(obj, radius) {
	return (point_distance(x, y, obj.x, obj.y) < radius)	
}