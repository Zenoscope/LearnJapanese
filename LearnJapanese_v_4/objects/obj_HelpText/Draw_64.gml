/// @Description draws the text on the balloon

gap = kerning;
side_gap = 15;

draw_set_font(fnt_button);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

//draw_text_ext_transformed(x + 75,y + 30,tip_text,60,bttn_width,0.5,0.5,0);

draw_sprite_stretched(object_get_sprite(mySprite), 0,x,y, bttn_width + _slice.left + _slice.right + side_gap, str_height + _slice.top + _slice.bottom );

// the longest it can be is just above the back button. If it's over that, then the
// string gets converted to an arrayt (unless we just do that with everything?)

draw_text_ext_transformed(x + _slice.left + 10,y + 30,tip_text,kerning, bttn_width ,1,1,0);
