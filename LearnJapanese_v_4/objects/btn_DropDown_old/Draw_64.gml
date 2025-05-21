/// @description Insert description here
// You can write your code in this editor

// draw the room name on the top of the window.
//
// NB this should be a function
// find if there is an underscore in the room name.



draw_set_color(c_black);
draw_set_halign(fa_right);

if (array_length(word_list) < number_words_shown){
	word_display_number = array_length(word_list);
	}
else {
	word_display_number = number_words_shown;
	}


// Draw the word counter
var x_scale = 0.5;
var y_scale = 0.5;

//string_counter = "Showing words";
//draw_text_ext_transformed(1350,155,string_counter,string_height(string_counter),500,x_scale,y_scale,0);
//string_counter = string(card_index + 1) + " to " + string(card_index + word_display_number) + " of " + string(array_length(display_list) + 1);
//draw_text_ext_transformed(1350,155 + (string_height(string_counter) /2),string_counter,string_height(string_counter),700,x_scale,y_scale,0);

// variables for displaying the buttons
var text_x_pos = 50;
var text_y_pos = 30;
var counter = 0;
vocab_display_buttons = [];

while (counter < word_display_number) {
		
		var vocab_object = asset_get_index("btn_VocabDisplay");
		vocab_display_buttons[counter] = instance_create_layer(text_x_pos,text_y_pos + (counter * 70) ,"vocab_layer",vocab_object,
				{
				//used for displayng result when button is clicked
				card_index:		card_index + counter,
				// shows reults on button
				kanji:			display_list[card_index + counter].kanji,
				meaning:		display_list[card_index + counter].meaning,
				kana:			display_list[card_index + counter].field_2
				})		
		counter ++;
		}
