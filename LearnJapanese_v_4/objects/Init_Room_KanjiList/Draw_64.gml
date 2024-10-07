// masking shamelessly stolen from:

//
// draw the room name on the top of the window.
//
// NB this should be a function
// find if there is an underscore in the room name.

//Mask sprite , needs to be in the Draw_Gui event.
// draw_sprite(spr_Background_Masked,0,-200,0);

function_draw_room_name(display_name);

//draw_surface(global.painting_surface,card_middle_x - (surface_w / 2) ,288 - (surface_h / 2) );

//added a bug here?
var _symbol_type;

if (room_get_name(room) == "Radical0List" ) {
		_symbol_type = "Radical";
		draw_set_font(fnt_Radicals_and_Examples);
		} 
else {
		_symbol_type = "Kanji";
		draw_set_font(fnt_100Kanji);
		}

// draw the counter text
var string_counter = _symbol_type + " " + string(card_index + 1 ) + " of " + string(array_length(kanji_list) + 1);
draw_text_ext_transformed(1000,25,string_counter,0,700,0.5,0.5,0);	

draw_set_color(c_black);
draw_set_valign(fa_top);

// draw the kanji description stuff here instead of at the cards.
// draw the rest of the text
var x_align = 0;
var y_align = 0;

draw_set_halign(fa_left);
var offset_x = x_align + 680
var offset_y = y_align - 40;
var offset_y_gap = -60;

var text_scale = 1;
var kern = 60;

meaning = string(card_array[0].meaning)
examples = string(card_array[0].examples)

width = "0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9";
// examples = meaning;
var text_length = 600;
//string_width(width);

draw_set_font(fnt_Radicals_and_Examples);
draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 2),"Meaning: " +	meaning,kern,text_length,text_scale,text_scale,0);

if (room_get_name(room) == "Radical0List" ) {
	field1 = "Position: ";
	field2 = "Frequency: ";
	field3 = "Variations: ";
		
	draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 3),"Reading: " + string(card_array[0].kana_reading),kern,text_length,text_scale,text_scale,0);
	draw_text_ext_transformed(50,offset_y - (offset_y_gap * 11),"Radicals in frequency group 1 appear in 25% of all kanji, while radicals in groups 1 and 2 appear in 50% of all kanji. Radicals in groups 1, 2 and 3 appear in 75% of all kanji, and radicals in all groups (1,2,3 and 4) appear in all kanji.",kern * 0.65,text_length,text_scale * 0.65,text_scale *0.65,0);

	}
else {
	field1 = "Type: ";
	field2 = "Onyomi: ";
	field3 = "Kunyomi: ";
	}

draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 4),"Strokes: " +	string(card_array[0].strokes),kern,text_length,text_scale,text_scale,0);
draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 5),field1 + string(card_array[0].position)	,kern,text_length,text_scale,text_scale,0);
draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 6),field2	+ string(card_array[0].frequency)	,kern,text_length,text_scale,text_scale,0);
draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 7),field3 + string(card_array[0].variation)	,kern,text_length,text_scale,text_scale,0);

//kana_reading

draw_text_ext_transformed(offset_x,offset_y - (offset_y_gap * 8),"Examples: " +	examples	,kern,text_length,text_scale,text_scale,0);

