// btn_dragSymbol_parent

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
// ****************WORKS
if (hovering && mouse_check_button_pressed(mb_left) && !successs ) {//2
	grabbed = true;
	xx = x - mouse_x;
	yy = y - mouse_y;
	depth = -2;		
	}
// if the card has been released but the mouse not moved
else if (hovering && mouse_check_button_released(mb_left)) {//2		
	if (successs = false ) {
		moving = true;
		grabbed = false;
		depth = -2;
		}
	else {
		moving = false;
		grabbed = false;		
		}
	}

// move the card if it has been grabbed
if (grabbed) {
	//show_debug_message("you grabbed a card");
	x = xx + mouse_x;
    y = yy + mouse_y;
	depth = -2;		
	}	

// If hovering, scale the card 
if (hovering &&  !successs ) {//2
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
		depth = 0;		
		}
}


// if the card meets a playingcard
// check to see if the card is the right card (index x of both should match, right?)
// mnouse collision rather than sprite collision?
// replace with a rectangle collision - point in rectangle, where we get the instance to aim for, and 
// the coordinates, +- 50 to x and y for the rectangle size, then get the location of the mouse....

// check the instance id matches in the array somehow.

var instance		  = room_script.array_cardStack[0][2];
var cardface		  = room_script.array_cardStack[0][0];
var meaning_character = room_script.array_cardStack[0][1];

if (point_in_rectangle(x, y, instance.x - 25, instance.y - 25, instance.x + 25, instance.y + 25)) {
	
	// use the button name to change behaviour	
	//if (btn_name == "btn_ShowKana" ) {
		show_debug_message("Kana Success!!!");
		instance.card_face_text = cardface;
		instance.image_blend = c_white;
	
	//function_reset_missing_card();
	//function_delete_found_card(room_script);
		
		/*
		if (btn_Yoon.selected == true) { button_selected = "yoon_"; }
		else if (btn_Gojuon.selected == true) { button_selected = "gojuon_"; }			
		else if (btn_HanDakuten.selected == true) { button_selected = "handaken_";}
		
		function_play_sound(button_selected,meaning_character);
		*/
		
	//	}
	//else if (btn_name == "btn_DragSymbol_Character"){
		
	//	}
	
	}
