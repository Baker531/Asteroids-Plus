var pwup_type = other.image_index 

switch(pwup_type) {
	case pwup.shield:
		shield = true;
		alarm[1] = 15*target_fps;
		break;
	default:
		gun = pwup_type;
		alarm[0] = 15*target_fps;
		break;
}
instance_destroy(other);