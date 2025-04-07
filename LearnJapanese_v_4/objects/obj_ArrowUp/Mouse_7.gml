/// @description Arrow_Up
// You can write your code in this editor
// FIXME - should be roomlist

if (room_script.blockButtonClick == false ) {
	//layer_destroy_instances("vocab_layer");
	
		if (btn_name == "ArrowDown" && room_script.current_scroll_clicks < room_script.max_scroll_clicks ){//3
	    	// increment the card_index for the new words to display
			room_script.current_scroll_clicks += 1;
			room_script.card_index =  room_script.card_index + room_script.number_words_shown;
			}//3		
		
		if (btn_name == "ArrowUp" && room_script.card_index > 0  ) {//3
			// decrement the card_index for the old words to display			
			// if we get to the start of the list
			
			room_script.current_scroll_clicks -= 1;
			
			if (room_script.reached_list_end == true) {
				room_script.number_words_shown = room_script.number_words_shown;
				}
				
			// subtract the extra words and the standar numner of cards.
			// eg if the total number of words = 24
			// then subtract 10 + 4 to get back to the previous screen of words			
			room_script.card_index =  room_script.card_index - room_script.number_words_shown;
			}
		
	// This bit controls what happens when we get to the end of the 
	// list of words
	//if ( room_script.reached_list_end == true &&  clicked == true ) {
	//	room_script.reached_list_end = false;
	//	}		
	//else 
	/*
	if ( array_length(room_script.display_list) -  (room_script.card_index + room_script.word_display_number)  <= 10 && clicked == true ) {	
		// When reaching the end of the list by clicking the ArrowDown button
		// Display the correct number of words without freaking out		
			room_script.number_words_shown = (array_length(room_script.display_list) - room_script.card_index);
			room_script.reached_list_end = true;
			}	
	else {
		// otherwise display the standard number of cards
		room_script.number_words_shown = room_script.max_words_to_display;
		}*/
}

