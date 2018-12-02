// time limit
var hours = "0" + string(max(0, floor(global.timeLimit / 60)));
var minutes = global.timeLimit mod 60;
if (minutes < 10) {
    minutes = "0" + string(max(0, minutes));
}

draw_set_alpha(1);
draw_set_font(f_mono_bold_48);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_colour(c_yellow);

if (global.won) {
    draw_text(room_width / 2, 120, "You made it!");
    draw_set_font(f_mono_bold_16);
    draw_text(room_width / 2, 230, "Time left: " + string(hours) + ":" + string(minutes));
    draw_text(room_width / 2, 280, "Engines left: " + string(global.player.engine_count));
} else {
    draw_text(room_width / 2, 120, "GAME OVER");
    draw_set_font(f_mono_bold_16);
    draw_text(room_width / 2, 230, "Distance left: " + string(round(scr_get_distance_to_travel() * global.distanceToTravelCoeff)));
}

draw_set_font(f_mono_bold_16);
draw_text(room_width / 2, room_height - 240, "Play again?");

// space key to play again
draw_set_font(f_mono_bold_12);
draw_set_alpha(1);
draw_set_colour(c_yellow);
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

