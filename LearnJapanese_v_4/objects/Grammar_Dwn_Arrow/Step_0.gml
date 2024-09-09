/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if ( mouse_wheel_down() ) {
	if (room_script.current_line < room_script.total_lines ) {	
			room_script.current_line++;
			room_script.display_string = function_join_string(room_script.current_line - ( room_script.display_lines - 1), room_script.display_lines ,room_script.grammar_string);
		}
	}