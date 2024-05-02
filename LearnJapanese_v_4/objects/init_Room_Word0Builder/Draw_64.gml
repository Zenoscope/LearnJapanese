/// @description draw the words
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// set the fonts and stuff
draw_set_font(fnt_button);
draw_set_valign(fa_top);
draw_set_color(c_black);
var stringLength = 1300;

// add the word meaning to the room
word_meaning = selected_word.meaning;
word_romanji = selected_word.romanji;

// 46 wide max. for testing, and beyond!
//word_meaning = "that way, that direction (over there, distant speaker and listener), formal";

string_gap = string_height(word_meaning);
draw_text_ext(50,yStart + 75,word_meaning,string_gap,stringLength);

//try{
	draw_text_ext(50,yStart + 350, "Clue: " + word_romanji,string_gap,stringLength);
//	}
//catch {
//	show_debug_message("wtf");
//	}
	
	
if (room_script.tick_state == true ) {
	// Draw the clue (romaji)
	draw_set_color(c_black);
	// add the clue to the room
	word_romanji = selected_word.romanji;
	draw_text_ext(50,yStart + 350,"Clue: " + word_romanji,string_gap,stringLength);
}

