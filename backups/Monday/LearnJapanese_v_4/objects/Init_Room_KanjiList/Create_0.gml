// Init_Room_VocabList (kanji and radicals) <   >

// change it so they all use the same script.
// run this from the room name instead of thescript name.

// Init room variables
//global.current_room = room_get_name(room);
//show_debug_message("The room is called " + global.current_room);

//room_name = global.current_room;
//room_script = function_get_room_script_name(id);

event_inherited();

// screen positgions for the cards
card_left_x = 000;
card_right_x = 600;
card_middle_x = card_right_x / 2;

y_loc = 350;
moving = false;
spawn_card = false;

// card locatioon
var x_loc = card_middle_x;

// initial card which is shown on the first card.
card_index = 0;

// generate an empty card array
card_array = [];

switch (room_get_name(room))
		{
		case "Radical0List":
			function_execute_script("scr_KanjiRadicals");
			number_of_cards = 1;
			break;
		case "One0Hundred0Kanji0List":
			function_execute_script("scr_Kanji100");
			number_of_cards = 1;
			break;
		case "Vocab0List":
			function_execute_script("scr_VocabList");
			switch (global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 2]){
				case "Kanji":
					//select Kanji mainly from the list
					ListDefault = 1;		
				break;
				case "Hiragana":
					//select Kanji mainly from the list
					ListDefault = 2;			
				break;
				case "Katakana":
					//select Kanji mainly from the list
					ListDefault = 3;
				break;
				}			
			number_of_cards = 1;
			// the list default chooses the category of word
			// eg kanji is #1, kanjilist is the array.
			// kanji_list is the one from the grammarscript.
			// field_name = 2 is field_4
			field_list = ["meaning","romanji","field_3"];
			kanji_list = function_add_to_WordBuilderArray(ListDefault,kanji_list,10,field_list);
			break;
		default:
			show_debug_message(" ");
		break;
		}

card_source = card_source;

//_index	_kanji	_meaning	_romanji	
//_field_1	_field_2	_field_3	_examples	_field_4

//1,"人","human, person","hito","",25,"亻","人,欠,夫,肉,丙","2"
// this part is ignored "ひと"

function_spawn_kanji_card(x_loc,y_loc,room_script,card_index,"field_4");
instance_id[instance_count - 1].room_script = id;
