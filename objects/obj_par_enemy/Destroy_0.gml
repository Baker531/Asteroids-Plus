if (chance(pwup_chance)) {
	instance_create_layer(x, y, "Instances", obj_powerup)	
}
score += objScore;
global.cameraShake = 4;