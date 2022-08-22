/// @description Insert description here
// You can write your code in this editor

if (array_length(global.bag) != 0) {
	if (global.bag[0] != noone) {
		global.bag[itemIndex].y += sprite_height / 3;
		global.bag[itemIndex].visible = true;
		if (itemIndex == 0) {
			array_delete(global.bag, itemIndex, 1);
			itemIndex = 0;
		} else {
			global.bag[0] = noone;
		}
	}
}