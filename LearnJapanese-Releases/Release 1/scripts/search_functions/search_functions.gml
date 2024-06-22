/// DESCRIPTION: Search for items in an array, and return an array of matches.
///  
/// USAGE:
/// search_for_word( Search text , Array to search)
///
/// RETURNS: Matching for items as a list
///
/// @param text - text to search for
/// @param search_array - array to search

function search_for_word(text,search_array) {
	
	var local_search_list = [];
	var counter = 0;
	var search_result_count = 0;
	while (counter  < array_length(search_array) ) {		
		// loop through each element in the array
		// if it matches, add it to the search list array
		if ( string_count(text,search_array[counter] ) > 0) {
				array_push(local_search_list,search_array[counter]);
				search_result_count++;
				}
			counter++;
			}
				
	if (search_result_count == 0) { 
			show_debug_message("search result: no matches");
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
	
	instance_create_layer(xloc, yloc, "DialogBox", dlg_VocabWordDisplay,{
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

