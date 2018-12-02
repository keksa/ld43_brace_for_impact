var engineScore = ds_map_create();
engineScore[? "b_l"] = -99;
if (engines[? "b_l"] != undefined) {engineScore[? "b_l"] += 100;}
engineScore[? "b_m"] = -99;
if (engines[? "b_m"] != undefined) {engineScore[? "b_m"] += 100;}
engineScore[? "b_r"] = -99;
if (engines[? "b_r"] != undefined) {engineScore[? "b_r"] += 100;}
engineScore[? "t_l"] = -99;
if (engines[? "t_l"] != undefined) {engineScore[? "t_l"] += 100;}
engineScore[? "t_r"] = -99;
if (engines[? "t_r"] != undefined) {engineScore[? "t_r"] += 100;}

for (
    var key = ds_map_find_first(engines);
    ! is_undefined(key);
    key = ds_map_find_next(engines, key)
) {
  var engine = engines[? key];
  if (! engine.is_glued) {
    engineScore[? key] = -100;
    continue;
  }
  if (engineScore[? key] < 0) {
      continue;
  }
  
  if (engine.hp == 3) {
      engineScore[? key] = -100;
      continue;
  } else if (engine.hp == 2) {
      engineScore[? key] += 50;
  } else if (engine.hp == 1) {
      engineScore[? key] += 100;
  }
  
  engineScore[? key] += abs(engine.engine_angle);
}

var maxScore = -999;
var bestEngine = noone;
for (
    var key = ds_map_find_first(engineScore);
    ! is_undefined(key);
    key = ds_map_find_next(engineScore, key)
) {
  var eScore = engineScore[? key];
  if (eScore < 0) {
    continue;
  }
  if (eScore > maxScore) {
    maxScore = eScore;
    bestEngine = engines[? key];
  }
}

return bestEngine;

