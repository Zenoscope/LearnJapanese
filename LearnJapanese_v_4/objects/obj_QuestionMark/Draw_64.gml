/// @description Insert description here
// You can write your code in this editor

//GMLive		
if (live_call()) return live_result;

/// @Description draws the text on the balloon

// otherwise it's drawn below everything
//draw_self();

// add the top back on and that is where the text should go.
var gap = text_line_sep;
var x_offset = (bttn_width/2) + (gap / 2); // this might just work with the wide buttons
var y_offset =  (bttn_height /2) + str_height + _slice.bottom;

// min width of the tooltip, this might change?
// depending on the size of the button the half width buttons don't work right.

// you can't multiply anything, it will make it stretch
// draw_sprite_stretched(object_get_sprite(mySprite), 0, x_loc - x_offset, y_loc - y_offset , str_width + gap ,str_height + _slice.top + _slice.bottom );

draw_sprite_stretched(object_get_sprite(mySprite), 0, x_loc, y_loc ,bttn_width ,bttn_height);

offset = _slice.bottom + str_height + _slice.top + (line_height /2); // might want to add the seperator as well?
draw_set_font(fnt_button);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

draw_text_ext_transformed(x + _slice.left ,y + _slice.left ,tip_text,text_line_sep,str_width,1,1,0);