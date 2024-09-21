#region controls
var turning_speed = keyboard_check(vk_shift) ? TURN_SPEED_SLOW : TURN_SPEED;

if (keyboard_check(vk_left)) {
	image_angle += turning_speed;
} if (keyboard_check(vk_right)) {
	image_angle -= turning_speed;
} if (keyboard_check(vk_up)) {
	motion_add(image_angle, ACCELERATION);
} if (keyboard_check(vk_down)) {
	motion_add(image_angle, -ACCELERATION);
} 

if (keyboard_check_pressed(vk_space)) {
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	inst.direction = image_angle;
	inst.faction = faction;
}
#endregion

// Wrap variant
move_wrap(true, true, sprite_width/2)

// No-wrap variant
//x = clamp(x, sprite_width/2, room_width-sprite_width/2)