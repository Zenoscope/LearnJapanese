/// @Description - btn_nav_parent

event_inherited();

if (hovering) {//2	
	 	

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

