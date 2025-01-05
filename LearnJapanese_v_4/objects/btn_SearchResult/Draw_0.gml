/// @description Draws the button
// This displays the search list results

if (live_call()) return live_result;

// draws the sprite for the button
draw_self();

y_offset = 5;
kerning = 33;
x_offset = 5;

draw_set_font(FlashCards);
draw_set_color(text_colour);
//draw_set_color(c_black);
draw_set_valign(fa_left);
draw_set_halign(fa_top);

x_scale = 0.75;
y_scale = 0.75;

// depending on the room, draw different things.
// switch statement
// this shouls be another function

// copy the meaning to the trimmed meeting, so the 
// trimmed meeting is displayed here.

function trim_display_string(trim_string){
	if (string_length(trim_string) > 20) {
		// get first 17 chars and add ... to it.
		var temp = "";
		var temp = string_copy(meaning, 0, 17);
		var trimmed = temp + "...";
		trim_string = trimmed;
 		}
	return trim_string;
}

trimmed_meaning = trim_display_string(meaning);
trimmed_examples = trim_display_string(examples);

if (string_count(room_script.title_string,"Adverbs") > 0 ){
			draw_text_ext_transformed(x + x_offset,y + y_offset			,"Word: "	+ kanji,0,1500,x_scale,y_scale,0);
			draw_text_ext_transformed(x + x_offset,y + kerning			,"Meaning: "+ trimmed_meaning,0,1500,x_scale,y_scale,0);
			draw_text_ext_transformed(x + x_offset + 350,y + y_offset	,"Example: "+ trimmed_examples,kerning,800,x_scale,y_scale,0);			
		}
else if (string_count(room_script.title_string,"Adjectives") > 0 ){
			draw_text_ext_transformed(x + x_offset,y + y_offset			,"Word: "	+ kanji,0,1500,x_scale,y_scale,0);
			draw_text_ext_transformed(x + x_offset,y + kerning			,"Meaning: "+ trimmed_meaning,0,1500,x_scale,y_scale,0);
			draw_text_ext_transformed(x + x_offset + 450,y + y_offset	,"Example: "+ trimmed_examples,kerning,800,x_scale,y_scale,0);
		}
else if (string_count(room_script.title_string,"Verbs") > 0 ){
			draw_text_ext_transformed(x + x_offset,y + y_offset			,"Word:"	+ kanji,0,1500,x_scale,y_scale,0);
			draw_text_ext_transformed(x + x_offset,y + kerning			,"Meaning: "+ trimmed_meaning,0,1500,x_scale,y_scale,0);
			draw_text_ext_transformed(x + x_offset + 450,y + y_offset	,"Example: "+ trimmed_examples,0,800,x_scale,y_scale,0);
		}	
else if (string_count(room_script.title_string,"Kanji") > 0 ){
			draw_text_ext_transformed(x + x_offset,y + y_offset			,"Kanji Kanji: "	+ kanji,0,1500,x_scale,y_scale,0);
			draw_text_ext_transformed(x + x_offset,y + kerning			,"Meaning: "+ trimmed_meaning,0,1500,x_scale,y_scale,0);
			draw_text_ext_transformed(x + x_offset + 450,y + y_offset	,"Kana: "	+ kana,0,1500,x_scale,y_scale,0);
		}			
else if (string_count(room_script.title_string,"Hiragana") > 0 ){		
			draw_text_ext_transformed(x + x_offset + 450,y + y_offset	,"Kana: "	+ kana,0,1500,x_scale,y_scale,0);
			draw_text_ext_transformed(x + x_offset,y + kerning			,"Meaning: "+ trimmed_meaning,0,1500,x_scale,y_scale,0);			
		}		
else if (string_count(room_script.title_string,"Katakana") > 0 ){
			draw_text_ext_transformed(x + x_offset + 450,y + y_offset	,"Kana: "	+ kana,0,1500,x_scale,y_scale,0);
			draw_text_ext_transformed(x + x_offset,y + kerning			,"Meaning: "+ trimmed_meaning,0,1500,x_scale,y_scale,0);		
		}
else	{		
			//show_debug_message("Room not found");
			//show_debug_message(room_script.display_name);
			// this is for Kanji search
			draw_text_ext_transformed(x + x_offset,y + y_offset			,"Kanji: "	+ kanji,0,1500,x_scale,y_scale,0);
			draw_text_ext_transformed(x + x_offset,y + kerning			,"Meaning: "+ trimmed_meaning,0,1500,x_scale,y_scale,0);
			draw_text_ext_transformed(x + x_offset + 450,y + y_offset	,"Kana: "	+ kana,0,1500,x_scale,y_scale,0);
		}


// this is for Kanji search
//draw_text_ext_transformed(x + x_offset,y + y_offset			,"Kanji: "	+ kanji,0,1500,x_scale,y_scale,0);
//draw_text_ext_transformed(x + x_offset,y + kerning			,"Meaning: "+ trimmed_meaning,0,1500,x_scale,y_scale,0);
//draw_text_ext_transformed(x + x_offset + 450,y + y_offset	,"Kana: "	+ kana,0,1500,x_scale,y_scale,0);

