/// @description Click events
// This displays the search list results

if (live_call()) return live_result;

event_inherited();

//if (!room_script.blockButtonClick) {
	if (hovering) {//2	
		text_colour = c_black;
		image_index = 0;
		}//2
	else {//2
		text_colour = c_gray;
		text_colour = c_black;
		image_index = 1;
		}//2
  
	if (clicked) {
		// replace this with the method variables
		
		room_script.blockButtonClick = true;
		//searchfunction
		//searchfunction_show_vocab_search_result(room_script.display_list[card_index],room_script); // item number
		room_script.search_result_method();
	}

