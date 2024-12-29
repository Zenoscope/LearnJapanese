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
*/

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

//function searchfunction_show_vocab_search_result(_index,_kanji,_meaning,_kana,_examples,_type,_room_script) {	
function searchfunction_show_vocab_search_result(_index,_kanji,_meaning,_romanji,_kana,_examples,_word_type,_roomScript) {

	
	if (!layer_exists( "DialogBox")){
		layer_create(-1200,"DialogBox")
		}
	
	xloc = 100;
	yloc = 100;
	
	instance_create_layer(xloc, yloc, "DialogBox", obj_VocabWordDisplay,{
			// word_list_item refers to the specific item, rather than the whole array.
			// index is used to get the index number for displaying the image
				//card_index	:word_list_item.index,
				index		:_index,
				kanji		:_kanji,
				meaning		:_meaning,
				romanji		:_romanji,
				example		:_examples,
				kana		:_kana,
				word_type	:_word_type,
				room_script	:_roomScript
				})
}

function searchfunction_reset_dropdown() {
	//searchfunction
	room_script.search = false;
	use_search = false;
	layer_destroy("vocab_layer");
	}
	
function searchfunction_create_vocab_layer(arg0){
	
	/*
	var spr_height = arg0;
	
	// get the highest layer and put this above that:
	var my_layer_depth = 0;
	var current_depth = 0;
	// loop through all the layers and get the depths
	var all_layers = layer_get_all();
	for (var i = 0; i < array_length(all_layers); i++;)
		{
		current_depth = layer_get_depth(all_layers[i]);
		if (current_depth < my_layer_depth){
			my_layer_depth = current_depth;
			}	
		}	
	layer_create(my_layer_depth - 100,"vocab_layer");
	*/
	layer_create(-950,"vocab_layer");
	}


