/// @Description draws the text on the balloon

// otherwise it's drawn below everything
draw_self();

// add the top back on and that is where the text should go.
var gap = text_line_sep;
var x_offset = (bttn_width/2) + (gap / 2); // this might only work with the wide buttons
var y_offset =  (bttn_height /2) + str_height + _slice.bottom;

// min width of the tooltip, this might change?
// depending on the size of the button the half width buttons don't work right.

if (str_width < 300 ) {
	str_width = 300;
	}

// you can't multiply anything, it will make it stretch
draw_sprite_stretched(object_get_sprite(mySprite), 0, x_loc - x_offset, y_loc - y_offset , str_width + gap ,str_height + _slice.top + _slice.bottom );

// ************************
// text, leave this alone(
// cut off the bottom and the top, then divide by 2
// sprite_height = self.sprite_height - (_slice.bottom + _slice.top);// 


offset = _slice.bottom + str_height + _slice.top + (line_height /1.5); // might want to add the seperator as well?
draw_set_font(fnt_button);
draw_set_halign(fa_center);
//draw_set_valign(fa_bottom);
draw_set_valign(fa_top);
draw_set_color(c_black);

//offset = 0;
draw_text_ext_transformed(x,y - offset ,tip_text,text_line_sep,bttn_width,1,1,0);
