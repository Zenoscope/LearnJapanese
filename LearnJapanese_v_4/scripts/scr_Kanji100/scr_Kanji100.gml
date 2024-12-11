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

first_100_kanji1 = new kanji_glyph(1,"一","One",1,"numerical noun","イツ, イチ","ひと ( -つ )","一人 hitori (one person, alone)","1")
first_100_kanji2 = new kanji_glyph(2,"二","Two",1,"numerical noun","ニ, ジ","ふた ( -つ ), ふたたび","二人 futari (two people, pair)","2")
first_100_kanji3 = new kanji_glyph(3,"三","Three",1,"numerical noun","サン","み ( -つ ),みっ ( -つ )","三日 mikka (3rd day of the month)","3")
first_100_kanji5 = new kanji_glyph(5,"五","Five",1,"numerical noun","ゴ","いつ ( -つ )","五日 itsuka (5th day of the month)","4")
first_100_kanji6 = new kanji_glyph(6,"六","Six",1,"numerical noun","ロク","むい,む ( -つ ),むっ ( -つ )","六日  muika (6th day of the month)","4")
first_100_kanji7 = new kanji_glyph(7,"七","Seven",1,"numerical noun","シチ","なな ( -つ ),なの","七日 nanoka (7th day of the month)","2")
first_100_kanji8 = new kanji_glyph(8,"八","Eight",1,"numerical noun","ハチ","よう,やっ (-つ)","八日 youka (8th day of the month)","2")
first_100_kanji9 = new kanji_glyph(9,"九","Nine",1,"numerical noun","キュウ, ク","ここの ( -つ )","九日 kokonoka (9th day of the month)","2")
first_100_kanji10 = new kanji_glyph(10,"十","Ten",1,"numerical noun","ジュウ, ジッ","とお,そ,と","十日 tooka  (10th day of the month)","2")
first_100_kanji4 = new kanji_glyph(4,"四","Four",1,"numerical noun","シ","よ ( -つ ),よん,よっ ( -つ )","四日 yokka (4th day of the month)","5")
first_100_kanji11 = new kanji_glyph(11,"百","Hundred",1,"numerical noun","ヒャク, ビャク","","二百円 nihyaku en (200 Yen)","6")
first_100_kanji12 = new kanji_glyph(12,"千","Thousand",1,"numerical noun","セン","ち","千万円  senman en  (10 million Yen)","3")
first_100_kanji13 = new kanji_glyph(13,"万","Ten thousand",1,"numerical noun","バン, マン","よろず","万年筆 mannenhitsu (fountain pen)","3")
first_100_kanji14 = new kanji_glyph(14,"円","Yen, circle, and round",1,"noun","エン","まる ( -い )","円い marui (round)","5")
first_100_kanji15 = new kanji_glyph(15,"日","Day, sun",1,"noun, suffix","ニチ, ジツ","ひ,び ,か","明日 ashita (tomorrow)","5")
first_100_kanji16 = new kanji_glyph(16,"週","Week",1,"noun, suffix","シュウ","","毎週 maishyuu (every week)","11")
first_100_kanji17 = new kanji_glyph(17,"月","Month, moon",1,"noun","ゲツ, ガツ","つき","月曜日 gestuyoubi (Monday)","4")
first_100_kanji18 = new kanji_glyph(18,"年","Year",1,"noun","ネン","とし","今年 kotoshi (this year)","6")
first_100_kanji19 = new kanji_glyph(19,"時","Time, hour",1,"noun","ジ","とき,どき","時計 tokei (clock, watch)","10")
first_100_kanji20 = new kanji_glyph(20,"間","Time frame, span of time",1,"noun,adverb","カン, ケン","ま,あいだ","時間 jinkan (time, hours)","12")
first_100_kanji21 = new kanji_glyph(21,"分","Minute, part, to understand, to divide",1,"noun,suffix","ブン, ブ,フン","わかる","自分 jipun (oneself)","4")
first_100_kanji22 = new kanji_glyph(22,"午","Noon",1,"noun,adverb","ゴ","うま","午前 gogo (morning, A.M.)","4")
first_100_kanji23 = new kanji_glyph(23,"前","Before",1,"noun","ゼン","まえ","名前 namae (name)","9")
first_100_kanji24 = new kanji_glyph(24,"後","After, later, behind",1,"noun","コウ, ゴ","あと,うし","午後 gozen (afternoon, P.M.)","9")
first_100_kanji25 = new kanji_glyph(25,"今","Now",1,"noun,prefix","コン","いま","今晩 konban (this evening)","4")
first_100_kanji26 = new kanji_glyph(26,"先","Before, ahead, future",1,"noun","セン","さき","先週 senshyuu (last week)","6")
first_100_kanji27 = new kanji_glyph(27,"来","To come",1,"prefix,suffix","ライ, タイ","き ( たす, たる )","来月 raigetsu (next month)","7")
first_100_kanji28 = new kanji_glyph(28,"半","Half, middle",1,"noun,prefix","ハン","なか ( ば )","半分 hanpun (half)","5")
first_100_kanji29 = new kanji_glyph(29,"毎","Every, each",1,"prefix","マイ","ごと","毎日 mainichi (every day)","6")
first_100_kanji30 = new kanji_glyph(30,"何","What, which, how many",1,"noun","カ","なん,なに","何曜日 nan youbi (which day of the week?)","7")
first_100_kanji31 = new kanji_glyph(31,"人","Person",1,"noun,counter,suffix","ジン, ニン","ひと,り,と","人々 hitobito (people)","2")
first_100_kanji32 = new kanji_glyph(32,"男","Man, boy, male",1,"noun,prefix","ダン, ナン","おとこ","男の子 atonoko (boy)","7")
first_100_kanji33 = new kanji_glyph(33,"女","Woman, girl, female",1,"noun,prefix","ジョ, ニョ,ニョウ","おんな,め","女の子 annanoko (girl)","3")
first_100_kanji34 = new kanji_glyph(34,"子","Child",1,"noun,prefix","シ","こ","子供  kodomo (child)","3")
first_100_kanji35 = new kanji_glyph(35,"母","Mother",1,"noun","ボ","はは,も","母 haha (mother)","5")
first_100_kanji36 = new kanji_glyph(36,"父","Father",1,"noun","フ","ちち","父 chichi (father)","4")
first_100_kanji37 = new kanji_glyph(37,"友","Friend",1,"noun","ユウ","とも","友達 tomodashi (friend)","4")
first_100_kanji38 = new kanji_glyph(38,"火","Fire",1,"noun,suffix","カ","ひ,び","火曜日 kayoubi (Tuesday)","4")
first_100_kanji39 = new kanji_glyph(39,"水","Water",1,"noun","スイ","みず","水曜日 suiyoubi (Wednesday)","4")
first_100_kanji40 = new kanji_glyph(40,"木","Tree, wood",1,"noun","モク, ボク","き,こ","木曜日 mokuyoubi (Thursday)","4")
first_100_kanji41 = new kanji_glyph(41,"土","Earth, ground",1,"noun","ド, ト","つち","土曜日 doyoubi (Saturday)","3")
first_100_kanji42 = new kanji_glyph(42,"金","Money, gold",1,"noun","キン, ゴン,コン","がね,かね","金曜日 kinyoubi (Friday)","8")
first_100_kanji43 = new kanji_glyph(43,"本","Book, source",1,"noun,counter,preffix","ホン","もと","日本語 nihongo (Japanese)","5")
first_100_kanji44 = new kanji_glyph(44,"川","River",1,"noun,suffix,place","セン","かわ","川 kawa (river)","3")
first_100_kanji45 = new kanji_glyph(45,"花","Flower",1,"noun","カ","はな","花火 hanabi (fireworks)","7")
first_100_kanji46 = new kanji_glyph(46,"気","Spirit",1,"noun","キ,ケ","","元気 genki (healthy, spirit, feeling fine)","6")
first_100_kanji47 = new kanji_glyph(47,"生","Life, to live, to be born, to grow",1,"noun","セイ, ショウ"," い ( -かす, -きる, -ける ), なま, う ( -まれ, -まれる, -む ), は ( -える, -やす )","生徒 seito (pupil)","5")
first_100_kanji48 = new kanji_glyph(48,"魚","Fish",1,"noun","ギョ"," さかな, うお, ざかな [s]","魚 sakana (fish)","11")
first_100_kanji49 = new kanji_glyph(49,"天","Heaven",1,"noun","テン"," あま","天気 tenki (weather)","4")
first_100_kanji50 = new kanji_glyph(50,"空","Sky, empty",1,"noun","クウ"," あ ( -き, -く, -ける ), そら, から, す ( -かす, -く ) むな ( -しい )","空 sora (sky)","8")
first_100_kanji51 = new kanji_glyph(51,"山","Mountain",1,"noun","サン"," やま","山 yama (mountain)","4")
first_100_kanji52 = new kanji_glyph(52,"雨","Rain",1,"noun","ウ"," あま, あめ, さめ","雨 ame (rain)","8")
first_100_kanji53 = new kanji_glyph(53,"電","Electricity",1,"noun","デン","","電気 (electricity)","13")
first_100_kanji54 = new kanji_glyph(54,"車","Car, vehicle",1,"noun","シャ"," くるま","電車 densha (electric train)","7")
first_100_kanji55 = new kanji_glyph(55,"語","Language, word, to chat",1,"noun","ゴ"," かた ( -らう, -る )","英語 eigo (English)","14")
first_100_kanji56 = new kanji_glyph(56,"耳","Ear",1,"noun","ジ"," みみ","耳 mimi (ear)","6")
first_100_kanji57 = new kanji_glyph(57,"手","Hand",1,"noun","シュ"," て, た","手紙 tegami (letter)","4")
first_100_kanji58 = new kanji_glyph(58,"足","Foot, to add",1,"noun","ソク"," あし, た ( -す, -りる, -る )","足し算 tashizan (addition)","7")
first_100_kanji59 = new kanji_glyph(59,"目","Eye",1,"noun","モク"," め","駄目 dame (no good)","5")
first_100_kanji60 = new kanji_glyph(60,"口","Mouth",1,"noun","コウ, ク"," くち","出口 deguchi (exit)","3")
first_100_kanji61 = new kanji_glyph(61,"名","Name",1,"noun","メイ, ミョウ"," な","名前 namae (name)","6")
first_100_kanji62 = new kanji_glyph(62,"店","Shop",1,"noun","テン"," みせ, たな","喫茶店 kissaten (coffee shop)","8")
first_100_kanji63 = new kanji_glyph(63,"駅","Station",1,"noun","エキ","","駅前 ekimae (in front of the station)","14")
first_100_kanji64 = new kanji_glyph(64,"道","Street, path, way",1,"noun","ドウ"," みち","道の駅 michi-no-eki (roadside station)","12")
first_100_kanji65 = new kanji_glyph(65,"社","Shrine, society",1,"noun","シャ","やしろ","社長 yachyou (president of a company)","7")
first_100_kanji66 = new kanji_glyph(66,"国","Country",1,"noun","コク"," くに","外国人 gaikokujin (foreigner)","8")
first_100_kanji67 = new kanji_glyph(67,"外","Outside",1,"noun","ガイ, ゲ"," はず ( -す, -れる ), そと, ほか","外国 gaikoku (foreign country)","5")
first_100_kanji68 = new kanji_glyph(68,"学","School, learning",1,"noun","ガク","まな ( -ぶ )","大学 daigaku (university)","8")
first_100_kanji69 = new kanji_glyph(69,"校","School",1,"noun, suffix","コウ,キョウ","","学校 gakkou (school)","10")
first_100_kanji70 = new kanji_glyph(70,"上","Up, above",1,"noun","ビャク,ショウ,"," あ ( -がり, -がる, -げる ), うわ, うえ, のぼ ( -す, -せる, -り, -る ), かみ","上着 uwagi (jacket)","3")
first_100_kanji71 = new kanji_glyph(71,"下","Down, below",1,"noun","カ, ゴ,カタ ( -ラウ, -ル )"," した, さ ( -がる, -げる ), くだ ( -さる, -す, -り, -る ) [s], お ( -りる, -ろす ), しも, もと","靴下 kutsushita (socks)","3")
first_100_kanji72 = new kanji_glyph(72,"中","Middle, center, inner, between",1,"noun","チュウ"," なか","日中 nicchiyou (during the day, midday)","4")
first_100_kanji73 = new kanji_glyph(73,"北","North",1,"noun","ホク"," きた","北 (north)","5")
first_100_kanji74 = new kanji_glyph(74,"西","West",1,"noun","セイ, サイ"," にし","西 (west)","6")
first_100_kanji75 = new kanji_glyph(75,"東","East",1,"noun","トウ"," ひがし","東京 (Tokyo)","8")
first_100_kanji76 = new kanji_glyph(76,"南","South",1,"noun","ナン"," みなみ","南 minami (south)","9")
first_100_kanji77 = new kanji_glyph(77,"右","Right",1,"noun","ウ,ユウ"," みぎ","右 migi (right)","5")
first_100_kanji78 = new kanji_glyph(78,"左","Left",1,"noun","サ"," ひだり","左 hidari (left)","5")
first_100_kanji79 = new kanji_glyph(79,"見","To see, to be visible, to show",1,"i-verb,noun","ケン"," み ( -える, -せる, -る )","見せる miseru (to show)","7")
first_100_kanji80 = new kanji_glyph(80,"聞","To hear, to listen, to ask",1,"g-verb,noun","ブン,モン"," き ( -く, -こえる )","聞く kiku (to listen, to hear)","14")
first_100_kanji81 = new kanji_glyph(81,"書","To write",1,"g-verb,noun","ショ"," か ( -く ), が ( -き ) [s], がき [s]","辞書 jisho (dictionary)","10")
first_100_kanji82 = new kanji_glyph(82,"読","To read",1,"g-verb,noun","トク,トウ"," よ ( -み, -む ) [s]","読む yomu (to read)","14")
first_100_kanji83 = new kanji_glyph(83,"話","To talk, conversation",1,"g-verb,noun","ワ"," はなし, はな ( -す )","電話 denwa (telephone)","13")
first_100_kanji84 = new kanji_glyph(84,"買","To buy",1,"g-verb,noun","バイ"," か ( -う )","買い物 kaimono (shopping)","12")
first_100_kanji85 = new kanji_glyph(85,"行","To go, to carry out",1,"g-verb,noun","コウ, ギョウ"," い ( -き, -く ), ゆ ( -き, -く ), おこな ( -う )","銀行 ginkou (bank)","6")
first_100_kanji86 = new kanji_glyph(86,"出","To go out, to leave",1,"i-verb,noun","シュツ"," だ ( -す ) [s], で ( -る ) [s]","出かける dekateru  (to go out)","5")
first_100_kanji87 = new kanji_glyph(87,"入","To enter, to put in",1,"g-verb,noun","ニュウ, ジュ"," い ( -り, -る, -れ, -れる ), はい ( -る )","入口 iriguchi (entrance)","2")
first_100_kanji88 = new kanji_glyph(88,"休","To rest, break, holiday, vacation",1,"g-verb,noun","キュウ"," やす ( -まる, -む, -める )","休む yasumu  (to take a day off)","6")
first_100_kanji89 = new kanji_glyph(89,"食","To eat, food",1,"i-verb,noun","ショク, ジキ"," く ( -う, -らう ), た ( -べる )","食堂 shyokudou (dining room)","9")
first_100_kanji90 = new kanji_glyph(90,"飲","To drink, a drink",1,"g-verb,noun","イン"," の ( -み, -む )","飲み物  nomimono (beverage)","12")
first_100_kanji91 = new kanji_glyph(91,"言","To talk, word",1,"g-verb,noun","ゲン, ゴン"," い ( -う ), こと","言う iu (to say)","7")
first_100_kanji92 = new kanji_glyph(92,"立","To stand",1,"g-verb,noun","リツ"," た ( -ち, -つ, -て, -てる ), だ ( -て, -てる ), たて","立つ tastu (to stand)","5")
first_100_kanji93 = new kanji_glyph(93,"会","To meet, society",1,"g-verb,noun","カイ, エ"," あ ( -う, -わせる )","会社 kaishya (company)","6")
first_100_kanji94 = new kanji_glyph(94,"多","A lot, many",1,"i-adj,noun","タ"," おお ( -い )","多い ooi (many, a lot)","6")
first_100_kanji95 = new kanji_glyph(95,"少","A little, few",1,"noun, i-adj (sukunai)","ショウ"," すく ( -ない ), すこ ( -し )","少ない sukunai (few)","4")
first_100_kanji96 = new kanji_glyph(96,"古","Old",1,"i-adj,noun","コ"," ふる ( -い, -す )","古い furui (old)","5")
first_100_kanji97 = new kanji_glyph(97,"新","New",1,"noun, i-adj (atarashii)","シン"," あたら ( -しい ), あら ( -た ), にい","新聞  shinbun (newspaper)","13")
first_100_kanji98 = new kanji_glyph(98,"大","Big, a lot",1,"na-adj","ダイ, タイ"," おお ( -いに, -きい )","大きい ookii (big)","3")
first_100_kanji99 = new kanji_glyph(99,"小","Little, small",1,"noun, i-adj (chiisai)","ショウ"," こ, ちい ( -さい )","小さい chisai (little,small)","3")
first_100_kanji100 = new kanji_glyph(100,"安","Cheap, safety, peace",1,"i-adj,noun","アン"," やす ( -い, -まる, -らか )","安い yasui (cheap, inexpensive)","6")
first_100_kanji101 = new kanji_glyph(101,"高","Expensive, high",1,"i-adj,noun","コウ"," たか ( -い, -まる, -める )","高い takai (expensive)","6")
first_100_kanji102 = new kanji_glyph(102,"長","Long, leader",1,"i-adj,noun","チョウ"," なが ( -い )","部長 buchyou (manager)","8")
first_100_kanji103 = new kanji_glyph(103,"白","White",1,"i-adj,noun","ハク, ビャク"," しろ ( -い ), しら","面白い omoshiroi (interesting)","5")

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
