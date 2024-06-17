

function grammar_blurb(
	// button_name,tooltip_text
	_blurb_description,_blurb_text
	) constructor {
	blurb_description	=_blurb_description;
	blurb_text			=_blurb_text;
	}

/*
grammar_blurb02= new grammar_blurb("verbs","A verb is a action word. it shows which action is being performed in the sentence. In the sentence 'I ran to the train station' 'ran' is the verb. In Japanese the verb comes at the end of the sentence. 'I ran to the train station' would be 'I trainstation *to* ran'.\n\nIn Japanese there must be a verb  at the end of a sentence.");
grammar_blurb03= new grammar_blurb("adjectives","An adjective describes a noun. Adjectives in English go before the noun. In the sentence 'It was a big parrot' 'big' is the adjective. **Where do adjectives go in Japanese? **Japanese adjective example.\nIn Japanese there are two types of adjectives, i-adjectives and na-adjectives. i-adjectives usually end in i. Na-adjectives in i, na or something else.\n\nJapanese adjectives can be conjugated in a similar way to verbs.");
grammar_blurb06= new grammar_blurb("adverbs","Describes a verb. Adverbs in English end in -ly, eg slowly, brokenly, noisily, and can come either before or after the verb. In the sentence 'I quickly ran to the train station' 'quickly' is the adverb.");
grammar_blurb08= new grammar_blurb("verb","The action which is being performed in the sentence. In the sentence 'I ran to the train station' 'ran' is the verb in the sentence. There are two types of verbs in Japanese, Godan verbs and Ichidan verbs. The types refer to the way the verbs conjugate - how they change forms depending on their tense. Tense means whether a verb is describing an action eg in the past, present, or that is a command  Most verbs are regular, and conjugate in a regular way, except for three: XXXXXX\n\n All sentences end with a verb.");
grammar_blurb11= new grammar_blurb("particle","Indicates 'How or where'  the action is being performed. \n\n Particles are always written in hiragana, so they can be used to separate [some] of the words in a written sentence.");
*/

function grammar_table(
	// button_name,tooltip_text
	_field_1,_field_2,_field_3
	) constructor {
	field_1	=_field_1;
	field_2	=_field_2;
	field_3	=_field_3;
	}

//particles
particle01 = new grammar_table(" ","だけ","only; just; as much as ~");
particle02 = new grammar_table("ga","が","subject marker; however; but ~");
particle03 = new grammar_table("ka","か","question particle (sentence ending particle)");
particle04 = new grammar_table("ka~ka","か～か","or");
particle05 = new grammar_table("kara","から","because; since; from");
particle06 = new grammar_table("kedo","けど","but; however; although ~");
particle07 = new grammar_table("keredo mo","けれども","but; however; although ~");
particle08 = new grammar_table("made","まで","until; as far as; to (an extent); even ~");
particle09 = new grammar_table("mo","も","too; also; as well");
particle10 = new grammar_table("naa","なあ","(sentence ending particle) shows confirmation; admiration, etc");
particle11 = new grammar_table("ndesu","んです","to explain something; show emphasis");
particle12 = new grammar_table("ne","ね","isn't it? right? eh? (sentence ending particle)");
particle13 = new grammar_table("ni","に","destination particle; in; at; on; to");
particle14 = new grammar_table("ni/ne","に/へ","to (indicates direction / destination)");
particle15 = new grammar_table("no","の","possessive particle");
particle16 = new grammar_table("no desu","のです","to explain something; show emphasis");
particle17 = new grammar_table("node","ので","because of; given that; since ~");
particle18 = new grammar_table("o / go","お / ご","polite marker; honorific prefix particle");
particle19 = new grammar_table("o / wo","を","object marker particle");
particle20 = new grammar_table("tari~tari","たり～たり","do such things as A and B");
particle21 = new grammar_table("to","と","and; with; as; connecting particle");
particle22 = new grammar_table("wa - topic marker","は","topic marker");
particle23 = new grammar_table("ya","や","and; or; connecting particle");
particle24 = new grammar_table("yo","よ","you know; emphasis (sentence ending particle)");
particle25 = new grammar_table("yori ~hou ga","より～ほうが","[2] is more than [1");

table_particles = [
particle01,
particle02,
particle03,
particle04,
particle05,
particle06,
particle07,
particle08,
particle09,
particle10,
particle11,
particle12,
particle13,
particle14,
particle15,
particle16,
particle17,
particle18,
particle19,
particle20,
particle21,
particle22,
particle23,
particle24,
particle25
]

// Adjective table - Adding endings instead?
adjective_table01= new grammar_table("I-adj conjugation","Plain","Polite")
adjective_table02= new grammar_table("The Word","早はやい","")
adjective_table03= new grammar_table("Present","早い","早いです")
adjective_table04= new grammar_table("Negative","早くない","早くないです\n早くありません")
adjective_table05= new grammar_table("Past","早かった","早かったです")
adjective_table06= new grammar_table("Past Negative","早くなかった","早くなかったです\n早くありませんでした")

adjective_table07= new grammar_table("Na-Adj Conjugation","Plain","Polite")
adjective_table08= new grammar_table("The Word","元気げんき","")
adjective_table09= new grammar_table("Present","元気だ","元気です")
adjective_table10= new grammar_table("Negative","元気じゃない\n元気ではない","元気じゃないです\n元気じゃありません\n元気ではないです\n元気ではありません")
adjective_table11= new grammar_table("Past","元気だった","元気でした")
adjective_table12= new grammar_table("Past Negative","元気じゃなかった\n元気ではなかった","元気じゃなかったです\n元気じゃありませんでした\n元気ではなかったです\n元気ではありませんでした")

table_adjectives = [
adjective_table01,
adjective_table02,
adjective_table03,
adjective_table04,
adjective_table05,
adjective_table06,

adjective_table07,
adjective_table08,
adjective_table09,
adjective_table10,
adjective_table11,
adjective_table12
]

