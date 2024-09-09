/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (mouse_wheel_up() ) {
		if ( (room_script.current_line - room_script.display_lines ) > 0 ) {	
			room_script.current_line--;
			room_script.display_string = function_join_string(room_script.current_line - ( room_script.display_lines - 1), room_script.display_lines ,room_script.grammar_string);		
		}
	}