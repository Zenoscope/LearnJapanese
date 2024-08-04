/*
Notes:
 button Dialog_Search: 
	click on it and then it does the search
 btn_VocabDisplay:
	displays the results
	
dlg_VocabWordDisplay:
 deletes the 

Make stuff more portable:
Room_Init scripts should set variables to be used in the room,
 eg searching for Kanji or whatever.
Objects set methods and variables used in the stuff.



**********************************
***  variables needed by the search functions
**********************************
// field which is being searched, needs to be the column name
field_list = ["field_4"];
// what we are searching for, eg kanji, hiragana etc
// adds the stuff to the array.
word_list = function_add_to_WordBuilderArray(ListDefault,kanji_list,field_list);
// max number of hits to display
max_words_to_display = 10;
number_words_shown = room_script.max_words_to_display;
room_script.card_index
*/


/// DESCRIPTION: Search for items in an array, and return an array of matches.
///  
/// USAGE:
/// search_for_word( Search text , Array to search)
///
/// RETURNS: Matching for items as a list
///
/// @param text - text to search for
/// @param search_array - array to search

// FIXME this function is very simailar to the 
// function_add_to_WordBuilderArray function
// eg is searches for a match in a column and returns the match.
// if I could not hardcode the columns, this could be reused.

function search_for_word(text,search_array) {
	
	var local_search_list = [];
	var counter = 0;
	var search_result_count = 0;
	
	text = string_lower(text);
	
	// search through the whole array
	while (counter  < array_length(search_array) ) {		
		// loop through each element in the array
		// if it matches, add it to the search list array
		//search_string = string_lower(search_array[counter].kanji + " " + search_array[counter].meaning  + "" + search_array[counter].field_2)
		search_string = string_lower(search_array[counter].kanji + " " + search_array[counter].meaning  + "" + search_array[counter].field_2)
		
		//if ( string_count(text,search_array[counter] ) > 0) {
		if ( string_count(text,search_string ) > 0) {
				array_push(local_search_list,search_array[counter]);
				search_result_count++;
				}
			counter++;
			}
				
	if (search_result_count == 0) { 
			//show_debug_message("search result: no matches");
			room_script.found_something = false;
			// maybe display "no match found" instead of the search text
			}
	else {
		room_script.found_something = true;
		return local_search_list;
		}
}

/// DESCRIPTION: Spawns a dlg_VocabWordDisplay instance
/// 
/// USAGE:
/// function_show_vocab_search_result(word_list_item)
///
/// RETURNS:
/// nuthin
/// @param word_list_item item from the wordlist
/// @param roomScript roomScript

function function_show_vocab_search_result(word_list_item,roomScript) {
	xloc = 100;
	yloc = 100;
	
	instance_create_layer(xloc, yloc, "DialogBox", _VocabWordDisplay,{
			// word_list_item refers to the specific item, rather than the whole array.
			// index is used to get the index number for displaying the image
				card_index	:   word_list_item.index,
				kanji	:	word_list_item.kanji,
				meaning	:	word_list_item.meaning,
				romanji	:	word_list_item.romanji,
				example	:	word_list_item.examples,
				kana	:	word_list_item.field_2,
				type	:	word_list_item.field_1,
				room_script: roomScript
				})
	 
}

