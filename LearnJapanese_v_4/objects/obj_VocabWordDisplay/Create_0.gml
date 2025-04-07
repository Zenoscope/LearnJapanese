/// @description set variables
// You can write your code in this editor

event_inherited();
// Inherit the parent event
//dlg_style = 1;
clicked = false;

show_debug_message("creating the dialog");

dialog_width  = 1000;
dialog_height = 700;

//self.image_xscale = 3.4;
//self.image_yscale = 4.5;

function size_to_scale(input,dimension){
	// calculates the szie of the sprite based on the 
	// sprites dimensions.
	var sideside;
	var scale = input / dimension;
	return scale;
	}

self.image_xscale = size_to_scale(1025,sprite_width);
self.image_yscale = size_to_scale(650,sprite_height);

self.x = 840;
self.y = 300;
