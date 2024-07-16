/// @description Draws the button
// This displays the search list results

// draws the sprite for the button
draw_self();


y_offset = 5;
kerning = 33;
x_offset = 15;

draw_set_font(FlashCards);
draw_set_color(c_black);
draw_set_valign(fa_left);
draw_set_halign(fa_top);

x_scale = 0.75;
y_scale = 0.75;

draw_text_ext_transformed(x + x_offset,y + y_offset,		"Kanji: "	+ kanji,0,1500,x_scale,y_scale,0);
draw_text_ext_transformed(x + x_offset,y + kerning,		"Meaning: "	+ meaning,0,1500,x_scale,y_scale,0);
draw_text_ext_transformed(x + x_offset + 450,y + y_offset ,"Kana: "	+ kana,0,1500,x_scale,y_scale,0);
