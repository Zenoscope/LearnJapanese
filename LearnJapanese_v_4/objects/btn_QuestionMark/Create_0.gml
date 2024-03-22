/// @Questionmark button create

hovering = false;
clicked = false;

orig_btn_name = object_get_name(object_index);
name_array = function_trim_buttonName(orig_btn_name);

btn_name = "?";
display_name = "?";

//my_height = image_xscale;
//my_width = image_yscale; 

global.show_helptext = false;
tooltips = global.tooltips;

/*
Tid needs to look like a tooltip,
but function like helptext.
// works!
searchString = btn_name;
value = "";

// search for the tooltip stuff
try{
	var has_help = array_any(global.tooltips, function(_val, _ind)
	{
	// this function can only have one line?
	// needs to return true or false
	value = _val;
	return _val.button_name == searchString;
	});
  } // eo try
catch ( _exception){
	has_help = false;
 }

tip = value.tooltip;
*/
tip_text = ""; 
bttn_width = sprite_get_width(spr_Button);
