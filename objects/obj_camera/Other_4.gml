/// @description Camera Setup

global.cameraX = 0;
global.cameraY = 0;
targets[0] = obj_ship1;
targets[1] = obj_ship2;

cameraWidth = 500;
height = 500;

width = 
height = 

minSize = 300;
maxSize = 1000;

buffer = 50;


displayScale = 1.5;
displayWidth = width * displayScale;
displayHeight = height * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);
alarm[0] = 1;


display_set_gui_size(cameraWidth, cameraHeight);

view_enabled = true;

global.Cameras = [];
for (var i = 0; i < 2; i++) {
    view_visible[i] = true;
	
	global.Cameras[i] = camera_create_view(0, 0, cameraWidth, height)
	view_set_camera(i, global.Cameras[i])
	
	view_xport[i] = cameraWidth * i;
	view_wport[i] = cameraWidth
}

camera_set_view_size(view_camera[0], cameraWidth, cameraHeight);


