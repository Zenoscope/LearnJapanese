/// @description Insert description here
// You can write your code in this editor

// onScroll_Down
// It scrolls down, the top line gets deleted by removing FirstLine.string_length() characters from the string.
// firstline = line1, then when moved up, line1 is deleted, firstline becomes line2.
// Line 3 is then added to the end.
// current line:

var _current_line		= room_script.current_line;
var _num_display_lines	= room_script.num_display_lines;
var _total_lines		= room_script.total_lines;
var _display_string		= room_script.display_string;
var _grammar_string		= room_script.grammar_string;

if (_current_line < _total_lines) { //need to be able to keep some of the text on the screen
	// the string to delete
	// delete_this_string = string_join("\n",_grammar_string[_counter - 1],"");
	var delete_this_string = string_join("",_grammar_string[_current_line - ( _num_display_lines - 1) ],"");
	// delete the string into a temp string
	var temp_str = string_delete(_display_string, 1, string_length(delete_this_string) + 1);
	// get the next string and add it in.
	_current_line++;
	room_script.display_string = string_join("\n",temp_str,_grammar_string[_current_line]);
	room_script.current_line = _current_line;
	show_debug_message("+" + room_script.display_string + "+");
	}
