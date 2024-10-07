/// @description spawns search result buttons

if (live_call()) return live_result;

// draw the background sprite
draw_self();

//------------------------------
//draw the "search text" box
#region

var scale = 1;//text scale

var half_char_width = string_width("A") / 2;
var spr_width = (self.sprite_width / 2);
var length = string_width(search_box_text);
var height = string_height(model_string);

spr_height = self.sprite_height;


// search text config
// search font
draw_set_font(fnt_button);
draw_set_color(c_black);
draw_set_halign(text_halign);
draw_set_valign(text_valign);

// displays the text
draw_text_transformed(self.x + 5, self.y, search_box_text, scale, scale,0);
#endregion

//------------------------------
// show the cursor
#region
var box_gap = 0; // gap around the text
var line_width = 5; // width for the lines

var cursor_x = x + length + half_char_width;

if (blink) {
	draw_line_width(
		cursor_x, //- ((spr_width - half_char_width) + (length * scale)),
		y + box_gap + 10,
		cursor_x,//- ((spr_width - half_char_width) + (length * scale)) + box_gap,
		y + (height * scale) + box_gap, 
		line_width * scale 
		);	
	}
#endregion


// probably shoudl be somewhere else...
//------------------------------
// scroll with mouse wheel
if (mouse_wheel_up()) {
	if (room_script.card_index > 0 ){
		room_script.card_index--;
		}
	}
if (mouse_wheel_down()) {
	if (room_script.card_index < array_length(room_script.word_list) - room_script.max_words_to_display) {
		room_script.card_index++;
		}
	}