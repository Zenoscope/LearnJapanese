/// @description Insert description here
// You can write your code in this editor

// if the number of words is greater than the number of lines to display, show 
// the scrollers

if(array_length(room_script.display_list) > room_script.max_words_to_display ){
	self.visible = true;
	}
else {
	self.visible = false;
	}



// if the number of search words found is less than the total number to display, then 
// hide the scroll thingers.

