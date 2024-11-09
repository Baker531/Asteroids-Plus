partSys = part_system_create();

// Exhaust
partExhaust = part_type_create();
part_type_sprite(partExhaust, spr_exhaust, false, false, false);
part_type_size(partExhaust, 0.5, 1, 0, 0);
part_type_color1(partExhaust, c_white);
part_type_color_mix(partExhaust, c_white, c_gray)
part_type_alpha2(partExhaust, 0.6, 0);

part_type_life(partExhaust, 8, 20);
