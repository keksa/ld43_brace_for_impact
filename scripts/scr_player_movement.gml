var x_limit = 120;
var x_limit_system = 100;
var target_direction;
var is_system = false;

x = clamp(x, x_limit_system, room_width - x_limit_system);
var is_on_left_border = x == x_limit_system;
var is_on_right_border = x == room_width - x_limit_system;

// player controls (movement)
if (keyboard_check(vk_left) and x > x_limit) {
    target_direction = 120;
} else if (keyboard_check(vk_right) and x < room_width - x_limit) {
    target_direction = 60;
} else if (x < x_limit_system) {
    motion_add(60, 0.25);
    speed = cap_speed;
    is_system = true;
} else if (x > room_width - x_limit_system) {
    motion_add(120, 0.25);
    speed = cap_speed;
    is_system = true;
} else {
    target_direction = 90;
}

// we dont want to slow down player being returned back to room by system
if (is_system) {
    exit;
}

var maxSpeed = 0.5;
var powerPercentage = 0;
var totalPower = 0;
for (var i = 0; i < instance_number(obj_engine_parent); i += 1)
{
    var engine = instance_find(obj_engine_parent, i);
    if (! engine.is_glued) {
        continue;
    }
    
    totalPower += engine.engine_power;
    var engineSpeed = maxSpeed * engine.engine_power / initial_cap_speed;
    var engineDirection = target_direction + engine.engine_angle;
    if (
        (is_on_left_border and engineDirection > 90)
        || (is_on_right_border and engineDirection < 90)
    ) {
        engineDirection = 90;   
    }
    motion_add(engineDirection, engineSpeed);
}

cap_speed = totalPower;
speed = cap_speed;
