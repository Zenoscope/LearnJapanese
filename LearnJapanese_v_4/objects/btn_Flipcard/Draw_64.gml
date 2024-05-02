// @description Insert description here
// You can write your code in this editor

//draws the text on the button
draw_self();

if (global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 2] == "Kanji") {
	use_font = fnt_100Kanji ;
	}
else {
	use_font = FlashCards;
	}


draw_set_font(use_font);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
// FIXME
// set the sprite colour to red, maybe change the sprite?
//draw_set_color(sprite_colour);
draw_set_color(c_black);
 
// card_face_text
draw_text_ext_transformed(x,y - 5,card_face_text,30,200,1,1,0);
