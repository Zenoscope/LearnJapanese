/// @description shows the text

//---- completed parts
// verbs
// particles
// adjectives + search

//---- to be finished
// adverbs  + search  
// sentence - list
// sentence constructor
// nouns + search

/*
//used for displayng result when button is clicked
card_index:		room_script.card_index + i,
// shows reults on button
kanji:			room_script.display_list[room_script.card_index + i].kanji,
meaning:		room_script.display_list[room_script.card_index + i].meaning,
kana:			room_script.display_list[room_script.card_index + i].field_2,
verbStem:		room_script.display_list[room_script.card_index + i].verbStem,
examples:		room_script.display_list[room_script.card_index + i].examples,
type			room_script.display_list[room_script.card_index + i].field1,
*/



if (live_call()) return live_result;

var layer_array = ["Sentence","Particles","Verbs","Nouns","Adjectives","Adverbs","Arrow_Buttons","Search","Verbs_bg","Nouns"];
function_deactivate_layers_by_Name(layer_array);

if layer_exists("vocab_layer") {
	layer_destroy("vocab_layer");
	}

field_list = ["field_1"];

// reset the search too.

array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));

// switch statement for the buttons
switch (btn_name)
		{

		case "Adverbs":
#region
/*
			// room_script.grammar_string = [];
			// array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));
			// either it crashes or it gets an extra line at the end.
			
			room_script.title_string = "Adverbs";
			field_list = ["field_1"];
			
			room_script.word_list = function_add_to_WordBuilderArray("Adverb",room_script.kanji_list,field_list);
			
			room_script.grammar_string[0] = "Describes a verb. Adverbs in English usually end";
			room_script.grammar_string[1] = "in -ly (eg: slowly, brokenly, noisily) and can";
			room_script.grammar_string[2] = "come before or after the verb.";
			room_script.grammar_string[3] = "In the sentence 'I quickly ran to the train station'";
			room_script.grammar_string[4] = "'quickly' is the adverb.";
						
			room_script.grammar_string[5] = "Adverbs can be derived from i adjectives, by changing the";
			room_script.grammar_string[6] = "(i) into a (ku). To use a na adjective, change the (na) to (ni).";
			room_script.grammar_string[7] = "There are also adverbs which aren't derived from adjectives.";
										
			// this is for the word search
			room_script.total_lines = 7;
			room_script.current_line = 4;
			room_script.max_words_to_display = 4;
			
			room_script.display_string = function_join_string(room_script.current_line - ( room_script.max_words_to_display - 1), room_script.max_words_to_display ,room_script.grammar_string);
			
			// this will display the adjective search.
			room_script.search_result_method = function(arg){
				// just an example				
				//Adverbs - fill in the adverb conjugation
				// show the word search result button
				show_debug_message("you clicked "+ btn_name);
				}
			
			// move the layer.
			instance_activate_layer("Search");
			btn_Dialog_Search.y = 370;		
*/
#endregion		

		break;

		case "Particles":
#region
			// might have to loop through and delete all of the grammar_string[]'s first?			
			// array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));
			
			instance_deactivate_layer("search");
			
			room_script.title_string = "Particles";
			
			// max width is to col 100			
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

			// mash the arrays together into a huge string, up to the max display length					

			room_script.total_lines = 83;
			room_script.current_line = 13;
			room_script.max_words_to_display = 13;
						
			room_script.display_string = function_join_string(room_script.current_line - ( room_script.max_words_to_display - 1), room_script.max_words_to_display ,room_script.grammar_string);
									
			instance_activate_layer("Arrow_Buttons");
#endregion
		break;

		case "Verbs":
#region
			// show search thing for verbs
			array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));
			room_script.title_string = "Verb conjugation";
			room_script.display_string = room_script.title_string;
			
			room_script.word_list = function_add_to_WordBuilderArray("Verb",room_script.kanji_list,field_list);						
						
			room_script.search_result_method = function(arg){
				
			// delete the vocab layer
			// layer_destroy("vocab_layer");
			
			type = arg[1];
			verbStem = arg[0];
				
			// just an example
			//Verbs - fill in the verb conjugation form 
			//plus special case suru
			
			// TODO
			// need to finish this with the rest of the verbs
				
			// suru verb
				if ( string_count(type, "suru") > 0 ) {
					conjugation_pln = verbStem + " shi";
					conjugation_pol = verbStem + " shi";		
					}				
				  
				if ( string_count(type,"Godan") > 0 && string_count(verbStem, "/") > 0 ) {
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
				instance_activate_layer("Verbs");	
				instance_activate_layer("Search");				
					
				btn_Dialog_Search.y = 82;
				
				room_script.total_lines = 13; // total number of lines in the list
				room_script.current_line = 8; // current line (same as number of words to display, initially)
				room_script.max_words_to_display = 8;
				
#endregion
		break;

		case "Adjectives":			
#region
/*
			array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));
			room_script.title_string = "Adjectives";
		
			room_script.grammar_string[  0] = "Adjectives describe nouns, eg hot, handsome, old...";
			room_script.grammar_string[  1] = "Adjectives have two types in Japanese: -い and -な";
			room_script.grammar_string[  2] = "adjectives. Most い adjectives combine a single kanji";
			room_script.grammar_string[  3] = "(汚い- dirty) with an い, though are most commonly";
			room_script.grammar_string[  4] = "written in hiragana (kunyomi reading), and can be";
			room_script.grammar_string[  5] = "used and conjugated like Japanese verbs. い adjectives";
			
			room_script.grammar_string[  6] = "can be used verbless, eg 'い' can mean 'it's delicious'.";			
			room_script.grammar_string[  7] = "Na adjectives end in -な when directly before a noun.";
			room_script.grammar_string[  8] = "Otherwise, they function like nouns. They  are conjugated";
			room_script.grammar_string[  9] = "using だ or です. They are usually written as two kanji.";
			room_script.grammar_string[ 10] = "There is one irregular verb, いい (good). The rest";
			room_script.grammar_string[ 11]= "are regular."			
				
			room_script.total_lines = 13; // total number of lines in the list
			room_script.current_line = 4; // current line (same as number of words to display, initially)
			room_script.max_words_to_display = 4; 			
			
			room_script.display_string = function_join_string(room_script.current_line - ( room_script.max_words_to_display - 1), room_script.max_words_to_display ,room_script.grammar_string);
			
			room_script.word_list = function_add_to_WordBuilderArray("Adjective",room_script.kanji_list,field_list);
	
			room_script.search_result_method = function(arg){

			obj_PlainTitle.x = 1000;
			obj_PlainTitle._text = "Plain";
			obj_PoliteTitle._text = "Polite";
			
			//if (adjective is i) {
			
				word_length = string_length(word);
				word_kanji = string_delete(word,0,word_length); // delete the last character in the string
	
				obj_AdjPlainPres._text = word;
				obj_AdjPlainPresNeg._text = word_kanji + "kunai";
			
				obj_AdjPlainPast._text = word_kanji + "katta";
				obj_AdjPlainPastNeg._text = word_kanji +  "kunakatta";

				obj_AdjPolitePres._text = word + "desu";
				obj_AdjPolitePresNeg._text = word_kanji + "kunai desu\n" + word_kanji + "arimasen";
			
				obj_AdjPolitePast._text = word_kanji + "kattadesu";
				obj_AdjPolitePastNeg._text = word_kanji + "kunakatta desu\n" + word_kanji + "ku arimasendeshita";
			
				//}
				//else if (adjective is na) {
			
				word_length = string_length(word);
				word_kanji = string_delete(word,0,word_length); // delete the last character in the string
	
				obj_AdjPlainPres._text = word + "ta";
				obj_AdjPlainPresNeg._text = word_kanji + "janai\n" + word_kanji + "dewanai";
			
				obj_AdjPlainPast._text = word_kanji + "datta";
				obj_AdjPlainPastNeg._text = word_kanji +  "janai\n" + word_kanji + "dewanakatta";
			
				obj_AdjPolitePres._text = word + "desu";
				obj_AdjPolitePresNeg._text = word_kanji + "janai desu\n" + word_kanji + "ja arimasen\n" + word_kanji + "dewanaidesu\n" + word_kanji + "dewa arimasen";
			
				obj_AdjPolitePast._text = word_kanji + "deshita";
				obj_AdjPolitePastNeg._text = word_kanji + "kunakatta desu\n" + word_kanji + "ku arimasendeshita";			
					
				//}			
			}
			instance_activate_layer("Adjective");		
			instance_activate_layer("Search");
			btn_Dialog_Search.y = 350;
*/
#endregion

		break;

		case "N50sentences":			
#region
			// just a list of sentence examples.
			array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));
			
			room_script.grammar_string ="";
			room_script.title_string = "Sentence examples";			
			
			room_script.grammar_string[1] = "Japanese sentences follow subject object verb";
						
			room_script.total_lines = 52; // total lines in the array
			room_script.current_line = 10; // current last line to display
			room_script.max_words_to_display = 10; //max lines to display on the screen 

			room_script.display_string = function_join_string(room_script.current_line - ( room_script.max_words_to_display - 1), room_script.max_words_to_display ,room_script.grammar_string);
		
			instance_activate_layer("Arrow_Buttons");

