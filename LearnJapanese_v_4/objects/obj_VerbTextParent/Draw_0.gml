/// @description Insert description here
// You can write your code in this editor

//draws the text on the button
draw_self();
self.image_xscale = 2.75;
self.image_yscale = 1.5;

draw_set_font(FlashCards);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_black);
 
kern = string_height("A");
scale = 0.75;

draw_text_ext_transformed(self.x,self.y,_text, kern / 1.5,1000,scale,scale,0);
//draw_text(self.x,self.y,_text);