/// @function gamestate_checkpoint_load()
/// @description Loads the last state saved at checkpoint.

ds_map_destroy(ctrl_overmind.gamestate);
ctrl_overmind.gamestate = json_load("gamestate.json");

navigation_do();

