var offsetX = argument0;
var offsetY = argument1;
var engine_object = argument2;
var engine_map_key = argument3;

var engine = instance_create(x + offsetX, y + offsetY, engine_object);
with (engine) {
    hull = other;
    offset_x = offsetX;
    offset_y = offsetY;
    angle_vs_hull = point_direction(0, 0, offset_x, offset_y);
    distance_vs_hull = point_distance(0, 0, offset_x, offset_y);
    engine_key = engine_map_key;
    
    hull.ship.cap_speed += engine.engine_power;
    hull.ship.initial_cap_speed += engine.engine_power;
}

return engine;
