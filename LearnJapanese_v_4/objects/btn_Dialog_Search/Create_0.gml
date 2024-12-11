 /// @description Init_Dialog_Search:Create

// room_script = function_get_room_script_name(id);

if (live_call()) return live_result;

//------------------
// variables for searching
// reached the end of the list (possibly delete)
room_script.reached_list_end = false;
// searcn returned something
room_script.found_something = false;
room_script.current_scroll_clicks = 1;
room_script.reached_list_end = false;
room_script.word_display_number = 0;

//------------------
// variables for displayin the search reults
draw_buttons = true;

/* these are meta variables, they are set in the actual room script itself.
 Are we searching? Not yet
 room_script.search = false;
 only set if they haven't already been set.
 room_script.search = true;
room_script.show_initial_words = true; 
*/

//------------------
// Text stuff for cards
// generate an empty card array
room_script.card_array = [];

//------------------
// Text stuff for search box
// japanese keyboard input?
enabled_keys = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ";

// set the alignment for the GUI 
text_halign = fa_left;
text_valign = fa_top;

draw_set_halign(text_halign);
draw_set_valign(text_valign);
draw_set_color(c_black);

// font for input
draw_set_font(FlashCards);
model_string = "ABCDEFGHIJKLMN";
box_width = string_width(model_string);
box_height = string_height(model_string);

// initial text to display in the search box
search_box_text = "Click here to search";

//------------------
// blink the cursor
blink = false;
blink_speed = 0;  // higher is faster?
alarm[0] = blink_speed;

//------------------
// make the searchbox background image random
image_index = irandom(self. image_number);
image_speed = 0;

 //room_script.display_list = [];
 //search_create_result_buttons();
