/// @description draw search results

if (live_call()) return live_result;

// draw the background sprite
draw_self();

room_script.display_lines = 2;

// draw the "search result" box
var box_gap = 0; // gap around the text
var line_width = 5; // width for the lines
var scale = 1;//text scale

var half_char_width = string_width("A") / 2;
var spr_width = (self.sprite_width / 2);
var length = string_width(text);
var height = string_height(model_string);

var spr_height = self.sprite_height;

// variables for displaying the vocab buttons
var text_x_pos = self.x -5;
var text_y_pos = self.y + spr_height;
var counter = 0;

var x0 = self.x;
var x1 = 100;
var y0 = self.y + spr_height;
var y1 = 800;

//------------------------------

// if the result count is less than the number of words to display:
var _search_result_count = 0;
if (array_length(room_script.display_list) < room_script.max_words_to_display) {
		// set the result display count to the number of results found
		_search_result_count = array_length(room_script.display_list);			
		}
else {
	// set the result display count to the number of words to display
	_search_result_count = room_script.max_words_to_display;
	}

//------------------------------

// search text config
// search font
draw_set_font(fnt_button);
draw_set_color(c_black);
draw_set_halign(text_halign);
draw_set_valign(text_valign);

var cursor_x = x + length + half_char_width;

// displays the text
draw_text_transformed(self.x + 5, self.y, text, scale, scale,0);
// draw_text_transformed(cursor_x , self.y, text, scale, scale,0);


// draws the cursor
if (blink) {
	draw_line_width(
		cursor_x, //- ((spr_width - half_char_width) + (length * scale)),
		y + box_gap + 10,
		cursor_x,//- ((spr_width - half_char_width) + (length * scale)) + box_gap,
		y + (height * scale) + box_gap, 
		line_width * scale 
		);	
	}

//------------------------------

if (room_script.search == true) {

// set the fonts
draw_set_font(fnt_button);
draw_set_color(c_black);
draw_set_halign(fa_left);

// Draw the word counter
var x_scale = 1;
var y_scale = 1;

// display the number of results
if (array_length(room_script.display_list) > 0 ) { 		
	if(_search_result_count = 1 ) {		
		string_counter = "Word";
		}
	else {
		string_counter = "Words " + string(room_script.card_index + 1) + " to " + string(_search_result_count) + " of " + string(array_length(room_script.display_list));
		}
	
	draw_set_halign(fa_right);
	draw_text_ext_transformed(text_x_pos + 850,text_y_pos - 80,string_counter,string_height(string_counter),700,x_scale,y_scale,0);

//------------------------------
// _yscale = 6;
scale_factor = 6 / 8;
_yscale = room_script.display_lines * scale_factor;
_xscale = 3;

_width  = sprite_get_width(spr_SearchDropBG);
_height = sprite_get_height(spr_SearchDropBG);

//------------------------------
// create the results

if ( create_buttons == true && layer_exists("vocab_layer") ){
	layer_destroy("vocab_layer");
	searchfunction_create_vocab_layer();
	}

// create the buttons and arrows one time
if (create_buttons == true){
	room_script.vocab_display_buttons = [];
	searchfunction_create_vocab_layer();	

// if the word list is longer than the numnber of woreds to put on the screen...	
if (array_length(room_script.display_list) > room_script.max_words_to_display ){
	
	// fix the size of the background and show the arrows.
	room_script.word_display_number = array_length(room_script.display_list);
	
	var arrow = asset_get_index("Search_Up_Arrow");
	instance_create_layer( (_width * _xscale) + 12 ,text_y_pos + 10 ,"vocab_layer",arrow,{
			room_script:	room_script	
			});
	
	var arrow = asset_get_index("Search_Dwn_Arrow");
	instance_create_layer( (_width * _xscale) + 12 , text_y_pos + (_height * 5.5),"vocab_layer",arrow,{
			room_script:	room_script	
			});	
	//_ysize =(_yscale/room_script.max_words_to_display) * room_script.word_display_number;
	//_ysize =(_yscale/room_script.max_words_to_display) * _search_result_count;
		}
else {
	room_script.word_display_number = room_script.number_words_shown;
	 // scale the bg by the total bg size 
	//_ysize =(_yscale/room_script.max_words_to_display) * room_script.word_display_number;	
	}    
} // end of create buttons

_ysize =(_yscale/room_script.max_words_to_display) * _search_result_count;

// background of the image
draw_sprite_ext(spr_SearchDropBG,1,text_x_pos -5 ,text_y_pos,_xscale,_ysize + 0.2,0,c_white,1);
//draw_sprite_ext(spr_SearchDropBG,1,text_x_pos -5 ,text_y_pos,_xscale,_ysize + 0.2,0,c_red,1);

for (i = 0; i < _search_result_count; i++) {  
		// do this only once:
		if (create_buttons == true){
			
		searchfunction_create_vocab_layer();			
		
		var vocab_object = asset_get_index("btn_SearchResult");		
		
		room_script.vocab_display_buttons[i] = instance_create_layer( text_x_pos + 10,text_y_pos + (i * 69) + 10,"vocab_layer",vocab_object,
				{
				//used for displayng result when button is clicked
				card_index:		room_script.card_index + i,
				// shows reults on button
				kanji:			room_script.display_list[room_script.card_index + i].kanji,
				meaning:		room_script.display_list[room_script.card_index + i].meaning,
 				kana:			room_script.display_list[room_script.card_index + i].field_2,
				// FIXME this will casue porblems with other stuff that don'ty have the verbstem field.
				verbStem:		room_script.display_list[room_script.card_index + i].verbStem,
				room_script:	room_script				
				})
		}

		// overwrite the existing buttons.
		else {			
			room_script.vocab_display_buttons[i].kanji = room_script.display_list[room_script.card_index + i].kanji;
			room_script.vocab_display_buttons[i].meaning = room_script.display_list[room_script.card_index + i].meaning;
 			room_script.vocab_display_buttons[i].field_2 = room_script.display_list[room_script.card_index + i].field_2;			
			}
	}

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

//draw_rectangle(self.x - 12, self.y - 12,(_width *_xscale) + self.x , (self.y + ( (_ysize + 1) * _height)) + 12,false);

create_buttons = false;

	}
else{
	string_counter = "Nothing found!";
	draw_set_halign(fa_right);
	draw_text_ext_transformed(text_x_pos + 850,text_y_pos - 80 ,string_counter,string_height(string_counter),500,x_scale,y_scale,0);
	}

} // end of:  if (room_script.search = false) {