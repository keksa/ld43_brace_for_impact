var fromX = argument0;
var fromY = argument1;
var without = argument2;

var minDistance = 99999999;
var nearestEngine = noone;
for (var i = 0; i < instance_number(obj_engine_parent); i++) {
    var checkedEngine = instance_find(obj_engine_parent, i);
    if (! checkedEngine.is_glued) {
        continue;
    }
    
    if (without != noone and checkedEngine.id == without) {
        continue;
    }
    
    var pd = point_distance(fromX, fromY, checkedEngine.x, checkedEngine.y);
    if (pd < minDistance) {
        minDistance = pd;
        nearestEngine = checkedEngine;
    }
}

return nearestEngine;
