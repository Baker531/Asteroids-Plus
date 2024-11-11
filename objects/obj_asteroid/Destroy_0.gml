score += 50;
global.destroyed_asteroids++;

if (sprite_index == spr_asteroid_big) {
    global.cameraShake = 4;
    repeat(2) {
        var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
        new_asteroid.sprite_index = spr_asteroid_med;
    }
} else if (sprite_index == spr_asteroid_med) {
    global.cameraShake = 3;
    repeat(2) {
        var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
        new_asteroid.sprite_index = spr_asteroid_small;
    }
} else {
    global.cameraShake = 2;    
}

debris(20, DEBRIS_SPEED, DEBRIS_SPEED_VARIANCE);

if (chance(10)) {
    instance_create_layer(x, y, "Instances", obj_powerup);    
}

if (global.destroyed_asteroids >= REQUIRED_ASTEROIDS + 1) {
    global.level++;
    global.destroyed_asteroids = 0;
    global.total_asteroids += ASTEROID_INCREASE;
    health = obj_ship.hp;
    room_restart();
}