event_inherited();

context = undefined;
// stack of command execution contexts
commands_stack = ds_stack_create();

// determines whether jumping from the current execution context
// will clear only the current execution context (true)
// or ancestor execution context (false)
jump_breaks_stack = ds_stack_create();

