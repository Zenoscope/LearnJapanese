/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

if (search) {
	//display_list = init_Dialog_Search.search_list;
	display_list = room_script.search_list;
	
	if (found_something) {
		layer_destroy_instances("vocab_layer");
		found_something = false;
		}
	}
//else {
//	display_list = word_list;
//	}
