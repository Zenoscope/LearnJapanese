/// btn_Goujon

hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)) {
	clicked = true;	
	} 

if (mouse_check_button_released(mb_left)) {
	clicked = false;

	if (hovering) 
		{
		//audio_play_sound(snd_button, 1, false);		
		}	
	} 

if (clicked){
    //show_debug_message("you goujon clicked" + btn_name);
	function_click_NAV_button(btn_name);
	
	// selected button
	// becase they all share the same code.
	//btn_HanDakuten.selected = false;
	//btn_Yoon.selected = false;
	//btn_Gojuon.selected = false;
	
	//self.selected = true;
	
	// delete all of the instances?
	instance_destroy(btn_Flipcard); // destroy all of the flipcard sprites	
	
	// redraw the grid
	room_name =  room_get_name(room);
	
	if (room_name == "Missing0Kana") {		
		room_restart();		
		clicked = false;
		}
	else if (room_name == "Flipcards") {				
		room_restart();
		clicked = false;
		}	
	}
else if (hovering) {//2	
	 //window_set_cursor(cr_handpoint);

	 image_xscale = 1.05;
	 image_yscale = 1.05;
	 
	 function_show_helptext(btn_name,global.tooltips,self);
	 //function_play_cow_narrator();
	 global.show_helptext = true;	 
	 	 
	}//2
else {//2
	 ///window_set_cursor(cr_arrow);
	
	if (global.show_helptext == true){
		global.show_helptext = false;	
		}	
	}//2