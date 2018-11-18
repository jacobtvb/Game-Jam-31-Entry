/// @function navigation_do()
/// @description Performs the navigation based on the current game state.

var _room = gamestate_get("spawn_room");
room_goto(asset_get_index(_room));

//wait 2 steps for all objects to be created and initialize before creating the grid
global.controls.gridScheduleTimer = 2;