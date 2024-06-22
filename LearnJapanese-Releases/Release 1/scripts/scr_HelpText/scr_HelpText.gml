

/// currently this is in the button!!!
function tooltip(
	// button_name,tooltip_text
	_button_name,_tooltip_text,_tip_type
	) constructor {
	button_name		=_button_name;
	tooltip_text	=_tooltip_text;
	tip_type		=_tip_type;
	}
	
// the name of the button without the btn*_ part.
// btnNAV_back = back
// btnNAV_quit0game = quit0game

// Needs to be 3 lines at least.
// helptext

// BUTTON NAME IS CASE SENSITIVE!!!

tooltip021 = new tooltip("Hiragana","Hiragana is one of the four Japanese character sets, which also include kanji*, katakana* and romanji (the ^latin alphabet^, used for writing words in English). It is a syllabary, representing all of the syllables of the Japanese language. \n\n Hiragana is used for Kanji suffixes; particles, furigana (used above Kanji to help with pronounciation) and native Japanese words which have no Kanji equivalent.\n\n *Described in the katakana and kanji sections.","helptext");
tooltip022 = new tooltip("Katakana","Katakana is one of the four character sets in Japanese, which also include kanji*, katakana* and romanji (the ^latin alphabet^, used for writing words in English).  It is a syllabary, representing all of the syllables of the Japanese language.\n\nKatakana is used for writing foreign language words and loan words; onomatopoeia and sound effects in Manga; and scientific and technical terms.\n\n*Described in the kanji and hiragana sections.","helptext");
tooltip023 = new tooltip("Kanji","Kanji is one of the four character sets in japanese, which also include hiragana*, katakana* and romanji (the ^latin alphabet^, used for writing words in English).\n\nKanji are based on Chinese hanji characters, and represent a word or idea. They may have one or more \"readings\", the On-ymi (chinese) and Kun-yomi (Japanese) readings. For example, the kanji X, meaning \"whatever\" has... \n\n*Described in the katakana and hiragana sections.","helptext");
tooltip024 = new tooltip("Grammar","How sentences are put together, and how the parts work: nouns, particles, verbs, adverbs and adjectives.","helptext");
tooltip025 = new tooltip("Vocabulary","Words, words and more words.\n All of the words in the N5 test, maybe.","helptext");
tooltip026 = new tooltip("Dialogs","Putting all of those beautiful words to use.","helptext");
tooltip027 = new tooltip("Bibliography","Useful links, and where all this information came from.","helptext");
tooltip028 = new tooltip("Kana0intro","Hiragana is one of the four character sets of Japanese. It separates symbols into sounds. Katakana and hiragana are grouped into 4 groups. (explain different groups). You should also notice that the order of the kana vowels are AIUEO rather than AEIOU as in English.","helptext");
tooltip029 = new tooltip("Flipcards","Click on each card to show the other side.","helptext");
tooltip030 = new tooltip("Missing0Kana","Drag the kana character into it's correct spot in the grid.","helptext");
tooltip031 = new tooltip("Vocab0List","A list of N5 vocabulary which are usually written using this character set.","helptext");
tooltip032 = new tooltip("Missing0Vocab","A game to help learn the N5 vocabulary.","helptext");
tooltip033 = new tooltip("Word0Builder","Drag the character into the correct spot to spell the word.","helptext");
tooltip034 = new tooltip("Vocab0Grammar","Vocab and grammar. Grammar and vocab.\n\n Vocab and grammar.","helptext");

//
tooltip040 = new tooltip("sokuonfu","small tsu, the following consonant is doubled, and pronounced separately, eg konnichiwa","helptext");
tooltip041 = new tooltip("chōonpu","ー a long vowel","helptext");

// bibliography
//not added to array yet
tooltip050 = new tooltip("Links","Just a test!","biblio");

// blurbs
// a blurb is displayed in a room and just stay there, a helptext might replace it,
// but it comes back.
tooltip070 = new tooltip("Links","Just a test!","blurb");

