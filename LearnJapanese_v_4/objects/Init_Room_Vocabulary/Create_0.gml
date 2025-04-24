/// @Vocab and Grammar

room_set_live(room, true);

// Inherit the parent eveninitialize it with a default value
event_inherited();

display_string = "";

// 76 wide
#region 

// this is test information
grammar_string[1]="Verbs";
grammar_string[2]="A verb is a action word. It shows which action is";
grammar_string[3]="being performed in the sentence. In the sentence 'I";
grammar_string[4]="ran to the train station' 'ran' is the verb. In Japanese";
grammar_string[5]="the verb comes at the end of the sentence. 'I";
grammar_string[6]="quickly ran to the train station' would be 'I ";
grammar_string[7]="trainstation *to* quickly ran'.";
grammar_string[8]="";
grammar_string[9]="Japanese verbs have a plain and polite [aka formal]";
grammar_string[10]="form. Polite language is used to talk to superiors (eg";
grammar_string[11]="your boss) and strangers. Plain language is used to";
grammar_string[12]="talk to close friends, children (including strange ";
grammar_string[13]="children) and shopkeepers.";
grammar_string[14]="";
grammar_string[15]="Verbs can be Transitive - the action changes";
grammar_string[16]="(transfers?) from the subject to object, or";
grammar_string[17]="Intransitive, where the verb doesn't need an object";
grammar_string[18]="to make sense.";
grammar_string[19]="";
grammar_string[20]="There are two types of verbs in Japanese, Godan ";
grammar_string[21]="verbs and Ichidan verbs. The types refer to the way";
grammar_string[22]="the verbs conjugate - how they change forms";
grammar_string[23]="depending on their verb tense. A verb's tense is";
grammar_string[24]="when the action occured, or what type of action it is.";
grammar_string[25]="You use different tenses to describe an action ";
grammar_string[26]="which happened in the past, the present, or that ";
grammar_string[27]="action is a command (called the Imperative tense).";
grammar_string[28]="Other tenses are:";
grammar_string[29]="";
grammar_string[30]="Most verbs are regular, and conjugate in a regular ";
grammar_string[31]="way, except for: suru (to do) and kuru (to come).";
grammar_string[32]="";
grammar_string[33]="Adverbs";
grammar_string[34]="An adverb describes a verb. Adverbs in English end";
grammar_string[35]="in -ly, eg 'slowly', 'happily', 'noisily', and can come";
grammar_string[36]="either before or after the verb. In the sentence 'I ";
grammar_string[37]="quickly ran to the train station' 'quickly' is the";
grammar_string[38]="adverb.";
grammar_string[39]="";
grammar_string[40]="Nouns";
grammar_string[41]="A noun is a naming word. There are nouns, eg 'dog'";
grammar_string[42]="and Proper Nouns which is an actual name eg 'Rex'.";
grammar_string[43]="In the sentence 'My cat is called Milly' cat is a noun,";
grammar_string[44]="while Milly is a proper noun. Japanese also doesn't";
grammar_string[45]="have definite and indefinite articles,'the' and 'a', as ";
grammar_string[46]="there are in English. So you would just say 'Neko wa";
grammar_string[47]="cuppo o [Cat broke cup]' rather than 'The cat broke";
grammar_string[48]="a cup'.";
grammar_string[49]="";
grammar_string[50]="Adjectives";
grammar_string[51]="An adjective describes a noun. Adjectives in English";
grammar_string[52]="go before the noun. In the sentence 'It was a big";
grammar_string[53]="parrot' 'big' is the adjective. In English and ";
grammar_string[54]="Japanese, adjectives go before the noun they are";
grammar_string[55]="modifying.**Japanese adjective example. In";
grammar_string[56]="Japanese there are two types of adjectives, ";
grammar_string[57]="I-adjectives and Na-adjectives. I-adjectives";
grammar_string[58]="usually end in i, for example oishii (delicious) or akai";
grammar_string[59]="(red). Na-adjectives end in i, na or something  else.";
grammar_string[60]="Japanese adjectives can be conjugated in a similar";
grammar_string[61]="way to verbs.";

#endregion

// sets the line to remove
total_lines = 60;
max_words_to_display = 13;
current_line = max_words_to_display;

// mash the arrays together into a huge string. 
for(lines = 1; lines <= max_words_to_display + 1; lines += 1; ) {	
	display_string = string_join("\n",display_string,grammar_string[lines]);
	}

title_string = "Vocabulary";
display_string = string_join("\n",title_string, display_string);

// hide the layers until we need them
// 
var LayerArray = ["Sentence","Particles","Verbs","Verbs_bg","Nouns","Adjectives","Adverbs","Search"];
function_deactivate_layers_by_Name(LayerArray);
function_execute_script("scr_VocabList");

// -- Search settings needed outside the search object

// show a list of words when activating the search function
show_initial_words = true;
search = false;
// show_initial_words = false;
// initial list for search results
search_result_list = [];
// showing no words yet either.
number_words_shown = 0;

// don't block button clicks yet
blockButtonClick = false;
// hide the result buttons
show_results = false;
// set the search to be false

// card_index = 0;
display_list = [];

