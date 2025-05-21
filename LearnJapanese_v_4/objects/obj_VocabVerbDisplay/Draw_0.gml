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

// draw the UI stuff

draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 1)			,"Kanji: "	+ kanji,0,1000,x_scale,y_scale,0);
draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 3)			,"Meaning: "+ meaning,0,1300,x_scale,y_scale,0);
draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 5)	,"Type: "	+ word_type,0,1000,x_scale,y_scale,0);

draw_text_ext_transformed(xloc + x_offset + 700,yloc + (y_offset * 1)	,"Kana: "	+ kana,0,1000,x_scale,y_scale,0);
draw_text_ext_transformed(xloc + x_offset + 700,yloc + (y_offset * 3)	,"Romaji: "	+ romanji,0,1000,x_scale,y_scale,0);

draw_text_ext_transformed(xloc + x_offset,yloc + (y_offset * 7)			,"Example: "+ example,(y_offset * 3),1300,x_scale,y_scale,0);

var _layer_depth  = layer_get_depth(self.layer);
layer_create(_layer_depth - 100, "verbTable")

var _x_column0 = 500;
var _x_column1 = 690;
var _x_column2 = 1040;
var _y_section1 = 85;
var _y_section2 = 525; // + 70
var _y_offset = 63;

// testing data
//word_type = "Suru";
//romanji = "suru";
//word_type = "Godan";
//romanji = "tatsu";

word_type = "Ichidan";
romanji = "iru";

word_length = string_length(romanji);

if ( string_count("Suru",word_type ) > 0 ) {
		var _stem = "su"
		var _stem2 = "shi"
		
		VerbTextTeForm = _stem2 + "te"; // tabe+te
		InvisDictionary	= _stem + "ru";// tabe + ru
		VerbTextStem	= _stem + "-"; // tabe

		VerbTextPresPol = _stem2 + "masu"; //tabe + masu
		VerbTextPresNegPol = _stem2 + "masen"; //tabe + masen
		VerbTextPastPol = _stem2 + "mashita"; // tabe + mashita
		VerbTextPastNegPol = _stem2 + "masen deshita"; //tabe + masen deshita
		VerbTextPresPln = _stem + "ru"; //tabe + ru
		VerbTextPresNegPln = _stem2 + "nai";  //tabe + ru
		VerbTextPastPln = _stem2  + "ta"; // tabe + ta
		VerbTextPastNegPln = _stem2 + "nakatta"; // tabe + nakatta		
		
		}	
else if ( string_count("Godan",word_type) > 0 ) { // && string_count(verbStem, "/") > 0 ) {
		
		var _stem = string_copy(romanji, 1, word_length - 1)
		var _stem2 = string_copy(romanji, 1,word_length - 2)
		
		if ( romanji = "iu") {
				_stem = "i";
				}				
		// if the last 3 chars are tsu:
		if ( string_copy(romanji, word_length - 3, word_length) == "tsu") {
				_stem = "t";
				}
	
		VerbTextTeForm = _stem + "te"; // tabe+te
		InvisDictionary	= _stem + "u";// tabe + ru
		VerbTextStem	= _stem + "-"; // tabe

		VerbTextPresPol = _stem + "imasu"; //tabe + masu
		VerbTextPresNegPol = _stem + "imasen"; //tabe + masen
		VerbTextPastPol = _stem + "imashita"; // tabe + mashita
		VerbTextPastNegPol = _stem + "imasen deshita"; //tabe + masen deshita
		VerbTextPresPln = _stem + "u"; //tabe + ru
		VerbTextPresNegPln = _stem + "anai";  //tabe + ru
		VerbTextPastPln = _stem  + "ita"; // tabe + ta
		VerbTextPastNegPln = _stem + "anakatta"; // tabe + nakatta
				
		switch string_char_at(_stem,string_length(_stem))			
			{
				case "g": // y				
					VerbTextTeForm = _stem2 + "ide";
					VerbTextPresNegPln = _stem2 + "unai";
					VerbTextPastPln = _stem2 + "ida";	
			    break;
				case "r": // y				
					VerbTextTeForm = _stem2 + "tte";
					VerbTextPastPln = _stem2 + "tta";
				break;
				case "s": // y
					//two stems
					var _stem2 = _stem + "h";
					VerbTextStem = _stem + "-, " + _stem2 + "-";
					VerbTextTeForm = _stem2 + "ite";
					VerbTextPresPol = _stem2 + "imasu";
					VerbTextPresNegPol = _stem2 + "imasen";
					VerbTextPastPln = _stem2 + "ita";
					VerbTextPastNegPln = _stem2 + "anakatta";
					VerbTextPastPol = _stem2 + "imashita";
					VerbTextPastNegPol = _stem2 + "imasen deshita";
				break;
				case "m": // y				
					VerbTextTeForm = _stem2 + "nde";
					VerbTextPastPln = _stem2 + "nda";				
				break;
				case "a": // y
				    VerbTextTeForm = _stem + "tte";
					VerbTextPresNegPln = _stem + "wanai";					
					VerbTextPastNegPln = _stem  + "wanakatta";
					VerbTextPastPln = _stem + "tta";
				break;
				case "t": // y
					var _stem = string_copy(romanji, 1,word_length - 2)
					var _temp = string_copy(romanji, 1,word_length - 3)
					var _stem2 = _temp + "ch";
					VerbTextStem = _stem + "-, " + _stem2 + "-";
					VerbTextTeForm = _temp + "tte";
					VerbTextPresPol = _stem2 + "imasu";
					VerbTextPresNeg = _stem2 + "imasen";
				break;
				case "k": // y
					VerbTextTeForm = _stem2 + "ite";
					VerbTextPastNegPln = _stem2 + "itta";
				break;
				case "b": // y
					VerbTextTeForm = _stem2 + "nde";
					VerbTextPastPln = _stem2 + "nda";
				break; 
				case "i": // y
					VerbTextPresNegPol = _stem + "wanai";
					VerbTextPastNegPln = _stem  + "wanakatta";
					break;
				case "n": // y
					VerbTextTeForm = _stem + "de";
					VerbTextPastPln = _stem + "da";
				break;		
				
			    default:
					invisDictionary  = "error, conjugation not found";
				}		
		}
	else { // ichidan verbs
		var _stem = string_copy(romanji, 1, word_length - 2)
		
		VerbTextTeForm = _stem + "te"; // tabe+te
		InvisDictionary	= _stem + "ru";// tabe + ru
		VerbTextStem	= _stem + "-"; // tabe

		VerbTextPresPol = _stem + "masu"; //tabe + masu
		VerbTextPresNegPol = _stem + "masen"; //tabe + masen
		VerbTextPastPol = _stem + "mashita"; // tabe + mashita
		VerbTextPastNegPol = _stem + "masen deshita"; //tabe + masen deshita
		VerbTextPresPln = _stem + "ru"; //tabe + ru
		VerbTextPresNegPln = _stem + "nai";  //tabe + ru
		VerbTextPastPln = _stem  + "ta"; // tabe + ta
		VerbTextPastNegPln = _stem + "nakatta"; // tabe + nakatta		
		} 

