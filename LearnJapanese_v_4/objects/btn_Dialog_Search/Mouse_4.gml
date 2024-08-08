/// @description blink cursor 

blink_speed = 10;

blink = true;
alarm[0] = blink_speed;

text = ""

// if mouse x > the right side of the search box
// if mouse x < the left side of the search box
// 

//var _width  = sprite_get_width(spr_SearchDropBG);
//var _height = sprite_get_height(spr_SearchDropBG);
//var _ysize =(_yscale/room_script.max_words_to_display) * room_script.word_display_number;	

// draw_rectangle(self.x, self.y - 12,  (_width *_xscale) + self.x , (self.y + ( (_ysize + 1) * _height)) + 12,false);

if ( (mouse_x < self.x  - 12 )) { //|| mouse_x > (_width *_xscale) + self.x ) && ( mouse_y < self.y + 12 || mouse_y >  (self.y + ( (_ysize + 1) * _height)) + 12 )) {
	    draw_set_color(c_red);
		//searchfunction_reset_dropdown();
		show_debug_message("I'm outside!");
		draw_rectangle(self.x, self.y - 12,  (_width *_xscale) + self.x , (self.y + ( (_ysize + 1) * _height)) + 12,false)
		}
		
