/// @description destroy the layer and allow for clicks
// You can write your code in this editor

room_script.blockButtonClick = false;

// get the name of the layer the dialog box is on:
var element = layer_get_element_layer(self);
layer_destroy_instances(element);