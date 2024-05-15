/// @description Object Game
//camera_set_view_pos(view_camera[0], x, y);

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
    //show_debug_message("you clicked " + btn_name);
	//show_debug_message("Going to room " + btn_name);
	function_click_NAV_button(btn_name);
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
