/// @description Insert description here
// You can write your code in this editor
/// @Description - btn_nav_parent

hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)) 
	{
	clicked = true;
	}

if (mouse_check_button_released(mb_left)) 
	{
	clicked = false;	
	}


if (hovering) {//2	
	 	
	if (btn_name == "?") {
		btn_name = room_get_name(room);
		}
	
	// runs for all buttons.
	function_show_helptext(btn_name,global.tooltips,self);

   if (btn_name == "back") { 
			//show_debug_message("hovering over back button");
			}
	else if (btn_name == "quit0game") {
			//show_debug_message("hovering over quit button");
			}
	  
	else {
		function_play_cow_narrator();
		}	
	 global.show_helptext = true;	 
	 //	}//2
	}
	
else {//2
	
	 if (global.show_helptext == true){
		global.show_helptext = false;	
		}
	 	
 } // end of "if hovering"

if (clicked) {
	function_click_NAV_button(btn_name);
	}

