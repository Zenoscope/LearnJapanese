/// @description Insert description here
// You can write your code in this editor

slice = sprite_get_nineslice(object_get_sprite(self.object_index));

var str_height = string_height_ext(tip_text,60,bttn_width);

// get height of the font
var original_str_height = string_height("A");
var original_sprite_height = self.sprite_height - (slice.bottom + slice.top);

image_y_factor = round (str_height / 100) ;//original_str_height;

if (image_y_factor == 1) {
	image_y_factor = 1.5;
	}
self.image_yscale = image_y_factor;

