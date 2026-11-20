
// On Click:
 // array_push(Lesson1.lessonContent, "IntroLesson1", "WordMatch001" ,"ImageFind001" ,"VocabList001");
// figure out which room to go to based on the name.
// the room will determine what gets loaded.

// global position to pass to the room, so the forward/back buttons work
global.position = position
// global.exerciseName = display_name
global.exerciseNumber  = exerciseNumber

// get the characters up to the _
// var _path_parts = string_split(exerciseName, "/");
// var roomType = string_split(exerciseName,"_");
// global.exerciseNumber = roomType[1];

var _target_room = asset_get_index(display_name);

// verify the room exists before switching to avoid crashes
if (room_exists(_target_room)) {
    room_goto(_target_room);
}

// array_push(Lesson1.lessonContent, "IntroLesson_001", "WordMatch_001" ,"ImageFind_001" ,"VocabList_001");
// also increment the lesson
// loading a lesson will increment the lesson global
// parse list to determine the first lesson