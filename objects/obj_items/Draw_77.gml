/// @description Insert description here
// You can write your code in this editor

var guiWidth = display_get_gui_width();

for (var i = 0; i < array_length(global.bag) - 1; i++) {
	var _xx = guiWidth - 48 - (i * 70);
	draw_sprite(global.bag[i].sprite_index, 0, _xx, 48);
}