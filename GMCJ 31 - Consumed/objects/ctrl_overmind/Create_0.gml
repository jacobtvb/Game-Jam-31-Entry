/// Definitions

global.roomGridId = noone;
global.controls = self;
global.roomFloatGridId = noone;

gridScheduleTimer = 0;

gamestate = json_load("gamestate.json");

/*
ingame_rooms = ds_list_create_from_array([
    rm_vil1, rm_vil2, rm_vil3, rm_vil4, rm_vil5, rm_vil6,
    rm_vilr1, rm_vilr2, rm_vilL1, rm_vilL2,
    rm_gardens1, rm_gardens2, rm_gardens3, rm_gardens4,
    rm_gardens5, rm_gardens6,
    rm_test
    ]);

current_bgm = undefined;
bgm_instance = undefined;
next_bgm = undefined;

bgm_set = ds_map_create();
bgm_set[? rm_vil1] = bgm_village;
bgm_set[? rm_vil2] = bgm_village;
bgm_set[? rm_vil3] = bgm_village;
bgm_set[? rm_vil4] = bgm_village;
bgm_set[? rm_vil5] = bgm_village;
bgm_set[? rm_vil6] = bgm_village;

bgm_set[? rm_vilr1] = bgm_village;
bgm_set[? rm_vilr2] = bgm_village;
bgm_set[? rm_vilL1] = bgm_village;
bgm_set[? rm_vilL2] = bgm_village;

bgm_set[? rm_gardens1] = bgm_garden;
bgm_set[? rm_gardens2] = bgm_garden;
bgm_set[? rm_gardens3] = bgm_garden;
bgm_set[? rm_gardens4] = bgm_garden;
bgm_set[? rm_gardens5] = bgm_garden;
bgm_set[? rm_gardens6] = undefined;

bgm_set[? rm_test] = undefined;
*/
