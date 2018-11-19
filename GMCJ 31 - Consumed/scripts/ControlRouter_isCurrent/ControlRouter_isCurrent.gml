/// @function ControlRouter_isCurrent(controller)
/// @description Checks if the given controller is currently running.
/// @param controller The controller to check.

var _controller = argument0;

with (ctrl_ControlRouter) {
    return _controller == ds_stack_top(control_stack);
}

