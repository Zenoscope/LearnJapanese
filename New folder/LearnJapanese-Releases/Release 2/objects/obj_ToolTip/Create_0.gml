/// @description Toolips
// The text is a fixed size (though the string is variable,the size of that particular string is 
// fixed by the with and height of the string in pixels

// kerning for the lines.
text_line_sep = 30;
					
// bttn_width is set when the instance is created
// get height of the text

line_height = string_height("A");

str_height = string_height_ext(tip_text,text_line_sep,bttn_width);
str_width = string_width_ext(tip_text,text_line_sep,bttn_width);

// image stuff
mySprite = obj_ToolTipSprite;
_slice = sprite_get_nineslice(object_get_sprite(mySprite));