#endregion
		break;

		case "Sentence Constructor":		
#region		
			array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));			
			room_script.title_string = "Sentence constructor";
			
			room_script.grammar_string[1] = "Choose the type of sentence you want to make.";
			room_script.grammar_string[2] = "Use the dropdowns to add in the appropriate nouns and verbs.";
			
			room_script.tltal_lines = 2;
			room_script.current_line=2;
			room_script.max_words_to_display = 2;
			
			room_script.display_string = function_join_string(room_script.current_line - ( room_script.max_words_to_display - 1), room_script.max_words_to_display ,room_script.grammar_string);
#endregion		
		break;

		case "Nouns":		
#region
			array_delete(room_script.grammar_string,1,array_length(room_script.grammar_string));			
			room_script.title_string = "Noun";
			
			room_script.grammar_string[1] = "Noun are naming words. \'Dog\', \'James\' and \'love\' are all nouns. ";
			room_script.grammar_string[2] = "(common nouns, formal nouns, and abstract nous, respectively).";
			room_script.grammar_string[3] = "Use the dropdown to search for nouns.";
			
			room_script.total_lines = 3;
			room_script.current_line=3;
			room_script.max_words_to_display = 3;
			
			room_script.display_string = function_join_string(room_script.current_line - ( room_script.max_words_to_display - 1), room_script.max_words_to_display ,room_script.grammar_string);
			
			instance_activate_layer("Search");
			
#endregion			
		break;

		default:
			show_debug_message("The grammar buttons are broken! Congrats, you found a bug!");
		break;
		}
