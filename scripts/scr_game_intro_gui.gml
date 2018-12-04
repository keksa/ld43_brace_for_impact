draw_set_alpha(1);
draw_set_font(f_mono_bold_12);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_yellow);

// seems HTML5 cannot handle multiline text :(
draw_text(80, 120 + 24 * 0,  "Captain, we've finished the scan.");
draw_text(80, 120 + 24 * 1,  "Results?");
draw_text(80, 120 + 24 * 2,  "...");
draw_text(80, 120 + 24 * 3,  "Oh my god! We need to let them know!");
draw_text(80, 120 + 24 * 4,  "Engage all engines, we only have two minutes.");
draw_text(80, 120 + 24 * 5,  "We should be able to make it. It's only couple");
draw_text(80, 120 + 24 * 6,  "of parsecs away.");
draw_text(80, 120 + 24 * 7,  "...");
draw_text(80, 120 + 24 * 8,  "Captain, long range sensors show we've been");
draw_text(80, 120 + 24 * 9,  "locked on by missiles.");
draw_text(80, 120 + 24 * 10, "They know. Lieutenant, time to show your");
draw_text(80, 120 + 24 * 11, "piloting skills.");

draw_set_font(f_mono_bold_16);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_colour(c_yellow);
draw_text(room_width / 2, room_height - 240, "Continue?");

// space key to start
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
var keyText = "space";
var keyWidth = string_width(keyText);
var keyHeight = string_height(keyText);
var spX = room_width / 2;
var spY = room_height - 240 + 48;

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

