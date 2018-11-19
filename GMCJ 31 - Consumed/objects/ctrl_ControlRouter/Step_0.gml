with (ds_stack_top(control_stack)) {
    // pre-input processing
    event_user(0);
    // input processing - might change the control stack
    event_user(1);
}

with (ds_stack_top(control_stack)) {
    // post-input processing
    // in separate with clause, in case the control stack was changed
    event_user(2);
}

