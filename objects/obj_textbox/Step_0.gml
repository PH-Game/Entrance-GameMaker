/// @description Switch Pages

if (keyboard_check_pressed(vk_space) ) {
	if (page < (array_length(text) - 1)) {
		page += 1;
	}
}