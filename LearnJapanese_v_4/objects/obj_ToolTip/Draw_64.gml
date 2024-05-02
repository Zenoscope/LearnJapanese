/// @Description draws the text on the balloon

// otherwise it's drawn below everything
draw_self();

draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_black);
 
#region
// Works to put the text in the middle of the speech bubble.
// str_height = string_height_ext(tip_text,text_line_sep,bttn_width);()
//font_height = string_height("A");

_slice = sprite_get_nineslice(object_get_sprite(self.object_index));
ignore = _slice.bottom + _slice.bottom;


draw_sprite_stretched(object_get_sprite(self.object_index), 0,self.x - (str_width) , self.y - (str_height * 2), (str_width * 1)  + _slice.left + _slice.right , (str_height * 2)  + _slice.top);
// set the origin of the sprite
sprite_set_offset(object_get_sprite(self.object_index),x,y - _slice.bottom);

// cut off the bottom and the top, then divide by 2

_sprite_height = self.sprite_height - (_slice.bottom + _slice.top);

// add the top back on and that is where the text should go.

offset = _slice.bottom; // might want to add the seperator as well?
//offset = _slice.bottom + (_sprite_height / 1.5); // might want to add the seperator as well?

#endregion

//draw_text_ext_transformed(x,y - offset,tip_text,text_line_sep,bttn_width,1,1,0);

draw_text_ext_transformed(x,y - offset,tip_text,text_line_sep,bttn_width,1,1,0);

