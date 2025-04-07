/// @description catch keypresses
/// links the cursor, captures backspace, enter for search, paste
/// returns search_list, which can then be used to show the search results

// Stolen from: https://www.youtube.com/watch?v=PWRPCWf58nU


if (live_call()) return live_result;

if (string_count(chr(keyboard_key),enabled_keys) && (string_length( chr(keyboard_key) ) == 1) ){
	// left mouse button will trigger this
	blink = true;
	alarm[0] = blink_speed;
	
	if ( string_length(text) < string_length(model_string) ) {
		text += keyboard_lastchar;
		show_debug_message("text:" + text);
		search_box_text = text;
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
				room_script.display_list = search_for_word(text,room_script.word_list);
				// we are searching
				// create the seach result buttons
				search_create_result_buttons();
				}
			else {
				// reset the search				 
				// go back to displaying everything
				room_script.display_list = room_script.word_list;
				search_create_result_buttons();
				}
		break;
		
		//case vk_escape:

		//break;		
		default:
			show_debug_message(string(keyboard_key));
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
