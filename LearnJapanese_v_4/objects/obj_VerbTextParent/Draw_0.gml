/// @description Insert description here
// You can write your code in this editor

if (live_call()) return live_result;

//draws the text on the button
draw_self();
draw_set_font(fnt_button);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_black);
 
kern = string_height("A");

draw_text_ext_transformed(self.x,self.y,_text,kern / 1.5,1000,1,1,0);
//draw_text(self.x,self.y,_text);