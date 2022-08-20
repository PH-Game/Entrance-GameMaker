/// @description Insert description here
// You can write your code in this editor

if (global.bag[0] != noone) {
	if (itemIndex < array_length(global.bag) - 1) {
		global.bag[itemIndex].visible = false;
		itemIndex += 1;
		global.bag[itemIndex].visible = true;
	} else {
		global.bag[itemIndex].visible = false;
		itemIndex = 0;
		global.bag[itemIndex].visible = true;
	}
}