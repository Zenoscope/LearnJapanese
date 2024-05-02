/// @description draw searchbox

// draw the "search" box
var box_gap = 20; // gap around the text
var line_width = 5; // width for the lines
var scale = 1;//text scale
var half_char_width = string_width("A") / 2;

var spr_width = (self.sprite_width / 2);

// search text config
// search font
draw_set_font(fnt_button);
draw_set_color(c_black);
draw_set_valign(fa_top);
draw_set_halign(text_align);

//draw_text_transformed(x + box_gap, y, text, scale, scale,0);
//draw_text_transformed(x + box_gap, y - (box_height/2) , text, scale, scale,0);
//draw_text_transformed(x - (spr_width - half_char_width) + box_gap, y - (box_height/2) + (box_gap / 2) , text, scale, scale,0);
draw_text_transformed(x, y - (box_height/2) + (box_gap / 2) , text, scale, scale,0);

// draws the cursor
if (blink) {
	var height = string_height(model_string);
	//if ( string_length(text) > 0) {
	//	var length = string_width(text);	
	//		}
	//else {
	var length = string_width(text);		
	//	}
	// draw the cursor
	draw_line_width(
		//x + (length * scale) + half_char_width,
		//x - ((spr_width - half_char_width) + (length * scale)) + box_gap,
		x + length, //- ((spr_width - half_char_width) + (length * scale)),
		y - ((height * 0.75) * scale) ,
		//x + (length * scale) + half_char_width,
		//x - ((spr_width - half_char_width) + (length * scale)) + box_gap,
		x + length,//- ((spr_width - half_char_width) + (length * scale)) + box_gap,
		y + ((height * 0.75) * scale), 
		line_width * scale 
		);	
	}
