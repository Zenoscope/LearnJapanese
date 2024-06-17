/// init_Room_Missing Kana

room_name = global.current_room;

show_debug_message("Draw Missing Kana---------------:");

// make this a function, i will reuse it in the other Kana games else, I'm sure.

// if I made an array of the array names, then I could step through it,
// and use it for the button to toggle the array that is displayed
//var array_index = 0; //choose which array in the eg kana_array to display first, default is Gojuon

// menu stuff
show_debug_message(string(global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 2]));

// sets the array
switch (global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 2])
	{		
		case "Katakana":
			// copy the array
		    global.kana_array = [global.katakana_gojuon,global.katakana_handakuten,global.katakana_yoon]
		break;
		
		case "Hiragana":
			// copy the array
			global.kana_array = [global.hiragana_gojuon,global.hiragana_handakuten,global.hiragana_yoon]
		break;		
		
		default:
			show_debug_message("oh no, you broke it, Kana array not found");
		break;
	}

// initial variables for setting up the room

array_cardStack = [];
missing_card_index = 0;
card_offset = 0;

// the card array the game will use, 0 is goujon
// 
kana_array_index = global.use_kana_set;
//kana_array_index = 1;

// creates the array of missing cards:
//  copies the kana array to the missing_cards_grid_array
//  adds the random number to the array
//  assigns a blank in the card_instance spot.
room_script = function_get_room_script_name(id);
var array_generate = function_generate_missing_kana_array(kana_array_index,room_script);
missingCardGrid_array = array_generate[0];
heading_count = array_generate[1];

// sets the room script for the buttons too, 
// they get skipped it it's higher up, as they don't exist 
room_script = function_get_room_script_name(id);

//sets the length of the missing card stack to the number of buttons
// missing_card_stack = array_length(missing_card_list);
missing_card_stack = 5;

// generates (draws) the card instances:
//  figures out how big the screen is (currently not implemented)
//  draws the cards on the kana grid
//  assigns the face to the card based on its role (heading, flipcard, missing)
//  via function_draw_initial_missing_cards
//  make it so you can swap the faces? to romanji rather than kana?

// array wrapper wraps the array so it uses the right number of arrays, as
// the flipcards use this too and are enclosed in an extra array. ok?

array_wrapper = [missingCardGrid_array];

// draws the card grid
missingCardGrid_array = function_draw_kana_grid(array_wrapper);

// creates the draggable "missing card" stack.
array_cardStack = function_generate_missing_card_stack(kana_array_index,room_script,missingCardGrid_array);

// draws the draggable "missing card" stack
missing_card_list = function_draw_missing_cards(array_cardStack);