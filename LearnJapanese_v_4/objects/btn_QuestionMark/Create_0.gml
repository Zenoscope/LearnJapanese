/// @description Insert description here
// You can write your code in this editor
/// @Description - btn_NAVParent (scale)

hovering = false;
clicked = false;

// get the original name of the button
orig_btn_name = object_get_name(object_index);
// process the name, separate button and link names
name_array = function_trim_buttonName(orig_btn_name);

// set the display name on the button
btn_name = name_array[0];
display_name = name_array[1];

image_speed = 0;
image_index = random(image_number);

show_helptext = false;
//tooltips = gloal.tooltips;

v_alignment = fa_middle;