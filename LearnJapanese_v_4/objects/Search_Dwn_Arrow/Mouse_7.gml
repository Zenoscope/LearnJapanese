if (room_script.card_index < array_length(room_script.word_list) - room_script.max_words_to_display) {
		show_debug_message("room_script.card_index:" + string(room_script.card_index));
		room_script.card_index++;
		
		//needs to update the button contents here, I've probably written this already.
		// also what happens when there are fewer things listed, I've definately written this before.
		
		search_create_result_buttons();
		
		}
