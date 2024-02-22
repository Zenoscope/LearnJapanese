/// @description Insert description here
// You can write your code in this editor

function function_stop_cow_narrator(){
		// stop "talking", set the image back to the first image.
		if (instance_exists(obj_CowNarr)) {
			obj_CowNarr.image_index = 0;
			}
		}


if (layer_exists("Helptext")){
	layer_destroy("helptext");
	}
	
function_stop_cow_narrator()	