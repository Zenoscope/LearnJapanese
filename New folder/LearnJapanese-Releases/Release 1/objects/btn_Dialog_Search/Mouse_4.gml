/// @description blink cursor

blink_speed = 10;

blink = true;
alarm[0] = blink_speed;

text_align = fa_left;

if (use_search == true) {
	// display the help text (on the button, lol) if the search button has been clicked
	draw_set_alpha(0.5);	
	display_name = "Type here"	
	}
