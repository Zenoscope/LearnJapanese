if (room_script.card_index < array_length(room_script.word_list) - room_script.max_words_to_display) {
		show_debug_message("stop");
		room_script.card_index++;
		}

