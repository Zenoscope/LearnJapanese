// @description draw the found words
// 



// if the words left in the array is smaller than the 
// number of t be words shown on screen...

if ( room_script.current_scroll_clicks == room_script.max_scroll_clicks ){
	// rename to stop scrolling
	room_script.reached_list_end = true;
	}
else {
	room_script.reached_list_end = false;
	}
