// @description draw the found words
// 

// set the fonts
draw_set_font(fnt_button);
draw_set_color(c_black);
draw_set_halign(fa_left);

// Draw the word counter
var x_scale = 1;
var y_scale = 1;

if (array_length(display_list) > 0 ) { 
	string_counter = "Showing words";
	string_counter = string(card_index + 1) + " to " + string(card_index + word_display_number) + " of " + string(array_length(display_list));
	draw_text_ext_transformed(1050,155 + (string_height(string_counter) /2),string_counter,string_height(string_counter),700,x_scale,y_scale,0);
	}
else{
	string_counter = "Nothing found!";
	draw_text_ext_transformed(1050,155,string_counter,string_height(string_counter),500,x_scale,y_scale,0);
	}
	
// if the words left in the array is smaller than the 
// number of t be words shown on screen...

if ( room_script.current_scroll_clicks == room_script.max_scroll_clicks ){
	// rename to stop scrolling
	room_script.reached_list_end = true;
	}
else {
	room_script.reached_list_end = false;
	}


/*
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
				card_index:		card_index + counter,
				// shows reults on button
				kanji:			display_list[card_index + counter].kanji,
				meaning:		display_list[card_index + counter].meaning,
 				kana:			display_list[card_index + counter].field_2,
				room_script:	room_script
				})		
		counter ++;
		}
*/