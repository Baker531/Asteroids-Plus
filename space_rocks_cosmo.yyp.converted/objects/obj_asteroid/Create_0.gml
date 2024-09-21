event_inherited();

#region constants
#macro SPEED 1
#macro SPIN 1
#endregion

sprite_index = choose(spr_asteroid_small, spr_asteroid_med, spr_asteroid_big);
direction = irandom_range(0, 359);
speed = SPEED;

