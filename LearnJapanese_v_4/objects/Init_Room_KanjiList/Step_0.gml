if (card_index < 5) {
    card_number = "00" + string(card_index + 1)
    }
else if (card_index < 10) {
    card_number = "00" + string(card_index +1)
    }
else if (card_index < 100) {
    card_number = "0" + string(card_index + 1)
}

//show_debug_message("card mode: " + card_mode)

switch (card_mode) {
	case "kanji":
        // show card_layer
        layer_set_visible("card_layer",true) 
        // kanji_image.object_set_sprite("output_p_000")
        
        break;
	case "mnemonic":
        // hide card_layer if showing
        layer_set_visible("card_layer",false)
        // card_name = asset_get_index("output_p_" + card_number + "__")
        card_name = asset_get_index("output_p_" + card_number + "__")
        //show_debug_message("CardIndex " + card_index)
        //show_debug_message("CardIndex " + card_number)
        
        kanjiImage.sprite_index  = card_name
        break;
	case "trace" :
        // hide card_layer
        layer_set_visible("card_layer",false)
   
        object_set_sprite(kanji_image,index2) // TODO   
        break;
	case "radicals":
        // hide card_layer
        layer_set_visible("card_layer",false)
       
        /// /// set image to show
        object_set_sprite(kanji_image,index2) // TODO
        break;
    default:
        break;
}


