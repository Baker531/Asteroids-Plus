function create_bullet(dir, _speed) {
	var xoff = 0;
	var yoff = 0;
	var obj = obj_bullet
	if (argument_count > 3) {
		xoff = argument[2];
		yoff = argument[3];
	} if (argument_count > 4) {
		obj = argument[4];
	}
	
	var inst = instance_create_layer(x+lengthdir_x(xoff, dir-90)+lengthdir_x(yoff, dir), y+lengthdir_y(xoff, dir-90)+lengthdir_y(yoff, dir), "Instances", obj);

	inst.direction = dir;
	if (obj == obj_bullet) inst.speed = _speed + speed;
	inst.creator = id;
	inst.faction = faction;
	inst.image_blend = image_blend;
	inst.damage = bulletDamage;
}

function shoot(_speed) {
	var sep = 15;
	var gun_shift = -5;
	var out_shift = 5;
	switch(gun) {
		case pwup.two:
			create_bullet(image_angle, _speed, -sep, gun_shift);
			create_bullet(image_angle, _speed, sep, gun_shift);
			break;
		case pwup.three:
			create_bullet(image_angle, _speed, -sep, gun_shift);
			create_bullet(image_angle, _speed, sep, gun_shift);
			create_bullet(image_angle, _speed, 0, sprite_height/2);
			break;
		case pwup.four:
			var _angle = image_angle;
			repeat (4) {
				create_bullet(_angle, _speed, 0, out_shift);
				_angle += 90;
			}
			break;
		case pwup.eight:
			var _angle = image_angle;
			repeat (8) {
				create_bullet(_angle, _speed, 0, out_shift);
				_angle += 45;
			}
			break;
		case pwup.laser:
			create_bullet(image_angle, 0, 0, 0, obj_laser)
		default:
			create_bullet(image_angle, _speed, 0, sprite_height/2);
			break;
	}
}

