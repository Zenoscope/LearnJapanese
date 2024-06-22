/// @description draw search GUI
// You can write your code in this editor

if (use_search == true) {
	// display the help text (on the button, lol) if the search button has been clicked
	draw_set_alpha(0.5);	
	display_name = "Type here"	
	}

if ( use_search == true && string_length(search_dialog.text) > 0 ) {
	// hide the help text if we are searching and have typed something in the search box
	draw_set_alpha(0);		
	}

// Inherit the parent event
event_inherited();

// reset the alpha back to 1 for everything else being rendered (buttons at this point)
draw_set_alpha(1);