// invisible button tool tips
tooltip081 = new tooltip("invisTeForm", "Used to request an action, for connecting verbs, asking permission or present progressive (an ongoing action in the present).","tooltip");
tooltip082 = new tooltip("invisPolite","Polite - used with superiors and strangers, and in public announcements.","tooltip");
tooltip083 = new tooltip("invisPlain","Plain - used with friends, children and in informal situations, eg shopping.","tooltip");
tooltip084 = new tooltip("invisPresent","Expresses an action that is currently going on or habitually performed, or a state that currently or generally exists.'","tooltip");
tooltip085 = new tooltip("invisPresNeg","pres_neg","The negative of present tense, eg not ~.");
tooltip086 = new tooltip("invisPast","Describing an action which has occured in the past.","tooltip");
tooltip087 = new tooltip("invisPastNeg","past_neg","Expressing an action which has not occured in the past.");
tooltip088 = new tooltip("invisStem","The stem of the verb, used for conjugations.","tooltip");

//kana tooltips
tooltip090 = new tooltip("Gojuon","The traditional grid order of the kana characters (shown sideways here)","tooltip");
tooltip091 = new tooltip("(Han)dakuten","Indicate pronounciation changes. Dakuten ('dots') are voiced: e.g. ka becomes ga; sa - za; ta - da; ha - ba, and Handakuten ('circles') are half-voiced: 'ha' becomes a 'p' sound.","tooltip");
tooltip092 = new tooltip("Yoon","Digraphs, add a 'y','g' or 'j' sound to a consonant in the 'i' column.","tooltip");

//test, please remove!
tooltip098 = new tooltip("invisTest","Quit game.","tooltip");
//tooltip099 = new tooltip("quit0game","1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0. 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0.","tooltip");
tooltip100 = new tooltip("back","go back?","tooltip");

// helptext
tooltip000 = new tooltip("start0game","Start!","tooltip");

