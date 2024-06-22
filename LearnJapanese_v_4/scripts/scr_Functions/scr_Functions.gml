// storage for functions and maybe templates for things I forget, like switches

//GMLive
if (live_call()) return live_result;

/*
/// TEMPLATES

// switch statement
switch ( )
		{		
		case "":		    

		break;        
		default:
			show_debug_message(" ");
		break;
		}


*/

/// FUNCTIONS


// DESCRIPTION:
// 
// 
// USAGE:
// 
//
// RETURNS:
//



#region
/// DESCRIPTION: make the NAV buttons work
///
/// USAGE:
/// function function_click_NAV_button(btn_name)
///
/// RETURNS:
/// nothing

function function_click_NAV_button(btn_name) {

	//show_debug_message("you NAV clicked '" + btn_name +"'");	
	// add an array to record where you are
	//	
	
	global.navLastButton = btn_name;
	
	switch (btn_name)
		{
		case "back":
		    //show_debug_message("you clicked back, return to " + string(global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 2]));
			// delete the most recent entry
			array_pop(global.roomBreadcrumbs);
			// and go back to the previous menu item
			room_goto(asset_get_index(global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 1]));
		break;
		
		case "Gojuon":
			//change the array to Gojuon
			global.use_kana_set = 0;
		break;
		
		case "(Han)dakuten":
			//change the array
			global.use_kana_set = 1;
		break;		
		
		case "Yoon":
			//change the array
			global.use_kana_set = 2;
		break;		
		
		case "quit0game":
			//quit the game
			game_end();
		break;
		
		case "start0game":
			//quit the game
			room_goto_next();
		break;

		default:
		    
		   try {	
			//add the room to the navigation array
			array_push(global.roomBreadcrumbs,btn_name);			
			/// go to the actual room
			//room_index = asset_get_index(global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 1]);
			   }
		   // if the breadcrumbs don't exist just go the room. 
		   catch ( _exception) {
				room_index = btn_name;
				}
				
			try { 
				room_goto(asset_get_index(btn_name));
				}
			catch( _exception) {
				show_debug_message("!!!!");
				show_debug_message("!!!! Unable to find room, error in function_click_NAV_button");
				show_debug_message("!!!!");
				show_debug_message(_exception.message);
				}
		   	
		}	
}
#endregion

#region
/// DESCRIPTION:
/// Draw the kana grid, this generates the kana grid and displays it on the screen.
/// Used in Flipcards and Kana games
/// for Missing, if the card face matches the card face in the 
/// missing card array, then change the instances face to a question mark and 
/// make it red.

