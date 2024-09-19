/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (mouse_wheel_up() ) {
		if ( (room_script.current_line - room_script.max_words_to_display ) > 0 ) {	
			room_script.current_line--;
			room_script.display_string = function_join_string(room_script.current_line - ( room_script.max_words_to_display - 1), room_script.max_words_to_display ,room_script.grammar_string);		
		}
	}