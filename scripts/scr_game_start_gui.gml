draw_set_alpha(1);
draw_set_font(f_mono_bold_32);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_colour(c_yellow);

draw_text(room_width / 2, 240, "BRACE FOR IMPACT!");

draw_set_font(f_mono_bold_16);
draw_text(room_width / 2, room_height - 360, "Start game?");

draw_set_font(f_mono_11);
draw_set_alpha(1);
draw_set_colour(c_yellow);
draw_set_valign(fa_bottom);
draw_set_halign(fa_left);
draw_text(30, room_height - 30, "Created for Ludum Dare \#43");
draw_set_halign(fa_right);
draw_text(room_width - 30, room_height - 30, 'Ondrej "Keksa" Exner');

// space key to start
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
var keyText = "space";
var keyWidth = string_width(keyText);
var keyHeight = string_height(keyText);
var spX = room_width / 2;
var spY = room_height - 360 + 48;

var rX1 = 0;
var rY1 = 0;
var rX2 = 0;
var rY2 = 0;
var hPadding = 4;
var vPadding = 3;

rX1 = spX - (keyWidth / 2) - hPadding;
rY1 = spY - keyHeight / 2 - vPadding;
rX2 = spX + (keyWidth / 2) + hPadding;
rY2 = spY + keyHeight / 2 + vPadding;

again_alpha += (0.05 * again_alpha_way);
if (again_alpha > 1) {
    again_alpha = 1;
    again_alpha_way *= -1;
} else if (again_alpha < 0) {
    again_alpha = 0;
    again_alpha_way *= -1;
}

draw_text(spX, spY, keyText);
draw_set_alpha(again_alpha);
draw_roundrect_ext(rX1, rY1, rX2, rY2, 4, 4, true);

