draw_self();

if (gun != -1) draw_overlay(spr_ship_powerups, gun, image_blend, min(1, alarm[0]/120));

if (shield) draw_overlay(spr_ship_powerups, pwup.shield, image_blend, min(1, alarm[1]/120));
