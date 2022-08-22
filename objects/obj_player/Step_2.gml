/// @description Insert description here
// You can write your code in this editor

if (array_length(global.bag) != 0) {
	if (global.bag[0] != noone) {
		if (instance_exists(global.bag[itemIndex])) {
			global.bag[itemIndex].x = x;
			global.bag[itemIndex].y = y;
		}
	}
}