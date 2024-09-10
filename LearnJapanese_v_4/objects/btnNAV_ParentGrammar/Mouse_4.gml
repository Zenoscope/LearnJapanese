/// @description shows the text

//---- completed parts
// verbs
// particles

//---- to be finished
// adverbs  + search  
// adjectives + search
// sentence - list
// sentence constructor
// nouns + search

if (live_call()) return live_result;

var layer_array = ["Sentence","Particles","Verbs","Nouns","Adjectives","Adverbs","Arrow_Buttons","Search"];
function_deactivate_layers_by_Name(layer_array);

field_list = ["field_1"];

// switch statement for the buttons
switch (btn_name)
		{		
		case "Adverbs":
			
			//room_script.grammar_string = [];
			array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));
			// either it crashes or it gets an extra line at the end.
			
			room_script.title_string = "Adverbs";
			field_list = ["field_1"];
			
			room_script.word_list = function_add_to_WordBuilderArray("Adverb",room_script.kanji_list,field_list);
			
			room_script.grammar_string[0] = "Describes a verb. Adverbs in English end in -ly eg:";
			room_script.grammar_string[1] = "slowly, brokenly, noisily, and can come either before";
			room_script.grammar_string[2] = "or after the verb.";
			room_script.grammar_string[3] = "In the sentence 'I quickly ran to the train station'";
			room_script.grammar_string[4] = "'quickly' is the adverb.";
						
			room_script.total_lines = 5;
			room_script.current_line = 5;
			room_script.display_lines = 5;
			room_script.max_words_to_display = 5;
			
			room_script.display_string = function_join_string(0,4,room_script.grammar_string);
			
			#endregion			
			
			// this will display the adjective search.
			room_script.search_result_method = function(arg){
				// just an example				
				//Adverbs - fill in the adverb conjugation				
				show_debug_message("you clicked "+ btn_name);
				}
			
			// move the layer.
			instance_activate_layer("Search");
			
			// instance_activate_layer("Arrow_Buttons");			
			
		break;

		case "Particles":		
			// might have to loop through and delete all of the grammar_string[]'s first?			
			array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));
			
			room_script.title_string = "Particles";
			
			// max width is to col 100
			#region
			room_script.grammar_string[  1] = "Japanese particles, are suffixes or short words in";
			room_script.grammar_string[  2] = "Japanese grammar that immediately follow the noun,";
			room_script.grammar_string[  3] = "verb, adjective, or sentence they are modifying.";
			room_script.grammar_string[  4] = "Some are are similar to prepositions [eg to, from]";
			room_script.grammar_string[  5] = "in English, though there is a wide variety of";
			room_script.grammar_string[  6] = "different uses and meanings. For more information";
			room_script.grammar_string[  7] = "about specific grammar terms (eg topic, subject";			
			room_script.grammar_string[  8] = "etc) see the grammar introduction.";
			room_script.grammar_string[  9] = "";
			room_script.grammar_string[ 10] = "Ga, が";
			room_script.grammar_string[ 11] = "1) topic marker (introduces new information)";
			room_script.grammar_string[ 12] = "Example:  “コンビニが近くにあります” (konbini ga";
			room_script.grammar_string[ 13] = "chikaku ni arimasu) - “There is a convenience";
			room_script.grammar_string[ 14] = "store nearby.”";
			room_script.grammar_string[ 15] = "2) however; but ~";			
			room_script.grammar_string[ 16] = "Example: “彼は金はあるが、バカな男だ” (kare wa";
			room_script.grammar_string[ 17] = "kane wa aru ga, baka na otoko da) - “He has money,";
			room_script.grammar_string[ 18] = "but he’s a stupid man.”";
			room_script.grammar_string[ 19] = "";
			room_script.grammar_string[ 20] = "Ka, か";
			room_script.grammar_string[ 21] = "1) question particle (sentence ending particle)";
			room_script.grammar_string[ 22] = "Example:  where is my hat? dore wa watashi  no";
			room_script.grammar_string[ 23] = "bouji desu ka?";
			room_script.grammar_string[ 24] = "";
			room_script.grammar_string[ 25] = "Kara, から";
			room_script.grammar_string[ 26] = "1) because";
			room_script.grammar_string[ 27] = "example: -----";
			room_script.grammar_string[ 28] = "2) since from";
			room_script.grammar_string[ 29] = "example: ------";
			room_script.grammar_string[ 30] = "3) ";
			room_script.grammar_string[ 31] = "example: 東京から札幌へ行きます tokyo kara";
			room_script.grammar_string[ 32] = "sapporo o ikimasu";
			room_script.grammar_string[ 33] = "";
			room_script.grammar_string[ 34] = "Made, まで";
			room_script.grammar_string[ 35] = "1) until";			
			room_script.grammar_string[ 36] = "example: Kinou made Tokyo ni imashita (I was in";			
			room_script.grammar_string[ 37] = "Tokyo until yesterday)";
			room_script.grammar_string[ 38] = "2) as far as";
			room_script.grammar_string[ 39] = "example: 彼は東京まで行った。 (Kare wa Tokyo made";
			room_script.grammar_string[ 40] = " itta.) (He went as far as Tokyo.)";
			room_script.grammar_string[ 41] = "3) to (an extent)";
			room_script.grammar_string[ 42] = "example (3):-----------";
			room_script.grammar_string[ 43] = "4) even ~";
			room_script.grammar_string[ 44] = "example (4):";
			room_script.grammar_string[ 45] = "";
			room_script.grammar_string[ 46] = "Ne, ね";
			room_script.grammar_string[ 47] = "1) isn't it? right? eh? (sentence ending particle";
			room_script.grammar_string[ 48] = "seeking agreement)";
			room_script.grammar_string[ 49] = "example: Inu wa kawaii desu ne? Dogs are cute, eh?";
			room_script.grammar_string[ 50] = "";
			room_script.grammar_string[ 51] = "Ni, に";
			room_script.grammar_string[ 52] = "1) destination particle; in; at; on; to";
			room_script.grammar_string[ 53] = "example: honda-san wa densha ni ikmasu";
			room_script.grammar_string[ 54] = "";
			room_script.grammar_string[ 55] = "Ni / Ne, に/へ";
			room_script.grammar_string[ 56] = "1) to (indicates direction / destination)";
			room_script.grammar_string[ 57] = "example: honda-san wa Tokyo ni ikimashta";
			room_script.grammar_string[ 58] = "";
			room_script.grammar_string[ 59] = "No, の";
			room_script.grammar_string[ 60] = "1) possessive particle, shows the relationship";
			room_script.grammar_string[ 61] = "between subject and object.";
			room_script.grammar_string[ 62] = "example: koko wa watashi no karuma desu";
			room_script.grammar_string[ 63] = "";
			room_script.grammar_string[ 64] = "O / Go, お / ご";
			room_script.grammar_string[ 65] = "1) polite marker; honorific prefix particle";
			room_script.grammar_string[ 66] = "example:";
			room_script.grammar_string[ 67] = "";
			room_script.grammar_string[ 68] = "O / Wo, を";
			room_script.grammar_string[ 69] = "1) object marker particle";
			room_script.grammar_string[ 70] = "example:";
			room_script.grammar_string[ 71] = "";
			room_script.grammar_string[ 72] = "To, と";
			room_script.grammar_string[ 73] = "1) and; with; as; (connecting particle)";
			room_script.grammar_string[ 74] = "example: doa to mado shimasum kudasai";
			room_script.grammar_string[ 75] = "";
			room_script.grammar_string[ 76] = "Wa, は";
			room_script.grammar_string[ 77] = "1) topic marker";
			room_script.grammar_string[ 78] = "example: watashi wa mizu nomimasu i drink water";
			room_script.grammar_string[ 79] = "";
			room_script.grammar_string[ 80] = "yori hou ga, よりほうが";
			room_script.grammar_string[ 81] = "1) [A] is preferred to [B]";
			room_script.grammar_string[ 82] = "example: 私 は 犬 より 補 が 猫 です ね I prefer";
			room_script.grammar_string[ 83] = "cats to dogs.";
						
			room_script.total_lines = 83;
			room_script.current_line = 10;
			room_script.display_lines = 10;
			
			// mash the arrays together into a huge string, up to the max display length					
			//room_script.display_string = display_string;
			room_script.display_string = function_join_string(room_script.current_line - ( room_script.display_lines - 1), room_script.display_lines ,room_script.grammar_string);
			
			#endregion
			
			instance_activate_layer("Arrow_Buttons");
			
		break;

		case "Verbs":
			// show search thing for verbs
			array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));
			room_script.title_string = "Verb conjugation";
			room_script.display_string = room_script.title_string;
			
			room_script.word_list = function_add_to_WordBuilderArray("Verb",room_script.kanji_list,field_list);						
						
			room_script.search_result_method = function(arg){
				
				// delete the vocab layer
				layer_destroy("vocab_layer");
								
				verbStem = arg;
				
				// just an example
				//Verbs - fill in the verb conjugation form 
				//plus special case suru
				
				// TODO
				// need to finish this with the rest of the verbs
				
				// suru verb
				if ( string_count(verbStem, "suru") > 0 ) {
					conjugation_pln = verbStem + " shi";
					conjugation_pol = verbStem + " shi";		
					}
				
				  
				if ( string_count(arg,"Godan") > 0 && string_count(verbStem, "/") > 0 ) {
					temp = string_split(verbStem,"/");
					conjugation_pln = temp[1];
					conjugation_pol = temp[0];
					}
				else { // not quite, but should work for now.
					// Godan verbs are more complicated than this, but should be OK
					// with some more rules.
					conjugation_pln = verbStem;
					conjugation_pol = verbStem;					
					}				
				
				// holds true for all Ichidan verbs.
				// Dictionary/infinitive 
				obj_VerbTextDict._text	= verbStem + "u";// tabe + ru
				
				obj_VerbTextStem._text	= verbStem + "-"; // tabe
				// stems and inf the same?
				
				obj_VerbTextTeForm._text = verbStem + "te"; // tabe+te
				
				// aka present indicitive plain
				obj_VerbTextPresPln._text	= conjugation_pln;  //tabe + ru
				obj_VerbTextPresNegPln._text = conjugation_pln + "nai"; //tabe + nai

				// aka present indicitive polite
				obj_VerbTextPresPol._text	= conjugation_pol + "masu"; //tabe + masu
				obj_VerbTextPreNegPol._text	= conjugation_pol + "masen"; //tabe + masen
				
				// aka past indicitive plain
				obj_VerbTextPastPln._text	= conjugation_pln + "ta"; // tabe + ta
				obj_VerbTextPastNegPln._text = conjugation_pln + "nakatta"; // tabe + nakatta
				
				// aka past indicitive polite
				obj_VerbTextPastPol._text	= conjugation_pol + "mashita"; // tabe + mashita
				obj_VerbTextPastNegPol._text = conjugation_pol + "masen\n deshita"; //tabe + masen deshita
								
				show_debug_message("you clicked "+ btn_name);
				}
				
				instance_activate_layer("Verbs_bg");
				instance_activate_layer("Search");
			
		break;

		case "Adjectives":	
			
			
			array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));
			room_script.title_string = "Adjectives";
		
			room_script.grammar_string[  0] = "Adjectives describe a noun, eg hot,handsome,old...";
			room_script.grammar_string[  1] = "Japanese adjectives can be conjugated.";
			room_script.grammar_string[  2] = "In Japanese, there is irregular, \"good\" which";
			room_script.grammar_string[  3] = "is irregular. The rest are regular.";
			room_script.grammar_string[  4] = "Adjectives can work like verbs, when used at the";
			room_script.grammar_string[  5] = "end of a sentence, and coupled with the auxillary";
			room_script.grammar_string[  6] = "verb are conjugated.";

			room_script.total_lines = 7; // total number of lines in the list
			room_script.current_line = 7; // current line (same as number of words to display, initially)
			room_script.display_lines = 7; 
			room_script.max_words_to_display = 7; // max number of lines to display on the screen
			
			room_script.display_string = function_join_string(0,7,room_script.grammar_string);

			
			room_script.word_list = function_add_to_WordBuilderArray("Adjective",room_script.kanji_list,field_list);

			room_script.search_result_method = function(arg){
				// just an example
				// Adjectives (na vs i)
				show_debug_message("you clicked "+ btn_name);
				}
				
			instance_activate_layer("Search");
			
		break;

		case "N50sentences":			
			
			array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));
			
			room_script.grammar_string ="";
			room_script.title_string = "Sentence examples";
			
			#region
			room_script.grammar_string[1] = "Japanese sentences follow subject object verb";
			room_script.grammar_string[2] = "grammar that immediately follow the noun, verb,";
			room_script.grammar_string[3] = "adjective, or sentence they are modifying.";
			room_script.grammar_string[4] = "Some are are similar to prepositions [eg to, from] in";
			room_script.grammar_string[5] = "English, though there is a wide variety of different";
			room_script.grammar_string[6] = "uses and meanings. For more information about specific";
			room_script.grammar_string[7] = "grammar terms (eg topic, subject etc)see the";
			room_script.grammar_string[8] = "grammar introduction.";			
			room_script.grammar_string[9] = "ga, が, 1) topic marker (introduces new information) ; 2) however; but ~";
			room_script.grammar_string[10] = "example (1):  “コンビニが近くにあります” (konbini ga chikaku ni arimasu) - “There is a convenience store nearby.”";
			room_script.grammar_string[11] = "example (2): “彼は金はあるが、バカな男だ” (kare wa kane wa aru ga, baka na otoko da) - “He has money, but he’s a stupid man.”";
			room_script.grammar_string[12] = "";
			room_script.grammar_string[13] = "ka, か, question particle (sentence ending particle)";
			room_script.grammar_string[14] = "example:  where is my hat? dore wa watashi  no bouji desu ka?";
			room_script.grammar_string[15] = "";
			room_script.grammar_string[16] = "kara, から, 1) because; 2) since; 3) from";
			room_script.grammar_string[17] = "example (1):";
			room_script.grammar_string[18] = "example (2):";
			room_script.grammar_string[19] = "example (3): 東京から札幌へ行きます tokyo kara sapporo o ikimasu";
			room_script.grammar_string[20] = "";
			room_script.grammar_string[21] = "made, まで, 1) until; 2) as far as; ) to (an extent); 4) even ~";
			room_script.grammar_string[22] = "example (1): Kinou made Tokyo ni imashita (I was in Tokyo until yesterday)";
			room_script.grammar_string[23] = "example (2): 彼は東京まで行った。 (Kare wa Tokyo made itta.) (He went as far as Tokyo.)";
			room_script.grammar_string[24] = "example (3):";
			room_script.grammar_string[25] = "example (4):";
			room_script.grammar_string[26] = "";
			room_script.grammar_string[27] = "ne, ね, isn't it? right? eh? (sentence ending particle seeking agreement)";
			room_script.grammar_string[28] = "example: inu wa kawaii desu ne? dogs are cute, eh?";
			room_script.grammar_string[29] = "";
			room_script.grammar_string[30] = "ni, に, destination particle; in; at; on; to";
			room_script.grammar_string[31] = "example: honda-san wa densha ni ikmasu";
			room_script.grammar_string[32] = "";
			room_script.grammar_string[33] = "ni / ne, に/へ, to (indicates direction / destination)";
			room_script.grammar_string[34] = "example: honda-san wa Tokyo ni ikimashta";
			room_script.grammar_string[35] = "";
			room_script.grammar_string[36] = "no, の, possessive particle, shows the relationship between subject and object.";
			room_script.grammar_string[37] = "example: koko wa watashi no karuma desu";
			room_script.grammar_string[38] = "";
			room_script.grammar_string[39] = "o / go, お / ご, polite marker; honorific prefix particle";
			room_script.grammar_string[40] = "example:";
			room_script.grammar_string[41] = "";
			room_script.grammar_string[42] = "o / wo, を, object marker particle";
			room_script.grammar_string[43] = "example:";
			room_script.grammar_string[44] = "";
			room_script.grammar_string[45] = "to, と, and; with; as; (connecting particle)";
			room_script.grammar_string[46] = "example: doa to mado shimasum kudasai";
			room_script.grammar_string[47] = "";
			room_script.grammar_string[48] = "wa, は, topic marker";
			room_script.grammar_string[49] = "example: watashi wa mizu nomimasu i drink water";
			room_script.grammar_string[50] = "";
			room_script.grammar_string[51] = "yori hou ga, よりほうが, [A] is preferred to [B]";
			room_script.grammar_string[52] = "example: 私 は 犬 より 補 が 猫 です ね i prefer cats to dogs.";
						
			room_script.total_lines = 52; // total lines in the array
			room_script.current_line = 10; // current last line to display
			room_script.display_lines = 10; //max lines to display on the screen 
			
			// mash the arrays together into a huge string, up to the max display length					
			//room_script.display_string = display_string;
			room_script.display_string = function_join_string(room_script.current_line - ( room_script.display_lines - 1), room_script.display_lines ,room_script.grammar_string);
			
			#endregion
			
			instance_activate_layer("Arrow_Buttons");

		
			// sentence builder
			// room_script.display_string = 
		break;

		case "Sentence Constructor":
			
			array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));
			
			room_script.title_string = "Sentrence constructor";
			// sentence builder
			// room_script.display_string = 
		break;

		default:
			show_debug_message("The grammar buttons are broken! Congrats, you found a bug!");
		break;
		}

// room_script.display_string = btn_name;

room_script.display_name = room_script.display_name + " - " + room_script.display_string;

var lay_id = layer_get_id(btn_name);
instance_activate_layer(lay_id);
room_script.grammar_Room = btn_name;