/// UI Elements: ields for the words to fill
if (not_drawn = true) {
	var _VerbTextTeForm = instance_create_layer(_x_column1, _y_section2 + (_y_offset * -2), "verbTable", obj_VerbTextParent );
	var _invisDictionary = instance_create_layer(_x_column1, _y_section2 + (_y_offset * -4), "verbTable",obj_VerbTextParent );
	var _VerbTextStem = instance_create_layer(_x_column1, _y_section2 + (_y_offset * -3), "verbTable",obj_VerbTextParent );

	// this is the conjugations
	var _VerbTextPresPol = instance_create_layer(_x_column1, _y_section2 + (_y_offset *0), "verbTable", obj_VerbTextParent );
	var _VerbTextPreNegPol = instance_create_layer(_x_column1, _y_section2 + (_y_offset *1), "verbTable", obj_VerbTextParent); 
	var _VerbTextPastPol = instance_create_layer(_x_column1, _y_section2 + (_y_offset *2), "verbTable", obj_VerbTextParent );
	var _VerbTextPastNegPol = instance_create_layer(_x_column1, _y_section2 + (_y_offset *3), "verbTable", obj_VerbTextParent);
	var _VerbTextPresPln = instance_create_layer(_x_column2, _y_section2 + (_y_offset *0), "verbTable", obj_VerbTextParent );
	var _VerbTextPresNegPln = instance_create_layer(_x_column2, _y_section2 + (_y_offset *1), "verbTable", obj_VerbTextParent); 
	var _VerbTextPastPln = instance_create_layer(_x_column2, _y_section2 + (_y_offset *2), "verbTable", obj_VerbTextParent );
	var _VerbTextPastNegPln = instance_create_layer(_x_column2, _y_section2 + (_y_offset *3), "verbTable", obj_VerbTextParent);
	
	_VerbTextTeForm._text = VerbTextTeForm; // tabe+te
	_invisDictionary._text	= InvisDictionary;// tabe + ru
	_VerbTextStem._text	= VerbTextStem; // tabe

	_VerbTextPresPol._text = VerbTextPresPol; //tabe + masu
	_VerbTextPreNegPol._text = VerbTextPresNegPol; //tabe + masen
	_VerbTextPastPol._text = VerbTextPastPol; // tabe + mashita
	_VerbTextPastNegPol._text  = VerbTextPastNegPol; //tabe + masen deshita

	_VerbTextPresPln._text = VerbTextPresPln; //tabe + ru
	_VerbTextPresNegPln._text = VerbTextPresNegPln;  //tabe + ru
	_VerbTextPastPln._text = VerbTextPastPln; // tabe + ta
	_VerbTextPastNegPln._text = VerbTextPastNegPln; // tabe + nakatta

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
	
	not_drawn = false
	}


				