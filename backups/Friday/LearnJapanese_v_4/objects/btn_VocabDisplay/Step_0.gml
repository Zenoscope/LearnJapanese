/// @description Click events
// This displays the search list results

if (!room_script.blockButtonClick) {
	
	event_inherited();
	
	// this scaling is custom to this button, 
	// so it can't be inherited.
	if (hovering) {//2	
		//window_set_cursor(cr_handpoint);
		// get bigger if hovering	
		image_xscale = 3.05;	 
		image_yscale = 0.8;
 
		// moves it up because otherwise they overlap too much
		x = x_origin - 10;
		y = y_origin -10;
		}//2
	else {//2
		//window_set_cursor(cr_arrow);
	 
		x = x_origin;
		y = y_origin;
	 
		image_xscale = 3;
		image_yscale = 0.7;
		}//2

    /*
	if (clicked) {
		// set the buttonClick to be true.
		room_script.blockButtonClick = true;
		// show the search result
		
		// release 3
		//function_show_vocab_search_result(room_script.display_list[card_index],room_script); // item number		
	}
	*/
	
}

else {
		image_xscale = 3;
		image_yscale = 0.7;	
	}