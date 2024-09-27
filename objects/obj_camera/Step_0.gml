#region follow target
if (instance_exists(target1) && instance_exists(target2)) {
	global.cameraX = (target1.x+target2.x)/2;
	global.cameraY = (target1.y+target2.y)/2;
	var cameraScale = max(abs(target1.x - target2.x)+buffer, abs(target1.y - target2.y)+buffer, minSize);
	cameraScale = min(cameraScale, maxSize);
	cameraWidth = cameraScale;
	cameraHeight = cameraScale;
	show_debug_message(global)
	//global.cameraX = clamp(global.cameraX, 0, room_width-cameraWidth);
	//global.cameraY = clamp(global.cameraY, 0, room_height-cameraHeight);
}


camera_set_view_pos(view_camera[0], global.cameraX - cameraWidth/2, global.cameraY - cameraHeight/2);
camera_set_view_size(view_camera[0], cameraWidth, cameraHeight)
#endregion
#region parallax
layer_x("Parallax_0", global.cameraX*0.)
layer_y("Parallax_0", global.cameraY*0.4)

layer_x("Parallax_1", global.cameraX*0.6)
layer_y("Parallax_1", global.cameraY*0.6)
#endregion