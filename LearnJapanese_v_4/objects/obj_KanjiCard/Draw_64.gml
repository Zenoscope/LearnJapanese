/// obj_Kanjicard Draw_GUI
// You can write your code in this editor

//draws the text on the button
draw_self();

draw_set_font(fnt_100Kanji);
draw_set_color(c_black);
draw_set_valign(fa_center);

// change alignment depending on the position of the kanji
// maybe have the background change as a helper as well?
var x_align =  -105;
var y_align =  -85;

//var x_align =  -100;
//var y_align =  -100;

var right =  x_align + 120;
var left =   x_align + 60;
var top =    y_align + 30; // was 60
var bottom = y_align + 120;

// moves where the default image goes
image_num = 0;
var y_shift = 0;
var x_shift = 0;

// move the main radical character 	
switch (position) {
	// for some reason these are all displayed as opposites, eg top is bottom etc	
	case "Left hand side":
		x_shift = left;
		image_num=1;
		
		// done
		if ( index == 35 ) { x_shift -= 30; }
		if ( index == 105 ) { x_shift -= 30; }
				
	break;
	case "Bottom":
		y_shift = bottom;
		image_num=5;
	break;
	case "Right hand side":
		image_num=4;		
		x_shift = right;
		
		//done
		if ( index == 80 ) { x_shift += 35; }
		if ( index == 24 ) { x_shift += 25; }	
		if ( index == 82 ) { x_shift += 65; }
		
	break;
	case "Wrap":
		image_num=6;		
	break;
	case "Top left":
		image_num=3;
		y_shift = top + 30;
		x_shift = left + 30;
	break;
	case "Top":
		y_shift = top;
		image_num=2;
		
		if ( index == 67 )  { y_shift -= 30; }
		if ( index == 71 )  { y_shift -= 30; }	
		if ( index == 77 )  { y_shift += 15; }
		if ( index == 106 ) { y_shift += 15; }
		 
	break;
	default:
		image_num=0;
	
	break;
	}


self.image_index=image_num;
//self.image_index=7;

//draw_set_valign(fa_middle);
// draw radical 
font_scale = 4;
draw_text_ext_transformed(self.x + x_align + x_shift,self.y + y_align + y_shift,kanji,30,200,font_scale,font_scale,0);
