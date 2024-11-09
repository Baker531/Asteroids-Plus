event_inherited();

#region constants
#macro TURN_SPEED 4
#macro TURN_SPEED_SLOW 2
#macro ACCELERATION 0.05
#macro EXPLOSION_SIZE 0.1
#endregion

#region Event Map
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);
#endregion

x = room_width / 2;
y = room_height / 2;

bulletSpeed = 7;
bulletDamage = 10;
gun = -1;
shield = false;
damage = 1000;

max_hp = 100;
hp = 100;
dead = false;

image_speed = 0;