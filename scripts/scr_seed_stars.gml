var count = argument0;

repeat(count) {
    instance_create(
        random_range(0, room_width),
        random_range(0, room_height),
        obj_star
    );
}
