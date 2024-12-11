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
