/// @function gamestate_checkpoint_save()
/// @description Saves the current state for checkpoint.

gamestate_set("player_hp", obj_player.hpMax);
gamestate_set("shrine_room", room_get_name(room));
gamestate_set("shrine_spawn", "!shrine");
gamestate_set("shrine_xoffset", obj_player.x - obj_shrineInfo.x);
gamestate_set("shrine_yoffset", obj_player.y - obj_shrineInfo.y);

json_save("gamestate.json", ctrl_overmind.gamestate);