/// NOTES: 
/// array index is always 0 for the missing array,and whatever for the other one.
///
/// RETURNS: missingCardGrid_array if room_name is "Missing0Kana"
///
function function_draw_kana_grid(kana_array) { //1

// this is a total kludge, I'm not sure why i need it tbh
// sets the array index
var room_name =  room_get_name(room);
if (room_name == "Flipcards") {
	array_index = global.use_kana_set;
	}
else array_index = 0;

// Scale UI
// chuck this into another function
//scale it with the screen size
//show_debug_message("1");
var card_size = 100; // get it from the sprite, perhaps?
//var gutter = 10;
var card_spacing = 2;

//get the width and height of the window
//show_debug_message("2");
//var screen_width = window_get_width(); // GUI layer instead?
//var screen_height = window_get_height(); // GUI layer instead?

// use the GUI width, rather than the screen width
// only different on the web though
// rows => 
//col_spacing	 = screen_width/kana_grid_width;
//cols ^
//row_spacing = screen_height/kana_grid_height;

//show_debug_message("3");
// start positions for the grids.
var y_start = 1; //(card_size / 4) ;// + (gutter); // y position, goes down the screen
var y_loc = y_start; // initial y position for all of the columns.

//x_loc = (card_size / 2) + gutter; // x position, goes across the screen
var x_loc = (card_size / 2); // x position, goes across the screen

//total_width = (card_size * kana_grid_width) + ((kana_grid_width - 1) * col_spacing) + (gutter * 2);
//show_debug_message("111 kana_array " + string(kana_array));

var max_array_length = array_length( kana_array[array_index]);

//show_debug_message("4: max array length "  + string(max_array_length));

var kana_grid_width =  kana_array[array_index][max_array_length - 1][0];
var kana_grid_height =  kana_array[array_index][max_array_length - 1][1];

// loop through the kana
// draw the grid of cards 
// -1 to skip the size characters at the end
//show_debug_message("5");
var kana_counter = 0;
while (kana_counter < max_array_length -1) {//2
	
	//show_debug_message("6 - made it safely to actual grid creation");
	
	if ((kana_counter % kana_grid_height  = 0) && kana_counter > 1) {//3
	    x_loc = x_loc + (card_size + card_spacing) ; // x loc + row_spacing
		y_loc = y_start; // reset at the top of the row
		}//3
		
	//first time it starts at zero		
	y_loc = y_loc + card_size + card_spacing ;    

	// draw the kana on the grid 
	// draw the card
    object = asset_get_index("btn_Flipcard");
	
	// draw the cards onm a grid
	//
	//probably should replace with a switch statement
	
	// draw the spacer card if using Yoon.
	// if the first char is "" and the array is Yoon and skip the first column:
	var kana_array_char_zero = kana_array[array_index][kana_counter][0];
	
	if (kana_array_char_zero == "-") {//3
		//show_debug_message("Place Yoon spacer");
		x_loc = x_loc - 20; // (card_size / 2); // just make a gap
		card = instance_create_layer(x_loc,y_loc,"card_layer",object,
				{//4
			// if the card has a hyphen first character, then it's a spacer card.
			// the card sprite should be invisible, thats what the "heading" does.
			kana_character : "", //kana_array[array_index][kana_counter][0],
			// hide the card _and_ the character 
			object_function: "spacer",
			image_alpha: 0 // hides the image
				}//4
			);
		}//3
	// its a header (only second character is blank)
	else if (kana_array[array_index][kana_counter][1] == "") {//3
		//show_debug_message("Placing Heading");
		card = instance_create_layer(x_loc,y_loc,"card_layer",object,
				{//4
			// if the card has a blank second character, then it's a heading card.
			// the card sprite should be invisible, but the character should not			
			kana_character : kana_array[array_index][kana_counter][0],
			// hide the card
			object_function: "heading",
			image_alpha: 0
				}//4
			);
		}//3
	// its a flipcard
	else {//3
		
		if ( room_name == "Flipcards" ) {//4
				//show_debug_message("Place Flipcard");
				var object = asset_get_index("btn_Flipcard");
				var card_function  = "button";
				var kana_char = kana_array[array_index][kana_counter][0];
				var meaning_char = kana_array[array_index][kana_counter][1];
				}//4
				
			// otherwise if the room is MissingKana then it's static
		else if ( room_name == "Missing0Kana" ) {//4\
				//show_debug_message("!! Place 'missing' card: ?");
				var card_function = "missing";
				var object = asset_get_index("btn_Flipcard");	
				var kana_char = kana_array[array_index][kana_counter][0];
				var meaning_char = kana_array[array_index][kana_counter][1];
				}//4
		
		// uses the flipcards as well. 
		// start of struct
		
		if ( room_name == "Missing0Kana" )
		// returns the Instance ID		
		kana_array[0][kana_counter][3] = instance_create_layer(x_loc,y_loc,"card_layer",object,
		// card = instance_create_layer(x_loc,y_loc,"card_layer",object,
		// if the roon is flipcard, the function is "button" 
			  {//4
			// if the second char isn't blank, then its a target card
			kana_character:kana_char,
			meaning_character : meaning_char,//match card with this
			// add the card's functionality
			object_function: card_function,
			//kana_number: missing_number
			image_alpha: 100,
			depth: 0
			}//4		
			); // end of struct
		else {
		card = instance_create_layer(x_loc,y_loc,"card_layer",object,
		//card = instance_create_layer(x_loc,y_loc,"card_layer",object,
		    // if the roon is flipcard, the function is "button" 
			{//4
			// if the second char isn't blank, then its a kana card (not a header)
			kana_character : kana_char,
			meaning_character : meaning_char,//match card with this?
			// add the card's functionality
			object_function: card_function,
			//kana_number: missing_number
			image_alpha: 100,
			depth: 0
			  }//4
			); // end of struct
			}		 
		 } //3 (its a flipcard)	

	kana_counter++;
	} //2 end of While
	
	if ( room_name == "Missing0Kana" ) {
		return kana_array[0]; // removes the wrapper array
		}	
} //1 end of function
#endregion


#region

/// DESCRIPTION:
/// trim the button names to display as labels
///
/// USAGE:
/// name_array = function_trim_buttonName(orig_btn_name);
///
/// RETURNS:
///
/// an array:
/// btn_name = name_array[0];
/// display_name = name_array[1];
function function_trim_buttonName(orig_btn_name) {

// change all of this to a function
// find the last underscore 
	var underscore_pos = string_last_pos("_",orig_btn_name);
// chop the string to underscore_pos + 1
	var room_name = string_delete(orig_btn_name,1,underscore_pos); 
 
 // replace 0 with a space, if it is there.
  //if (string_count("0",room_name) > 0 ) {   
		var display_name = string_replace_all(room_name,"0"," ");
 //		} 
 //else {
 //		var display_name = room_name;
 //		}
 
 if (display_name = "" ){
	show_message("Display name error");
	}

 //room name has a space, while display name has the 0
 
 var return_this = [room_name,display_name]; 
 return return_this;
}
#endregion


