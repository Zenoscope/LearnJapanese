/// @Description - btn_NAVParent (scale)

hovering = false;
clicked = false;
cow_frame_change = 0;

// get the original name of the button
orig_btn_name = object_get_name(object_index);
// process the name, separate button and link names
name_array = function_trim_buttonName(orig_btn_name);

// set the display name on the button
btn_name = name_array[0];
display_name = name_array[1];

image_speed = 0;
image_index = random(image_number);

global.show_helptext = false;
//tooltips = gloal.tooltips;

v_alignment = fa_center;
image_speed = 0;

self.x = 1280;
self.y = 48;