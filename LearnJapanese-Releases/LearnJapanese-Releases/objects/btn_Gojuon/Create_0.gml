/// @description Insert description here
// You can write your code in this editor

//btn_goujopn is the parent script for the Kana swapping buttons

image_speed = 0;
image_index = random(image_number);

hovering = false;
clicked = false;
// selected = false;

orig_btn_name = object_get_name(object_index)
//button = function_trim_buttonName(orig_btn_name);
// process the name, separate button and link names
name_array = function_trim_buttonName(orig_btn_name);

// initial setup for each button
// FIXME can probably set it so the brackets are replaced too (eg 1 or 

switch (name_array[0]) {
	case "Gojuon":
		//btn_name = "Gojuon\n五十音";
		btn_name = "Gojuon";
		display_name = "Gojuon";		
		array_index = 0;		
		//btn_Gojuon.selected = true;
	break;
	
	case "HanDakuten":
		//btn_name = "(Han)dakuten\n(半)濁点";
		btn_name = "(Han)dakuten";
		display_name = "(Han)dakuten";		
		array_index = 1;
	break;
	
	case "Yoon":	
		//btn_name = "Youon\nようおん";
		btn_name = "Yoon";
		display_name = "Yoon";		
		array_index = 2;		
	break;
	
	default:
		show_debug_message("Can't name the Kanji switch button");		
	break;	
}

// helptext stuff
global.show_helptext = false;