/// @function cbk_execute(callback,prefix,params...)
/// @description Executes a script in the callback definition, using the callback definition, script name prefix and parameters.
/// @param callback     The callback definition.
/// @param prefix       The prefix for script name, if needed.

var _callback = argument[0];
var _prefix = argument_count > 1 ? argument[1] : "";

var _script = asset_get(_callback[? "!"], _prefix, asset_script, "script");
if (_script == undefined)
    return undefined;

switch (argument_count) {
    case 1:
    case 2:
        return script_execute(_script, _callback);
    case 3:
        return script_execute(_script, _callback, argument[2]);
    case 4:
        return script_execute(_script, _callback, argument[2], argument[3]);
    case 5:
        return script_execute(_script, _callback, argument[2], argument[3], argument[4]);
    case 6:
        return script_execute(_script, _callback, argument[2], argument[3], argument[4], argument[5]);
    case 7:
        return script_execute(_script, _callback, argument[2], argument[3], argument[4], argument[5], argument[6]);
    case 8:
        return script_execute(_script, _callback, argument[2], argument[3], argument[4], argument[5], argument[6], argument[7]);
    // add as needed
    default:
        show_error("Unsupported number of callback parameters: " + string(argument_count) + ". Expand cbk_execute to handle this number.", true);
        break;
}

