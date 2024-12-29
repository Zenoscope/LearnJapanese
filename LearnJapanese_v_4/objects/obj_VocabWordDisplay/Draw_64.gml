/// @description draw the dialog box
// You can write your code in this editor

//dlg_style	  = 0;
xloc		  = 100;
yloc		  = 50; 

event_inherited();

var y_offset = 12;
var x_offset = 15;

draw_set_font(FlashCards);
draw_set_color(c_black);
draw_set_valign(fa_left);
draw_set_halign(fa_top);

var x_scale = 0.75;
var y_scale = 0.75;

draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 1)			,"Kanji: "	+ kanji,0,1000,x_scale,y_scale,0);
draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 3)			,"Meaning: "+ meaning,0,1000,x_scale,y_scale,0);
draw_text_ext_transformed(xloc + x_offset + 450,yloc + (y_offset * 1)	,"Kana: "	+ kana,0,1000,x_scale,y_scale,0);
draw_text_ext_transformed(xloc + x_offset + 450,yloc + (y_offset * 3)	,"Romaji: "	+ romanji,0,1000,x_scale,y_scale,0);

draw_text_ext_transformed(xloc + x_offset + 800,yloc + (y_offset * 1)	,"Type: "	+ word_type,0,1000,x_scale,y_scale,0);

//var new_lines_example  = string_replace(example, "/", "\n");

draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 5)			,"Example: "+ example,(y_offset * 3),1300,x_scale,y_scale,0);
//draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset  *3)			,"example: "+ new_lines_example,100,1500,x_scale,y_scale,0);

function function_zero_pad(number){
	var num_str = string(number);
	var number_string = "";
	if (number < 10) {
		number_string = "00" + num_str;
		}
	else if (number < 100) {
		number_string = "0" + num_str;
		}
	else {
		number_string = num_str;
		}	
	return number_string;
	}

// draw the mneumonic image under all of the other stuff
var vocab_image_index = function_zero_pad(index);
var vocab_sprite = asset_get_index("Vocab_Image" + vocab_image_index);

//var x_midpoint = xloc + (dialog_width  / 2); //(dialog_width -  (dialog_width  / 2));
var x_midpoint = window_get_width / 2;
//var y_midpoint = yloc + (dialog_height / 2); //(dialog_height - (dialog_height / 2));
var y_midpoint = window_get_height / 2;

// draw the background image
draw_sprite_ext(vocab_sprite,0,x_midpoint,y_midpoint + 20 ,0.6,0.6,0,c_white,1);
