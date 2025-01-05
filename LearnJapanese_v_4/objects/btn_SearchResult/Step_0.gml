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
	room_script.search_result_method();
	// disable the other layers....
	
	
var a = layer_get_all();
for (var i = 0; i < array_length(a); i++;)
	{
    show_debug_message(string(layer_get_name(a[i])));
	}
	
	show_debug_message("=======================");
	var LayerArray = ["Sentence","Particles","Verbs","Verbs_bg","Nouns","Adjectives","Adverbs","Search","vocab_layer"]
	function_deactivate_layers_by_Name(LayerArray);

// Example of printing layer names using show_debug_message

// Get the number of layers in the current room
var total_layers = layer_get_all();

// Loop through all layers and print their names to the debug console
for (var i = 0; i < array_length(total_layers); i++) {
    //var layer_id = layer_get_at(i); // Get the layer ID by index
    var layer_name = layer_get_name(total_layers[i]); // Get the name of the layer
    
    // Output the layer name to the debug console
    show_debug_message("Layer " + string(i + 1) + ": " + layer_name);
}

var a = layer_get_all();
for (var i = 0; i < array_length(a); i++;)
	{
    show_debug_message(string(layer_get_name(a[i])));
	}
	show_debug_message("=======================");
	
}//1

//if (hovering) { 
//	show_debug_message("Hovering: " + string(self.depth));
//	}
