/// btn_ShowMissingKana_Parent

// get the original name of the button
orig_btn_name = object_get_name(object_index);
// process the name, separate button and link names
name_array = function_trim_buttonName(orig_btn_name);

// set the display name on the button
btn_name = name_array[0];
display_name = name_array[1];

// This is for the card number in missing kana

if (room_get_name(room) == "Missing0Kana") {
	temp_number		= string_replace(string(btn_name), "ShowMissingKana", "");
	button_number	= int64(temp_number);
	
	instance		  = room_script.array_cardStack[button_number][2];
	card_face_text	  = room_script.array_cardStack[button_number][0];	
	}
                                                                
image_speed = 0;
grabbed = false;
moving = false;
successs = false;
depth = 0;

xx = 0;
yy = 0;

x_origin = xstart;
y_origin = ystart;

show_debug_message( btn_name + ": " + string (x_origin) + " " + string (y_origin) );