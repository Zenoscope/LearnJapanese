// this UI is kind of urgh, I think the whole UI moves up and down?

global.current_room = room_get_name(room);
show_debug_message("The room is called " + global.current_room);

// Up Button
upButtonPressed = false;
upButtonWidth = 250;
upButtonHeight = 50;
upButtonX1 = 10;
upButtonY1 = 20;
upButtonX2 = upButtonX1 + upButtonWidth;
upButtonY2 = upButtonY1 + upButtonHeight;
upTextX = 100;
upTextY = 50;

// Down Button
downButtonPressed = false;
downButtonWidth = 250;
downButtonHeight = 50;
downButtonX1 = 10;
downButtonY1 = upButtonY2 + 10;
downButtonX2 = downButtonX1 + downButtonWidth;
downButtonY2 = downButtonY1 + downButtonHeight;
downTextX = 100;
downTextY = downButtonY1 + 30;

// Scrolling info
scrollStartIndex = 0;

outputX = 300;
outputY = 10;
outputLineHeight = 35;

// Test Output Array
// x = description
// y = pass status
testResultsCount = 0;
testResults[0,0] = "";
testResults[0,1] = noone;

////////////////////////////////////////////

//PoC stuff, not specfically for testing

/*
for(i = 0 ; i < instance_count; i++; ) { //  is an array of instances.
	// if the object_name contains btn...
	//if ( object_name(i) contains "btn"  ) 
	with (instance_id[i]) { 
			room_name = object_index;
			test_variable = "testing this variable";
			}
	}*/

/*for (var i = 0; i < instance_count; i ++;)
{ with (instance_id[i]) speed += 0.1; }*/


show_debug_message("object_get_name: object index = " + string(object_get_name(object_index)));
show_debug_message("script_get_name: object index " + string(script_get_name(object_index)))
show_debug_message("script_get_name: self " + string(script_get_name(self)));

//show_debug_message( string(scriptName));

//room_script = function_get_room_script_name(id);
