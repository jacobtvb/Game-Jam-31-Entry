/// @function gamestate_flag_get(group,flag)
/// @description Checks whether a specific flag is on.
/// @param {string} group
/// @param {string} flag

var _flags = ctrl_overmind.gamestate[? "flags"];
return ds_list_find_index(_flags[? argument0], argument1) >= 0;
