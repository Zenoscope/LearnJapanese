// change to function, 
// can be called, which is called spawn search box
// set the alarm programattically, as well as the  key press.

/// @description sets variables, also has temp search array.
text = "";
// japanese keyboard input?
enabled_keys = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ";

max_string_length = "ABCDEFGHIJKLMNOPQRST";
box_width = string_width(max_string_length);
box_height = string_height(max_string_length);

// font for input
draw_set_font(FlashCards);

// rename as cursor
blink = true;
blink_speed = 15;
alarm[0] = blink_speed;

x_loc = 20;
y_loc = 1040;

// contains will search all of the columns! yay!
