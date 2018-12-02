// time limit
var hours = "0" + string(max(0, floor(global.timeLimit / 60)));
var minutes = global.timeLimit mod 60;
if (minutes < 10) {
    minutes = "0" + string(max(0, minutes));
}

draw_set_font(f_mono_bold_16);

// distance counter
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_yellow);
draw_set_alpha(1);

draw_text(
    20,
    20,
    string(round(scr_get_distance_to_travel() * global.distanceToTravelCoeff))
);


draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_colour(c_yellow);
draw_set_alpha(1);
draw_text(
    room_width - 20,
    20,
    string(hours) + ":" + string(minutes)
);

// begin counter
if (global.begin_counter > 0) {
    draw_set_font(f_large_digits);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_colour(c_yellow);
    draw_set_alpha(1);
    draw_text(
        room_width / 2,
        80,
        string(max(0, global.begin_counter))
    );
}
