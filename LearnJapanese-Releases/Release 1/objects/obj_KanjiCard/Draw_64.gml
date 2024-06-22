/// obj_Kanjicard Draw_GUI
// You can write your code in this editor

//draws the text on the button
draw_self();

//draw_set_font(Katakana);
draw_set_font(FlashCards);
draw_set_color(c_black);
draw_set_valign(fa_center);

//function card_alignment(position) {

// change alignment depending on the position of the kanji
// maybe have the background change as a helper as well?
var x_align =  -60;
var y_align =  -120;

var right =  x_align + 120;
var left =   x_align - 10;
var top =    y_align + 90;
var bottom = y_align + 20;

self.image_index = 0;
var y_shift = 0;
var x_shift = 0;

// move the main radical character 	
switch (position) {
	// for some reason these are all displayed as opposites, eg top is bottom etc	
	case "Left hand side":
		x_shift = left;
		//y_align = 0;
		self.image_index=1;
	break;
	case "Bottom":
		y_shift = bottom;
		//x_align = 0;
		self.image_index=5;
	break;
	case "Right hand side":
		self.image_index=4;		
		x_shift = right;
		//y_align = 0;
	break;
	case "Wrap":
		self.image_index=6;
		//img_index=6;
		//y_align = 0;
		//x_align = 0;
	break;
	case "Top left":
		self.image_index=3;
		//draw_set_valign(fa_bottom);
		y_shift = top;
		//draw_set_halign(fa_right);
		x_shift = left;
	break;
	case "Top":
		y_shift = top;
		//x_align = 0;
		self.image_index=2;		
	break;
	default:
		//y_align = 0;
		//x_align = 0;
		self.image_index=0;
	break;
	}

// draw radical 
draw_text_ext_transformed(self.x + x_align + x_shift,self.y + y_align + y_shift,kanji,30,200,4,4,0);

// draw the rest of the text
draw_set_halign(fa_left);
var offset_x = x_align + 205;
var offset_y = y_align + 100;
var offset_y_gap = -25;

// _index,_kanji,_meaning,_romanji,_position,_frequency,_variation,_examples,_strokes,_kana_reading
//draw_text_ext_transformed(self.x - offset_x,self.y + offset_y - (offset_y_gap * 1),"Index: "	+	string(index)		,30,400,0.75,0.75,0);

draw_text_ext_transformed(self.x - offset_x,self.y + offset_y - (offset_y_gap * 2),"Meaning: "	+	string(meaning)		,30,400,0.75,0.75,0);

if (global.navLastButton != "One0Hundred0Kanji0List") {
	draw_text_ext_transformed(self.x - offset_x,self.y + offset_y - (offset_y_gap * 3),"Romanji: "	+	string(romanji)		,30,400,0.75,0.75,0);
	draw_text_ext_transformed(self.x - offset_x,self.y + offset_y - (offset_y_gap * 4),"Position: " +	string(position)	,30,400,0.75,0.75,0);
	draw_text_ext_transformed(self.x - offset_x,self.y + offset_y - (offset_y_gap * 5),"Frequency: "+	string(frequency)	,30,400,0.75,0.75,0);
	}

if (global.navLastButton == "One0Hundred0Kanji0List") { 
	draw_text_ext_transformed(self.x - offset_x,self.y + offset_y - (offset_y_gap * 3),"Onyomi: "	+	string(frequency)	,30,400,0.75,0.75,0);
	draw_text_ext_transformed(self.x - offset_x,self.y + offset_y - (offset_y_gap * 4),"Kunyomi: " +	string(variation)	,30,400,0.75,0.75,0);
	draw_text_ext_transformed(self.x - offset_x,self.y + offset_y - (offset_y_gap * 5),"Example: " +	string(examples)	,30,400,0.75,0.75,0);
	}