#region
/// FUNCTION:
/// function_generate_missing_card_stack
///
/// DESCRIPTION:
/// how it works:
/// get 5 cards
/// assign them all at once, therefore the max number of cards needs to be / 5
/// find the numbers in order (ef 0-4, 5-9 etc)
///
/// RETURNS
/// init_Room_Missing0Kana-Create 
/// btn_ShowMissingKana_Parent-Step (twice)
/// btn_Gojuon-Step
/// btn_ShowKana-Step (twice)

function function_generate_missing_card_stack(card_offset,room_script,missing_card_array) {

// create missing card stack array
//show_debug_message("create new missing Card Stack array" + string (missing_card_array));
//show_debug_message("room_script" + string (room_script));

room_script.array_cardStack = array_create(5, 0);

room_script.kana_array_length = array_length(missing_card_array);

// loops through all of the cards in the array and pulls out the
// next 5 cards (in order) according to the randomly assigned numbers.

var array_count = 0;
while (array_count < room_script.kana_array_length -1) { //skip the numbers at the end	
	
	// the missing card array is where the current missing card stack is stored
	var kana_char =			missing_card_array[array_count][0];
	var meaning_char =		missing_card_array[array_count][1];
	var card_order_number = missing_card_array[array_count][2];
			
	// if the card order number equals the offset number, then record the information
	// in the card. It's used later to check the collision later on.

	if (card_order_number == room_script.card_offset ) {
			room_script.array_cardStack[0][0] = kana_char;
			room_script.array_cardStack[0][1] = meaning_char;
			room_script.array_cardStack[0][2] = room_script.missingCardGrid_array[array_count][3];
			}
	else if (card_order_number == room_script.card_offset + 1 ) {
			room_script.array_cardStack[1][0] = kana_char;
			room_script.array_cardStack[1][1] = meaning_char;
			room_script.array_cardStack[1][2] = room_script.missingCardGrid_array[array_count][3];			
			}
	else if (card_order_number == room_script.card_offset + 2 ) {
			room_script.array_cardStack[2][0] = kana_char;
			room_script.array_cardStack[2][1] = meaning_char;
			room_script.array_cardStack[2][2] = room_script.missingCardGrid_array[array_count][3];			
			}
	else if (card_order_number == room_script.card_offset + 3 ) {
			room_script.array_cardStack[3][0] = kana_char;
			room_script.array_cardStack[3][1] = meaning_char;
			room_script.array_cardStack[3][2] = room_script.missingCardGrid_array[array_count][3];
			}
	else if (card_order_number == room_script.card_offset + 4 ) {
			room_script.array_cardStack[4][0] = kana_char;
			room_script.array_cardStack[4][1] = meaning_char;
			room_script.array_cardStack[4][2] = room_script.missingCardGrid_array[array_count][3];			
			}
		//}
	array_count++;
	}
return  room_script.array_cardStack;
}
#endregion


/// FUNCTION:  
/// generate the "Missing Kana" game array
/// 
/// DESCRIPTION
/// copies the kana array to a new array.
/// count the headers, so they can be skipped by...
/// generates random numbers and inserts them into the array.
/// 
/// RUNNING:
/// function_generate_missing_kana_array(array_index,room_script)
/// 
/// RETURNS
/// returns missingCardGrid_array,heading_count

