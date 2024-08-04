/// @description draw search results

if (live_call()) return live_result;

draw_self();

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

// search text config
// search font
draw_set_font(fnt_button);
draw_set_color(c_black);
draw_set_halign(text_halign);
draw_set_valign(text_valign);

draw_text_transformed(self.x , self.y, text, scale, scale,0);

var cursor_x = x + length + half_char_width;

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

// set the fonts
draw_set_font(fnt_button);
draw_set_color(c_black);
draw_set_halign(fa_left);

// Draw the word counter
var x_scale = 1;
var y_scale = 1;

if (array_length(room_script.display_list) > 0 ) { 
	string_counter = "Showing words";
	string_counter = string(room_script.card_index + 1) + " to " + string(room_script.card_index + room_script.max_words_to_display) + " of " + string(array_length(room_script.display_list));
	draw_set_halign(fa_right);
	draw_text_ext_transformed(text_x_pos + 800,text_y_pos - 80,string_counter,string_height(string_counter),700,x_scale,y_scale,0);
	}
else{
	string_counter = "Nothing found!";
	draw_set_halign(fa_right);
	draw_text_ext_transformed(text_x_pos + 800,text_y_pos - 80 ,string_counter,string_height(string_counter),500,x_scale,y_scale,0);
	}

//------------------------------

//------------------------------

var _yscale = 6;
var _xscale = 3;

var _width  = sprite_get_width(spr_SearchDropBG);
var _height = sprite_get_height(spr_SearchDropBG);


if (create_buttons == true){
	room_script.vocab_display_buttons = [];
	// delete the vocab layer, if it exists
	//layer_destroy("vocab_layer");
	
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
	//instance_create_layer( (_width * _xscale) , (6 * room_script.word_display_number) - text_y_pos,"vocab_layer",arrow); 	
	var _ysize =(_yscale/room_script.max_words_to_display) * room_script.word_display_number;
	//draw_sprite_ext(spr_SearchDropBG,1,text_x_pos -5 ,text_y_pos,_xscale,_ysize,0,c_white,1);	
	}
else {
	room_script.word_display_number = room_script.number_words_shown;
	 // scale the bg by the total bg size 
	var _ysize =(_yscale/room_script.max_words_to_display) * room_script.word_display_number;	
	}
    //draw_sprite_ext(spr_SearchDropBG,1,text_x_pos -5 ,text_y_pos,3.01,6,0,c_white,1);
	}

draw_sprite_ext(spr_SearchDropBG,1,text_x_pos -5 ,text_y_pos,3.01,6,0,c_white,1);

// draws the result button
//for (i = 0; i < room_script.word_display_number; i++) {
var _search_result_count = 0;
if (array_length(room_script.display_list) < room_script.max_words_to_display) {
		_search_result_count = array_length(room_script.display_list);
		}
else {
	_search_result_count = room_script.max_words_to_display;
	}

for (var i = 0; i < _search_result_count; i++) {  
// while (counter < room_script.word_display_number) {

		if (create_buttons == true){		
		var vocab_object = asset_get_index("btn_SearchResult");
	
		//
		room_script.vocab_display_buttons[i] = instance_create_layer( text_x_pos + 10,text_y_pos + (i * 69) + 10,"vocab_layer",vocab_object,
				{
				//used for displayng result when button is clicked
				card_index:		room_script.card_index + i,
				// shows reults on button
				kanji:			room_script.display_list[room_script.card_index + i].kanji,
				meaning:		room_script.display_list[room_script.card_index + i].meaning,
 				kana:			room_script.display_list[room_script.card_index + i].field_2,
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

create_buttons = false;