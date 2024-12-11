/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

//------------------
if (room_script.search == true) {
	// result list
	room_script.display_list = room_script.search_result_list;
	
	if (room_script.found_something) {
		room_script.found_something = false;
		}
	}
	
//------------------
else {
	// if the search list is empty
	if (room_script.show_initial_words == true){
		// just displayeverything
		room_script.display_list = room_script.word_list;
		spr_height = self.sprite_height;
		// this shows the background, search results etc.
		search_create_result_buttons(spr_height);
		}		
	else {
		room_script.display_list = [];
		}	
	}

room_script.max_scroll_clicks = array_length(room_script.display_list) / room_script.number_words_shown;	
