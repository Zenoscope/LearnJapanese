/// @description draw the cards

// START
// draw the squares for the answer:

// 0) remove the old word from the list
// 1) ransdomly get a new one
// 1) get the number of characters in the word, add to this array
// 2) draw the boxes for the characters

// draw the square for the question
// 1) add a new array.
// 1) get the number of characters in the word, add to array
// 2) add two random characters from same charset (hiragana etc)
// 3) jumble them up
// 4) create draggable card instances
// 5) show on cardfaces

// if the word as been completed, then generate a new word.
if (match_count == length_of_string) { //1

	show_word = true;
	
	// get a random word from the array
	selected_index = random(array_length(WordBuilderArray) -1 );
	selected_word = WordBuilderArray[selected_index];
	
	show_debug_message("Selected_word = " + string(selected_word) );
	
	length_of_string = string_length(selected_word.kanji);
	
	// delete all of the instances, clear the screen to make it anew
	object = asset_get_index("btn_Flipcard");
	instance_destroy(object);
	object = asset_get_index("btn_DragSymbol_Character");
	instance_destroy(object);
	
	//blank the arrays
	match_count = 0;	
	card_info = [];
	letter_array = [];
	} //1

if (show_word = true) { //1

	show_debug_message("selected_word.field_2: " + selected_word.kanji);
	
	// create the array for the selected word
	var counter = 1;
	var letter_array = [];
	while ( counter < string_length(selected_word.kanji) +1 ) {		
		//show_debug_message(string_char_at(selected_word.kanji,counter));
		array_push(letter_array,string_char_at(selected_word.kanji,counter));
		counter++;
		}
	
	// set the initial location of the cards
	var x_loc = 100;
	var y_loc = yStart;
	var temp_char = "";

	//
	// draw the answer cards
	object = asset_get_index("btn_Flipcard");
	var counter = 0;
	while ( counter < array_length(letter_array)) {	//2
		temp_char = letter_array[counter];
		card_info[counter] = instance_create_layer(x_loc,y_loc,"card_layer",object,
				{ //3
			card_face_text : "c",temp_char, // not what is displayed tis time
			kana_character : "", // what is displayed
			meaning_character : temp_char,//match card with this
			room_script : room_script,
			// hide the card
			object_function: "missing",
			//object_function: "builder",
			image_alpha: 1
				} //3
			);
		
		
		
		x_loc = x_loc + 110;
		counter++;
	} //2
	
#region

	
	drag_letter_array = [];
	// copy the answers  to the draggable clue array
	array_copy(drag_letter_array,0,letter_array,0,array_length(letter_array));

	// add the two random characters to the answer array
	var counter = 0;
	var extra_letters = 2;	
	while (counter < extra_letters) {	//2
						
		// add in a couple of fake instances
		// grab a random letter
		
		//get the length of the character array
		var position = random( array_length(local_kana_array) );
		//get a random letter from the kana array
		temp_char = local_kana_array[position];
		// add it to the drag letter array
		array_push(drag_letter_array,temp_char);		
		// real instances
		counter++;
		} //2

	card_info = drag_letter_array;
		
	// shuffle the letters for the clue cards
	var counter = 0;
	while ( counter < array_length(drag_letter_array) ) { //2
		var random_number = random( array_length(drag_letter_array) );
		if (random_number == counter) { //3
		// if the random nunber is the same as the counter, then increment
		// unless the random number is at the end of the array, then decrement it.		
			if ( random_number != array_length(drag_letter_array)) { //4
				random_number++;
				} //4
			else { //4
				random_number--;
				} //4
			} //3
		
		// mix the letters up
		var target = drag_letter_array[counter];
		var temp = drag_letter_array[random_number];
		drag_letter_array[counter] = temp;
		drag_letter_array[random_number] = target;		
		counter++;
		}//2
	
	//show_debug_message("card_info" + string(card_info));
#endregion

#region
// show the clue cards
	x_loc = 100;
	y_loc = y_loc + 300;	
	
	drag_object = asset_get_index("btn_DragSymbol_Character");
	
	counter = 0;
	while ( counter < array_length(drag_letter_array)) { //2
				
		// set the character
		var temp_char = drag_letter_array[counter];
		// set the instance
		var temp_instance = drag_letter_array[counter];
					
		show_debug_message( "selected_letter = " + string(temp_char) );
		
		draggable_card = instance_create_layer(x_loc,y_loc,"card_layer",drag_object,
				{ // 3
				// if the card has a blank second character, then it's a heading card.
				// the card sprite should be invisible, thats what the "heading" does.
				card_face_text : temp_char,
				meaning_character : temp_char, //match card with this
				room_script : room_script,
				instance : temp_instance,
				// hide the card
				object_function: "button",
				image_alpha: 1
				} //3
			);
		
		x_loc = x_loc + 110;
		counter++;
	} //2
#endregion

show_word = false;
} //1
