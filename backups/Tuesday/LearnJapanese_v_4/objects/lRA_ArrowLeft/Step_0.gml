/// LRA_Arrow

hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)) 
	{
	clicked = true;
	} 

if (mouse_check_button_released(mb_left)) 
	{
	clicked = false;
	} 

// if the arrow is clicked
if (clicked)
	{ // 1		
	// if the card isn't already moving to it new location (prevents bugs)
	if (room_script.moving == false ) {
		// if the button is left, and the card_index isn't at the end of the card array
		// (no loops here)
		
		
		if (btn_name == "ArrowLeft" && room_script.card_index <= (array_length(room_script.kanji_list) - 1) ){//3
			
			room_script.moving = "to_left";
			
			// locations as set in the create room script
			var y_loc = room_script.y_loc;
			var x_loc = room_script.card_right_x;
			
			// increment the card index for the new card to display
			var card_index = room_script.card_index + 1;

			// spawn the card in the right place
			function_spawn_kanji_card(x_loc,y_loc,room_script,card_index);
			
			// make the index catch up to the new card as the one to display
			room_script.card_index = room_script.card_index + room_script.number_of_cards;
			}//3
		// this script is the same as the above, but it moves the other way.
		// the card_index has to be greater than the start of the array
		else if (btn_name == "ArrowRight" && room_script.card_index > 0  ) {//3
			
			room_script.moving = "to_right";
			
			var y_loc = room_script.y_loc;
			var x_loc = room_script.card_left_x;
			
			var card_index = room_script.card_index  - 1;

			function_spawn_kanji_card(x_loc,y_loc,room_script,card_index);
			
			room_script.card_index = room_script.card_index - room_script.number_of_cards;
			}
		}
	clicked = false;
	} //1

// change arrow size if hovering
else if (hovering) 
	{//2	
	 //window_set_cursor(cr_handpoint);
	 // get bigger if hovering	
	 image_xscale = 1.05;	 
	 image_yscale = 1.05;
	}//2
else {//2
	 //window_set_cursor(cr_arrow);	 
	 image_xscale = 1.0;
	 image_yscale = 1.0;
	}//2