function search_create_result_buttons(){
//------------------------------
// show the number of search results
#region
// if the result count is fewer than the number of words to display....
var _search_result_count = 0;

if ( room_script.show_initial_words == true) {
	room_script.display_list = room_script.word_list;
	}

if (array_length(room_script.display_list) < room_script.max_words_to_display) {
		// ... set the result display count to the number of results found
		_search_result_count = array_length(room_script.display_list);		
		draw_arrows = false;			
		}
else {
	// ... otherwise set the result display count to the number of words to display
	_search_result_count = room_script.max_words_to_display;
	draw_arrows = true;
	}

if (room_script.search == true || room_script.show_initial_words == true ) {

// display the number of results
if (array_length(room_script.display_list) > 0 ) { 		
	if(_search_result_count = 1 ) {		
		string_counter = "Word";
		}
	else {
		string_counter = "Words " + string(room_script.card_index + 1) + " to " + string( room_script.card_index + _search_result_count) + " of " + string(array_length(room_script.display_list));
		}
		
	// variables for the top of the result box.
	var text_x_pos = self.x -5;
	var text_y_pos = self.y + spr_height;
	
	// set the fonts
	//draw_set_font(fnt_button);
	//draw_set_color(c_black);
	draw_set_halign(fa_left);

	// Draw the word counter
	var x_scale = 1;
	var y_scale = 1;	
	
	draw_set_halign(fa_right);
	draw_text_ext_transformed(text_x_pos + 850,text_y_pos - 80,string_counter,string_height(string_counter),700,x_scale,y_scale,0);
#endregion

//------------------------------
// show search result buttons
//------------------------------

// scale factor of the background image
#region
var _bg_scale_factor = 6 / 8;
// y scale for the bg image
var _yscale = room_script.max_words_to_display * _bg_scale_factor;
// x scale for bg image
var _xscale = 3.5;

// width and height
var _width  = sprite_get_width(spr_SearchDropBG);
var _height = sprite_get_height(spr_SearchDropBG);
#endregion

//------------------------------
// draw the arrows once
#region
if (draw_arrows == true){
	room_script.vocab_display_buttons = [];
	
	if (!layer_exists("vocab_layer")) {
		//layer_destroy("vocab_layer");
		searchfunction_create_vocab_layer();
		}

// if the word list is longer than the number of words to put on the screen...	
if (array_length(room_script.display_list) > room_script.max_words_to_display ){
		
	room_script.word_display_number = array_length(room_script.display_list);	
	
	//-----------------------
	//show the arrows.
	x_loc = (_width * _xscale) + (x * 0.70) ;
	y_loc = _search_result_count * _height;		
	
	var arrow = asset_get_index("Search_Up_Arrow");
	instance_create_layer( x_loc,text_y_pos + 10 ,"vocab_layer",arrow,{
			room_script:	room_script	
			});
	
	var arrow = asset_get_index("Search_Dwn_Arrow");
	instance_create_layer(x_loc, y_loc + y,"vocab_layer",arrow,{
			room_script:	room_script	
			});	
		}
else {
	room_script.word_display_number = room_script.number_words_shown;
	}
 draw_arrows = false;	
 } // end of create buttons
#endregion



//----------------
// draw the background image
#region
// size of the background
_ysize =(_yscale/room_script.max_words_to_display) * _search_result_count;
// background of the image
//draw_sprite_ext(spr_SearchDropBG,1,text_x_pos -5 ,text_y_pos,_xscale,_ysize + 0.2,0,c_white,1);
background = instance_create_layer(text_x_pos,text_y_pos,"vocab_layer",obj_SearchBackground);
//layer_sprite_create("vocab_layer",text_x_pos -5,text_y_pos,spr_SearchDropBG);
//   layer_sprite_xscale(spr_SearchDropBG,_xscale);
//   sprite_ID =  layer_sprite_get_id("vocab_layer","spr_SearchDropBG");
//    layer_sprite_xscale(sprite_ID,1000);
//   layer_sprite_yscale(sprite_ID,1000);
//     layer_sprite_yscale(spr_SearchDropBG,_ysize + 0.2);

background.image_yscale = _ysize + 0.2;
background.image_xscale = _xscale;

#endregion

//------------------------------------
//Draw the search result buttons
#region

// only need to do this if the number of results is fewer than the
// number of buttons currently being displayed. Or the number of buttons is zero.

for (i = 0; i < _search_result_count; i++) {  
		// do this only once:
		if ( draw_buttons == true){
		var vocab_object = asset_get_index("btn_SearchResult");		
		room_script.vocab_display_buttons[i] = instance_create_layer( text_x_pos + 10,text_y_pos + (i * 69) + 10,"vocab_layer",vocab_object,
				{
				//used for displayng result when button is clicked
				card_index:		room_script.card_index + i,
				// shows reults on button
				index:			room_script.display_list[room_script.card_index + i].index,
				kanji:			room_script.display_list[room_script.card_index + i].kanji,
				meaning:		room_script.display_list[room_script.card_index + i].meaning,
 				kana:			room_script.display_list[room_script.card_index + i].field_2,
				verbStem:		room_script.display_list[room_script.card_index + i].verbStem,
				examples:		room_script.display_list[room_script.card_index + i].examples,
				word_type:		room_script.display_list[room_script.card_index + i].field_1,
				romanji:		room_script.display_list[room_script.card_index + i].romanji,
				room_script:	room_script			
				})
		}

		//------------------------------------
		// overwrite the existing buttons.		
		else {
			test = "test";			
			temp1 = room_script.vocab_display_buttons[i].kanji;
			temp2 = room_script.display_list[room_script.card_index + i].kanji;
			
			room_script.vocab_display_buttons[i].kanji = room_script.display_list[room_script.card_index + i].kanji;
			room_script.vocab_display_buttons[i].meaning = room_script.display_list[room_script.card_index + i].meaning;
 			room_script.vocab_display_buttons[i].field_2 = room_script.display_list[room_script.card_index + i].field_2;
			
			/*
			// these too
			kanji:			room_script.display_list[room_script.card_index + i].kanji,				
			meaning:		room_script.display_list[room_script.card_index + i].meaning,
 			kana:			room_script.display_list[room_script.card_index + i].field_2,
			verbStem:		room_script.display_list[room_script.card_index + i].verbStem,
			examples:		room_script.display_list[room_script.card_index + i].examples,
			word_type:			room_script.display_list[room_script.card_index + i].field_1,
			*/
			
			
			}			
	}



	}
	
else{
	string_counter = "Nothing found!";
	draw_set_halign(fa_right);
	draw_text_ext_transformed(text_x_pos + 850,text_y_pos - 80 ,string_counter,string_height(string_counter),500,x_scale,y_scale,0);
	}

	}
 room_script.show_initial_words = false;
}