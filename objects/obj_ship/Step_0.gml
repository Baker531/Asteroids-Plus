#macro THRUST_OFFSET 7
#macro THRUST_ANGLE 30
#macro THRUST_SPREAD 2
#macro REVTHRUST_SPREAD 1

move_wrap(true, true, sprite_width/2)

if (dead) {

    debris(2, DEBRIS_SPEED, DEBRIS_SPEED_VARIANCE);
    global.cameraShake = random_range(3, 5);
    exit;
};

#region controls
var turning_speed = keyboard_check(vk_shift) ? TURN_SPEED_SLOW : TURN_SPEED;

if (keyboard_check(vk_left)) {
    image_angle += turning_speed;
} if (keyboard_check(vk_right)) {
    image_angle -= turning_speed;
} if (keyboard_check(vk_up)) {
    motion_add(image_angle, ACCELERATION);
    
	part_type_direction(global.partExhaust, (image_angle+180)-THRUST_ANGLE, (image_angle+180)+THRUST_ANGLE, 0, 0);
    repeat (2) {
        var off = offset(random_range(-THRUST_SPREAD, THRUST_SPREAD), -11, image_angle);
        part_particles_create(obj_particles.partSys, x+off[0], y+off[1], obj_particles.partExhaust, 2); 
    }   
} if (keyboard_check(vk_down)) {
    motion_add(image_angle, -ACCELERATION);
	for (var i = 0; i < 2; i++) {
		
		part_type_direction(global.partExhaust, image_angle-THRUST_ANGLE, image_angle+THRUST_ANGLE, 0, 0);
	    repeat (2) {
            var off = offset(-THRUST_OFFSET+(i*THRUST_OFFSET*2) + random_range(-REVTHRUST_SPREAD, REVTHRUST_SPREAD), 2, image_angle);
            part_particles_create(obj_particles.partSys, x+off[0], y+off[1], obj_particles.partExhaust, 1);
        }
	}
} 
bulletCounter++;
if (firingMode == "manual") {
    if (keyboard_check_pressed(vk_space)) {
        shoot(bulletSpeed);
    }
} else {
    if (keyboard_check(vk_space) && bulletCounter > bulletDelay) {
        shoot(bulletSpeed);
        bulletCounter = 0;
    }
}
#endregion


// No-wrap variant
//x = clamp(x, sprite_width/2, room_width-sprite_width/2)