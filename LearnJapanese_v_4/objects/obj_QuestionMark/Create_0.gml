/// @description Insert description here
// You can write your code in this editor



// kerning for the lines.
text_line_sep = 30;
					
// bttn_width is set when the instance is created
// get height of the text

line_height = string_height("A");

str_height = string_height_ext(tip_text,text_line_sep,bttn_width);
str_width = string_width_ext(tip_text,text_line_sep,bttn_width);

num_lines = str_height /  line_height;

// image stuff
mySprite = obj_QuestionMarkBGSprite;
_slice = sprite_get_nineslice(object_get_sprite(mySprite));
