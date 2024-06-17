/// @description Insert description here
// You can write your code in this editor

// get the name of the button
orig_btn_name = object_get_name(object_index);
btn_name = function_trim_buttonName(orig_btn_name);

image_speed = 0;
grabbed = false;
moving = false;
successs = false;

xx = 0;
yy = 0;

x_origin = xstart;
y_origin = ystart;

//show_debug_message( btn_name + ": " + string (x_origin) + " " + string (y_origin) );


	
	