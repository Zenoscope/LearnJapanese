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
word_display = selected_word.meaning;

// if Kanji and 
if ( origin_room_name == "Kanji" ) {
	onyomi = "-";
	kunyomi = "-";
	
	word_display = "";
	word_clue = selected_word.meaning;
	
	if (selected_word.field_2 != "" ) { 
		onyomi = "Onyomi: " + selected_word.field_2;
		}
	if (selected_word.field_3 != "" ) { 
		line_break = "";
		if (kunyomi != "" ) { // of there is onyomi, then add a new line 
			line_break = "\n"; 
			}
		kunyomi = line_break + "Kunyomi: " + selected_word.field_3;
		}
	word_display = word_display + "\n" + onyomi + kunyomi;
	}
else {
	word_clue = selected_word.romanji;
	}	

// 46 wide max. for testing, and beyond!

string_gap = 30;
draw_text_ext(50,yStart + 75,word_display,string_gap,stringLength);

if (room_script.tick_state == true) {
	// add the clue to the room
	draw_text_ext(50, yStart + 350, "Clue: " + word_clue, string_gap, stringLength);
}

