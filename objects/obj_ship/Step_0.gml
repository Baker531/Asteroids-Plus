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
    var off = offset(0, -12, image_angle);
	part_type_direction(global.partExhaust, (image_angle+180)-20, (image_angle+180)+20, 0, 0);
    part_particles_create(obj_particles.partSys, x+off[0], y+off[1], obj_particles.partExhaust, 2);    
} if (keyboard_check(vk_down)) {
    motion_add(image_angle, -ACCELERATION);
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