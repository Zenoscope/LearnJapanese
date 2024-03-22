/// @description Insert description here
// You can write your code in this editor
/// @Description - btn_nav_parent

//if the layer


if (hovering && self.visible == true) {//2	
	
	show_debug_message("weeeeeeeee");
	
	image_xscale = 1.05;
	image_yscale = 1.05;
	 
	
	try {
		function_show_helptext(btn_name,_tooltips,self);
		}
	catch( _exception) {
		show_debug_message(" function doesn't exist?");
		}
	
	 global.show_helptext = true;
	 
	}//2
else {//2
 
	 if (global.show_helptext == true){
		global.show_helptext = false;	
		}
	
	image_xscale = 1;
	image_yscale = 1;
	 
	
	}//2	

