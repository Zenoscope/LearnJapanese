/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

/*
if (!is_undefined(room_script.search)) {
	// result list
	room_script.display_list = room_script.search_result_list;
	
	if (room_script.found_something) {
		room_script.found_something = false;
		}
	}
else {*/
	// if the search list is empty
	if (room_script.show_initial_words == true){
		room_script.display_list = room_script.word_list;
		}		
	else {
		room_script.display_list = [];
		}	
	//}

room_script.max_scroll_clicks = array_length(room_script.display_list) / room_script.number_words_shown;	
