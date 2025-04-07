/// @description draw the dialog box
// You can write your code in this editor

xloc		  = 325;
yloc		  = 100; 

event_inherited();

var y_offset = 12;
var x_offset = 15;

draw_set_font(FlashCards);
draw_set_color(c_black);
draw_set_valign(fa_left);
draw_set_halign(fa_top);

var x_scale = 0.75;
var y_scale = 0.75;


word_length = string_length(romanji);
// word_kanji = string_delete(word,0,word_length); // delete the last character in the string

word = romanji;

show_debug_message(word_type);

newbyte = string_byte_at(word_type, 1);

if ( newbyte = string_byte_at("な", 1) ) {
			
	_AdjPlainPres = word;
	_AdjPlainPresNeg = word + "kunai";
			
	_AdjPlainPast = word + "katta";
	_AdjPlainPastNeg = word +  "kunakatta";

	_AdjPolitePres = word + " desu";
	_AdjPolitePresNeg = word + "kunai desu (or)\n" + word + "arimasen";
			
	_AdjPolitePast = word + "kattadesu";
	_AdjPolitePastNeg = word + "kunakatta desu (or)\n" + word + "ku arimasendeshita";			
	}
	
else if ( newbyte = string_byte_at("い", 1) ){		
	_AdjPlainPres = word + "ta";
	_AdjPlainPresNeg = word_kanji + "janai\n" + word_kanji + "dewanai";
			
	_AdjPlainPast = word_kanji + "datta";
	_AdjPlainPastNeg = word_kanji +  "janai\n" + word_kanji + "dewanakatta";

	_AdjPolitePres = word + " desu";
	_AdjPolitePresNeg = word_kanji + "janai desu\n" + word_kanji + "ja arimasen (or)\n" + word_kanji + "dewanaidesu (or)\n" + word_kanji + "dewa arimasen";
			
	_AdjPolitePast = word_kanji + "deshita";
	_AdjPolitePastNeg = word + "kunakatta desu (or)\n" + word + "ku arimasendeshita";	
	}
else {
	_AdjPlainPres = "error";
	_AdjPlainPresNeg = word_type;
			
	_AdjPlainPast = "error";
	_AdjPlainPastNeg = "error";

	_AdjPolitePres = "error";
	_AdjPolitePresNeg = "error";
			
	_AdjPolitePast = "error";
	_AdjPolitePastNeg = "error";
	}
// Draw the UI

draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 1)			,"Kanji: "	+ kanji,0,1000,x_scale,y_scale,0);
draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 3)			,"Meaning: "+ meaning,0,1300,x_scale,y_scale,0);
draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 5)	,"Type: "	+ word_type,0,1000,x_scale,y_scale,0);

draw_text_ext_transformed(xloc + x_offset + 700,yloc + (y_offset * 1)	,"Kana: "	+ kana,0,1000,x_scale,y_scale,0);
draw_text_ext_transformed(xloc + x_offset + 700,yloc + (y_offset * 3)	,"Romaji: "	+ romanji,0,1000,x_scale,y_scale,0);

draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 7)			,"Example: "+ example,(y_offset * 3),1300,x_scale,y_scale,0);

// layer for the buttons and text
var _layer_depth  = layer_get_depth(self.layer);
layer_create(_layer_depth - 100, "verbTable")

// columns / rows for the text locations
var _x_column0 = 500;
var _x_column1 = 690;
var _x_column2 = 1040;
var _y_section1 = 85;
var _y_section2 = 525; // + 70
var _y_offset = 62;

var v_alignment = fa_bottom;

var _coltitle1 = instance_create_layer(_x_column1 + 150, _y_section2 + (_y_offset * -1), "verbTable",btn_invisButton);
_coltitle1.v_alignment = v_alignment;
_coltitle1.btn_name = "invisPolite";
_coltitle1.display_name = "Polite";

var _coltitle2 = instance_create_layer(_x_column2 + 150, _y_section2 + (_y_offset * -1), "verbTable",btn_invisButton);
_coltitle2.v_alignment = v_alignment;
_coltitle2.btn_name = "invisPlain";
_coltitle2.display_name = "Plain";

var _title1 = instance_create_layer(_x_column0, _y_section2 + (_y_offset * 0), "verbTable",btn_invisButton);
_title1.v_alignment = v_alignment;
_title1.display_name = "Present";
_title1.btn_name = "invisPresent";

var _title2 = instance_create_layer(_x_column0, _y_section2 + (_y_offset * 1), "verbTable",btn_invisButton);
_title2.v_alignment = fa_middle;
_title2.display_name = "Negative Present";
_title2.btn_name = "invisPresNeg";

var _title3 = instance_create_layer(_x_column0, _y_section2 + (_y_offset * 2), "verbTable",btn_invisButton);
_title3.v_alignment = v_alignment;
_title3.display_name = "Past";
_title3.btn_name = "invisPast";

var _title4 = instance_create_layer(_x_column0, _y_section2 + (_y_offset * 3), "verbTable",btn_invisButton);
_title4.v_alignment = v_alignment;
_title4.display_name = "Negative Past";
_title4.btn_name = "invisPastNeg";

// actual words 

var _VerbTextPresPol = instance_create_layer(_x_column1, _y_section2 + (_y_offset *0), "verbTable", obj_VerbTextParent );
_VerbTextPresPol._text = _AdjPolitePres; //tabe + masu

var _VerbTextPreNegPol = instance_create_layer(_x_column1, _y_section2 + (_y_offset *1), "verbTable", obj_VerbTextParent); 
_VerbTextPreNegPol._text = _AdjPolitePresNeg; //tabe + masen

var _VerbTextPastPol = instance_create_layer(_x_column1, _y_section2 + (_y_offset *2), "verbTable", obj_VerbTextParent );
_VerbTextPastPol._text = _AdjPolitePast; // tabe + mashita

var _VerbTextPastNegPol = instance_create_layer(_x_column1, _y_section2 + (_y_offset *3), "verbTable", obj_VerbTextParent);
_VerbTextPastNegPol._text  = _AdjPolitePastNeg; //tabe + masen deshita

var _VerbTextPresPln = instance_create_layer(_x_column2, _y_section2 + (_y_offset *0), "verbTable", obj_VerbTextParent );
_VerbTextPresPln._text = _AdjPlainPres;  //tabe + ru

var _VerbTextPresNegPln = instance_create_layer(_x_column2, _y_section2 + (_y_offset *1), "verbTable", obj_VerbTextParent); 
_VerbTextPresNegPln._text = _AdjPlainPresNeg; //tabe + nai

var _VerbTextPastPln = instance_create_layer(_x_column2, _y_section2 + (_y_offset *2), "verbTable", obj_VerbTextParent );
_VerbTextPastPln._text = _AdjPlainPast; // tabe + ta

var _VerbTextPastNegPln = instance_create_layer(_x_column2, _y_section2 + (_y_offset *3), "verbTable", obj_VerbTextParent);
_VerbTextPastNegPln._text = _AdjPlainPastNeg; // tabe + nakatta
