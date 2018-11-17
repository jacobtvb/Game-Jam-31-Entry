/// @function navigation_do()
/// @description Performs the navigation based on the current game state.

var _room = gamestate_get("spawn_room");
room_goto(asset_get_index(_room));
