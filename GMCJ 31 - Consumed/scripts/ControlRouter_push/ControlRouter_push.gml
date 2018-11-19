/// @function ControlRouter_push(controller,resumption)
/// @description Pushes an input controller to the control router stack.
/// @param controller       The new controller to route the control to.
/// @param resumption       The callback to invoke from the current controller
///                             once the newly added controller is popped.

var _controller = argument[0];
var _resumption = argument_count > 1 ? argument[1] : undefined;

if (!object_is_ancestor(_controller.object_index, par_InputController)) {
    show_error("Control router can only accept input controllers.", true);
}

with (ctrl_ControlRouter) {
    _controller.parent = ds_stack_top(control_stack);
    ds_stack_push(control_stack, _controller);
    ds_stack_push(resumption_stack, _resumption);
}
