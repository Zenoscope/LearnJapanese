/// obj_Kanjicard step

show_debug_message("room_script " + string(room_script));

// move the card whe the arrow is clicked
	if (room_script.moving == "to_left") {
		var destination_x = initial_x - room_script.card_middle_x;
		
		//function move_cards(destination_x,destination_y,card,room_script) {
		move_cards(destination_x,room_script.y_loc,self,room_script);
		}
	else if (room_script.moving == "to_right" ) {
		var destination_x = initial_x + room_script.card_middle_x;
		
		//function move_cards(destination_x,destination_y,card,room_script) {
		move_cards(destination_x,room_script.y_loc,self,room_script);
		}
	else if (room_script.moving = false) {
		// reset the starting location of the card to where it is at rest
		// so it can move again.
		initial_x = x;
		initial_y = x;
		
		self.moving = false;
		self.speed = 0;
		}
