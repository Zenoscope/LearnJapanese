// Read in the lessonList array
// Loop trough the array
// Create instances of the buttons and such.
// also controls: scroll through the lesson buttons.

// function_execute_script("scr_Lessons")

// just for now.
// this screen will read in the lesson list,and then
// unload it on exit

// used to store the lesson array info
global.lessonArray=""

lessonList = [
"_header",    
"Introduction",
 "Lesson 1 - Basics",
 "Lesson 2 - Self Introduction"
]

button_X = 500
button_X_offset = button_X + 50
button_Y = 50
button_dist = 100 

var buttonCount = array_length(lessonList) - 1

for(i=0 ; i < buttonCount ; i++ ){
    // create the instance for the lesson button:
    
    check = lessonList[i]
    show_debug_message(lessonList[i]) 
    if (string_starts_with( check,"_" )) {
        
        createLessonButtonInstance( check,i)
        button_Y = button_Y + button_dist
    }
    
    else {
        createLessonButtonInstance( check,i)
        button_Y = button_Y + button_dist
        button_X = button_X_offset
    }
}

function buttonStruct(
    _display_name,_index
    )
    constructor {
    display_name = _display_name 
    excercise_index = _index
    exerciseArray = global.exerciseArray[_index]
    }


function createLessonButtonInstance(buttonName, index){
    ButtonStruct = new buttonStruct(buttonName, index)
    instance_create_layer(button_X, button_Y, "lessonButtons", btn_lessonButton,ButtonStruct)
}

function createLessonHeaderInstance(headerName){
    ButtonStruct = new buttonStruct(headerName)
    instance_create_layer(button_X, button_Y, "lessonButtons", btn_lessonHeader,ButtonStruct)
}

// generates the exercse array from the lessons.

function Lesson(
	_lesson_name
	) constructor {
	lesson_name		= _lesson_name;
	lessonContent	= [];
	}

Lesson1 = new Lesson("Lesson 1 - Basics")
array_push(Lesson1.lessonContent, "IntroLesson1", "WordMatch001" ,"ImageFind001" ,"VocabList001");
Lesson2 = new Lesson("Lesson 2 - Self introduction")
array_push(Lesson2.lessonContent, "IntroLesson2", "WordMatch002", "VocabList001");

global.exerciseArray = [Lesson1, Lesson2]