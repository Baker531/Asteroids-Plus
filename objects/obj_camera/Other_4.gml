/// @description Camera Setup

global.cameraX = 0;
global.cameraY = 0;
global.targets[0] = obj_ship1;
global.targets[1] = obj_ship2;

cameraWidth = 500;
totalWidth = cameraWidth * array_length(targets)
height = 500;

minSize = 300;
maxSize = 1000;

buffer = 50;


displayScale = 1.5;
displayWidth = totalWidth * displayScale;
displayHeight = height * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);
alarm[0] = 1;


display_set_gui_size(cameraWidth, height);

view_enabled = true;

global.Cameras = [];
for (var i = 0; i < 2; i++) {
    view_visible[i] = true;
	
	global.Cameras[i] = camera_create_view(0, 0, cameraWidth, height)
	view_set_camera(i, global.Cameras[i])
	
	view_xport[i] = cameraWidth * i;
	view_wport[i] = cameraWidth;
	view_hport[i] = height
}

//camera_set_view_size(view_camera[1], cameraWidth, height);


