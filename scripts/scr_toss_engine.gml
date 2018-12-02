var engineToToss = scr_find_engine_for_tossing();
if (engineToToss != noone) {
    audio_play_sound(snd_toss, 15, false);
    scr_do_really_toss_engine(engineToToss);
}

