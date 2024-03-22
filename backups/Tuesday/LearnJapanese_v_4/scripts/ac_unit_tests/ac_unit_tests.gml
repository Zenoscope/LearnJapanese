function ac_unit_tests() {
	// Place Unit Tests Here
	// Functions Available:
	//    ac_assert_true(test, description);
	//    ac_assert_false(test, description);
	//    ac_assert_equal(expected, actual, description);

	// Example Unit Tests

/*	repeat(10)
	{
		ac_assert_true(true, "true = true");
		ac_assert_true(false, "false = true");
		ac_assert_false(true, "true = false");
		ac_assert_false(false, "false = false");
		ac_assert_equal(false, true, "Does " + string(false) + " = " + string(true));
		ac_assert_equal(true, true, "1=true, 2=true");
		ac_assert_equal(2+1, 4, "2 + 1 = 4");
		ac_assert_equal(false, true, "description");
	}*/
	
	
	// Missing Vocab
	show_debug_message("room name" + string(room_get_name(room)));
	//function_add_remove_vocab(room_get_name(room));
	
	
	// kanji radicals
	/*
	function_execute_script("scr_KanjiRadicals");
	ac_assert_equal(array_length(kanji_radicals_list) != 0 , array_length(kanji_radicals_list) > 0, "Radicals Array length ");
	ac_show_message("kanji_radicals_list" + string(kanji_radicals_list));
	*/
	//show_debug_message("kanji_radicals_list" + string(kanji_radicals_list));
}
