/// @description mouse actions

// Inherit the parent event
// event_inherited();

hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering) { 
	show_debug_message("Hovering");
	}

/*
if (hovering && mouse_check_button_pressed(mb_left)) 
	{
	clicked = true;
	show_debug_message("click recieved");
	layer_destroy("DialogBox");
	room_script.blockButtonClick = false;
	}
*/
/*
if (mouse_check_button_pressed(mb_left)){
	show_debug_message("click no hover");
	//layer_create(-100,"Helptext");
	layer_destroy_instances("DialogBox");
	}
*/
/*
if (clicked) {
	show_debug_message("killing dialog - click");
	}
*/