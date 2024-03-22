/// btn_ShowMissingKana (parent)

/*
Set the button graphic to be the name of the card:
 card_face_text  = whatever the card is, depending on the card name
 is it possible to get this from the room?

hover + click = drag
on mousehover -  change the size 
on drag, card is in the right place,
	play a sound, change the card face 

on drag, drag the card to the wrong place (or no place)
 hover = false
 pings back to the original spot.  

For card dragging, see https://www.youtube.com/watch?v=LJbMuHq5UrE
*/

self.image_alpha = 1;
hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

// inside of the card and clicked it. 
if (hovering && mouse_check_button_pressed(mb_left) && !successs ) {//2
	grabbed = true;
	xx = x - mouse_x;
	yy = y - mouse_y;
	depth = -200;		
	}
	
// if the card has been released but the mouse not moved
else if (hovering && mouse_check_button_released(mb_left)) {//2
	if (successs == false ) {
		moving = true;
		grabbed = false;
		depth = -200;
		if (room_get_name(room) == "Word0Builder") {			
			perform_increment = function_destroy_on_card_collision(room_script.object);
			
			instance.card_face_text = card_face_text;
			instance.image_blend = c_white;
			function_reset_missing_card(self);

			
			if ( perform_increment == true ) {				
				room_script.match_count++;
				}
			}
		}
	else {
		moving = false;
		grabbed = false;		
		}
	}

// move the card if it has been grabbed
if (grabbed) {
	//show_debug_message("you grabbed a card" + depth);
	x = xx + mouse_x;
    y = yy + mouse_y;
	depth = -200;	
	}

// If hovering, scale the card 
if (hovering && !successs ) {//2	 
	 //show_debug_message("hover mouse");
	 //window_set_cursor(cr_handpoint);
	 image_xscale = 1.05;	 
	 image_yscale = 1.05;	 
	}//2
// If not hovering
else {//2
	 //window_set_cursor(cr_arrow);
	 image_xscale = 1.0;
	 image_yscale = 1.0;
	}

if (moving) {
	//show_debug_message("move the card back");
	if ( distance_to_point(x_origin,y_origin) > 5 ){
			move_towards_point(x_origin + xx,y_origin + yy ,10);
		}
	else {
		//show_debug_message(btn_name +" Stop!");
		x = x_origin;
        y = y_origin;
		show_debug_message( string (x_origin) +  string( y_origin ) );
		moving = false;
		speed = 0;
		depth = -200;	
		}
}

// if the card meets a playingcard
// check to see if the card is the right card (index x of both should match, right?)
// mnouse collision rather than sprite collision?
// replace with a rectangle collision - point in rectangle, where we get the instance to aim for, and 
// the coordinates, +- 50 to x and y for the rectangle size, then get the location of the mouse....

if (room_get_name(room) == "Missing0Kana") {
	instance		  = room_script.array_cardStack[button_number][2];
	card_face_text	  = room_script.array_cardStack[button_number][0];
	
	if (point_in_rectangle(x, y, instance.x - 25, instance.y - 25, instance.x + 25, instance.y + 25)) {
		
		show_debug_message("Matching Kana: Success!!!");	

//sets the card face matched to the card which was being dragged
		instance.card_face_text = card_face_text;
		instance.image_blend = c_white;
		function_reset_missing_card(self);

		// need the array position of the card, then I can delete all of the things with it.	
		function_delete_found_card(room_script);

		/*
		// used for the sound playing
		cardface  = room_script.array_missingCardStack[button_number][0];	

		// this is for the play function
		if (btn_Yoon.selected == true) { button_selected = "yoon_"; }
		else if (btn_Gojuon.selected == true) { button_selected = "gojuon_"; }			
		else if (btn_HanDakuten.selected == true) { button_selected = "handaken_";}
		
		// works, but not correctly (missing files, what?)
		function_play_sound(button_selected,meaning_character);
		*/		
		}
	}
