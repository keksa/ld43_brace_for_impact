var torpedoX = random_range(
    global.player.x - room_width / 2,
    global.player.x + room_width / 2
);
torpedoX = clamp(torpedoX, 40, room_width - 40);

var torpedo = instance_create(
    torpedoX,
    room_height + random_range(1000, 1400),
    obj_torpedo
);

with (torpedo) {
    var nearestEngine = scr_find_nearest_engine(x, y, noone);
    if (nearestEngine == noone) {
        instance_destroy();
        exit;
    }
    
    // target nearest engine
    direction = point_direction(x, y, nearestEngine.x, nearestEngine.y);
    image_angle = direction;
    speed = random_range(6, 9);
}
