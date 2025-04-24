/// @Vocab for hiragana/katakana/kanji

// Init room variables
room_script = function_get_room_script_name(id);

function_execute_script("scr_VocabList");
number_words_shown = 0; // max_words_to_display;
card_index = 0;
show_GrammarText(room_get_name(room));