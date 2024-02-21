/// @description Init_Dialog_Search:Create

//room_script = function_get_room_script_name(id);

use_search = false;

text = "Search";
// japanese keyboard input?
enabled_keys = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ";

// set the alignment for the GUI 
text_align = fa_left;

draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color(c_black);

// font for input
draw_set_font(FlashCards);

model_string = "ABCDEFGHIJKLMN";
box_width = string_width(model_string);
box_height = string_height(model_string);

// rename as cursor
blink = true;
blink_speed = 0;  // higher is faster?
alarm[0] = blink_speed;

// make it so the location of the object is the location of the box.
// contains will search all of the columns! yay!

image_speed = 0;

temp = true;

if ( temp == false ) {
	// use first image for the button
	image_index = 0;
	// align with the "search" button
	x = btn_Search.x;
	y = btn_Search.y;
	}
else {
	image_index = 0;
	}
// should have a "catch" on this one really.