/// @description draw the dialog box
// You can write your code in this editor

draw_self();

xloc		  = 325;
yloc		  = 100; 

event_inherited();

var y_offset = 12;
var x_offset = 15;

draw_set_font(FlashCards);
draw_set_color(c_black);
draw_set_valign(fa_left);
draw_set_halign(fa_top);

var x_scale = 0.65;
var y_scale = 0.65;

draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 1)			,"Kanji: "	+ kanji,0,1000,x_scale,y_scale,0);
draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 3)			,"Meaning: "+ meaning,0,1300,x_scale,y_scale,0);
draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 5)	,"Type: "	+ word_type,0,1000,x_scale,y_scale,0);

draw_text_ext_transformed(xloc + x_offset + 700,yloc + (y_offset * 1)	,"Kana: "	+ kana,0,1000,x_scale,y_scale,0);
draw_text_ext_transformed(xloc + x_offset + 700,yloc + (y_offset * 3)	,"Romaji: "	+ romanji,0,1000,x_scale,y_scale,0);

draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 7)			,"Example: "+ example,(y_offset * 3),1300,x_scale,y_scale,0);

var _verbStem = kana;

// max chars for stem is about 6.
_verbStem = "Abcdef";

// just an example
//Verbs - fill in the verb conjugation form 
//plus special case suru
			
// TODO
// need to finish this with the rest of the verbs
			
word_length = string_length(romanji);
// word_kanji = string_delete(word,0,word_length); // delete the last character in the string

word = romanji;

show_debug_message(word_type);

newbyte = string_byte_at(word_type, 1);

if ( newbyte = string_byte_at("な", 1) ) {

// suru verb
	if ( string_count(word_type, "suru") > 0 ) {
		var _conjugation_pln = _verbStem + " shi";
		var _conjugation_pol = _verbStem + " shi";		
		}				
				  
	if ( string_count(word_type,"Godan") > 0 && string_count(verbStem, "/") > 0 ) {
		var _temp = string_split(verbStem,"/");
		var _conjugation_pln = _temp[1];
		var _conjugation_pol = _temp[0];
		}
	else { // not quite, but should work for now.
		// Godan verbs are more complicated than this, but should be OK
		// with some more rules.
		var _conjugation_pln = _verbStem;
		var _conjugation_pol = _verbStem;					
		}
	}

// ichidan
// UI Elements

var _layer_depth  = layer_get_depth(self.layer);
layer_create(_layer_depth - 100, "verbTable")

var _x_column0 = 500;
var _x_column1 = 690;
var _x_column2 = 1040;
var _y_section1 = 85;
var _y_section2 = 525; // + 70
var _y_offset = 63;

var v_alignment = fa_bottom;

// Headers for the form
var _dict = instance_create_layer(_x_column0, _y_section2 + (_y_offset * -4), "verbTable",btn_invisButton);
_dict.v_alignment = v_alignment;
_dict.btn_name = "invisDictionary"; // index for the helptext
_dict.display_name = "Dictionary"; // name of button

var _stem = instance_create_layer(_x_column0, _y_section2 + (_y_offset * -3), "verbTable",btn_invisButton);
_stem.v_alignment = v_alignment;
_stem.btn_name = "invisStem";
_stem.display_name = "Stem";

var _teForm   = instance_create_layer(_x_column0, _y_section2 + (_y_offset * -2), "verbTable",btn_invisButton);
_teForm.v_alignment = v_alignment;
_teForm.btn_name = "invisTeForm";
_teForm.display_name = "'Te form'";

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

// fields for the words to fill

// this is the top grammar stuff 
var _VerbTextTeForm = instance_create_layer(_x_column1, _y_section2 + (_y_offset * -4), "verbTable", obj_VerbTextParent );
_VerbTextTeForm._text = _verbStem + "te"; // tabe+te

var _invisDictionary = instance_create_layer(_x_column1, _y_section2 + (_y_offset * -3), "verbTable",obj_VerbTextParent );
_invisDictionary._text	= _verbStem + "u";// tabe + ru				

var _VerbTextStem = instance_create_layer(_x_column1, _y_section2 + (_y_offset * -2), "verbTable",obj_VerbTextParent );
_VerbTextStem._text	= _verbStem + "-"; // tabe

// this is the conjugations

var _VerbTextPresPol = instance_create_layer(_x_column1, _y_section2 + (_y_offset *0), "verbTable", obj_VerbTextParent );
_VerbTextPresPol._text = _conjugation_pol + "masu"; //tabe + masu

var _VerbTextPreNegPol = instance_create_layer(_x_column1, _y_section2 + (_y_offset *1), "verbTable", obj_VerbTextParent); 
_VerbTextPreNegPol._text = _conjugation_pol + "masen"; //tabe + masen

var _VerbTextPastPol = instance_create_layer(_x_column1, _y_section2 + (_y_offset *2), "verbTable", obj_VerbTextParent );
_VerbTextPastPol._text = _conjugation_pol + "mashita"; // tabe + mashita

var _VerbTextPastNegPol = instance_create_layer(_x_column1, _y_section2 + (_y_offset *3), "verbTable", obj_VerbTextParent);
_VerbTextPastNegPol._text  = _conjugation_pol + "masen deshita"; //tabe + masen deshita

var _VerbTextPresPln = instance_create_layer(_x_column2, _y_section2 + (_y_offset *0), "verbTable", obj_VerbTextParent );
_VerbTextPresPln._text = _conjugation_pln;  //tabe + ru

var _VerbTextPresNegPln = instance_create_layer(_x_column2, _y_section2 + (_y_offset *1), "verbTable", obj_VerbTextParent); 
_VerbTextPresNegPln._text = _conjugation_pln + "nai"; //tabe + nai

var _VerbTextPastPln = instance_create_layer(_x_column2, _y_section2 + (_y_offset *2), "verbTable", obj_VerbTextParent );
_VerbTextPastPln._text = _conjugation_pln + "ta"; // tabe + ta

var _VerbTextPastNegPln = instance_create_layer(_x_column2, _y_section2 + (_y_offset *3), "verbTable", obj_VerbTextParent);
_VerbTextPastNegPln._text = _conjugation_pln + "nakatta"; // tabe + nakatta
				
