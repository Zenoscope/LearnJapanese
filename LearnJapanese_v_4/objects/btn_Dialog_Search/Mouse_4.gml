/// @description blink cursor, destroy search results 

blink_speed = 10;
blink = true;
alarm[0] = blink_speed;
search_box_text = ""

if layer_exists("vocab_layer") {
	layer_destroy("vocab_layer");
	room_script.search = false;
	}