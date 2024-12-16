/// @description block button clicks
// You can write your code in this editor

//show_debug_message("Init_Room_Vocab.blockButtonClick " + string(Init_Room_Vocab.blockButtonClick) );

//if (Init_Room_Vocab.blockButtonClick == false ) {
if (room_script.blockButtonClick == false ) {	
	// Inherit the parent event
	event_inherited();

	if (clicked && use_search == false)	{    
		// change the search button to the search bar.
		// how do you cancel the search though?
		layer_create(-1000,"DialogBox");
		search_dialog = instance_create_layer(x,y,"DialogBox",btn_Dialog_Search);
		search_dialog.room_script = room_script;
		use_search = true;	
		}

	}