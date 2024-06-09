/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

function_execute_script("scr_VocabList");

// change this so it's adjectives, verbs, nouns, adverbs, particles. 

switch (global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 2]){
		case "verb":
		//select Kanji mainly from the list
			ListDefault = "verb";
		break;
		case "adjective":
			//select Kanji mainly from the list
			ListDefault = "adjective";
		break;
		case "noun":
			//select Kanji mainly from the list
			ListDefault = "noun";
		break;
		case "adverb":
			//select Kanji mainly from the list
			ListDefault = "adverb";
		break;
			case "particle":
			//select Kanji mainly from the list
			ListDefault = "particle";
		break;
		}			

// the list default chooses the category of word
// eg kanji is #1, kanjilist is the array.
// kanji_list is the one from the grammarscript.
// field_name = 2 is field_4
field_list = ["field_4"];
word_list = function_add_to_WordBuilderArray(ListDefault,kanji_list,10,field_list);

reached_list_end = false;
number_words_shown = 10;
search = false;
found_something = false;

blockButtonClick = false;
