/// @Btn_Label:scale witn no label

event_inherited();

// scale if the cursor is inside the button

if (hovering) {//2	
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
