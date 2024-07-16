/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

/// @Description - btn_nav_parent

event_inherited();

if (hovering){
	 	// runs for all buttons.
		function_show_helptext(btn_name,global.tooltips,self); 
	}	
else  {//2
	
	 if (global.show_helptext == true ){
		global.show_helptext = false;	
		}
	 	
 } // end of "if hovering"

