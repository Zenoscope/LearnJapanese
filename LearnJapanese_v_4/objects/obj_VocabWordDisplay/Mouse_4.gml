/// @description Insert description here

// destroy the dialog box

show_debug_message("destroying the dialog");

layer_destroy("DialogBox");

// enable the layers again
// but not all of them, because some of them should be deactivated.
// and there is no way to determine which layers *are* active or not 

//instance_activate_layer("vocab_layer");
instance_activate_layer("Search");

// reset the search as well.
// FIXME reset search