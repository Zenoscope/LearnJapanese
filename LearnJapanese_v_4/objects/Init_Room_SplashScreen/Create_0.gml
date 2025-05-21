/// @description Splash Screen!
// You can write your code in this editor

//GMLive		


function_execute_script("scr_HelpText");

global.show_helptext = "false";

window_set_caption("Learn Japanese with Clarabelle and Gran");

// show the version on the splash screen
global.release = "Release 2";

global.current_room = room_get_name(room);

// debugging stuff
// writes the room name to the console
global.room_trace = true;