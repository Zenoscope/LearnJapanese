/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

function_execute_script("scr_VocabList");

image_speed = 0;
image_index = 0;

// mouse within the arrow to change to a drop down populated

// load up whatever is to be searched, eg verb whatever
// spawn a text box, there is some other seach somewhere else in here which uses it.

// spawn a button under the search graphic
// when the button is clicked, (the dropdown frame increments)
	// count the number of results. if it's greater than (5)
	// spawn the up and down arrows.
	// the up and down arrows remove the top or bottom entry from the array.
		// (will need smaller arrows)
	// spawn a button (invisible bg, with text) for each,
	// and populate with the entry from the array.
	
	// on click of the button, run a function (different on each room_init
	// the function in this case, will populate the grid with the words.

// specifies what to search, but we are using trhe whole list, so it doesn't matter
// ListDefault = 1;
// temp1 = kanji_list
ListDefault = "verb";

word_list = function_add_to_WordBuilderArray(ListDefault,kanji_list,5);

reached_list_end = false;
number_words_shown = 5;
search = false;
found_something = false;
blockButtonClick = false;

// can I spawn the alert here too?
// spawn the text box
// spawn the search button

