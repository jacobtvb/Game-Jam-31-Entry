/// @function gamestate_flag_set(group, flag)
/// @description Sets a given flag to on.
/// @param {string} group
/// @param {string} flag

var _flags = ctrl_overmind.gamestate[? "flags"];
if (ds_list_find_index(_flags[? argument0], argument1) < 0)
    ds_list_add(_flags[? argument0], argument1);

