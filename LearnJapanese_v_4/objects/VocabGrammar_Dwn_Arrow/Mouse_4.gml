/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

// onScroll_Down

if (room_script.current_line < room_script.total_lines) { //need to be able to keep some of the text on the screen
	show_debug_message(string(room_script.current_line));
	show_debug_message(string(room_script.total_lines));	
	room_script.current_line++;
	room_script.display_string = function_join_string(room_script.current_line - ( room_script.max_words_to_display - 1), room_script.max_words_to_display ,room_script.grammar_string);
	}

	