/// @description Draw Textbox

draw_rectangle(x - 2,y - 2, x + boxWidth + 2, y + boxHeight + 2,false);
draw_sprite(spr_textbox_background, 0, x, y)

if (charCount <= string_length(text[page])) {
	charCount += 1;
}

textPart = string_copy(text[page], 1, charCount);

draw_set_color(c_yellow);
var name_xx = x + boxWidth / 2;
var name_yy = y;
draw_set_halign(fa_center);
draw_text(name_xx, name_yy, name)

//Draw part of the text
draw_set_color(c_white);
var text_xx = x + xBuffer;
var text_yy = y + yBuffer + stringHeight;
draw_set_halign(fa_left);
draw_text_ext(text_xx, text_yy, textPart, stringHeight, boxWidth - (2 * xBuffer));