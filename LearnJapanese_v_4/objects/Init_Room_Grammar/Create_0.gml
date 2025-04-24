/// @description Insert description here
// You can write your code in this editor

// Inherit the parent eveninitialize it with a default value
event_inherited();

display_string = "";

// 76 wide
#region 

// 
grammar_string[1]="Sentence Structure";
grammar_string[2]="Basic sentence structure in English is Subject-Verb-";
grammar_string[3]="Object, while Japanese sentence structure is ";
grammar_string[4]="Subject-Object-Verb. In Japanese there must be a";
grammar_string[5]="verb at the end of a sentence.";
grammar_string[6]="Eg in English [example] vs Japanese [example].";
grammar_string[7]="In Japanese it is common to leave out the subject of";
grammar_string[8]="a sentence if it is obvious through context:";
grammar_string[9]="'What did you do today?'";
grammar_string[10]="'[I] went to school.'";
grammar_string[11]="";
grammar_string[12]="Subject";
grammar_string[13]="The thing which is performing the action in the ";
grammar_string[14]="sentence. In the sentence 'I quickly ran to the train";
grammar_string[15]="station' 'I' is the subject of the  sentence.";
grammar_string[16]="";
grammar_string[17]="Object";
grammar_string[18]="The thing which the action (verb) is affecting. In";
grammar_string[19]="the sentence 'I quickly ran to the train station.' 'the";
grammar_string[20]="train station' is the object of  the sentence.";
grammar_string[21]="";
grammar_string[22]="Conjugation is how a word [usually a verb] takes";
grammar_string[23]="different forms, eg for actions happening in the";
grammar_string[24]="present, which have happened in the past,";
grammar_string[25]="commands etc. Counters in Japanese are used to";
grammar_string[26]="denote how many things there are, eg sheets of";
grammar_string[27]="paper etc.";
grammar_string[28]="";
grammar_string[29]="Pronouns";
grammar_string[30]="A pronoun is a stand-in for a noun. Pronouns in ";
grammar_string[31]="English are I, you, me, he/him, she/her, they/them,";
grammar_string[32]="and it. In the sentence 'I quickly ran to the train ";
grammar_string[33]="station' 'I' is a pronoun. Japanese  also has";
grammar_string[34]="pronouns, however Japanese it's considered to be ";
grammar_string[35]="impolite to address someone as 'you', rather than by";
grammar_string[36]="their name.";
grammar_string[37]="";
grammar_string[38]="Japanese has about 8 different pronouns, which are";
grammar_string[39]="used by different groups. Eg Boku is used by men";
grammar_string[40]="[example], young girls may refer to them selves by";
grammar_string[41]="their name [example] Watashi means I, anata = 'you' (but don't use it)";
grammar_string[42]="watashitachi means 'we', they is karera. Usually";
grammar_string[43]="people, are referred to by name, eg";
grammar_string[44]="Taguchi-san wa sensei desu: 'Taguchi-san is a ";
grammar_string[45]="teacher.'";
grammar_string[46]="";
grammar_string[47]="Particles";
grammar_string[48]="Indicates 'How or where'  the action is being ";
grammar_string[49]="performed. Particles are always written in hiragana.";
grammar_string[50]="They can be used to separate [some] of the";
grammar_string[51]="words in a written sentence, as written Japanese";
grammar_string[52]="doesn't usually separate words.";
grammar_string[53]="";
grammar_string[54]="How old are you?";
grammar_string[55]="I am 3 years old [watashi wa san sai desu].";
#endregion

// sets the line to remove
total_lines = 54;
max_words_to_display = 13;
current_line = max_words_to_display;

// mash the arrays together into a huge string. 
for(lines = 1; lines <= max_words_to_display; lines += 1; ) {
	display_string = string_join("\n",display_string,grammar_string[lines]);
	}

title_string = "Grammar";
display_string = string_join("\n",title_string,display_string);

// hide the layers until we need them
// 
var LayerArray = ["Sentence","Particles","Verbs","Verbs_bg","Nouns","Adjectives","Adverbs","Search"]
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

card_index = 0;
display_list = [];