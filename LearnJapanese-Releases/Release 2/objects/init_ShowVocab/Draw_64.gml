/// @description Draw the buttons

// draw search text box

// draw rectangel (one pixel wide, so maybe use lines or 9slice instead

box_gap = 5; // gap around the text
line_width = 5; // width for the lines

// block any clicks
// FIXME needs a transparent sprite to scale, will transpareny stop clicks?
var click_blocker = instance_create_layer(0, 0, "DialogBox", obj_ClickBlocker);
with (click_blocker) {
		self.x_scale = window_get_width(); 
		self.y_scale = window_get_height();
		}
		

// background for the dialog box
// fill with white
draw_rectangle_colour(100,50 ,1100 ,700, c_white, c_white, c_white, c_white, false); 

// outline

draw_rectangle(100,50,1100,700, true);
draw_line_width(100,50,1100,50, line_width);	
draw_line_width(100,50,100,700, line_width);
draw_line_width(100,700,1100,700, line_width);
draw_line_width(1100,50,1100,700, line_width);

// write some stuff.

y_offset = 15;
x_offset = 15;

draw_set_font(FlashCards);
draw_set_color(c_black);
draw_set_valign(fa_left);
draw_set_halign(fa_top);

x_scale = 0.75;
y_scale = 0.75;

draw_text_ext_transformed(x + x_offset,y + (y_offset  *1) ,		"Kanji: "	+ kanji,0,1500,x_scale,y_scale,0);
draw_text_ext_transformed(x + x_offset,y + (y_offset  *2) ,		"meaning: "	+ meaning,0,1500,x_scale,y_scale,0);
draw_text_ext_transformed(x + x_offset + 450,y + (y_offset  *1) ,"kana: "	+ kana,0,1500,x_scale,y_scale,0);
draw_text_ext_transformed(x + x_offset + 450,y + (y_offset  *2) ,"romaji: "	+ romanji,0,1500,x_scale,y_scale,0);

draw_text_ext_transformed(x + x_offset + 800,y + (y_offset  *1) ,"type: "	+ type,0,1500,x_scale,y_scale,0);
draw_text_ext_transformed(x + x_offset,y + (y_offset  *3) ,		"example: "	+ example,0,1500,x_scale,y_scale,0);

// add an image or a video or something

/*
Add a video file to the Included Files (/datafiles directory) of your project.
Load the video using video_open().
Alternatively, load a video from a URL.
Draw it in a Draw event using video_draw().
This functions draws the video to an internal surface, which it returns as part of its return array.
You must draw that surface manually using draw_surface() for the video to appear.
Drawing YUV Videos will require extra steps.
When the video is finished, remove it from memory by calling video_close().
Use the Async Callbacks to run code when the video ends.
*/