function function_generate_missing_kana_array(array_index,room_script) {
// - 1 to chop off the  the grid width/height numbers at the end.
var kana_array_length = array_length(global.kana_array[array_index]);
//show_debug_message("kana_array_length: " + string(kana_array_length));
//show_debug_message("kana_array_global " + string(global.kana_array[array_index]));

// count the headers so we can skip them:
//
var heading_count = 0;
for (var i = 0, len = kana_array_length; i < len; ++i) { 
	var returned_value = global.kana_array[array_index][i][1];
	//show_debug_message("returned_value" + string(returned_value));
	// array counter at the end OR "" as header OR - as spacer
	if ( is_numeric( returned_value ) || returned_value == "" || returned_value == "-" ) {
		heading_count++; 
		}				
	}
//show_debug_message( "heading count = " + string (heading_count) );

// Create the random number array, which is used to order the kana list
//show_debug_message( "create 'random' number array" );
// create an empty array as long as the kana array, subtracting the heading count
var random_number_list = array_create(kana_array_length - heading_count ); 

var array_counter = 0;
// add random numbers to the array of random numbers.
while( array_counter < array_length( random_number_list ) ) {
	random_number_list[array_counter] = array_counter;	
	array_counter++;	
	}

//
// Assign the number randomly to each "card"
//
//show_debug_message( "copy kana to Missing Card Grid array" );
//                         0   1   2
var missingCardGrid_array = [0];
show_debug_message("missing card array " + string(missingCardGrid_array));

var array_counter = 0; // recycling!!!
while (array_counter < kana_array_length) { 	
	//show_debug_message("---updateing missing card array");
	
	// add the array value to the end of the array (thats what array_push does)		
	missingCardGrid_array[array_counter][0] = global.kana_array[array_index][array_counter][0];
	missingCardGrid_array[array_counter][1] = global.kana_array[array_index][array_counter][1];
	//show_debug_message("missing card array " + string(missingCardGrid_array));
	
	var missingCardGrid_array_one  = missingCardGrid_array[array_counter][1];	
		
	if ( missingCardGrid_array_one == ""  ||  is_numeric(missingCardGrid_array_one) || missingCardGrid_array_one = "-" ) { 
		// if the element is not kana (eg a header, a number or a minus sign) skip it
		//show_debug_message("skipping");		
		missingCardGrid_array[array_counter][2] = "";
		}
	else {
		// otherwise do these things:		
		// get the size of the remaining random_number_list
		var rnd_number_list_length = array_length(random_number_list);
		//show_debug_message("Rnd number list length = " + string( rnd_number_list_length ) );
		
		// generate a random number between 0 and the size of the list.
		var location = irandom( rnd_number_list_length - 1);
		//show_debug_message("Random location is: " + string(location));		
		// fetch a random number from the list from that location
		// add random number to the missing card array.
		missingCardGrid_array[array_counter][2] = random_number_list[location];
		//show_debug_message("missingCardGrid_array_two " + string(room_script.missingCardGrid_array[array_counter]));
		//show_debug_message("missingCardGrid_array_two " + string(missingCardGrid_array[array_counter]));
		// add the array element for the instance ID of the card
		missingCardGrid_array[array_counter][3] = "";
		//show_debug_message("missingCardGrid_array_two " + string(room_script.missingCardGrid_array[array_counter]));
		//show_debug_message("missingCardGrid_array_two " + string(missingCardGrid_array[array_counter]));
		
		try {
			// delete the random numnber from the array.
			array_delete(random_number_list,location,1);
			}
		catch(_exception) {
			// throw an erro if it doesn't work
			show_debug_message("error in function_generate_missing_kana_array!!!");
			}			
		}
	//show_debug_message("Position: " + string(missingCardGrid_array[array_counter] ) );
	array_counter++;	
	}
	//show_debug_message("Array is" + string(missingCardGrid_array));
	var return_array = [missingCardGrid_array,heading_count];
	return return_array;
}


/// DESCRIPTION
/// draw the missing card stack (5 cards on the right hand side)
///
/// USAGE:
/// function_draw_missing_cards(array_cardStack)
/// 
/// RETURNS:
/// nothing

function function_draw_missing_cards(array_cardStack){

var missing_card_list = [
	btn_ShowMissingKana0,
	btn_ShowMissingKana1,
	btn_ShowMissingKana2,
	btn_ShowMissingKana3,
	btn_ShowMissingKana4
	]

	i = 0;
	while ( i < array_length(missing_card_list)) {
		missing_card_list[i].card_face_text = array_cardStack[i][0];
		instance = array_cardStack[i][2];
		instance.image_blend = c_red;
		instance.card_face_text = "?";
		i ++;
		}
	//show_debug_message("Draw missing cards");
	return missing_card_list;
}


/// DESCRIPTION:
/// Play a specific sound depending on what it is.
/// 
/// FIXME
///
function function_play_sound(button_selected,meaning_character){

	var flipcard_sound = button_selected +  global.gender + "_" + meaning_character;
	//show_debug_message("flipcard_sound " + flipcard_sound);
	//if (audio_exists(asset_get_index(flipcard_sound))) {
	//	show_debug_message("playing " + string(flipcard_sound));
		//audio_play_sound(asset_get_index(flipcard_sound), 1, false);
	//}
	//else { 
	//	show_debug_message("unable to find " + string(flipcard_sound));
	//	}
}



/// DESCRIPTION:
/// Returns if the game is running via the IDE or if it's compiled
///
/// usage: 
function function_is_game_compiled(){
	// Is the game being launched via runner.exe? (result inverted).
	return 1-sign(string_pos("Runner.exe",parameter_string(0)));
}

/// DESCRIPTION:
/// execute a script (eg for loading in Kanji lists)
///
/// USAGE: function_execute_script(script_name)
function function_execute_script(script_name){
	var scriptToCall = asset_get_index(script_name);
	script_execute(scriptToCall);
}

/// DESCRIPTION:
/// Spawns a Kanji card at the given location
///
/// FIXME: description
function function_spawn_kanji_card(x_loc,y_loc,roomscript,card_index) {

	moving		= roomscript.moving;
	kanji_list	= roomscript.kanji_list;
	card_array	= roomscript.card_array;	
	
	var card_source = kanji_list[card_index];
			
	card_array[array_length(card_array)] = instance_create_layer(x_loc,y_loc,"card_layer",asset_get_index("obj_KanjiCard"),
	 	{//4
			index:				card_source.index,
			kanji:				card_source.kanji,
			meaning:			card_source.meaning,
			romanji:			card_source.romanji,
			position:			card_source.field_1,
			frequency:			card_source.field_2,
			variation:			card_source.field_3, 
			examples:			card_source.examples,
			strokes:			card_source.field_4,
			// this might break the kanji cards, possibly only for Radicals.
			kana_reading:		card_source.kana_reading,
			room_script:		roomscript,
			image_speed:		0,
			moving:				"false",
			//sprite_xloc:		150 // can change depending on side.
			});

}

