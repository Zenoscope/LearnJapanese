// Read in the lessonList array
// Loop trough the array
// Create instances of the buttons and such.
// also controls: scroll through the lesson buttons.

// function_execute_script("scr_Lessons")

// just for now.
// this screen will read in the lesson list,and then
// unload it on exit

// 
// Info loaded from another file
// 
// used to store the lesson array info

// draw room title
draw_text_ext_transformed(100,100,"Lessons",40,500,1,1,0);

function LessonStruct(
    _display_name, _lesson_name
    )
    constructor {
    display_name = _display_name 
    lesson_name = _lesson_name
        }

lessonList1 = new LessonStruct("_header", "")
lessonList2 = new LessonStruct("Introduction", "LessonIntro")
lessonList3 = new LessonStruct("Lesson 1 - Basics", "Lesson1")
lessonList4 = new LessonStruct("Lesson 2 - Self Introduction", "Lesson2")

lessonList = [
 lessonList1,
 lessonList2,
 lessonList3,
 lessonList4
]

// variables for screen generation
button_X = 500
button_X_offset = button_X + 50
button_Y = 50
button_dist = 100 

var buttonCount = array_length(lessonList) 

for(i=0 ; i < buttonCount ; i++ ){
    // create the instance for the lesson button:
    
    check = lessonList[i]
    show_debug_message(lessonList[i].display_name) 
    // if (string_starts_with( check,"_" )) { 
        createLessonButtonInstance( check)
        button_Y = button_Y + button_dist
    //} 
    //else {
     //   createLessonButtonInstance( check)
    //    button_Y = button_Y + button_dist
    //    button_X = button_X_offset
    // }
}

function buttonStruct(
    _display_name,_lesson_name
    )
    constructor {
    display_name = _display_name 
    lesson_name = _lesson_name
    }

function createLessonButtonInstance(instanceVars){
    ButtonStruct = new buttonStruct(instanceVars.display_name,instanceVars.lesson_name)
    if (! string_starts_with( instanceVars.display_name,"_" )) { 
        button_X = button_X_offset 
        }
    instance_create_layer(button_X, button_Y, "lessonButtons", btn_lessonButton,ButtonStruct)
}
