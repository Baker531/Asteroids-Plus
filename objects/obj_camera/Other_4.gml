/// @description Camera Setup
#region camera
global.cameraX = 0;
global.cameraY = 0;
target = obj_par_ship;

cameraWidth = 500;
cameraHeight = 500;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], cameraWidth, cameraHeight);
#endregion
#region display
displayScale = 1.5;
displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);
alarm[0] = 1;
#endregion

display_set_gui_size(cameraWidth, cameraHeight);
