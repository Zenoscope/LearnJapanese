/// ShowMissingKana_Parent 
// copy of btn_flipcard
//draws the text on the button
draw_self();

//draw_set_font(Katakana);
draw_set_font(FlashCards);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
 
// card_face_text
draw_text_ext_transformed(x,y - 5,card_face_text,30,200,1,1,0);
