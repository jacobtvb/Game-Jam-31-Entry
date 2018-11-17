/// @function file_write_all_text(path, text)
/// @description Creates or replaces a file with a given text.
/// @param {string} path        The path of the file to write to.
/// @param {string} text        The text to write in the file.

var _path = argument0;
var _text = argument1;

var _buffer = buffer_create(1, buffer_grow, 1);
buffer_write(_buffer, buffer_string, _text);
buffer_save(_buffer, _path);
buffer_delete(_buffer);
