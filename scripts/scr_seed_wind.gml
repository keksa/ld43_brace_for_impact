var count = argument0;

repeat(count) {
    instance_create(
        random_range(-room_width, room_width * 2),
        random_range(0, room_height),
        obj_wind
    );
}
