/// @description catch keypresses
/// links the cursor, captures backspace, enter for search, paste
/// returns search_list, which can then be used to show the search results

// Stolen from: https://www.youtube.com/watch?v=PWRPCWf58nU

if (string_count(chr(keyboard_key),enabled_keys) && (string_length( chr(keyboard_key) ) == 1) ){
	// left mouse button will trigger this
	blink = true;
	alarm[0] = blink_speed;
	
	if ( string_length(text) < string_length(model_string) ) {
		text += keyboard_lastchar;
		}
	
	} 

// capture backspace key
if (!keyboard_check(vk_control)) {
	switch(keyboard_key) {
		case vk_backspace:
			text = string_copy(text,0,string_length(text) - 1);
		break;
		
		case vk_enter:
			// run the search
			// remove the previous search results
			// display is in the room, but probably should be here
			if (string_length(text) > 0 ) {
				room_script.search_result_list = search_for_word(text,room_script.word_list);
				room_script.search = true;
				}
			else {
				 // reset the search
				room_script.search = false; //?
				room_script.search_result_list = room_script.display_list;
				}
		break;
		
		default:
		break;		
		}	
	}
// paste
else {
	switch(keyboard_key){
		case ord("V"):
			text += clipboard_get_text();
		break;
		
		default: 
		break;
		}
	}