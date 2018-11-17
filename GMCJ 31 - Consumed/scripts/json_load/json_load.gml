/// @function json_load(path)
/// @description Reads a JSON file into a ds_map.
/// @param {string} path        The path of the file to read.

var _path = argument0;
var _contents = file_read_all_text(_path);
if (_contents == undefined)
    return -1;

return json_decode(_contents);
