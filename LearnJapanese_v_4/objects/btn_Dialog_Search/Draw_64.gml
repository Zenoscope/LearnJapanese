/// @description draw searchbox

// draw the "search" box
var box_gap = 20; // gap around the text
var line_width = 5; // width for the lines
var scale = 1;//text scale
var half_char_width = string_width("A") / 2;

var spr_width = (self.sprite_width / 2);

// search text config
// search font
draw_set_font(fnt_button);
draw_set_color(c_black);
draw_set_valign(fa_top);
draw_set_halign(text_align);

draw_text_transformed(x, y - (box_height/2) + (box_gap / 2) , text, scale, scale,0);

// draws the cursor
if (blink) {
	var height = string_height(model_string);
	//if ( string_length(text) > 0) {
	//	var length = string_width(text);	
	//		}
	//else {
	var length = string_width(text);		
	//	}
	// draw the cursor
	draw_line_width(
		x + length, //- ((spr_width - half_char_width) + (length * scale)),
		y - ((height * 0.75) * scale) ,
		x + length,//- ((spr_width - half_char_width) + (length * scale)) + box_gap,
		y + ((height * 0.75) * scale), 
		line_width * scale 
		);	
	}

if (array_length(room_script.display_list) < room_script.max_words_to_display ){
	room_script.word_display_number = array_length(room_script.display_list);
	}
else {
	room_script.word_display_number = room_script.number_words_shown;
	}

// variables for displaying the vocab buttons
var text_x_pos = 50;
var text_y_pos = 30;
var counter = 0;

room_script.vocab_display_buttons = [];

while (counter < room_script.word_display_number) {
		
		var vocab_object = asset_get_index("btn_VocabDisplay");
		vocab_display_buttons[counter] = instance_create_layer( text_x_pos,text_y_pos + (counter * 70) ,"vocab_layer",vocab_object,
				{
				//used for displayng result when button is clicked
				card_index:		room_script.card_index + counter,
				// shows reults on button
				kanji:			room_script.display_list[room_script.card_index + counter].kanji,
				meaning:		room_script.display_list[room_script.card_index + counter].meaning,
 				kana:			room_script.display_list[room_script.card_index + counter].field_2,
				room_script:	room_script
				})		
		counter ++;
		}

