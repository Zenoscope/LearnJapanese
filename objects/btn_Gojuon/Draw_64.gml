/// @description Insert description here
// You can write your code in this editor

if (global.use_kana_set = 0 && btn_name = "Gojuon") 
	{ draw_set_alpha(1); }
else if (global.use_kana_set = 1 && btn_name = "(Han)dakuten")
	{ draw_set_alpha(1); }
else if (global.use_kana_set = 2 && btn_name = "Yoon")
	{ draw_set_alpha(1); }
else { draw_set_alpha(0.75); }

// Inherit the parent event
event_inherited();

draw_set_alpha(1);