/// @description Init_Dialog_Search:Create

// room_script = function_get_room_script_name(id);

if (live_call()) return live_result;

use_search = false;
room_script.search = false;
room_script.reached_list_end = false;
room_script.found_something = false;
room_script.blockButtonClick = false; // oly true if search finds something
room_script.current_scroll_clicks = 1;// 
room_script.reached_list_end = false;
room_script.word_display_number = 0;

text_halign = fa_left;
text_valign = fa_top;

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

// initial card which is shown on the first card.
room_script.card_index = 0;
// generate an empty card array
room_script.card_array = [];

text = "Click here to search";
// japanese keyboard input?
enabled_keys = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ";

// set the alignment for the GUI 
draw_set_halign(text_halign);
draw_set_valign(text_valign);
draw_set_color(c_black);

// font for input
draw_set_font(FlashCards);

model_string = "ABCDEFGHIJKLMN";
box_width = string_width(model_string);
box_height = string_height(model_string);

// rename as cursor
blink = false;
blink_speed = 0;  // higher is faster?
alarm[0] = blink_speed;

// make it so the location of the object is the location of the box.
// contains will search all of the columns! yay!

image_speed = 0;
// make the searchbox image random
image_index = irandom(self. image_number);
