var engineToToss = argument0;

engineToToss.is_glued = false;

if (engineToToss.offset_y > 0) {
    // engine is on right side
    engineToToss.toss_direction = global.player.direction - 90;
    engineToToss.toss_rotate = -10;
} else if (engineToToss.offset_y < 0) {
    // engine is on left side
    engineToToss.toss_direction = global.player.direction + 90;
    engineToToss.toss_rotate = 10;
} else {
    // engine is in the middle
    engineToToss.toss_direction = global.player.direction + 180;
    engineToToss.toss_rotate = choose(10, -10);
}