// Grammar things
grammar_blurb01= new grammar_blurb("Noun","A noun is a naming word. There are nouns, eg 'dog' and Proper Nouns which is an actual name eg 'Rex'. In the sentence 'My cat is called Milly' cat is a noun, while Milly is a proper noun.\n\nJapanese also doesn't have definite and indefinite articles, which are 'the' and 'a' respectively, in English. So you would just say 'Neko wa cuppo o [Cat broke cup]' rather than 'The cat broke a cup'.","Helptext");
grammar_blurb02= new grammar_blurb("verb","A verb is a action word. it shows which action is being performed in the sentence. In the sentence 'I ran to the train station' 'ran' is the verb. In Japanese the verb comes at the end of the sentence. 'I ran to the train station' would be 'I trainstation *to* ran'.\n\nIn Japanese there must be a verb  at the end of a sentence.\n Verbs can be transitive - the action changes from the subject to object, or intransitive, where the verb doesn't need an object to make sense. \n わかる means \"to understand\", you can say \"i understand\" while ","Helptext");
grammar_blurb03= new grammar_blurb("adjective","An adjective describes a noun. Adjectives in English go before the noun. In the sentence 'It was a big parrot' 'big' is the adjective. **Where do adjectives go in Japanese? **Japanese adjective example.\nIn Japanese there are two types of adjectives, i-adjectives and na-adjectives. i-adjectives usually end in i. Na-adjectives in i, na or something else.\n\nJapanese adjectives can be conjugated in a similar way to verbs.","Helptext");
grammar_blurb04= new grammar_blurb("pronoun","A pronoun is a standin for a noun. Pronouns in English are he/him, she, her, they/them, it. Japeanese also has pronouns, however Japanese it's considered to be impolite to address someone as 'you', rather than by their name. \n\n Watashi, bkou, third person, watashitachi","Helptext");
grammar_blurb05= new grammar_blurb("sentence structure","English sentences use a Subject Verb Object strucure, where as Japanese uses Subject Object Verb. Eg in English [example] vs Japanese [example]. \n\n In japanese it is common to leave out the subject of a sentence if it is obvious through context:\n 'What did you do today?'\n '[i] went to school.'","Helptext");
grammar_blurb06= new grammar_blurb("adverb","Describes a verb. Adverbs in English end in -ly, eg slowly, brokenly, noisily, and can come either before or after the verb. In the sentence 'I quickly ran to the train station' 'quickly' is the adverb.","Helptext");
grammar_blurb07= new grammar_blurb("subject","What is doing the action in the sentence. in the sentence 'I ran to the train station' 'I' is the subject of the sentence.  ","Helptext");
grammar_blurb08= new grammar_blurb("verb","The action which is being performed in the sentence. In the sentence 'I ran to the train station' 'ran' is the verb in the sentence. There are two types of verbs in Japanese, Godan verbs and Ichidan verbs. The types refer to the way the verbs conjugate - how they change forms depending on their tense. Tense means whether a verb is describing an action eg in the past, present, or that is a command  Most verbs are regular, and conjugate in a regular way, except for three: XXXXXX\n\n All sentences end with a verb.","Helptext");
grammar_blurb09= new grammar_blurb("object","What the action is affecting. In the sentence 'I ran to the train station.' 'the train station' is the object of the sentence.","Helptext");
grammar_blurb10= new grammar_blurb("topic","Similar to subject? IDK","Helptext");
grammar_blurb11= new grammar_blurb("particle","Indicates 'How or where'  the action is being performed. \n\n Particles are always written in hiragana, so they can be used to separate [some] of the words in a written sentence.","Helptext");
grammar_blurb12= new grammar_blurb("Polite (Formal) vs plain language","Japanese verbs have a plain and polite [aka formal] form. Polite language is used to talk to superiors [eg your boss] and strangers. \n\nPlain language is used to talk to close friends, children [including strange children] and shopkeepers.","Helptext");
grammar_blurb13= new grammar_blurb("conjugation","Conjugation is how a word [usually a verb] takes differnt forms, eg for actions happening in the present, which have happened in the past, commands etc.","Helptext");
grammar_blurb14= new grammar_blurb("counters","Counters in Japanese are used to denote how many things there are, eg sheets of paper etc.\nHow old are you?\n I am 3 years old [watashi wa san sai desu].","Helptext");
grammar_blurb15= new grammar_blurb("Adverbs","Can appear pretty much anywhere in a sentence. Averbs can be created from adjectives. [how?]","Helptext");
grammar_blurb16= new grammar_blurb("Adjectives","Adjectives describe a noun, eg hot, handsome, old...\n\nThere is one, \"good\" which is irregular. The rest are regular.\n Adjectives can work like vebs , when used at the end of a sentence, and coupled with the auillary verb are cnjugated. See the tables below.","Helptext");
grammar_blurb17= new grammar_blurb("Particles","Japanese particles, are suffixes or short words in Japanese grammar that immediately follow the noun, verb, adjective, or sentence they are modifying..\n Some are are similar to prepositions [eg to, from] in English, though there is a wide variety of different uses and meanings.","Helptext");
grammar_blurb18= new grammar_blurb("Verbs","In Japanese, aside from the two irregular verbs, there are two types of verbs: Ichidan verbs have only one form, and are called Ichidan, or Ichidan-dōshi (literally: class-1 verbs). They are also known as Ru verbs, as they always end in -ru (though not all ru verbs are Ichidan verbs), or 'type one' verbs.\n\nThe other type of verb is called Godan, or Godan-dōshi (literally: class-5 verbs). It is also referred to as -u verbs, or 'Type two' verbs. They can end in any consonant from the top of the katakana table, eg -su, -tsu(?) ku, mu etc. The reason they are called Godan verbs is because they will add a vowel in some forms of the verb.\n\nPolite vs plain forms - Polite in this sense doesn't mean quite the same as it does in English. I would call it Formal rather than Polite. \"Polite\" language is used for people who are above you in the social hierarchy, eg your boss, partners parents/grandparents you don't know well, or strangers. it may also be used in announcements, eg at train stations. Plain language is used for people you know well, or strangers who are below you in the social hierarchy, including taxi drivers, shop keepers and children (including children you don't know). Once you get to know a Japanese person well enough, you may get told you are being too polite! You should aim to interact with people using polite language primarily, otherwise you may be considered rude.","Helptext");


