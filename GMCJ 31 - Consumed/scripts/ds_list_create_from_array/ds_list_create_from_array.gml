/// @function ds_list_create_from_array(array)
/// @description Creates a list from an array.
/// @param {array} array

var _arr = argument0;

var _result = ds_list_create();
for (var i = 0; i < array_length_1d(_arr); i++)
    ds_list_add(_result, _arr[i]);
    
return _result;

