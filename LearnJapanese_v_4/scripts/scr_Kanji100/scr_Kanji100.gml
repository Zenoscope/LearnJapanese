// Top 100 Kanji list

function kanji_glyph(
	//_index,_kanji,_meaning,_sorting,_type,_onyomi,_kunyomi,_examples, _romanji
	_index,_kanji,_meaning,_romanji,_type,_onyomi,_kunyomi,_examples, _sorting,_kana_reading	
	) constructor {
	index		=_index;
	kanji		=_kanji;
	meaning		=_meaning;
	romanji		=_romanji;
	field_1		=_type;
	field_2		=_onyomi;
	field_3		=_kunyomi;
	examples	=_examples;
	field_4		=_sorting;
	kana_reading = "reading";
	
}

first_100_kanji1 = new kanji_glyph(1,"一","One",1,"numerical noun","ichi, itsu","hito(tsu), hito","一人 hitori (one person, alone)","1")
first_100_kanji2 = new kanji_glyph(2,"二","Two",1,"numerical noun","ni","futa(tsu), futa","二人 futari (two people, pair)","2")
first_100_kanji3 = new kanji_glyph(3,"三","Three",1,"numerical noun","san","mit(tsu), mi","三日 mikka (3rd day of the month)","3")
first_100_kanji4 = new kanji_glyph(4,"四","Four",1,"numerical noun","shi","yo(tsu), yo, yon","四日 yokka (4th day of the month)","5")
first_100_kanji5 = new kanji_glyph(5,"五","Five",1,"numerical noun","go","itsu(tsu), itsu","五日 itsuka (5th day of the month)","4")
first_100_kanji6 = new kanji_glyph(6,"六","Six",1,"numerical noun","roku","mut(tsu), mu","六日  muika (6th day of the month)","4")
first_100_kanji7 = new kanji_glyph(7,"七","Seven",1,"numerical noun","shichi","nana(tsu), nana","七日 nanoka (7th day of the month)","2")
first_100_kanji8 = new kanji_glyph(8,"八","Eight",1,"numerical noun","hachi","yat(tsu), ya","八日 youka (8th day of the month)","2")
first_100_kanji9 = new kanji_glyph(9,"九","Nine",1,"numerical noun","kyuu, ku","kokono(tsu), kokono","九日 kokonoka (9th day of the month)","2")
first_100_kanji10 = new kanji_glyph(10,"十","Ten",1,"numerical noun","juu, ji","tou, to","十日 tooka  (10th day of the month)","2")
first_100_kanji11 = new kanji_glyph(11,"百","Hundred",1,"numerical noun","hyaku","","百万円 hyakusen en (1 million Yen)","6")
first_100_kanji12 = new kanji_glyph(12,"千","Thousand",1,"numerical noun","sen","chi","千万円  senman en  (10 million Yen)","3")
first_100_kanji13 = new kanji_glyph(13,"万","Ten thousand",1,"numerical noun","man, ban","","万年筆 mannenhitsu (fountain pen)","3")
first_100_kanji14 = new kanji_glyph(14,"円","Yen, circle, and round",1,"noun","en","maru(i)","円い marui (round)","5")
first_100_kanji15 = new kanji_glyph(15,"日","Day, sun",1,"noun, suffix","nichi, jitsu","hi, ka","明日 ashita (tomorrow)","5")
first_100_kanji16 = new kanji_glyph(16,"週","Week",1,"noun, suffix","shyuu","","毎週 maishyuu (every week)","11")
first_100_kanji17 = new kanji_glyph(17,"月","Month, moon",1,"noun","getsu, gatsu","tsuki","月曜日 gestuyoubi (Monday)","4")
first_100_kanji18 = new kanji_glyph(18,"年","Year",1,"noun","nen","toshi","今年 kotoshi (this year)","6")
first_100_kanji19 = new kanji_glyph(19,"時","Time, hour",1,"noun","ji","toki","時計 tokei (clock, watch)","10")
first_100_kanji20 = new kanji_glyph(20,"間","Time frame, span of time",1,"noun,adverb","kan, ken","aida","時間 jinkan (time, hours)","12")
first_100_kanji21 = new kanji_glyph(21,"分","Minute, part, to understand, to divide",1,"noun,suffix","bun, bu, fun","wa(karu)","自分 jipun (oneself)","4")
first_100_kanji22 = new kanji_glyph(22,"午","Noon",1,"noun,adverb","go","","午前 gogo (morning, A.M.)","4")
first_100_kanji23 = new kanji_glyph(23,"前","Before",1,"noun","zen","mae","名前 namae (name)","9")
first_100_kanji24 = new kanji_glyph(24,"後","After, later, behind",1,"noun","go, kou","ato","午後 gozen (afternoon, P.M.)","9")
first_100_kanji25 = new kanji_glyph(25,"今","Now",1,"noun,prefix","kon, kin","ima","今晩 konban (this evening)","4")
first_100_kanji26 = new kanji_glyph(26,"先","Before, ahead, future",1,"noun","sen","saki","先週 senshyuu (last week)","6")
first_100_kanji27 = new kanji_glyph(27,"来","To come",1,"prefix,suffix","rai","ku(ru)","来月 raigetsu (next month)","7")
first_100_kanji28 = new kanji_glyph(28,"半","Half, middle",1,"noun,prefix","han","naka(ba)","半分 hanpun (half)","5")
first_100_kanji29 = new kanji_glyph(29,"毎","Every, each",1,"prefix","mai","","毎日 mainichi (every day)","6")
first_100_kanji30 = new kanji_glyph(30,"何","What, which, how many",1,"noun","ka","nan, nani","何曜日 nan youbi (which day of the week?)","7")
first_100_kanji31 = new kanji_glyph(31,"人","Person",1,"noun,counter,suffix","jin, nin","hito","人々 hitobito (people)","2")
first_100_kanji32 = new kanji_glyph(32,"男","Man, boy, male",1,"noun,prefix","dan, nan","otoko","男の子 atonoko (boy)","7")
first_100_kanji33 = new kanji_glyph(33,"女","Woman, girl, female",1,"noun,prefix","jo, nyo","onna, me","女の子 annanoko (girl)","3")
first_100_kanji34 = new kanji_glyph(34,"子","Child",1,"noun,prefix","shi, su","ko","子供  kodomo (child)","3")
first_100_kanji35 = new kanji_glyph(35,"母","Mother",1,"noun","bo","haha","母 haha (mother)","5")
first_100_kanji36 = new kanji_glyph(36,"父","Father",1,"noun","fu","chichi","父 chichi (father)","4")
first_100_kanji37 = new kanji_glyph(37,"友","Friend",1,"noun","yuu","tomo","友達 tomodashi (friend)","4")
first_100_kanji38 = new kanji_glyph(38,"火","Fire",1,"noun,suffix","ka","hi","火曜日 kayoubi (Tuesday)","4")
first_100_kanji39 = new kanji_glyph(39,"水","Water",1,"noun","sui","mizu","水曜日 suiyoubi (Wednesday)","4")
first_100_kanji40 = new kanji_glyph(40,"木","Tree, wood",1,"noun","moku, boku","ki, ko","木曜日 mokuyoubi (Thursday)","4")
first_100_kanji41 = new kanji_glyph(41,"土","Earth, ground",1,"noun","do, to","tsuchi","土曜日 doyoubi (Saturday)","3")
first_100_kanji42 = new kanji_glyph(42,"金","Money, gold",1,"noun","kin, kon","kane","金曜日 kinyoubi (Friday)","8")
first_100_kanji43 = new kanji_glyph(43,"本","Book, source",1,"noun,counter,preffix","hon","moto","日本語 nihongo (Japanese)","5")
first_100_kanji44 = new kanji_glyph(44,"川","River",1,"noun,suffix,place","sen","kawa","川 kawa (river)","3")
first_100_kanji45 = new kanji_glyph(45,"花","Flower",1,"noun","ka","hana","花火 hanabi (fireworks)","7")
first_100_kanji46 = new kanji_glyph(46,"気","Spirit",1,"noun","ki, ke","","元気 genki (healthy, spirit, feeling fine)","6")
first_100_kanji47 = new kanji_glyph(47,"生","Life, to live, to be born, to grow",1,"noun","sei, shou","i(kiru), u(mareru), ha(yasu)","生徒 seito (pupil)","5")
first_100_kanji48 = new kanji_glyph(48,"魚","Fish",1,"noun","gyo","sakana","魚 sakana (fish)","11")
first_100_kanji49 = new kanji_glyph(49,"天","Heaven",1,"noun","ten","ame, ama","天気 tenki (weather)","4")
first_100_kanji50 = new kanji_glyph(50,"空","Sky, empty",1,"noun","kuu","sora, a(keru)","空 sora (sky)","8")
first_100_kanji51 = new kanji_glyph(51,"山","Mountain",1,"noun","san","yama","山 yama (mountain)","4")
first_100_kanji52 = new kanji_glyph(52,"雨","Rain",1,"noun","u","ame","雨 ame (rain)","8")
first_100_kanji53 = new kanji_glyph(53,"電","Electricity",1,"noun","den","","電気 (electricity)","13")
first_100_kanji54 = new kanji_glyph(54,"車","Car, vehicle",1,"noun","sha","kuruma","電車 densha (electric train)","7")
first_100_kanji55 = new kanji_glyph(55,"語","Language, word, to chat",1,"noun","go","kata(ru)","英語 eigo (English)","14")
first_100_kanji56 = new kanji_glyph(56,"耳","Ear",1,"noun","ji","mimi","耳 mimi (ear)","6")
first_100_kanji57 = new kanji_glyph(57,"手","Hand",1,"noun","shu","te","手紙 tegami (letter)","4")
first_100_kanji58 = new kanji_glyph(58,"足","Foot, to add",1,"noun","soku","ashi, ta(su)","足し算 tashizan (addition)","7")
first_100_kanji59 = new kanji_glyph(59,"目","Eye",1,"noun","moku","me","駄目 dame (no good)","5")
first_100_kanji60 = new kanji_glyph(60,"口","Mouth",1,"noun","kou, ku","kuchi","出口 (exit)","3")
first_100_kanji61 = new kanji_glyph(61,"名","Name",1,"noun","mei, myou","na","名前 (name)","6")
first_100_kanji62 = new kanji_glyph(62,"店","Shop",1,"noun","ten","mise","喫茶店 kissaten (coffee shop)","8")
first_100_kanji63 = new kanji_glyph(63,"駅","Station",1,"noun","eki","","駅前 ekimae (in front of the station)","14")
first_100_kanji64 = new kanji_glyph(64,"道","Street, path, way",1,"noun","dou","michi","道の駅 michi-no-eki (roadside station)","12")
first_100_kanji65 = new kanji_glyph(65,"社","Shrine, society",1,"noun","sha","yashiro","社長 yachyou president of a company)","7")
first_100_kanji66 = new kanji_glyph(66,"国","Country",1,"noun","koku","kuni","外国人 gaikokujin (foreigner)","8")
first_100_kanji67 = new kanji_glyph(67,"外","Outside",1,"noun","gai, ge","soto, hazu(reru), hoka","外国 gaikoku (foreign country)","5")
first_100_kanji68 = new kanji_glyph(68,"学","School, learning",1,"noun","gaku","mana(bu)","大学 daigaku (university)","8")
first_100_kanji69 = new kanji_glyph(69,"校","School",1,"noun, suffix","kou","","学校 gakkou (school)","10")
first_100_kanji70 = new kanji_glyph(70,"上","Up, above",1,"noun","shou, jou","ue, u, a(geru)","上着 uwagi (jacket)","3")
first_100_kanji71 = new kanji_glyph(71,"下","Down, below",1,"noun","ka, ge","ku(daru), shita","靴下 kutsushita (socks)","3")
first_100_kanji72 = new kanji_glyph(72,"中","Middle, center, inner, between",1,"noun","chuu","naka","日中 nicchiyou (during the day, midday)","4")
first_100_kanji73 = new kanji_glyph(73,"北","North",1,"noun","hoku","kita","北 (north)","5")
first_100_kanji74 = new kanji_glyph(74,"西","West",1,"noun","sai, sei","nishi","西 (west)","6")
first_100_kanji75 = new kanji_glyph(75,"東","East",1,"noun","tou","higashi","東京 (Tokyo)","8")
first_100_kanji76 = new kanji_glyph(76,"南","South",1,"noun","nan","minami","南 minami (south)","9")
first_100_kanji77 = new kanji_glyph(77,"右","Right",1,"noun","yuu","migi","右 migi (right)","5")
first_100_kanji78 = new kanji_glyph(78,"左","Left",1,"noun","sa","hidari","左 hidari (left)","5")
first_100_kanji79 = new kanji_glyph(79,"見","To see, to be visible, to show",1,"i-verb,noun","ken","mi(ru)","見せる miseru (to show)","7")
first_100_kanji80 = new kanji_glyph(80,"聞","To hear, to listen, to ask",1,"g-verb,noun","mon, bun","ki(ku)","聞く kiku (to listen, to hear)","14")
first_100_kanji81 = new kanji_glyph(81,"書","To write",1,"g-verb,noun","sho","ka(ku)","辞書 jisho (dictionary)","10")
first_100_kanji82 = new kanji_glyph(82,"読","To read",1,"g-verb,noun","doku","yo(mu)","読む yomu (to read)","14")
first_100_kanji83 = new kanji_glyph(83,"話","To talk, conversation",1,"g-verb,noun","wa","hanashi, hana(su)","電話 denwa (telephone)","13")
first_100_kanji84 = new kanji_glyph(84,"買","To buy",1,"g-verb,noun","bai","ka(u)","買い物 kaimono (shopping)","12")
first_100_kanji85 = new kanji_glyph(85,"行","To go, to carry out",1,"g-verb,noun","kou","i(ku), okona(u)","銀行 ginkou (bank)","6")
first_100_kanji86 = new kanji_glyph(86,"出","To go out, to leave",1,"i-verb,noun","shutsu","de(ru), da(su)","出かける dekateru  (to go out)","5")
first_100_kanji87 = new kanji_glyph(87,"入","To enter, to put in",1,"g-verb,noun","nyuu","hai(ru), i(reru)","入口 iriguchi (entrance)","2")
first_100_kanji88 = new kanji_glyph(88,"休","To rest, break, holiday, vacation",1,"g-verb,noun","kyuu","yasu(mu), yasu(mi)","休む yasumu  (to take a day off)","6")
first_100_kanji89 = new kanji_glyph(89,"食","To eat, food",1,"i-verb,noun","shoku","ta(beru)","食堂 shyokudou (dining room)","9")
first_100_kanji90 = new kanji_glyph(90,"飲","To drink, a drink",1,"g-verb,noun","in","no(mu)","飲み物  nomimono (beverage)","12")
first_100_kanji91 = new kanji_glyph(91,"言","To talk, word",1,"g-verb,noun","gen, gon","i(u)","言う iu (to say)","7")
first_100_kanji92 = new kanji_glyph(92,"立","To stand",1,"g-verb,noun","ritsu","ta(tsu)","立つ tastu (to stand)","5")
first_100_kanji93 = new kanji_glyph(93,"会","To meet, society",1,"g-verb,noun","kai, e","a(u)","会社 kaishya (company)","6")
first_100_kanji94 = new kanji_glyph(94,"多","A lot, many",1,"i-adj,noun","ta","oo(i)","多い ooi (many, a lot)","6")
first_100_kanji95 = new kanji_glyph(95,"少","A little, few",1,"noun, i-adj (sukunai)","shou","suko(shi), suku(nai)","少ない sukunai (few)","4")
first_100_kanji96 = new kanji_glyph(96,"古","Old",1,"i-adj,noun","ko","furu(i)","古い furui (old)","5")
first_100_kanji97 = new kanji_glyph(97,"新","New",1,"noun, i-adj (atarashii)","shin","atara(shii)","新聞  shinbun (newspaper)","13")
first_100_kanji98 = new kanji_glyph(98,"大","Big, a lot",1,"na-adj","dai, tai","oo(kii)","大きい ookii (big)","3")
first_100_kanji99 = new kanji_glyph(99,"小","Little, small",1,"noun, i-adj (chiisai)","shou","chii(sai), ko","小さい chisai (little,small)","3")
first_100_kanji100 = new kanji_glyph(100,"安","Cheap, safety, peace",1,"i-adj,noun","an","yasu(i)","安い yasui (cheap, inexpensive)","6")
first_100_kanji101 = new kanji_glyph(101,"高","Expensive, high",1,"i-adj,noun","kou","taka(i)","高い takai (expensive)","6")
first_100_kanji102 = new kanji_glyph(102,"長","Long, leader",1,"i-adj,noun","chou","naga(i)","部長 buchyou (manager)","8")
first_100_kanji103 = new kanji_glyph(103,"白","White",1,"i-adj,noun","haku, byaku","shiro, shiro(i)","面白い omoshiroi (interesting)","5")

