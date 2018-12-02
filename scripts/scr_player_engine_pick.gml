// first clear the toss state for all engines
for (
    var key = ds_map_find_first(engines);
    ! is_undefined(key);
    key = ds_map_find_next(engines, key)
) {
  var engine = engines[? key];
  engine.is_selected_for_tossing = false;
}

var engineToToss = scr_find_engine_for_tossing();
if (engineToToss != noone) {
    engineToToss.is_selected_for_tossing = true;
}

