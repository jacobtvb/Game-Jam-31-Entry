// when control stack is forcibly closed
// no resumption actions are taken!

disable_resumption = true;
while (!ds_stack_empty(control_stack)) {
    ControlRouter_pop();
}
disable_resumption = false;

