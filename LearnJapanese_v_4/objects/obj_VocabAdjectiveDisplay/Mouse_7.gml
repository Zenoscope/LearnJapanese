/// @description Insert description here

// destroy the dialog box

show_debug_message("destroying the dialog");

layer_destroy("DialogBox");
layer_destroy("verbTable");


if ( !layer_exists("DialogBox") ) {
	instance_activate_layer("Search");
	search_create_result_buttons();
	}
