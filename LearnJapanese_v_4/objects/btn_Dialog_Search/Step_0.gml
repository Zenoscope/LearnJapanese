/// @description Insert description here
// You can write your code in this editor
if (room_script.search) {
	// result list
	room_script.display_list = room_script.search_result_list;
	
	if (room_script.found_something) {
		layer_destroy_instances("vocab_layer");
		room_script.found_something = false;
		}
	}
else {
	room_script.display_list = room_script.word_list;
	}

room_script.max_scroll_clicks = array_length(room_script.display_list) / room_script.number_words_shown;	
