/// @description Camera Setup
#region camera
global.cameraX = 0;
global.cameraY = 0;
target = obj_ship;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], cameraWidth, cameraHeight);
#endregion
#region display
displayScale = 2.5;
displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;


display_set_gui_size(cameraWidth, cameraHeight);
