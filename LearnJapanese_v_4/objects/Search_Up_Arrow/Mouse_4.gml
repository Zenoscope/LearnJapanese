/// @description Insert description here
// You can write your code in this editor

// onScroll_Up
// It scrolls up, the first line gets deleted by removing the first line from the string
// Line 3 is then added to the end.

/*
var _current_line		= room_script.current_line;
var _num_display_lines	= room_script.num_display_lines;
var _total_lines		= room_script.total_lines;
var _display_string		= room_script.display_string;
var _grammar_string		= room_script.grammar_string;

if (_current_line > _num_display_lines) {
	// the string to delete
	var _delete_this_string = _grammar_string[_current_line];
	// delete the string into a temp string. Want to get the last characters.
	// string length of the display string.

	// + 1 to compensate for the new line
	var _temp_str = string_delete(_display_string, 
	 string_length(_display_string) - string_length(_delete_this_string), 
	 string_length(_delete_this_string) + 1 );
	

	// get the next string and add it to the start.
	//room_script.display_string = string_join("\n",_grammar_string[_current_line - _num_display_lines],_temp_str);
	room_script.display_string = string_join("\n",_grammar_string[_current_line - _num_display_lines],_temp_str);		
	// udate the "current line" variable
	room_script.current_line = _current_line - 1;	
	}
	*/
/*
if (_current_line < _total_lines) { //need to be able to keep some of the text on the screen
	// the string to delete
	// delete_this_string = string_join("\n",_grammar_string[_counter - 1],"");
	var delete_this_string = string_join("\n",_grammar_string[_current_line - ( _num_display_lines - 1) ],"");
	// delete the string into a temp string
	var temp_str = string_delete(_display_string, 1, string_length(delete_this_string));
	// get the next string and add it in.
	_current_line++;
	//room_script.display_string = string_insert(_grammar_string[_counter],temp_str, string_length(temp_str) );
	room_script.display_string = string_join("\n",temp_str,_grammar_string[_current_line]);
	room_script.current_line = _current_line;
	show_debug_message(room_script.display_string);
	}
*/

if (room_script.card_index > 0 ){
	show_debug_message("stop");
	room_script.card_index--;
	}
