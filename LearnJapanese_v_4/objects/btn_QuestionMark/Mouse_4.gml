/// @description Insert description here
// You can write your code in this editor



function test_show_message(button_name,tooltip_array,mySelf){

// //1
// choose the right helptext stuff. 	
//
var has_help = false;
	
layer_create(-1000,"Helptext");
	
// works!
searchString = button_name;
value = "";

// search for the tooltip stuff by button_name
try{
	var has_help = array_any(global.tooltips, function(_val, _ind)
	{
	// this function can only have one line?
	// needs to return true or false
	value = _val;
	return _val.button_name == searchString;
	}, 0, array_length(global.tooltips) - 1 );
  } // eo try
catch ( _exception){
	has_help = false;
 }

			var x_loc = 50;
			var y_loc = 50; 
			// max width of the text before a new line...
			// the width of the button being moused over.
			
			//show_debug_message("creating questionmark");
			
			var local_btn_width = mySelf.sprite_width;
			var local_btn_height = mySelf.sprite_height;

			object = asset_get_index("obj_QuestionMark");
			
			var local_tip_text = value.tooltip_text;
			//local_tip_text = "Test the some text\nTest the some text";
				
			//create the object and set some stuff up.
			instance_create_layer(x_loc,y_loc,"Helptext",object,
					{
					tip_text: local_tip_text,
					bttn_width: 1000,
					bttn_height: 650,
					x_loc: x_loc, 
					y_loc: y_loc,
					object: object,
					speed : 0
					});
		}



switch(show_helptext){
	case true:
		show_helptext = false;
		layer_destroy("helptext");
		break;
	case false:
		show_helptext = true;
		
		// DEBUG ONLY
		function_execute_script("scr_HelpText");
		
		test_show_message(room_get_name(room),global.tooltips,self);
		
		//function_show_helptext(room_get_name(room),global.tooltips,self);
		break;	
	default:

	}