/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

font_height = string_height("String");

slogan = 3;
draw_text_ext_transformed(self.x - 50,self.y + 50,splash_slogans[slogan],font_height,200,1,1,-45);
