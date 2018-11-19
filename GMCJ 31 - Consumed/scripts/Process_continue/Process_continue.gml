/// @function Process_continue()
/// @description Performs commands of the given process until the control is given to other controller or the commands end.

while (ControlRouter_isCurrent(id)) {
    if (ds_stack_empty(commands_stack)) {
        ControlRouter_pop();
        exit;
    }
    
    var _commands = ds_stack_top(commands_stack);
    if (ds_list_empty(_commands)) {
        ds_list_destroy(_commands);
        ds_stack_pop(commands_stack);
        ds_stack_pop(jump_breaks_stack);
        continue;
    }
    
    var _current_command = _commands[| 0];
    ds_list_delete(_commands, 0);
    Process_executeCommand(_current_command);
}

