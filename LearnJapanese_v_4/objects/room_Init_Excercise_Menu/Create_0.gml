//
//  read the excercise array
// 
Lesson0 = new Lesson("Lesson Introduction")
array_push(Lesson0.lessonContent, "LessonIntro000", "WordMatch000" ,"ImageFind000" ,"VocabList000");
Lesson1 = new Lesson("Lesson 1 - Basics")
array_push(Lesson1.lessonContent, "LessonIntro001", "WordMatch001" ,"ImageFind001" ,"VocabList001");
Lesson2 = new Lesson("Lesson 2 - Self introduction")
array_push(Lesson2.lessonContent, "LessonIntro002", "WordMatch002", "VocabList001");

exerciseList = [Lesson0,Lesson1, Lesson2]

//
// vars.
//
excercise_name = global.excercise_name
// variables for screen generation
button_X = 100
button_Y = 100
button_dist = 50 

// write the exercise name.
draw_text_ext_transformed(100,100,excercise_name,40,500,1,1,0);

// get the matching exercise by looping through the list
for(i=0 ; i < array_length(exerciseList) ; i++ ){
   if (exerciseList[i].lesson_name = excercise_name){
       array_index = i
       break
       }
}

array_index = 0

// lloop through the list of exercises
for(i=0 ; i < array_length(exerciseList[array_index].lessonContent) ; i++ ){
    exercise_name = exerciseList[array_index].lessonContent[i]
    str_len = string_length(exercise_name) 
    
    display_name = string_delete(exercise_name, str_len - 2, str_len)
    exerciseNumber = string_delete(exercise_name, 1, str_len - 3)
    
    createLessonButtonInstance(display_name,exercise_name, i, exerciseNumber )
    button_Y = button_Y + button_dist
    button_X = button_X
}

// draw the lesson buttons
// show_debug_message (excercise_name.lessonContent)
// var buttonCount = array_length(excercise_name.lessonContent) 

function buttonStruct(
    _display_name,_exercise_name,_position,_exerciseNumber
    )
    constructor {
    display_name = _display_name
    excercise_name = _exercise_name
    position = _position
    exerciseNumber = _exerciseNumber
    }

function createLessonButtonInstance(buttonName,exerciseName,position,exerciseNumber){
    ButtonStruct = new buttonStruct(buttonName,exerciseName,position,exerciseNumber)
    instance_create_layer(button_X, button_Y, "lessonButtons", btn_ExerciseMenu,ButtonStruct)
}