/// Moves a card towards its destination
/// Once it gets there, it deletes it.
///
/// FIXME: description and room script
function move_kanji_cards(destination_x,destination_y,card,room_script) {
	
	/*
	var travel_speed = 10; 
	// + travel_speed; for some reason, moving to the
	// left adds another 10 to the side.
		
		if (self.x != destination_x ) {
			move_towards_point(destination_x,destination_y,travel_speed);
			}//0		
		
		else {//0			
			self.speed = 0;
			room_script.moving = false;
			// delete the card
			*/
			delete_card(room_script);
		//}
}//0

/// DESCRIPTION: Deletes a card from the card array and 
/// destroys it's instance
///
/// FIXME: description and room script
/// rename to: function function_delete_card(card_array,room_script)){		
function delete_card(room_script){
	//while ( array_length(room_script.card_array) > room_script.number_of_cards){
		//show_debug_message("destroying card " + string(room_script.card_array[0].kanji));
		// get the first card in the array and destroy it.		
		instance_destroy(room_script.card_array[0]);
		// new cards always get added to the end of the array
		array_delete(room_script.card_array, 0, room_script.number_of_cards);
	//	}
	}

/// DESCRIPTION:
/// Adds the roomsctipt to all of the instances in a room.
/// 
/// USAGE:
/// room_script = function_get_room_script_name(object_index);
/// ONLY USE WITH A ROOM, other objects will clear the script property.
/// Move to Step if there are objects needing it after Create
///
/// RETURNS objectIndex
function function_get_room_script_name(_objectIndex){
	
	// how do I get the name of the script/object which is being run?

	if (string_count("Room",object_get_name(_objectIndex.object_index)) < 1 ) {
		show_message("No! Bad! You have overwritten the room_script and created a bug!\n Only use in a room_init script: error in " + object_get_name(_objectIndex.object_index));
		}
	// adds the roomscript name to all of the instances in the room
	// if an object is missing it, move from Create to Step
	for(var i = 0 ; i < instance_count; i++; ) { //  is an array of instances.	
		instance_id[i].room_script = _objectIndex;
		}
	return _objectIndex;
}

/// DESCRIPTION:
/// Increment the index of a sprite, loops back to zero if it reaches the end
/// 
/// USAGE:
/// function_increment_sprite_image(self)
///
/// RETURNS: nothing
///
/// FIXME: change so it can decrement the image as well (add an argument for ++ or --)
/// and logic for the start of the image_index as well as the end
///
function function_increment_sprite_image(mySelf) {
	// its a bit ropey, but seems to generally work ok.
	if (mySelf.image_index == mySelf.image_number) {
		mySelf.image_index = 0;
		}
	else {
		mySelf.image_index ++;
		}
	}

/// DESCRIPTION:
/// resets the kana vocab array for Word Builder
/// 
/// USAGE:
/// use the name of the tickbox and it's state (clicked/unclicked)
/// to determine what the tickbox does.
/// 
/// RETURNS: nothing
function function_vocab_array_refresh(mySelf){
	
	if (mySelf.image_index == 0) {
		// tick, so add to the mask
		var _sign = 1;
		}
	else if (mySelf.image_index == mySelf.image_number) {
		// untick, so remove the mask
		var _sign = -1;
		}
	
	// bitmask
	// hiragana  = 1
	// katakana = 2
	// kanji = 4
	// kanji_100 = 8
	if (mySelf.array_name == "Hiragana") { kana_mask = kana_mask  + (1 * _sign); }
	else if (mySelf.array_name == "Katakana"){ kana_mask = kana_mask  + (2 * _sign); }
	else if (mySelf.array_name == "Kanji"){ kana_mask = kana_mask  + (4 * _sign); }
	else if (mySelf.array_name == "HyakuKanji"){ kana_mask = kana_mask  + (8 * _sign); }
	
	// update the array
	room_script.vocab_list = [];
	counter = 0;
	while ( counter < array_length(vocab_list)) {
		//add to the array	
		
		}
}

