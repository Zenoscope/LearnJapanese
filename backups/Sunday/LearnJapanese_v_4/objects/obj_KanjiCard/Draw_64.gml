/// obj_Kanjicard Draw_GUI
// You can write your code in this editor

//draws the text on the button
draw_self();

draw_set_font(_100Kanji);
draw_set_color(c_black);
draw_set_valign(fa_center);

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
		self.image_index=1;
	break;
	case "Bottom":
		y_shift = bottom;
		self.image_index=5;
	break;
	case "Right hand side":
		self.image_index=4;		
		x_shift = right;
	break;
	case "Wrap":
		self.image_index=6;		
	break;
	case "Top left":
		self.image_index=3;
		y_shift = top;
		x_shift = left;
	break;
	case "Top":
		y_shift = top;
		self.image_index=2;		
	break;
	default:
		self.image_index=0;
	break;
	}

// draw radical 
font_scale = 4;
draw_text_ext_transformed(self.x + x_align + x_shift,self.y + y_align + y_shift,kanji,30,200,font_scale,font_scale,0);
