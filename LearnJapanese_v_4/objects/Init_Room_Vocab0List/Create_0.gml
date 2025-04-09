/// @Vocab for hiragana/katakana/kanji
room_set_live(room, true);

// Init room variables
room_script = function_get_room_script_name(id);

//what to search

function_execute_script("scr_VocabList");
temp = global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 2]
switch (global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 2]){
		case "Kanji":		//select Kanji mainly from the list
			ListDefault = 1;		
		break;
		case "Hiragana":
			//select Kanji mainly from the list
			ListDefault = 2;			
		break;
		case "Katakana":
			//select Kanji mainly from the list
			ListDefault = 3;
		break;
		default:
			show_debug_message("ListDefault create error");
		break
		}			

max_words_to_display = 8;
number_words_shown = 0; // max_words_to_display;
field_list = ["field_4"];
// searches through the vocab and finds the vocab which matches 
// what we are searching for, eg kanji, hiragana etc
word_list = function_add_to_WordBuilderArray(ListDefault,kanji_list,field_list);
display_list = word_list;
show_initial_words = true;
//room_script.search = false;
//search_result_list