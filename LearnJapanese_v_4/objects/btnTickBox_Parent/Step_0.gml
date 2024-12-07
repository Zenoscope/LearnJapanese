// btn_Tickbox

hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)) 
{
	clicked = true;
} 

if (mouse_check_button_released(mb_left)) 
{
	clicked = false;
} 

if (clicked)
{
    //show_debug_message("you ticked " + btn_name);
	//show_debug_message("Going to room " + btn_name);
	function_tickbox_actions(btn_name,room_script.tick_state);
} 

else if (hovering) {//2	
	 //window_set_cursor(cr_handpoint);
	 // get bigger if hovering	
	 image_xscale = 1.05;	 
	 image_yscale = 1.05;
	}//2
else {//2
	 //window_set_cursor(cr_arrow);
	 
	 image_xscale = 1.0;
	 image_yscale = 1.0;
	}//2
