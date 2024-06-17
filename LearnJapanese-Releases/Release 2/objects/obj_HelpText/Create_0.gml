/// @description Insert description here
// You can write your code in this editor

_slice = sprite_get_nineslice(object_get_sprite(obj_HelpText_sprite));

kerning = 30;
bttn_width = 900;
bttn_height = 0;

str_height = string_height_ext(tip_text,kerning,bttn_width);
str_width = string_width_ext(tip_text,kerning,bttn_width);
original_str_height = string_height("A");
original_sprite_height = self.sprite_height - (_slice.bottom + _slice.top);

mySprite = obj_HelpText_sprite;

show_debug_message("str_height " + string(str_height));
show_debug_message("str_width " + string(str_width));

show_debug_message("bttn_width " + string(bttn_width));
show_debug_message("bttn_height " + string(bttn_height));

show_debug_message("x_loc " + string(x_loc));
show_debug_message("y_loc " + string(y_loc));

show_debug_message("_slice.left " + string(_slice.left));
show_debug_message("_slice.left " + string(_slice.right));
