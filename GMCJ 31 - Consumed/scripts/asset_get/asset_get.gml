/// @function asset_get(id,prefix,type,typeName)
/// @description Returns an asset id of specific id or name, and validates its type. Returns undefined when given undefined.
/// @param id           The numeric or string id of the asset.
/// @param prefix       The prefix to use when resolving asset by name.
/// @param type         The type of the asset to validate.
/// @param typeName     The name of the asset to use in error messages.

var _id = argument0;
var _prefix = argument1;
var _type = argument2;
var _type_name = argument3;

if (_id == undefined)
    return undefined;
    
if (is_string(_id)) {
    var _asset_name = _prefix + _id;
    if (asset_get_type(_asset_name) != _type)
        show_error("Unknown "  + _type_name + " '"  + _asset_name + "'.", true);

    return asset_get_index(_asset_name);
}
else {
    return _id;
}
