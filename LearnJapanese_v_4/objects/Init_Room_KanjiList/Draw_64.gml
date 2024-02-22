// masking shamelessly stolen from:

//
// draw the room name on the top of the window.
//
// NB this should be a function
// find if there is an underscore in the room name.

//Mask sprite , needs to be in the Draw_Gui event.
draw_sprite(spr_Background_Masked,0,0,0);

function_draw_room_name(display_name);

string_counter = "Word "+ string(card_index) + " of " + string(array_length(kanji_list));
draw_text_ext_transformed(1000,25,string_counter,0,500,0.5,0.5,0);

