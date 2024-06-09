/// btn_Flipcard

// Inherit the parent event
event_inherited();

// set the initial card side
card_face = "kana";

// set the card kana_character
card_face_text = kana_character;

//card animation speed
image_speed = 0;

sound_played = false;

// choose a random image from the sprite
image_index = random(image_number);