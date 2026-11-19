// Lesson stuff.
// this should actually be an external file
// 

/*
* There is a main controller whic loads the particular lesson.
 * It also has the controls (arrows etc) 
 * Each lesson has an Controls layer (needed? programatic) 
* Each member in the particular Lesson array is read in.
* the first part of the name parsed which determines the lesson type which is loaded.
* The second part is the content, which matches the particular name in the array
* there is also a back/finish button (which changes) and takes you back to the lesson list
* the next/prev buttons have the name of the part (part 1, part 2 etc)
*/ 


// Read from the array inside the struct
// var first_item = Lesson1.lessonContent[0];

//
// Intro (text blocks)
//
function Intro(
	_introText
	) constructor {
	introText	= _introText;
	}

IntroLesson_001 = new Intro("Basics - pronounciation, SVO etc")
IntroLesson_002 = new Intro("A self introduction is...")


//
// WordMatch
//

function WordMatch( 
	) constructor {
    // seekType = _seekType // eg katakana, english, hiragana, kanji
	wordsToMatch = []; // the set of words to find
	}

function WordsToMatch( 
    _displayWord, _matchWord
	) constructor {
    displayWord = _displayWord; // the word showing
    matchWord = _matchWord; // the word to match
	}

WordMatch001 = new WordMatch()
// array_push(WordMatch001,WordsToMatch("car","car"),WordsToMatch("test","test"))
WordMatch002 = new WordMatch()
// array_push(WordMatch002,WordsToMatch("self","self"),WordsToMatch("country","country"))

//
// Image find
// 

// near/far
// family members
// extended family
// country names
// directions - left, right, above, below, north, south, behind, etc
// colours (what colour is this? what colour is X thing?)
// other nouns (icons), eg sports, post office etc
// where people are and what they are doing
 
// NB: either word -> image location or image -> word in list(?)

function ImageFind( 
    _imageName,_seekType
	) constructor {
    seekType = _seekType // eg find the image from the word, find the word from the image, 
	imagesToMatch = []; // what to match
    imageName = _imageName;
	}

function imagesToMatch( 
    _displayWord, _topX,_topY,_lowerX,_lowerY
	) constructor {
    displayWord = _displayWord; // the word to find
    // location of the image (absolute or relative to image location?)
    top_x = _topX;
    top_y = _topY;
    lower_x = _lowerX;
    lower_y = _lowerY;
	}

ImageFind_001 = new ImageFind("imageFinder001")
// array_push(ImageFind001.imagesToMatch("umbrella",100,100,120,120))

//
// Vocab list
// 

function VocabList( 
    _imageName
	) constructor {
	vocabularyList = []; // what to match
	}

function VocabularyItem(
    _kanji,_kana,_meaning
    ) constructor {
    VocabularyItem = [_kanji,_kana,_meaning]
    }

VocabList_001 = new VocabList("VocabList001")
// array_push(VocabList001 , vocabularyList.VocabularyItem("umbrella","umbrella","umbrella"))

//
// Kanji list
//
// rejig the kanji list to diplay a shorter list 

//
// clock
//

//
// calendar
//

/*
function Calendar( 
    _imageName
	) constructor {
    seekType = _seekType // eg find the image from the word, find the word from the image, 
	imagesToMatch = []; // what to match
    imageName = _imageName;
	}
*/

// NB:
// dd/mm/yy (remember japanese calendar conventions)
// random days
// what day/week /month
// what is happening on X, last week,month,year etc
// using live dates?

// 
// Conversation simulator
// 
/*
 * Speech wheel to make responses.
 * Speech is a graph? Paths branch off.
 * Forward and backward buttons to rewind convo
 * Word lookuo for indivdual words
 * Furigana?
 * speech bubbles and fake mouth moving (so need to draw more characters)
 * backgrounds
 * character backgrounds for people (where they work etc)
 * what conversations they could have
 * 

 * possible array/struct structure (map?) for conversations:
 
 
 * Character001_Speech
 * Reply_1->Character002_Speech, Reply_2->Character003_Speech, Reply_3->Character004_Speech 
 * Character002_Speech
 * Reply_1->Character004_Speech, Reply_2->Character003_Speech
 * Character003_Speech
 * Character004_Speech
 etc etc, ugh.
*/

//
// main lesson list
//

lessonList = [
"Introduction",
 "Lesson 1 - Basics",
 "Lesson 2 - Self Introduction"
]

// 
// Lesson struct and functions
// 

function Lesson(
	_lesson_name
	) constructor {
	lesson_name		= _lesson_name;
	lessonContent	= [];
	}

Lesson_001 = new Lesson("Lesson 1 - Basics")
//array_push(Lesson_001.lessonContent, IntroLesson_001, WordMatch_001 ,ImageFind_001 ,VocabList_001);
Lesson_002 = new Lesson("Lesson 2 - Self introduction")
//array_push(Lesson_002.lessonContent, IntroLesson_002, WordMatch_002, VocabList_001 );


