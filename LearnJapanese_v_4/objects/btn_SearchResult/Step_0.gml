/// @description Click events

if (live_call()) return live_result;

event_inherited();

if (hovering) {//2	
	text_colour = c_black;
	image_index = 0;
	}//2
else {//2
	text_colour = c_gray;
	text_colour = c_black;
	image_index = 1;
	}//2
  
if (clicked) {//1
	// replace this with the method variables		
	room_script.blockButtonClick = true;
	room_script.search = false;
	var _args = [type,verbStem];
	room_script.search_result_method(_args);					
	
	show_debug_message(string(self));
	show_debug_message("button layer is " + string(self.layer));
	show_debug_message("button layer is " + string(layer_get_name(self.layer)));
	
    show_debug_message("------------show layers");
	
	var _arr_layers = layer_get_all();	
	for (var i = 0; i < array_length(_arr_layers); i++)		
		{//2
		//if (layer_get_name(_arr_layers[i]) == "vocab_layer") {//3
		//	show_debug_message("########" + string(room_get_name(room)));
		
		show_debug_message("name " + string(layer_get_name(_arr_layers[i])));
		show_debug_message("id " + string(_arr_layers[i]));
		//if ( layer_get_name(_arr_layers[i]) == "vocab_layer") {
		//	layer_destroy(_arr_layers[i]);			
		//	}
			
		if ( layer_get_depth(_arr_layers[i]) == -100 ) {
			layer_destroy(_arr_layers[i]);			
			}
		}//2`1																																																																																																																					`
		
	//var lay_id = layer_get_id("vocab_layer")			
	//layer_destroy(lay_id);								

	show_debug_message("---------show layers");
	var _arr_layers = layer_get_all();	
	for (var i = 0; i < array_length(_arr_layers); i++)
		{//2		
			show_debug_message(string(layer_get_name(_arr_layers[i])));				
		}//2
	
	// workaround for GM not finding my layer:
	for (var i = 0; i < array_length(room_script.vocab_display_buttons); i++) {
		//room_script.vocab_display_buttons[i].x = 10000;
		//show_debug_message(string(room_script.vocab_display_buttons[i]).layer);
		//
		// instance_destroy(room_script.vocab_display_buttons[i].id);
		}
		
	
	
	//object_get_instance()
}//1


