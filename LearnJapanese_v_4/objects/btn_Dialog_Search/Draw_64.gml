/// @description draw search results

if (live_call()) return live_result;

// draw the "search result" box
var box_gap = 0; // gap around the text
var line_width = 5; // width for the lines
var scale = 1;//text scale


var half_char_width = string_width("A") / 2;
var spr_width = (self.sprite_width / 2);
var length = string_width(text);
var height = string_height(model_string);

var spr_height = self.sprite_height;

// search text config
// search font
draw_set_font(fnt_button);
draw_set_color(c_black);
draw_set_halign(text_halign);
draw_set_valign(text_valign);

//draw_text_transformed( x +  half_char_width , y, text, scale, scale,0);
//draw_text_transformed(self.x + (length/2) , self.y, text, scale, scale,0);

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

if (array_length(room_script.display_list) < room_script.max_words_to_display ){
	room_script.word_display_number = array_length(room_script.display_list);
	}
else {
	room_script.word_display_number = room_script.number_words_shown;
	}

// variables for displaying the vocab buttons
var text_x_pos = self.x -5;
var text_y_pos = self.y + spr_height;
var counter = 0;

var x0 = self.x;
var x1 = 100;
var y0 = self.y + spr_height;
var y1 = 800;

room_script.vocab_display_buttons = [];

while (counter < room_script.word_display_number) {
		var vocab_object = asset_get_index("btn_SearchResult");
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

if (room_script.search == true) {
	draw_sprite_ext(spr_ButtonTLCorner,1,text_x_pos -5 ,text_y_pos,3.01,6,0,c_white,1);
	
	}