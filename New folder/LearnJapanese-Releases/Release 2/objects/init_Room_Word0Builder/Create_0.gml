/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// default to whatever the room is, right?
// var value = global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 2];

origin_room_name = global.roomBreadcrumbs[array_length(global.roomBreadcrumbs) - 2]

switch(origin_room_name)
	{		
		case "Hiragana":
			// import the word list
			function_execute_script("scr_VocabList");
			// selects the hiragana list
			ListDefault = 2;			
			// used to make the extra kana for words
			local_kana_array = ["あ","い","う","え","お","か","き","く","け","こ","さ","し","す","せ","そ","た","ち","つ","て","と","な","に","ぬ","ね","の","は","ひ","ふ","へ","ほ","ま","み","む","め","も","や","ゆ","よ","わ","ら","り","る","れ","ろ","ん","が","ぎ","ぐ","げ","ご","ざ","じ","ず","ぜ","ぞ","だ","ぢ","づ","で","ど","ば","び","ぶ","べ","ぼ","ぱ","ぴ","ぷ","ぺ","ぽ"]
		break;
		case "Katakana":
			// import the word list
			function_execute_script("scr_VocabList");
			// selects the katakana list
			ListDefault = 3;
			
			// used to make the extra kana for words
			local_kana_array = ["ア","イ","ウ","エ","オ","カ","キ","ク","ケ","コ","サ","シ","ス","セ","ソ","タ","チ","ツ","テ","ト","ナ","ニ","ヌ","ネ","ノ","ハ","ヒ","フ","ヘ","ホ","マ","ミ","ム","メ","モ","ヤ","ユ","ヨ","ワ","ヲ","ン","ラ","リ","ル","レ","ロ","ガ","ギ","グ","ゲ","ゴ","ザ","ジ","ズ","ゼ","ゾ","ダ","ヂ","ヅ","デ","ド","バ","ビ","ブ","ベ","ボ","パ","ピ","プ","ペ","ポ"]
		break;
		case "Kanji":  // Kanji top 100
			if (global.navLastButton == "Word0Builder") {
				// import the word list
				// function_execute_script("scr_VocabList");
				function_execute_script("scr_Kanji100");
				// is actually using the vocab list
				ListDefault = 1;
				}
			else if (global.navLastButton == "OneHundred0Kanji") {
				function_execute_script("scr_Kanji100");
				ListDefault = 1;
				}
			else if (global.navLastButton == "One0Hundred0Kanji0Vocab") {
				function_execute_script("scr_Kanji100");
				ListDefault = 1;
				}
			// used to make the extra kana for words
			local_kana_array = ["一","二","三","四","五","六","七","八","九","十","百","千","万","円","日","週","月","年","時","間","分","午","前","後","今","先","来","半","毎","何","人","男","女","子","母","父","友","火","水","木","土","金","本","川","花","気","生","魚","天","空","山","雨","電","車","語","耳","手","足","目","口","名","店","駅","道","社","国","外","学","校","上","下","中","北","西","東","南","右","左","見","聞","書","読","話","買","行","出","入","休","食","飲","言","立","会","多","少","古","新","大","小","安","高","長","白"]
			break;
		default:
			show_debug_message("ooh.");
		break;
	}

// the list default chooses the category of word
// eg kanji is #1, kanjilist is the array.
// kanji_list is the one from the grammarscript.
// field_name = 2 is field_4
field_list = ["field_4"];
WordBuilderArray = function_add_to_WordBuilderArray(ListDefault,kanji_list,10,field_list);

selected_index = random(array_length(WordBuilderArray) -1 );
selected_word = WordBuilderArray[selected_index];

length_of_string = string_length(selected_word.kanji);

// generate a new word
show_word = true;
// count the number of character matches in the word.
match_count = 0;

// ?
show_romanji_clue = "true";

tick_state = true;
yStart = 150;