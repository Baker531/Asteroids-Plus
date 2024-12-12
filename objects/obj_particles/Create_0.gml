partSys = part_system_create();

// Exhaust
partExhaust = part_type_create();
//part_type_shape(partExhaust, pt_shape_pixel)
part_type_sprite(partExhaust, spr_exhaust, false, false, false);
part_type_size(partExhaust, 1, 1, 0, 0);
//part_type_color1(partExhaust, c_red);
part_type_color_mix(partExhaust, c_red, #ff6969);
part_type_alpha2(partExhaust, 1, 0);
part_type_direction(partExhaust, -20, 20, 0, 0);
part_type_speed(partExhaust, 1, 2, 0, 0);
part_type_life(partExhaust, 8, 15);
global.partExhaust = partExhaust;