kanji_list = [
first_100_kanji1,
first_100_kanji2,
first_100_kanji3,
first_100_kanji4,
first_100_kanji5,
first_100_kanji6,
first_100_kanji7,
first_100_kanji8,
first_100_kanji9,
first_100_kanji10,
first_100_kanji11,
first_100_kanji12,
first_100_kanji13,
first_100_kanji14,
first_100_kanji15,
first_100_kanji16,
first_100_kanji17,
first_100_kanji18,
first_100_kanji19,
first_100_kanji20,
first_100_kanji21,
first_100_kanji22,
first_100_kanji23,
first_100_kanji24,
first_100_kanji25,
first_100_kanji26,
first_100_kanji27,
first_100_kanji28,
first_100_kanji29,
first_100_kanji30,
first_100_kanji31,
first_100_kanji32,
first_100_kanji33,
first_100_kanji34,
first_100_kanji35,
first_100_kanji36,
first_100_kanji37,
first_100_kanji38,
first_100_kanji39,
first_100_kanji40,
first_100_kanji41,
first_100_kanji42,
first_100_kanji43,
first_100_kanji44,
first_100_kanji45,
first_100_kanji46,
first_100_kanji47,
first_100_kanji48,
first_100_kanji49,
first_100_kanji50,
first_100_kanji51,
first_100_kanji52,
first_100_kanji53,
first_100_kanji54,
first_100_kanji55,
first_100_kanji56,
first_100_kanji57,
first_100_kanji58,
first_100_kanji59,
first_100_kanji60,
first_100_kanji61,
first_100_kanji62,
first_100_kanji63,
first_100_kanji64,
first_100_kanji65,
first_100_kanji66,
first_100_kanji67,
first_100_kanji68,
first_100_kanji69,
first_100_kanji70,
first_100_kanji71,
first_100_kanji72,
first_100_kanji73,
first_100_kanji74,
first_100_kanji75,
first_100_kanji76,
first_100_kanji77,
first_100_kanji78,
first_100_kanji79,
first_100_kanji80,
first_100_kanji81,
first_100_kanji82,
first_100_kanji83,
first_100_kanji84,
first_100_kanji85,
first_100_kanji86,
first_100_kanji87,
first_100_kanji88,
first_100_kanji89,
first_100_kanji90,
first_100_kanji91,
first_100_kanji92,
first_100_kanji93,
first_100_kanji94,
first_100_kanji95,
first_100_kanji96,
first_100_kanji97,
first_100_kanji98,
first_100_kanji99,
first_100_kanji100,
first_100_kanji101,
first_100_kanji102,
first_100_kanji103
]
