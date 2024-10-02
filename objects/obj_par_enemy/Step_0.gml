
if (!instance_exists(obj_ship)) exit;

if (point_distance(x,y, obj_ship.x,obj_ship.y) < detectionRadius) {
	if (tracking) {
		var new_angle = point_direction(x,y, obj_ship.x, obj_ship.y);
		new_angle = image_angle - angle_difference(image_angle, new_angle);
		image_angle = lerp(image_angle, new_angle, 0.05);
	}
	if (following) {
		direction = image_angle;	
	}
	if (near_obj(obj_ship, decelRadius)) {
		if (dodging) speed -= decel;
	} else if (chasing) {
		speed += accel;
	}
	if (shooting) {
		if (++bulletCounter >= fireRate) {
			create_bullet(image_angle, bulletSpeed, 0, sprite_height/2);
			bulletCounter = 0;
		}
	}
} else {
	if (returning) {
		image_angle = lerp(image_angle, direction, 0.05);
	}
	if (dodging || chasing) {
		speed = lerp(speed, initialSpeed, 0.1);	
	}
}