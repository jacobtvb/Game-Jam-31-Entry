/// @function Process_call(branch,jumpBreak)
/// @description Pushes the specified branch from the process context to process commands.
///     After all these commands are processed, the current commands will resume their execution.
/// @param branch           The process branch to call.
/// @param jumpBreak        Whether jumping from this execution context will affect only this context or the ancestor.

var _branch;
if (is_string(argument0)) {
    // checking if the branch is a string first
    // because ds_exists, when given a string argument, treats it as 0, apparently...
    _branch = context[? argument0];
}
else if (ds_exists(argument0, ds_type_list)) {
    _branch = argument0;
} else {
    show_error("An execution branch must be either a list or a string.", true);
}

var _commands = ds_list_create();
ds_stack_push(commands_stack, _commands);
ds_stack_push(jump_breaks_stack, argument1);

// adding values directly instead of ds_list_copying
// because if branches were defined as JSON structures with list/map markers
// ds_list_copy could introduce some unexpected behaviour
var _count = ds_list_size(_branch);
for (var i = 0; i < _count; i++) {
    ds_list_add(_commands, _branch[| i]);    
}

