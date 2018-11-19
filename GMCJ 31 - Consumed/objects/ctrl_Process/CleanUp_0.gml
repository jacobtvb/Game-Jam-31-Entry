while (!ds_stack_empty(commands_stack)) {
    ds_list_destroy(ds_stack_pop(commands_stack));
}

ds_stack_destroy(commands_stack);
ds_stack_destroy(jump_breaks_stack);

