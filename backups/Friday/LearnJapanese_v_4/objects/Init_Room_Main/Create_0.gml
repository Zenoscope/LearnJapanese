// Main_menu
// store the menu crubs as an array.
global.roomBreadcrumbs = ["Main_menu"];

//randomise();

global.gender = "m";
global.navLastButton = "";

// get the name of the room_script
room_script = function_get_room_script_name(id);

//HelptextSpr = object_get_sprite("spr_Cow");
//HelptextSpr.image_speed = 0;

// set the Cow help image to the first frame
with (spr_Cow) {
	image_speed = 0;
	}
