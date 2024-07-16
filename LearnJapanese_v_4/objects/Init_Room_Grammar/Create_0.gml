/// @description Insert description here
// You can write your code in this editor

room_set_live(room, true);

// Inherit the parent event
event_inherited();

// add he blurb text stuff to RAM.
//function_execute_script("scr_Grammar");

#region
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
grammar_string[22]="Verbs";
grammar_string[23]="A verb is a action word. It shows which action is";
grammar_string[24]="being performed in the sentence. In the sentence 'I";
grammar_string[25]="ran to the train station' 'ran' is the verb. In Japanese";
grammar_string[26]="the verb comes at the end of the sentence. 'I";
grammar_string[27]="quickly ran to the train station' would be 'I ";
grammar_string[28]="trainstation *to* quickly ran'.";
grammar_string[29]="";
grammar_string[30]="Japanese verbs have a plain and polite [aka formal]";
grammar_string[31]="form. Polite language is used to talk to superiors (eg";
grammar_string[32]="your boss) and strangers. Plain language is used to";
grammar_string[33]="talk to close friends, children (including strange ";
grammar_string[34]="children) and shopkeepers.";
grammar_string[35]="";
grammar_string[36]="Verbs can be Transitive - the action changes";
grammar_string[37]="(transfers?) from the subject to object, or";
grammar_string[38]="Intransitive, where the verb doesn't need an object";
grammar_string[39]="to make sense.";
grammar_string[40]="";
grammar_string[41]="There are two types of verbs in Japanese, Godan ";
grammar_string[42]="verbs and Ichidan verbs. The types refer to the way";
grammar_string[43]="the verbs conjugate - how they change forms";
grammar_string[44]="depending on their verb tense. A verb's tense is";
grammar_string[45]="when the action occured, or what type of action it is.";
grammar_string[46]="You use different tenses to describe an action ";
grammar_string[47]="which happened in the past, the present, or that ";
grammar_string[48]="action is a command (called the Imperative tense).";
grammar_string[49]="Other tenses are:";
grammar_string[50]="";
grammar_string[51]="Most verbs are regular, and conjugate in a regular ";
grammar_string[52]="way, except for three: XXXXXX";
grammar_string[53]="";
grammar_string[54]="Adverbs";
grammar_string[55]="An adverb describes a verb. Adverbs in English end";
grammar_string[56]="in -ly, eg 'slowly', 'happily', 'noisily', and can come";
grammar_string[57]="either before or after the verb. In the sentence 'I ";
grammar_string[58]="quickly ran to the train station' 'quickly' is the";
grammar_string[59]="adverb.";
grammar_string[60]="";
grammar_string[61]="Nouns";
grammar_string[62]="A noun is a naming word. There are nouns, eg 'dog'";
grammar_string[63]="and Proper Nouns which is an actual name eg 'Rex'.";
grammar_string[64]="In the sentence 'My cat is called Milly' cat is a noun,";
grammar_string[65]="while Milly is a proper noun. Japanese also doesn't";
grammar_string[66]="have definite and indefinite articles,'the' and 'a', as ";
grammar_string[67]="there are in English. So you would just say 'Neko wa";
grammar_string[68]="cuppo o [Cat broke cup]' rather than 'The cat broke";
grammar_string[69]="a cup'.";
grammar_string[70]="";
grammar_string[71]="Pronouns";
grammar_string[72]="A pronoun is a stand-in for a noun. Pronouns in ";
grammar_string[73]="English are I, you, me, he/him, she/her, they/them,";
grammar_string[74]="and it. In the sentence 'I quickly ran to the train ";
grammar_string[75]="station' 'I' is a pronoun. Japanese  also has";
grammar_string[76]="pronouns, however Japanese it's considered to be ";
grammar_string[77]="impolite to address someone as 'you', rather than by";
grammar_string[78]="their name.";
grammar_string[79]="";
grammar_string[80]="Japanese has about 8 different pronouns, which are";
grammar_string[81]="used by different groups. Eg Boku is used by men";
grammar_string[82]="[example], young girls may refer to them selves by";
grammar_string[83]="their name [example] Watashi means I, anata = 'you'";
grammar_string[84]="watashitachi means 'we', they is [example]. Usually";
grammar_string[85]="people(but don't use it),  are referred to by name, eg";
grammar_string[86]="Taguchi-san wa sensei desu: 'Taguchi-san is a ";
grammar_string[87]="teacher.'";
grammar_string[88]="";
grammar_string[89]="Adjectives";
grammar_string[90]="An adjective describes a noun. Adjectives in English";
grammar_string[91]="go before the noun. In the sentence 'It was a big";
grammar_string[92]="parrot' 'big' is the adjective. In English and ";
grammar_string[93]="Japanese, adjectives go before the noun they are";
grammar_string[94]="modifying.**Japanese adjective example. In";
grammar_string[95]="Japanese there are two types of adjectives, ";
grammar_string[96]="I-adjectives and Na-adjectives. I-adjectives";
grammar_string[97]="usually end in i, for example oishii (delicious) or akai";
grammar_string[98]="(red). Na-adjectives end in i, na or something  else.";
grammar_string[99]="Japanese adjectives can be conjugated in a similar";
grammar_string[100]="way to verbs.";
grammar_string[101]="";
grammar_string[102]="Particles";
grammar_string[103]="Indicates 'How or where'  the action is being ";
grammar_string[104]="performed. Particles are always written in hiragana,";
grammar_string[105]="so they can be used to separate [some] of the";
grammar_string[106]="words in a written sentence, as Japanese doesn't";
grammar_string[107]="separate words.";
grammar_string[108]="";
grammar_string[109]="Conjugation is how a word [usually a verb] takes";
grammar_string[110]="differnt forms, eg for actions happening in the";
grammar_string[111]="present, which have happened in the past,";
grammar_string[112]="commands etc. Counters in Japanese are used to";
grammar_string[113]="denote how many things there are, eg sheets of";
grammar_string[114]="paper etc.";
grammar_string[115]="";
grammar_string[116]="How old are you?";
grammar_string[117]="I am 3 years old [watashi wa san sai desu].";
grammar_string[118]="";
grammar_string[119]="";
grammar_string[120]="Sentence topic";
grammar_string[121]="Similar to subject? IDK";
#endregion

// sets the line to remove
total_lines = 121;
num_display_lines = 11;
current_line = num_display_lines;
display_string = ""; //grammar_string[1];

// mash the arrays together into a huge string. 
for(lines = 1; lines <= num_display_lines; lines += 1; ) {
	//display_string = string_join("\n",grammar_string[1],grammar_string[2]);
	display_string = string_join("\n",display_string,grammar_string[lines]);
	}

show_debug_message(display_string);

//function function_deactivate_layers_byName(layers_to_deactivate){
//	var lay_id = layer_get_id(layers_to_deactivate);	/
//	instance_deactivate_layer(lay_id);	
//	}

if (layer_get_id(self.layer).visible == false) { 
	show_debug_message(display_string);
		}

// hide the layers until we need them
// 

var LayerArray = ["Sentence","Particles","Verbs","Nouns","Adjectives","Adverbs","Search"]
function_deactivate_layers_by_Name(LayerArray);
function_execute_script("scr_VocabList");
show_initial_words = false;

//display_name = display_name + display_string;