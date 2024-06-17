/// @description Insert description here

// FIXME - should be roomlist

//if (Init_Room_Vocab.blockButtonClick == false ) {
if (room_script.blockButtonClick == false ) {

// Inherit the parent event
	event_inherited();

// if the arrow is clicked
if (clicked)
	{ // 1
	//show_debug_message("Init_Room_Vocab.card_index" + string (Vocab0List.card_index) );
	layer_destroy_instances("vocab_layer");
	
		//if (btn_name == "ArrowDown" && Vocab0List.card_index <= (array_length(Vocab0List.display_list) - 1) ){//3
		if (btn_name == "ArrowDown" && room_script.card_index <= (array_length(room_script.display_list) - 1) ){//3
	    	// increment the card_index for the new words to display			
			room_script.card_index =  room_script.card_index + room_script.number_of_words;
			//Vocab0List.card_index =  Vocab0List.card_index + Vocab0List.number_words_shown;
			}//3
		//else if (btn_name == "ArrowUp" && Vocab0List.card_index > 0  ) {//3
		else if (btn_name == "ArrowUp" && room_script.card_index > 0  ) {//3
			// decrement the card_index for the old words to display			
			// if we get to the end of the list
			//if (Vocab0List.reached_list_end == true) {
			if (room_script.reached_list_end == true) {
				//Vocab0List.number_words_shown = 10;
				room_script.number_words_shown = room_script.max_words_to_display;
				}
			// subtract the extra words and the standar numner of cards.
			// eg if the total number of words = 24
			// then subtract 10 + 4 to get back to the previous screen of words			
			room_script.card_index =  room_script.card_index - room_script.number_words_shown;
			//Vocab0List.card_index =  Vocab0List.card_index - Vocab0List.number_words_shown;			
			}
	
	// This bit controls what happens when we get to the end of the 
	// list of words
	if ( room_script.reached_list_end == true &&  clicked == true ) {
	//if ( Vocab0List.reached_list_end == true &&  clicked == true ) {	
		// all of the subtraction is done as part of the ArrowUp button click
		// Vocab0List.reached_list_end = false;
		room_script.reached_list_end = false;
		}
		
	//else if ( array_length(room_script.word_list) - room_script.card_index < 10 && clicked == true ) {	
	else if ( array_length(room_script.display_list) - room_script.card_index < 10 && clicked == true ) {	
		// When reaching the end of the list by clicking the ArrowDown button
		// Display the correct number of words without freaking out		
		room_script.number_words_shown = (array_length(room_script.display_list) - room_script.card_index);
		//room_script.number_of_words = (array_length(room_script.word_list) - room_script.card_index);
		room_script.reached_list_end = true;
		}	
	else {
		// otherwise display the standard number of cards
		room_script.number_words_shown = room_script.max_words_to_display;
		}
	//show_debug_message("Init_Room_Vocab.card_index" + string (Vocab0List.card_index) );
	} //1
}
