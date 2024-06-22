/// @Description - btn_NoLabel (scale)

//draws the text on the button
draw_self();
draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
 
kern = string_height("A");
char_width  = string_width("A");

max_string_width = (char_width * 12)
 
draw_text_ext_transformed(x,y - (kern/2) ,display_name,kern / 1.5,max_string_width,1,1,0);

if (global.show_helptext == true) {
		global.show_helptext = false;
		}
