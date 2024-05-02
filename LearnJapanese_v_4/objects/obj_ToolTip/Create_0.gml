/// @description Toolips

// The text is a fixed size (though the string is variable,the size of that particular string is 
// fixed by the with and height of the string in pixels

// kerning for the lines.
text_line_sep = 30;
// bttn_width is set when the instance is created

// get height of the text
str_height = string_height_ext(tip_text,text_line_sep,bttn_width);
str_width = string_width_ext(tip_text,text_line_sep,bttn_width);

/*draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_black);
*/

// image stuff
slice = sprite_get_nineslice(object_get_sprite(self.object_index));


// i can't set the height of the sprite directly (why not?)
image_y_factor = round (str_height / 50) ;//original_str_height;

if (image_y_factor == 1) {
	image_y_factor = 1.5;
	}
	
self.image_yscale = image_y_factor;