/// DESCRIPTION:
/// actions for tickboxes.
/// 
/// USAGE:
/// use the name of the tickbox and it's state (clicked/unclicked)
/// to determine what the tickbox does.
/// 
/// RETURNS: nothing
function function_tickbox_actions(tickbox_name,state) {
	
	switch (tickbox_name)
		{		
		case "Hiragana":
			//show_debug_message("ticked/unticked Hiragana")
			// tick
			if (room_script.tick_state = true){ 
				add_to_WordBuilderArray("0");
				}
			// untick
			else if (room_script.tick_state = false){ 
				remove_from_WordBuilderArray("0");
				}			
		break;
		case "Katakana":
			//show_debug_message("ticked/unticked Hiragana")
			// tick
			if (room_script.tick_state = false){ 
				add_to_WordBuilderArray("0");
				}
			// untick
			else if (room_script.tick_state = true){ 
				remove_from_WordBuilderArray("0");
				}		break;
		case "Kanji":
			//show_debug_message("ticked/unticked Hiragana")
			// tick
			if (room_script.tick_state = true){ 
				add_to_WordBuilderArray("0");
				}
			// untick
			else if (room_script.tick_state = false ){ 
				remove_from_WordBuilderArray("0");
				}		break;
		case "Show0Clue": // or "Show Clue"?
			//show_debug_message("ticked/unticked Hiragana")
			// tick
			if (room_script.tick_state = true){ 
				room_script.tick_state = false;				
				}
			// untick
			else if (room_script.tick_state = false){ 
				room_script.tick_state = true;
				}
		break;
		
		default:
			show_debug_message("Tickbox go ouch.");
		break;
		}
}

/// DESCRIPTION:
/// Adds a category to the word builder array.
/// 
/// USAGE:
/// loops through the array and adds a word based on field_4, so the
/// numbers which determine hiragana, katakana etc
///
///  string_to_find = keyword to search for (depends on the field) eg verb, noun, whatever
///
///  copy_from_array = array to copy
///
///  field_name = field to search
///
///  field_num = 
/// 
/// RETURNS: the updated array
/// FIXME  hmm, does this mean the orginal array is deleted?

/*
search fields:

(001,"私","I; myself","watashi","Pronoun","わたし","introduction","私はクララベルです / わたしはクララベルです  / Watashi wa clarabelle desu / My name is Clarabelle.",1)
	index		=_index; // count
	kanji		=_kanji; // kanji if there is any
	meaning		=_meaning; // meaning 
	romanji		=_romanji; // romanji
	field_1		=_type; // noun, verb etc
	field_2		=_onyomi; // kana
	field_3		=_kunyomi; // category
	examples	=_examples; // exampes
	field_4		=_sorting; // eg kanji, hiragana, katakana
*/
function function_add_to_WordBuilderArray(string_to_find,copy_from_array,field_num) {
	
	// field_num
	// loop through array, add wordlist word as we go
	copy_to_array = [];
	var counter = 0;
	while(counter < array_length(copy_from_array)){

		// Loop through the array of entries for each line.
		var field_counter = 0;
		var field_string = "";
			
		while (field_counter < array_length(field_num)){
			// convert the field name 
			var field = field_num[field_counter];
			// get the properties value from the field in the array
			// the field name is the name of the field in the struct.
			// convert the values to a string so it can be searched all at once!
			field_string = field_string + string(copy_from_array[counter][$ field]);
			field_counter ++;
			}
		
		// if the field_string contains the string_to_find		
		if ( string_count(string_to_find,field_string)){
			// add the match to the array from the copy_from_array.		
			array_push(copy_to_array, copy_from_array[counter])
			}
		counter++;
		}
	return copy_to_array;
}

/// DESCRIPTION:
/// actions for tickboxes.
/// 
/// USAGE:
/// use the name of the tickbox and it's state (clicked/unclicked)
/// to determine what the tickbox does.
/// 
/// RETURNS: nothing
function function_remove_from_WordBuilderArray(word_list){
	counter = 0;
	while(counter < array_length(room_script.WordBuilderArray)){
		if (room_script.WordBuilderArray[counter].sorting == word_list){
			// remove the match from the array
			array_delete(room_script.WordBuilderArray, counter, 1);			
			}
		counter++;
	}
}
	
#region

/// DESCRIPTION:
/// delete the matching card from the card stack array (Missing Kana game)
/// 
/// USAGE:
/// delete the matching card from the card stack array (Missing Kana game)
/// show_missingKana cards
/// 
/// RETURNS: nothing
function function_delete_found_card(internal_room_script) { 
	 
	 // Need to check the card face, and delete that one.		
	room_script.array_cardStack[button_number][0] = "";
	room_script.missing_card_stack--;
	
	 // if the cards in the card stack are all used up, then get new ones.	 
	 if (room_script.missing_card_stack == 0 )  {
			
		var total_cards = internal_room_script.kana_array_length - internal_room_script.heading_count;
		var card_count = internal_room_script.missing_card_index;
		
		//show_debug_message("total_cards " + string(total_cards));
		//show_debug_message("card_count " + string(card_count));
		//show_debug_message("Card offset " + string(internal_room_script.card_offset));
		
		var missing_card_list_length = array_length(internal_room_script.missing_card_list);
		var modulus = total_cards % missing_card_list_length;
		
		// works, temp replacement
		if ( card_count <= 5 ) {			
			//
			// reset everything!!!
			//			
			room_restart();	
			}
		else {
			// this resets the cards back to the original settings for another round.
			
			// increment the card offset 
			room_script.card_offset = room_script.card_offset + array_length(internal_room_script.missing_card_list);			
			internal_room_script.missing_card_index = 0;
			
			var counter = 0;
			while (counter < array_length(internal_room_script.missing_card_list)) {
				function_reset_missing_card(missing_card_list[counter]);
				counter++;
				}
						
			internal_room_script.missing_card_stack = array_length(internal_room_script.missing_card_list);
						
			// get the next block of 5 cards
			internal_room_script.missing_card_index = internal_room_script.missing_card_index + array_length(internal_room_script.missing_card_list);
			// generate another set of cards
			room_script.array_cardStack = function_generate_missing_card_stack(internal_room_script.array_index,internal_room_script.room_script,internal_room_script.missingCardGrid_array);
			function_draw_missing_cards(room_script.array_cardStack);
			}
	 }
	
	internal_room_script.missing_card_index++;
}
#endregion

