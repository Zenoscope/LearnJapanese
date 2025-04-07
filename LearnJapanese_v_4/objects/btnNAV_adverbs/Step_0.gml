/// @Description - btn_nav_parent

event_inherited();

if (hovering && !clicked) {//2		 	

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



