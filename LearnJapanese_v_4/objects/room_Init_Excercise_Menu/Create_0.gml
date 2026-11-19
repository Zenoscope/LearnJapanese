// read the excercise array
// find the lesson name
excercise_name = global.excerciseList[0]
draw_text_ext_transformed(x,y-5,excercise_name,40,500,1,1,0);

// draw the lesson buttons
var buttonCount = array_length(excerciseList.lessonContent) - 1

// the exercise buttons should load the correct lesson template when clicked.
// skip the initial item, it's the name of the lesson
for(i=1 ; i < buttonCount ; i++ ){
    // create the instance for the lesson button:
    
    // 
    //Lesson1 = new Lesson("Lesson 1 - Basics")
   // array_push(Lesson1.lessonContent, "IntroLesson_001", "WordMatch_001" ,"ImageFind_001" ,"VocabList_001");
    
    createLessonButtonInstance( excerciseList[i], index, )
    button_Y = button_Y + button_dist
    button_X = button_X_offset

}

function buttonStruct(
    _display_name,_index,_excercise
    )
    constructor {
    display_name = _display_name 
    excercise_index = _index
    excercise = _exercise
    }


function createLessonButtonInstance(buttonName){
    ButtonStruct = new buttonStruct(buttonName,position,exercise)
    instance_create_layer(button_X, button_Y, "lessonButtons", btn_ExerciseMenu,ButtonStruct)
}
