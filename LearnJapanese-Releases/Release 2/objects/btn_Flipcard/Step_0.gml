/// @description Object Game

if (object_function == "button") {//1

	// show the flipcard sprite
	// and make the button clickable....	
	self.image_alpha = 1;
	hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);
	
	/*
	if ( image_index >= image_number - 1) {
		//self.image_speed = 0;
		//self.image_index = 0;
	*/	
	/*	if (card_face = "kana") {//2
			card_face = "meaning";
			card_face_text = self.meaning_character;
			clicked = "false";
			}//2
		else if (card_face = "meaning") {//2
			card_face = "kana";
			card_face_text = self.kana_character;
			clicked = "false";
			sound_played = false;
			}//2
			*/
	}//1
// missing, as in the missing kana game.
/*
else if (object_function == "missing") {//1
	self.image_alpha = 0;
	}//1
	*/
else if(object_function == "heading" || object_function == "spacer") {//1
	//hide the card sprite.
	self.image_alpha = 0;	
}//1

/*
// missing, as in the missing kana game.
if (object_function == "builder") {//1
	self.image_alpha = 0;
	card_face_text = self.meaning_character;
	}
*/

if (hovering && mouse_check_button_pressed(mb_left)) {//1
	clicked = true;
	} //1

if (mouse_check_button_released(mb_left)) {//1
	clicked = false;
	}//1

if (clicked) {//1
	show_debug_message("you clicked a card");		
	self.card_face_text = "";
	 //self.image_speed = 1.5;
	 /*
	if (card_face = "kana") {//2
		if (btn_Yoon.selected == true) { button_selected = "yoon_"; }
		else if (btn_Gojuon.selected == true) { button_selected = "gojuon_"; }			
		else if (btn_HanDakuten.selected == true) { button_selected = "handaken_";}
		
		function_play_sound(button_selected,self.meaning_character);	
		}//2
	*/
	if (object_function == "button") {//1
		if (card_face = "kana") {//2
			card_face = "meaning";
			card_face_text = self.meaning_character;
			clicked = "false";
			}//2
		else if (card_face = "meaning") {//2
			card_face = "kana";
			card_face_text = self.kana_character;
			clicked = "false";
			sound_played = false;
			}//2
		}
	
	}//1
else if (hovering) {//1
	 //window_set_cursor(cr_handpoint);
	 image_xscale = 1.05;	 
	 image_yscale = 1.05;
	}//1
else {//1
	 //window_set_cursor(cr_arrow);	 
	 image_xscale = 1.0;
	 image_yscale = 1.0;	 
	}//1
