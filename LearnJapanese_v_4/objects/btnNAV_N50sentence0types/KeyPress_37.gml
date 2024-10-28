/// @description Insert description here
// You can write your code in this editor

// just a list of sentence examples.
array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));

room_script.grammar_string ="";
room_script.title_string = "Sentence examples";			

room_script.grammar_string[1] = "Japanese sentences follow subject object verb";

room_script.total_lines = 52; // total lines in the array
room_script.current_line = 10; // current last line to display
room_script.max_words_to_display = 10; //max lines to display on the screen 

room_script.display_string = function_join_string(room_script.current_line - ( room_script.max_words_to_display - 1), room_script.max_words_to_display ,room_script.grammar_string);

instance_activate_layer("Arrow_Buttons");
