/// @description Insert description here
// You can write your code in this editor

array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));			
room_script.title_string = "Sentence constructor";

room_script.grammar_string[1] = "Choose the type of sentence you want to make.";
room_script.grammar_string[2] = "Use the dropdowns to add in the appropriate nouns and verbs.";

room_script.tltal_lines = 2;
room_script.current_line=2;
room_script.max_words_to_display = 2;

room_script.display_string = function_join_string(room_script.current_line - ( room_script.max_words_to_display - 1), room_script.max_words_to_display ,room_script.grammar_string);
