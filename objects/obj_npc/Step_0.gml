/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y, obj_player)) {
	if (keyboard_check_pressed(vk_space) ) {
		if (textBox = noone) {
			textBox = instance_create_layer(x, y - 120, "Text", obj_textbox);
			textBox.text = text;
			textBox.creator = self;
			textBox.name = name;
		}
	}
} else {
	if (textBox != noone) {
		instance_destroy(textBox);
		textBox = noone;
	}
}