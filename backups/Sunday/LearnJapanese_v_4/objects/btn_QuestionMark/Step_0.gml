/// @Btn_Label:Step

event_inherited();

// scale if the cursor is inside the button

if (hovering) {//2	
	 // window_set_cursor(cr_handpoint);
	 // get bigger if hovering	
	 image_xscale = 1.05;	 
	 image_yscale = 1.05;
	 
	 // get the name of the room, and the helptext.
     helptext_name = asset_get_index(global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 1]);
     // show the other sprite, over the help button instead of the cow.
     // 
	
	}//2
else {//2
	 //window_set_cursor(cr_arrow);
	 
	 image_xscale = 1.0;
	 image_yscale = 1.0;
 
	}//2

// display helpext from previous menu iitem
// 