#region

/// DESCRIPTION:
/// move the card back and reset the face if the card is correct (Missing Kana game)
/// 
/// USAGE:
/// show_missingKana cards
/// 
/// RETURNS: nothing
/// 
function function_reset_missing_card(the_card) {
  // snap the card to the other card (by "magic!")  
  the_card.x = x_origin;
  the_card.y = y_origin;
  // be blank
  the_card.card_face_text = "";
  the_card.depth = 0;
  the_card.successs = true;
  the_card.grabbed = false;
  the_card.moving = false;
}
#endregion

/// DESCRIPTION:
/// Delete the card when the cards overlap
/// 
/// USAGE:
/// 
/// RETURNS: nothing
/// 

function function_destroy_on_card_collision(collide_with_type) {
	var return_value = false;
	//create the histlist delist
	var _hitList = ds_list_create();
	// create a list of the instances to check
	hitcount = instance_place_list(x,y,collide_with_type,_hitList,true); // true sorts the list
	// loop through the list
	
	repeat(hitcount) {
		 with(ds_list_find_value(_hitList,0)) {
		 	// other is the instance running the code.
			// self is the intance being checked
				if ( self.meaning_character == other.meaning_character) {
					instance_destroy(other);
					//other.x = self.x;
					//other.y = self.y;
					//instance_destroy(self);
					self.card_face_text = self.meaning_character;
					 
					return_value = true;					
				}
			}			
		ds_list_delete(_hitList,0);
		}   
	ds_list_destroy(_hitList);
	
	return return_value;
	}

/// DESCRIPTION:
/// Draw the room name at the top of the screen
/// 
/// USAGE: 
/// 
/// RETURNS: nothing
/// 

function function_draw_room_name(display_name){
			
	draw_set_font(fnt_button);
	draw_set_halign(fa_top);
	draw_set_valign(fa_middle);
	//draw_set_valign(fa_right);
	draw_set_color(c_black);
	// add the room name to the room
	// 
	// x_loc = window_get_width;
	//x_loc = surface_get_width();
	//x_loc = display_get_gui_width() / 2;
	//	draw_text_ext_transformed(x_loc,25,display_name,0,1000,0.5,0.5,0);
	x_loc = room_width/2;
	draw_text_ext_transformed(575,25,display_name,0,1000,1,1,0);	
	}


function function_draw_version(version){
		
	draw_set_font(fnt_button);
	draw_set_halign(fa_top);
	draw_set_valign(fa_left);
	draw_set_color(c_black);
	x_loc = 100;
	y_loc = 100;
	draw_text_ext(x_loc,y_loc,version,0,0);
	
	}

