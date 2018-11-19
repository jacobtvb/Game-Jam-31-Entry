/// @function Process_begin(context,branch,resumption)
/// @description Launches a process from the given context and starting at a given branch.
/// @param context      The context containing the branches definition.
/// @param branch       The initial branch to start the process from.
/// @param resumption   The resumption script to execute after finishing the process.

var _context = argument[0];
var _branch = argument[1];
var _resumption = argument_count > 2 ? argument[2] : undefined;

with (instance_create_depth(0, 0, 0, ctrl_Process)) {
    context = _context;
    if (!ds_map_exists(context, _branch)) {
        show_error("Cannot find branch with a name " + _branch + ". Oh well.", true);
    }
    
    Process_call(_branch, true);
    ControlRouter_push(id, _resumption);
    Process_continue();
}

