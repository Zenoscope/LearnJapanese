/// Btn_Parent:Create
///

hovering = false;
clicked = false;

// get the original name of the button
orig_btn_name = object_get_name(object_index);
// process the name, separate button and link names
name_array = function_trim_buttonName(orig_btn_name);

// set the display name on the button
btn_name = name_array[0];
display_name = name_array[1];

//show_debug_message("The room is called " + global.current_room);
image_speed = 0;
v_alignment = fa_center;
