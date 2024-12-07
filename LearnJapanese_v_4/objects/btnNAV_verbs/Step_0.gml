/// @description Insert description here
// You can write your code in this editor

/// @Description - btn_nav_parent

event_inherited();

if (hovering && hideTipOnClick == 0) {//2		 	
	
	//show_debug_message("hideTipOnClick false"); 
	// runs for all buttons.
	
	function_show_helptext(btn_name,global.tooltips,self);
	function_play_cow_narrator();
	global.show_helptext = true;	 
	}
	
else {//2
	
	 if (global.show_helptext == true){
		global.show_helptext = false;	
		}
	 	
 } // end of "if hovering"

if (clicked) {
	function_click_NAV_button(btn_name);
	hideTipOnClick = true;
	
	//show_debug_message("hideTipOnClick true = " + string(hideTipOnClick)); 
	
	}

if (hideTipOnClick == true){
	layer_destroy("helptext");
	}

//show_debug_message("hideTipOnClick: " + string(hideTipOnClick)); 
