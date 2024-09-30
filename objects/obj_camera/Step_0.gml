#region follow target
for (var i = 0; i < array_length(global.targets); i++) {
	if (instance_exists(global.targets[i])) {
		var camX = global.targets[i].x - cameraWidth/2;
		var camY = global.targets[i].y - height/2;
		//global.cameraX = clamp(global.cameraX, 0, room_width-cameraWidth);
		//global.cameraY = clamp(global.cameraY, 0, room_height-cameraHeight);
		camera_set_view_pos(global.Cameras[i], camX, camY)
	}
}



#endregion
#region parallax
layer_x("Parallax_0", global.cameraX*0.)
layer_y("Parallax_0", global.cameraY*0.4)

layer_x("Parallax_1", global.cameraX*0.6)
layer_y("Parallax_1", global.cameraY*0.6)
#endregion