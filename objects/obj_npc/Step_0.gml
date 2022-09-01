/// @description NPC Word Widget

// Check is Player nearby
if (place_meeting(x, y, obj_player)) {
	// Check is player pressed Space
	if (keyboard_check_pressed(vk_space) ) {
		// Check is Text Box empty
		if (textBox == noone) {
			// Draw Text Box
			textBox = instance_create_layer(x - boxWidth / 2, y - 1.2 * boxHeight, "Text", obj_textbox);
			textBox.text = text;
			textBox.creator = self;
			textBox.name = name;
		}
	}
} else {
	// Destroy Text Box when Player leaved
	if (textBox != noone) {
		instance_destroy(textBox);
		textBox = noone;
	}
}