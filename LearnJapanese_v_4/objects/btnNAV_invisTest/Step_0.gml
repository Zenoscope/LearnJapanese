/// @description Insert description here
// You can write your code in this editor
/// @Description - btn_nav_parent

if (live_call()) return live_result;

event_inherited();

if (hovering && visible == true ) {//2	
	// runs for all buttons.
	function_show_helptext(btn_name,global.tooltips,self);
	}
else {//2
	
	 if (global.show_helptext == true){
		global.show_helptext = false;	
		}
 } // end of "if hovering"

