// Inherit the parent event
// the same except for this for some dumb reason

draw_set_font(fnt_button);
var _kern = string_height("A");
var _char_width  = string_width("A");

var _max_string_width = (_char_width * 16)

//draws the text on the button
draw_self();
//show_debug_message(btn_name);
draw_set_halign(fa_center);
draw_set_valign(v_alignment);

draw_text_ext_transformed(self.x,self.y, display_name,_kern / 1.5,_max_string_width,1,1,0);

if (global.show_helptext == true) {
		global.show_helptext = false;
		}


