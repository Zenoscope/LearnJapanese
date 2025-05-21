/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

draw_set_font(fnt_button);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

font_height = string_height("String");

//draw_text(300,100,display_string)
draw_text_ext(self.x,self.y,room_script.display_string,font_height,950);
