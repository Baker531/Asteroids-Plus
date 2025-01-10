global.cameraShake = 0;
cameraWidth = 500;
cameraHeight = 500;
#region display
displayScale = 1.5;
displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);
alarm[0] = 1;
#endregion