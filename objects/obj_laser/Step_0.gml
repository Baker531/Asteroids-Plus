if (!instance_exists(creator)) {
    instance_destroy();
    exit;
}

direction = creator.image_angle;

x = creator.x+lengthdir_x(creator.sprite_height-16, direction);
y = creator.y+lengthdir_y(creator.sprite_height-16, direction);