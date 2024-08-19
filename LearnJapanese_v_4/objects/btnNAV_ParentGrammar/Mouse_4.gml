/// @description shows the text

if (live_call()) return live_result;

var layer_array = ["Sentence","Particles","Verbs","Nouns","Adjectives","Adverbs","Arrow_Buttons"];
function_deactivate_layers_by_Name(layer_array);

field_list = ["field_1"];

// switch statement for the buttons
switch (btn_name)
		{		
		case "Adverbs":
			
			field_list = ["meaning","romanji","field_3"];
			room_script.word_list = function_add_to_WordBuilderArray("Adverb",room_script.kanji_list,field_list);
			room_script.display_string = "An adverb describes a verb. The can appear pretty much anywhere in a sentence. Averbs can be created from adjectives. Adverbial nouns are nouns that function as adverbs in a sentence.";
			
			room_script.search_result_method = function(arg){
				// just an example				
				//Adverbs - fill in the adverb conjugation
				
				show_debug_message("you clicked "+ btn_name);
				}			
			
		break;

		case "Particles":		
			// might have to loop through and delete all of the grammar_string[]'s first?
			room_script.display_string = "";
						
			#region
			room_script.grammar_string[1] = "Japanese particles, are suffixes or short words in Japanese";
			room_script.grammar_string[2] = "grammar that immediately follow the noun, verb, adjective, ";
			room_script.grammar_string[3] = "or sentence they are modifying. ";
			room_script.grammar_string[4] = "Some are are similar to prepositions [eg to, from] in English, ";
			room_script.grammar_string[5] = "though there is a wide variety of different uses and meanings.";
			room_script.grammar_string[6] = "For more information about specific grammar terms (eg topic, subject etc)";
			room_script.grammar_string[7] = "see the grammar introduction.";
			room_script.grammar_string[8] = "";
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
			#endregion
			
			room_script.total_lines = 52;
			
			// mash the arrays together into a huge string. 
			for(lines = 1; lines <= room_script.num_display_lines; lines++; ) {
				//display_string = string_join("\n",grammar_string[1],grammar_string[2]);
				room_script.display_string = string_join("\n",room_script.display_string,room_script.grammar_string[lines]);
				}
				
			//room_script.search_result_method = function(){
				// just an example
			//	show_debug_message("you clicked "+ btn_name);
			//	}

			
		break;

		case "Verbs":
			// show search thinger for verbs
			room_script.display_string = "Verb conjugation";
			room_script.word_list = function_add_to_WordBuilderArray("Verb",room_script.kanji_list,field_list);
			
			var lay_id = layer_get_id("Search");
			instance_activate_layer(lay_id);			
			
			room_script.search_result_method = function(arg){
				
				// delete the vocab layer
				layer_destroy("vocab_layer");
								
				verbStem = arg;
				
				// just an example
				//Verbs - fill in the verb conjugation form 
				//plus special case suru
				
				// suru verb
				if (string_count(verbStem, "suru") > 0 ) {
					conjugation_pln = verbStem + " shi";
					conjugation_pol = verbStem + " shi";		
					}
				
				if (string_count(verbStem, "/") > 0) {
					temp = string_split(verbStem,"/")
					conjugation_pln = temp[1];
					conjugation_pol = temp[0];
					}
				else { 					
					conjugation_pln = verbStem;
					conjugation_pol = verbStem;
					}
				
				
				// Dictionary/infinitive 
				obj_VerbTextDict._text	= verbStem + "u";// kotaeru
				
				obj_VerbTextStem._text	= verbStem; // kotae
				// stems and inf the same?
				obj_VerbTextTeForm._text = verbStem + "te"; // kotaete
				
				// kotaeru
				
				// aka present indicitive plain
				obj_VerbTextPresPln._text	= conjugation_pln;  //kotae + ru
				obj_VerbTextPresNegPln._text = conjugation_pln + "nai"; //kotae + nai
				
				// aka past indicitive plain
				obj_VerbTextPastPln._text	= conjugation_pln + "ta"; // kotae + ta
				obj_VerbTextPastNegPln._text = conjugation_pln + "masen deshita"; // kotae + nakatta
				
				// aka present indicitive polite
				obj_VerbTextPresPol._text	= conjugation_pol + "masu"; //kotae + masu
				obj_VerbTextPreNegPol._text	= conjugation_pol + "masen"; //kotae + masen
				
				// aka past indicitive polite
				obj_VerbTextPastPol._text	= conjugation_pol + "mashita"; //kotae + mashita
				obj_VerbTextPastNegPol._text = conjugation_pol + "masen deshita"; //kotae + masen deshita
								
				show_debug_message("you clicked "+ btn_name);
				}
			
		break;

		case "Adjectives":
			// show search thinger for adjectives
			room_script.display_string = "Adjectives describe a noun, eg hot, handsome, old...\n\nThere is one, \"good\" which is irregular. The rest are regular.\n Adjectives can work like vebs , when used at the end of a sentence, and coupled with the auillary verb are cnjugated. See the tables below.";
			room_script.word_list = function_add_to_WordBuilderArray("Adjective",room_script.kanji_list,field_list);

			room_script.search_result_method = function(arg){
				// just an example
				// Adjectives (na vs i)
				show_debug_message("you clicked "+ btn_name);
				}

		break;

		case "N50sentences":
			// sentence builder
			// room_script.display_string = 
		break;

		case "Sentence Constructor":
			// sentence builder
			// room_script.display_string = 
		break;

		default:
			show_debug_message("THe grammar buttons are broken! Congrats, you found a bug!");
		break;
		}

// room_script.display_string = btn_name;

room_script.display_name = room_script.display_name + " - " + room_script.display_string;

var lay_id = layer_get_id(btn_name);
instance_activate_layer(lay_id);
room_script.grammar_Room = btn_name;

