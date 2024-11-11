if (chance(pwup_chance)) {
    instance_create_layer(x, y, "Instances", obj_powerup)    
}
score += ship.score;
global.cameraShake = ship.cameraShake;