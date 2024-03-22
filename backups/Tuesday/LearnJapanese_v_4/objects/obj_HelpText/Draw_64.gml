/// @Description draws the text on the balloon

//show_debug_message("Draw Gui");

// without this it draws under everything
draw_self();

draw_set_font(fnt_button);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);

sep_height = string_height("blah");

draw_text_ext_transformed(x + 75,y + 30,tip_text,sep_height,bttn_width / 2 ,1,1,0);
//draw_text_ext_transformed(x + 75,y + 30,tip_text,60,bttn_width,0.5,0.5,0);
