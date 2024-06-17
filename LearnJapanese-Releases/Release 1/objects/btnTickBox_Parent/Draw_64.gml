// btn_Tickbox

//draws the text on the button
draw_self();
draw_set_font(fnt_button);
draw_set_valign(fa_middle);
draw_set_color(c_black);
 
// on the right or the left. Need to get the length of the string
// if the character before the last _ is R or L then set the text accordingly

if (room_script.tick_state == true) { image_index = 1; } 
else if (room_script.tick_state == false) { image_index = 0; } 

var underscore_pos = string_last_pos("_",object_get_name(object_index));
var text_side = string_char_at(object_get_name(object_index), underscore_pos - 1);
var string_w = string_width(string) ;

if (text_side == "R") {
	draw_set_halign(fa_left);	
	draw_text_ext_transformed(x + 55 ,y + 30 ,display_name,40,500,0.5,0.5,0);
	}
else if (text_side == "L") {
	draw_set_halign(fa_right);	
	draw_text_ext_transformed(x + 10 ,y + 30,display_name,40,500,0.5,0.5,0);
	}
 