/// show helptext
/// @description button_name - selector for the button
/// tooltip array - array of tool tips 
/// in the format: 
/// self
function function_show_helptext(button_name,tooltip_array,mySelf){
		
//GMLive		
if (live_call()) return live_result;
		
// //1
// choose the right helptext stuff. 	
//
var has_help = false;
	
// works!
searchString = button_name;
value = "";

// search for the tooltip stuff by button_name
try{
	var has_help = array_any(global.tooltips, function(_val, _ind)
	{
	// this function can only have one line?
	// needs to return true or false
	value = _val;
	return _val.button_name == searchString;
	});
  } // eo try
catch ( _exception){
	has_help = false;
 }

	if (has_help == false) {
		show_debug_message("Helptext for " + string(button_name) +" not found");
		}
	
	// if there is, show the button
	if (has_help) {		
		// create the Helptext layer
		layer_create(-1000,"Helptext");
		
		if (value.tip_type == "tooltip"){
	
			var x_loc = mySelf.x;
			// offset for the tooltips speech bubble.
			var y_loc = mySelf.y; 
			// max width of the text before a new line...
			// the width of the button being moused over.
			
			var local_btn_width = mySelf.sprite_width;
			var local_btn_height = mySelf.sprite_height;

			object = asset_get_index("obj_ToolTip");
			
			var local_tip_text = value.tooltip_text;
				
			// create the object and set some stuff up.
			instance_create_layer(x_loc,y_loc,"Helptext",object,
					{
					tip_text: local_tip_text,
					bttn_width: local_btn_width,
					bttn_height: local_btn_height,
					x_loc: x_loc, 
					y_loc: y_loc,
					object: object,
					speed : 0
					});
			}
		else if (value.tip_type == "helptext"){
			
			// fixed spot for it
			var x_loc = 300;
			var y_loc = 15; 
						
			var object = asset_get_index("obj_HelpText");
						
			var local_tip_text = value.tooltip_text; // tooltip text
			
			instance_create_layer(x_loc,y_loc,"Helptext",object,
					{
					tip_text: local_tip_text,
					x_loc: x_loc, 
					y_loc: y_loc,					
					object: object,
					speed : 0
					});
			}

		else if (value.tip_type == "questionmark"){
			
			var x_loc = 100;
			var y_loc = 200; 
			// max width of the text before a new line...
			// the width of the button being moused over.
			
			show_debug_message("creating questionmark");
			
			var local_btn_width = mySelf.sprite_width;
			var local_btn_height = mySelf.sprite_height;

			object = asset_get_index("obj_QuestionMark");
			
			var local_tip_text = value.tooltip_text;
			//local_tip_text = "Test the some text\nTest the some text";
				
			//create the object and set some stuff up.
			instance_create_layer(x_loc,y_loc,"Helptext",object,
					{
					tip_text: local_tip_text,
					bttn_width: 500,
					bttn_height: 500,
					x_loc: x_loc, 
					y_loc: y_loc,
					object: object,
					speed : 0
					});
			
			/*
			// will the questionmark always be in the same place?
			// like in the 
	
			//var x_loc = mySelf.x;
			//var y_loc = mySelf.y; //- (mySelf.sprite_height * 0.5);
			var x_loc = 300;
			var y_loc = 15; 

			//var btn_width = mySelf.sprite_width * 1.5;
						
			object = asset_get_index("obj_ToolTip");
			
			instance_create_layer(x_loc,y_loc,"Helptext",object,
					{
					tip_text: value.tooltip_text,
					bttn_width: 300,
					speed : 0,
					//image: 1
					});
			*/
			}		
			
		/*
		else if (value.tip_type == "biblio"){
			
			//offset the helptext from the actual  button
			
			_slice = sprite_get_nineslice(object_get_sprite(self.object_index));
			offset = _slice.bottom; // might want to add the seperator as well?	
		
			var x_loc = mySelf.x;
			var y_loc = mySelf.y - (offset + 10); //- (mySelf.sprite_height * 0.5);
			var btn_width = mySelf.sprite_width * 1.5;
						
			object = asset_get_index("obj_ToolTip");
			
			instance_create_layer(x_loc,y_loc,"Helptext",object,
					{
					tip_text: _val.biblio, //+ string(image_y_factor),
					bttn_width: btn_width,
					image_xscale : 3,					
					speed : 0
					});
			}*/
			
			
		else {
				show_debug_message("Not a valid tooltip type.");
				}
	}
}	
	
/// @description hide listed layer(s)
/// 
/// LayerArray is a list of names 

function hide_layers_by_name(layer_array){
	for(var Counter=0;Counter<array_length(layer_array);Counter++;) {
		var lay_id = layer_get_id(layer_array[Counter]);	
		layer_set_visible(lay_id, false);
		}
	}
	
/// @description show layers
/// 
/// LayerArray is a list of names 

// FIXME delete if unused
function show_layers_by_name(layer_array){
	for(var Counter=0;Counter<array_length(layer_array);Counter++;) {
		var lay_id = layer_get_id(layer_array[Counter]);	
		layer_set_visible(lay_id, true);
		}
	}

/// @description show a single layer by name
/// 
/// LayerArray is a list of names 

function show_a_layer_by_name(Layer){
		var lay_id = layer_get_id(Layer);	
		layer_set_visible(lay_id, true);
		}
		
// deactivate the layers
function function_deactivate_layers_by_Name(layer_array){
	for(var Counter=0;Counter<array_length(layer_array);Counter++;) {
		// var lay_id = layer_get_id(layer_array[Counter]);
		instance_deactivate_layer(layer_array[Counter]);
		}		
	}


// @play the cow narration stuff
function function_play_cow_narrator(){
		// if the cow exists and a dialog is displayed
		// she talks!
		if ( instance_exists(obj_CowNarr) &&  layer_exists("Helptext") ) {		
			// if the end of the sprite images, loop back to the start. 
			if (obj_CowNarr.image_index >= obj_CowNarr.image_number){
				obj_CowNarr.image_index = 0;
				}
			else {
				cow_frame_change +=1;
				// every 10 loops, change the image
				// to a random image.
				if (cow_frame_change == 10) {
					obj_CowNarr.image_index = obj_CowNarr.image_index + random(obj_CowNarr.image_number);
					cow_frame_change = 0;
					}
				}
			//show_debug_message("cow exists");
		}
	}


