// masking shamelessly stolen from:

//
// draw the room name on the top of the window.
//
// NB this should be a function
// find if there is an underscore in the room name.

//Mask sprite , needs to be in the Draw_Gui event.
// draw_sprite(spr_Background_Masked,0,-200,0);

function_draw_room_name(display_name);
/*
switch (room_get_name(room))
	{
	case "Radical0List":*/
	if (room_get_name(room) == "Radical0List" ) {
		symbol_type = "Radical";		
		}
	else {
		symbol_type = "Kanji";
		}
		
		string_counter = symbol_type + string(card_index) + " of " + string(array_length(kanji_list));
		draw_text_ext_transformed(1000,25,string_counter,0,700,0.5,0.5,0);	
				
		draw_set_color(c_black);
		draw_set_valign(fa_top);

		// draw the kanji stuff here instead of at the cards.
		// draw the rest of the text
		var x_align = 0;
		var y_align = 0;

		draw_set_halign(fa_left);
		var offset_x = x_align + 680
		var offset_y = y_align - 40;
		var offset_y_gap = -80;

		var text_scale = 0.65;
		var text_length = 1000;
		var kern = 60;



		draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 2),"Meaning: "	+	string(card_array[0].meaning),kern,text_length,text_scale,text_scale,0);
		draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 3),"Strokes: "  +	string(card_array[0].strokes)	,kern,text_length,text_scale,text_scale,0);

	if (room_get_name(room) == "Radical0List" ) {
		field1 = "Position: ";
		field2 = "Frequency: ";
		field3 = "Variations: ";
		}
    else {
		field1 = "Type: ";
		field2 = "Onyomi: ";
		field3 = "Kunyomi: ";
		}

		draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 4),field1 + string(card_array[0].position)	,kern,text_length,text_scale,text_scale,0);
		draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 5),field2	+ string(card_array[0].frequency)	,kern,text_length,text_scale,text_scale,0);
		draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 6),field3 + string(card_array[0].variation)	,kern,text_length,text_scale,text_scale,0);
		
		//kana_reading

		draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 7),"Examples: " +	string(card_array[0].examples)	,kern,text_length,text_scale,text_scale,0);
