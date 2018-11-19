/// @function Process_jump(branch)
/// @description Interrupts a current execution flow and jumps to a given branch.
/// @param branch       The branch to jump to.

// clears the execution contexts up to the topmost jump breaking context
do {
    ds_list_destroy(ds_stack_pop(commands_stack));
} until (ds_stack_pop(jump_breaks_stack));

// begins execution of the next branch
Process_call(argument0, true);

