/// @function json_save(path, map)
/// @description Saves a ds_map into a JSON file.
/// @param {string} path        The path of the file to write.
/// @param {ds_map} map         The map to save as a JSON.

var _path = argument0;
var _map = argument1;

var _contents = json_encode(_map);
file_write_all_text(_path, _contents);
