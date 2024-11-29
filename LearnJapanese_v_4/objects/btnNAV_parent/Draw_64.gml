/// @Description - btn_NoLabel (scale)

//draws the text on the button
draw_self();
draw_set_font(fnt_button);
show_debug_message(btn_name);
 
kern = string_height("A");
char_width  = string_width("A");

max_string_width = (char_width * 12)

draw_set_halign(fa_center);
draw_set_valign(v_alignment);

/*
draw_set_color(c_red);
draw_set_valign(fa_top);
draw_text_ext_transformed(self.x,self.y, display_name,kern / 1.5,max_string_width,1,1,0);
*/

draw_set_color(c_black);
//draw_set_valign(fa_center);
draw_text_ext_transformed(self.x,self.y, display_name,kern / 1.5,max_string_width,1,1,0);

/*
draw_set_color(c_green);
draw_set_valign(fa_bottom);
draw_text_ext_transformed(self.x,self.y, display_name,kern / 1.5,max_string_width,1,1,0);
*/

if (global.show_helptext == true) {
		global.show_helptext = false;
		}
