/// @function gamestate_checkpoint_save()
/// @description Saves the current state for checkpoint.

// various recovery stuff
// gamestate_set("player_hp", obj_player.hpMax);

// saving the current location
gamestate_set("spawn_room", room_get_name(room));
gamestate_set("spawn_point", o_checkpoint.link_id);
gamestate_set("spawn_xoffset", o_player.x - o_checkpoint.x);
gamestate_set("spawn_yoffset", o_player.y - o_checkpoint.y);

json_save("gamestate.json", ctrl_overmind.gamestate);
