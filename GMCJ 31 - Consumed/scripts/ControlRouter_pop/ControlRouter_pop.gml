/// @function ControlRouter_pop(value)
/// @description Pops the current input controller and gives control back to the parent controller.
/// @param value            The value to pass to the resumption delegate invoked by the parent controller.

var _value = argument_count > 0 ? argument[0] : undefined;

with (ctrl_ControlRouter) {
    var _parent = ds_stack_top(control_stack).parent;
    with (ds_stack_pop(control_stack)) {
        instance_destroy();
    }
    
    var _resumption = ds_stack_pop(resumption_stack);
    if (!disable_resumption && _resumption != undefined) {
        with (_parent) {
            script_execute(_resumption, _value);
        }
    }
}

