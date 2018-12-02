var count = argument0;

repeat(count) {
    var cloud_x = random_range(0, room_width);
    var cloud_y = random_range(0, room_height);
    var cloud_width = sprite_get_width(spr_cloud);
    var cloud_height = sprite_get_height(spr_cloud);
    
    repeat(irandom_range(2, 10)) {
        instance_create(
            cloud_x + random_range(cloud_width * -1, cloud_width),
            cloud_y + random_range(cloud_height * -1, cloud_height),
            obj_cloud
        );
    }
}
