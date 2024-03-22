/// @description show search results

// if not searching, then the display list is the actual word list.
// *I could avoid this (ans storing the arrays) but it might get confusing...
//if (btn_Search.search == false){	
//	}
// otherswise it's the search results.

if (search) {
	// result list
	display_list = room_script.search_result_list;
	
	if (found_something) {
		layer_destroy_instances("vocab_layer");
		found_something = false;
		}
	}
else {
	display_list = word_list;
	}