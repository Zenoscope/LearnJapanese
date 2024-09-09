/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

// onScroll_up

if ( (room_script.current_line - room_script.display_lines ) > 0 ) { //need to be able to keep some of the text on the screen
	room_script.current_line--;
	room_script.display_string = function_join_string(room_script.current_line - ( room_script.display_lines - 1), room_script.display_lines ,room_script.grammar_string);
	}

