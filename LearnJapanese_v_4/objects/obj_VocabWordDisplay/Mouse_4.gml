/// @description Insert description here

// destroy the dialog box

show_debug_message("destroying the dialog");

layer_destroy("DialogBox");

// enable the layers again
// but not all of them, because some of them should be deactivated.
// and there is no way to determine which layers *are* active or not 
function reactivate_layers(){
var a = layer_get_all();
for (var i = 0; i < array_length(a); i++;)
	{
    instance_activate_layer(a[i]);
	}
}
