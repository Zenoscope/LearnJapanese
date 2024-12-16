/// @description Insert description here
// You can write your code in this editor

// Init_Room_VocabList (kanji and radicals) <   >

// change it so they all use the same script.
// run this from the room name instead of thescript name.

// event_inherited();

// Init room variables
room_script = function_get_room_script_name(id);

// initial card which is shown on the first card.
card_index = 0;

// generate an empty card array
card_array = [];

function_execute_script("scr_VocabList");

switch (global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 2]){
		case "Kanji":
		//select Kanji mainly from the list
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
		}			

// the list default chooses the category of word
// eg kanji is #1, kanjilist is the array.
// kanji_list is the one from the grammarscript.
// field_name = 2 is field_4
field_list = ["field_4"];
// searches through the vocab and finds the vocab which matches 
// what we are searching for, eg kanji, hiragana etc
word_list = function_add_to_WordBuilderArray(ListDefault,kanji_list,10,field_list);

reached_list_end = false;
max_words_to_display = 10;
number_words_shown = max_words_to_display;
search = false;
found_something = false;

blockButtonClick = false;

current_scroll_clicks = 0;
current_scroll_clicks = 1;
reached_list_end = false;