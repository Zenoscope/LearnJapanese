/// @description Splash Screen!
// You can write your code in this editor

//GMLive		
room_set_live(room, true);

function_execute_script("scr_HelpText");

global.show_helptext = "false";

window_set_caption("Learn Japanese with Clarabelle and Gran");

// show the version on the splash screen
global.release = "Release 2";

global.current_room = room_get_name(room);
