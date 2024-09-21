event_inherited();

#region constants
#macro SPEED 1
#macro SPIN 1
#endregion

sprite_index = choose(spr_asteroid_small, spr_asteroid_med, spr_asteroid_big);
switch(sprite_index) {
case spr_asteroid_small:
	damage = 10;
	break;
case spr_asteroid_med:
	damage = 15;
	break;
case spr_asteroid_big:
	damage = 20;
	break;
}
direction = irandom_range(0, 359);
speed = SPEED;

