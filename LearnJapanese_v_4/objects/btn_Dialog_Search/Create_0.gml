/// @description Init_Dialog_Search:Create

// room_script = function_get_room_script_name(id);

if (live_call()) return live_result;

// reached the end of the list (possibly delete)
room_script.reached_list_end = false;
// searcn returned something
room_script.found_something = false;
room_script.current_scroll_clicks = 1;
room_script.reached_list_end = false;
room_script.word_display_number = 0;

// these are meta variables, they are not set in the actual room script itself.
// Are we searching? Not yet
// room_script.search = false;

// only set if they haven't already been set.
//room_script.search = true;
//room_script.show_initial_words = true;

// create the arrow buttons, then reuse them
create_buttons = true;

text_halign = fa_left;
text_valign = fa_top;

// initial card which is shown on the first card.
// room_script.card_index = 0;
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
// make the searchbox background image random
image_index = irandom(self. image_number);

