var _arr = array_create(ds_list_size(argument0));

for (var i = 0; i < ds_list_size(argument0); i++)
{
    _arr[i] = argument0[| i];
}

return _arr;
