#region follow target
if (instance_exists(target)) {
    global.cameraX = target.x - cameraWidth/2;
    global.cameraY = target.y - cameraHeight/2;
    
    global.cameraX = clamp(global.cameraX, 0, room_width-cameraWidth);
    global.cameraY = clamp(global.cameraY, 0, room_height-cameraHeight);
}

if (global.cameraShake > 0) {
    global.cameraX += random_range(-global.cameraShake, global.cameraShake);
    global.cameraY += random_range(-global.cameraShake, global.cameraShake);
    global.cameraShake -= 0.2;
    if (global.cameraShake < 0) global.cameraShake = 0;
}

camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);
#endregion
#region parallax
/*
layer_x("Parallax_0", global.cameraX*0.)
layer_y("Parallax_0", global.cameraY*0.4)

layer_x("Parallax_1", global.cameraX*0.6)
layer_y("Parallax_1", global.cameraY*0.6)
*/
#endregion