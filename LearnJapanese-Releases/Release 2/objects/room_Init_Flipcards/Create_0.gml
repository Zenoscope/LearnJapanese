 /// @description Insert description here
// You can write your code in this editor

// Inital button selected:
//global.selected = "Gojuon";
//image_xscale = 1.05; // set is as "selected"	 
//image_yscale = 1.05;

show_debug_message("Draw Flipcards---------------:");

// *room_script = function_get_room_script_name(id);

kana_array_index = global.use_kana_set;
//kana_array_index = 0;

// make this a function, i will reuse it in the other Kana games else, I'm sure.

// if I made an array of the array names, then I could step through it,
// and use it for the button to toggle the array that is displayed

switch (global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 2])
	{		
		case "Katakana":
			// copy the array
			global.kana_array = [global.katakana_gojuon,global.katakana_handakuten,global.katakana_yoon]
		break;
		
		case "Hiragana":
			// copy the array
			global.kana_array = [global.hiragana_gojuon,global.hiragana_handakuten,global.hiragana_yoon]
		break;		
		default:
			show_debug_message("oh no, you broke it, Kana array not found");
		break;
	}

//
// draw the grid of cards
//

function_draw_kana_grid(global.kana_array);//,kana_array_index,room_script);