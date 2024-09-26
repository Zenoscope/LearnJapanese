/// @description spawns search result buttons

if (live_call()) return live_result;

// draw the background sprite
draw_self();

//------------------------------
//draw the "search text" box
#region

var scale = 1;//text scale

var half_char_width = string_width("A") / 2;
var spr_width = (self.sprite_width / 2);
var length = string_width(search_box_text);
var height = string_height(model_string);

var spr_height = self.sprite_height;


// search text config
// search font
draw_set_font(fnt_button);
draw_set_color(c_black);
draw_set_halign(text_halign);
draw_set_valign(text_valign);

// displays the text
draw_text_transformed(self.x + 5, self.y, search_box_text, scale, scale,0);
#endregion

//------------------------------
// show the cursor
#region
var box_gap = 0; // gap around the text
var line_width = 5; // width for the lines

var cursor_x = x + length + half_char_width;

if (blink) {
	draw_line_width(
		cursor_x, //- ((spr_width - half_char_width) + (length * scale)),
		y + box_gap + 10,
		cursor_x,//- ((spr_width - half_char_width) + (length * scale)) + box_gap,
		y + (height * scale) + box_gap, 
		line_width * scale 
		);	
	}
#endregion

//------------------------------
// show the number of search results
#region
// if the result count is fewer than the number of words to display....
var _search_result_count = 0;


if (array_length(room_script.display_list) < room_script.max_words_to_display) {
		// ... set the result display count to the number of results found
		_search_result_count = array_length(room_script.display_list);
		//if ( draw_arrows == true ) {
				draw_arrows = false;	
		//}
		}
else {
	// ... ortherwise set the result display count to the number of words to display
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
// show search result buttons

/*
if ( create_buttons == true && layer_exists("vocab_layer") ){
	layer_destroy("vocab_layer");
	searchfunction_create_vocab_layer();
	}
*/

//------------------------------
// draw the arrows once
#region
if (draw_arrows == true){
	room_script.vocab_display_buttons = [];
	layer_destroy("vocab_layer");
	searchfunction_create_vocab_layer();	

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
 } // end of create buttons
#endregion


//----------------
// draw the background image
#region
// size of the background
_ysize =(_yscale/room_script.max_words_to_display) * _search_result_count;
// background of the image
draw_sprite_ext(spr_SearchDropBG,1,text_x_pos -5 ,text_y_pos,_xscale,_ysize + 0.2,0,c_white,1);
//draw_sprite_ext(spr_SearchDropBG,1,text_x_pos -5 ,text_y_pos,_xscale,_ysize + 0.2,0,c_red,1);
#endregion

//------------------------------------
//Draw the search result buttons
#region

// only need to do this if the number of results is fewer than the
// number of buttons currently being displayed. Or the number of buttons is zero.

for (i = 0; i < _search_result_count; i++) {  
		// do this only once:
		if ( draw_buttons == true){
			
		//if (!layer_exists("vocab_layer")) {
		//searchfunction_create_vocab_layer();
		//		}
		
		var vocab_object = asset_get_index("btn_SearchResult");		
		
		room_script.vocab_display_buttons[i] = instance_create_layer( text_x_pos + 10,text_y_pos + (i * 69) + 10,"vocab_layer",vocab_object,
				{
				//used for displayng result when button is clicked
				card_index:		room_script.card_index + i,
				// shows reults on button
				//kanji:			room_script.display_list[room_script.card_index + i].kanji,
				kanji:			"poop",
				meaning:		room_script.display_list[room_script.card_index + i].meaning,
 				kana:			room_script.display_list[room_script.card_index + i].field_2,
				// FIXME this will casue porblems with other stuff that don'ty have the verbstem field?
				verbStem:		room_script.display_list[room_script.card_index + i].verbStem,
				examples:		room_script.display_list[room_script.card_index + i].examples,
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
			}			
	}

// create_buttons = false;

//------------------------------
// scroll with mouse wheel
if (mouse_wheel_up()) {
	if (room_script.card_index > 0 ){
		room_script.card_index--;
		}
	}
if (mouse_wheel_down()) {
	if (room_script.card_index < array_length(room_script.word_list) - room_script.max_words_to_display) {
		room_script.card_index++;
		}
	}

	}
	
else{
	string_counter = "Nothing found!";
	draw_set_halign(fa_right);
	draw_text_ext_transformed(text_x_pos + 850,text_y_pos - 80 ,string_counter,string_height(string_counter),500,x_scale,y_scale,0);
	}

}