global.tooltips = [
// tooltips
//
tooltip000,
/*
tooltip001,
tooltip002,
tooltip003,
tooltip004,
tooltip005,
tooltip006,
tooltip007,
*/
// helptext
tooltip021,
tooltip022,
tooltip023,
tooltip024,
tooltip025,
tooltip026,
tooltip027,
tooltip028,
tooltip029,
tooltip030,
tooltip031,
tooltip032,
tooltip033,
tooltip034,

// bibliography
tooltip050,

// verb conjugation tool tips
tooltip081,
tooltip082,
tooltip083,
tooltip084,
tooltip085,
tooltip086,
tooltip087,
tooltip088,

// kana stuff, gojuon etc 
tooltip090,
tooltip091,
tooltip092,

// gammar stuff
// will iit break if it's not a tooltip?
grammar_blurb01,
grammar_blurb02,
grammar_blurb03,
grammar_blurb04,
grammar_blurb05,
grammar_blurb06,
grammar_blurb07,
grammar_blurb08,
grammar_blurb09,
grammar_blurb10,
grammar_blurb11,
grammar_blurb12,
grammar_blurb13,
grammar_blurb14,

// test stuff
tooltip098,
//tooltip099,
tooltip100
	]
	
/*	
Bibliography001 = new tooltip("Glossary","All of the intro text");
Bibliography002 = new tooltip("Links","Links to resources, eg Wikipedia articles, other resources");
Bibliography003 = new tooltip("More about Kanji","More about Kanji and ");
Bibliography004 = new tooltip("Writing Systems","There are four writing systems, in Japnese: Hiragana, Katakana, Kanji and Romanji. Romanji is the Latin alphabet, used to write the English language, and wont be dealt with here. Click on the buttons to find out more about the other 3 writing systems.");
Bibliography005 = new tooltip("Kanji_Intro","Kanji and Hiragana rely on each other  There are 2136 Jōyō kanji");
Bibliography006 = new tooltip("Helptext_Dialog_intro","Yada how the dialogue works.");
Bibliography007 = new tooltip("onyomi/kunyomi","onyomi is often used for standalone kanji referring to the literal meaning of the single character, while kunyomi is more often used in compound words and can be more nuanced.");
Bibliography008 = new tooltip("","possibly older words too., eg numbers are onyomi");
Bibliography009 = new tooltip("'Polite' vs informal language","More like formal vs informal. Hierarchy of people, Boss, higherups, people you don't know well, use formal language (ladder graphic). Informal language can be used with close friends, children (including), and people you may have a casual relationship with, eg shop assistants/taxi drivers etc.");
Bibliography010 = new tooltip("grammar","SVO Vs SOV");
Bibliography011 = new tooltip("particles","particles");

Bibliography = [
Bibliography001,
Bibliography002,
Bibliography003,
Bibliography004,
Bibliography005,
Bibliography006,
Bibliography007,
Bibliography008,
Bibliography009,
Bibliography010,
Bibliography011
	]
	

Helptext001 = new tooltip("Main_Menu","Thanks for purchasing Flo and Gran teach N5 Japanese. This game is designed so you can either jump around or go through it in order. If you are new, we suggest doing the sections in order, as they will teach you the basics you need first. This program is divided up into two major sections. The first section is reading and writing, where you will learn Hiragana, Katakana and N5 level Kanji (there are about 80 -100) as well as some vocabulary. The other section is the dialog secton, where you will help X and Y in their daily life! For dialogue and vocabulary, we use the (whatever) system of transliteration. Because N5 is the very first level of Japanese, the sentence structures are basic, and the vocabulary is limited, so it's not exactly what people will use in real life, however it is a good introduction.");
Helptext002 = new tooltip("Radicals","Kanji radicals are the core building blocks of Kanji. Each kanji character is made up of one or more radicals. In this section you will learn the locations and the 51 most common radicals, used in 75% of kanji. There are 214 radicals in total. The additional radicals can be added by clicking the 'extra radicals' button. The most common 51 kanji radicals are used iin 75% of Kanji. There are 214 total Kanji radicals, the rest are included as 'extra Kanji' radicals. Each radical has a name, and some radicals part of a kanji, and some are a whole kanji.");
Helptext003 = new tooltip("things","Notice the yoon only appy to the 'i' columns eg 'ki' etc");

helptext = [
Helptext001,
Helptext002,
Helptext003
	]
	
	*/