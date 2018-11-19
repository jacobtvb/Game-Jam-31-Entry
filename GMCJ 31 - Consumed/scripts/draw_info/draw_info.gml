/// @function draw_info(text,color)
/// @description Draws information text at the bottom of the screen.
/// @param text     The text to draw.
/// @param color    The color of the text.

var _x = room_width div 2;
var _y = room_height - 32;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_info);

draw_set_alpha(1);
draw_set_color(c_black);
for (var i = -2; i <= 2; i++) {
for (var j = -2; j <= 2; j++) {
    draw_text(_x + i, _y + j, argument0);
}
}

draw_set_color(argument1);
draw_text(_x, _y, argument0);
draw_set_color(c_white);
