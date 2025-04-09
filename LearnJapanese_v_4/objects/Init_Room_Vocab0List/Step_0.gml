/// @description show search results

// move these to the objects

/*
room_set_live(room, true);
// if not searching, then the display list is the actual word list.
// *I could avoid this (ans storing the arrays) but it might get confusing... 
//if (btn_Search.search == false){	
//	}
// otherswise it's the search results.
// can this be moved?
if (search) {
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

//room_script.max_scroll_clicks = array_length(room_script.display_list) / room_script.number_words_shown;	
*/