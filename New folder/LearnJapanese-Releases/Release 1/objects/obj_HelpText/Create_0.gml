/// @description Insert description here
// You can write your code in this editor

slice = sprite_get_nineslice(object_get_sprite(self.object_index));

var str_height = string_height_ext(tip_text,60,bttn_width);
var original_str_height = string_height("A");
var original_sprite_height = self.sprite_height - (slice.bottom + slice.top);
