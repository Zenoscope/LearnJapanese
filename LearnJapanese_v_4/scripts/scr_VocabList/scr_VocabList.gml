
// 1000 words 
// vocab list
// 

//index	sorting	 logograph	kana_reading1	kana_reading2	romanji	meaning	type	examples	variation
function first_1000_vocab(	
	_index,_kanji,_meaning,_romanji,_type,_onyomi,_kunyomi,_examples,_sorting,_verbStem
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
	verbStem	=_verbStem;
}

//kanji_glyph     (  2,"二","Two","ni"     ,"numerical noun","futa(tsu), futa","二人 futari (two people, pair)","2",1)
//first_1000_vocab(001,"私","I  ","watashi","Pronoun"       ,"わたし"         ,"introduction","My name is Clarabelle.",1)

//first_1000_vocab001 = new first_1000_vocab(001,"私","I; myself","watashi","Pronoun","わたし","introduction","私はクララベルです / わたしはクララベルです  / Watashi wa clarabelle desu / My name is Clarabelle.",1,"");
first_1000_vocab001 = new first_1000_vocab(001,"大丈夫","OK; okay; alright; problem free","daijoubu","な-adjective, Adverb","だいじょうぶ","Greetings","すみません! だいじょうぶです。/ Sumimasen! Daijōbu desu./ Excuse me! It's fine.",1,"");
first_1000_vocab002 = new first_1000_vocab(002,"外国","foreign country","gaikoku","Noun","がいこく","introduction","外国に行くのは楽しいです。/ がいこくにいくのはたのしいです。/ Gaikoku ni iku no wa tanoshii desu. / Going to a foreign country is fun.",1,"");
first_1000_vocab003 = new first_1000_vocab(003,"外国人","foreigner; non-Japanese","gaikokujin","Noun","がいこくじん","introduction"," 私の友達は外国人です。/ わたしのともだちは がいこくじんです。/ Watashi no tomodachi wa gaikokujin desu. / My friend is a foreigner.",1,"");
first_1000_vocab004 = new first_1000_vocab(004,"始まる","to begin","hajimaru","Godan Verb, Intransitive","はじまる","introduction","始まして / はじめまして / Hajimimashite / Nice to meet you",1,"hajimar");
first_1000_vocab005 = new first_1000_vocab(005,"国","country; state; region","kuni","Noun","くに","introduction","私の国は日本です。/ わたしのくにはにほんです。/ Watashi no kuni wa Nihon desu./ My country is Japan.",1,"");
first_1000_vocab006 = new first_1000_vocab(006,"名前","name; full name; given name","namae","Noun","なまえ","introduction","お名前は何ですか？ / おなまえはなんですか？ / Oname wa nan desu ka? What is your name?",1,"");
first_1000_vocab007 = new first_1000_vocab(007,"出身","Ones origin (city, country etc)","shusshin","Noun","しゅっしん","introduction","いいえ、私は出身日本です。/ いいえ、わたしはしゅっしんにほんです / iie, watashi wa shusshin Nihon desu. / No, I am from Japan.",1,"");
first_1000_vocab008 = new first_1000_vocab(008,"話す","To speak, conversation","hanasu","Godan Verb, Transitive","はなす","introduction","ゆっくり話してください。/ ゆっくりはなしてください。/ Yūkuri hanashite kudasai./ Please speak slowly",1,"hanas");
first_1000_vocab009 = new first_1000_vocab(009,"英語","English language","eigo","Noun","えいご","introduction","英語は話します。/ えいごははなします。/ ei-go wa hanashimasu. /  I speak English.",1,"");
first_1000_vocab010 = new first_1000_vocab(010,"にほんご","japanese language","nihongo","Noun","","","私は日本語を勉強しています。/ わたしはにほんごをべんきょうしています。/ Watashi wa nihongo o benkyō shiteimasu./  I am studying Japanese.",2,"");

first_1000_vocab011 = new first_1000_vocab(011,"どうも","thank you; thanks","doumo (arigato)","Adverb","","Greetings","/ ありがとうございました。/  arigatō gozaimashita / Thank you",2,"");

first_1000_vocab012 = new first_1000_vocab(012,"どうぞ","please","douzo (yoroshiku)","Adverb","","Greetings","/ どうぞ / Dōzo. / Here you go, please go ahead",2,"");
first_1000_vocab013 = new first_1000_vocab(013,"下さい","please","kudasai","Expression","ください","Greetings","/ バッグをひとつください。/ Baggu o hitotsu kudasai. / I would like one bag, please.",1,"");
first_1000_vocab014 = new first_1000_vocab(014,"ええ","yes; that is correct; right","ee","Noun","","Greetings","はい、ええといってください。/ Hai, ēto itte kudasai. / - Yes, please say \"ええ\" (yes).",2,"");
first_1000_vocab015 = new first_1000_vocab(015,"はい","yes; that is correct​","hai","Noun","","Greetings","せんせい、はいとこたえてください。/ Sensei, hai to otozute kudasai./ Teacher, please answer \"はい\" (yes).",2,"");
first_1000_vocab016 = new first_1000_vocab(016,"大丈夫","OK; okay; alright; problem free","daijoubu","な-adjective, Adverb","だいじょうぶ","Greetings","すみません! だいじょうぶです。/ Sumimasen! Daijōbu desu./ Excuse me! It's fine.",1,"");
first_1000_vocab017 = new first_1000_vocab(017,"元気","lively; energetic; healthy","genki","Noun, な-adjective","げんき","Greetings","元気ですか？はい、元気です。/ げんきですか？はい、げんきです。/ Genki desu ka? Hai, genki desu. / How are you? Yes, I'm fine.",1,"");
first_1000_vocab018 = new first_1000_vocab(018,"分かる","to understand; to comprehend;","wakaru","Godan Verb, Intransitive","わかる","greetings","その問題が分かりません。/ そのもんだいが わかりません。/ Sono mondai ga wakarimasen./ I don't understand that problem.",1,"wakar");
first_1000_vocab019 = new first_1000_vocab(019,"ある","to be, to have (everthing ex humans and animals)","aru","Godan Verb, Intransitive","ある","day 2","机の上に本があります。/ つくえのうえにほんがあります。/ Tsukue no ue ni hon ga arimasu./  There is a book on the desk.",2,"ar");
first_1000_vocab020 = new first_1000_vocab(020,"居る","to be, to have (about human beings and animals)","iru","Ichidan Verb, Intransitive","いる","day 2","家に猫が居ます。/ いえにねこがいます。/ Ie ni neko ga imasu./ There is a cat at home.",1,"i");
first_1000_vocab021 = new first_1000_vocab(021,"父","(your) father","chichi","Noun","ちち","family","父が家にいます。/ ちちがいえにいます。/ Chichi ga ie ni imasu. / My father is at home.",1,"");
first_1000_vocab022 = new first_1000_vocab(022,"母","(your) mother","haha","Noun","はは","family","母は料理が上手です。/ はははりょうりがじょうずです。 / Haha wa ryōri ga jōzu desu./ My mother is good at cooking.",1,"");
first_1000_vocab023 = new first_1000_vocab(023,"さい","years old","~sai","counter","","family","私の犬は6歳です。/ わたしのいぬはろくさいです。/ Watashi no inu wa 6-sai desu./ My dog is 6 years old.",2,"");
first_1000_vocab024 = new first_1000_vocab(024,"女の子","girl; daughter; young women (informal, within family)","onnanoko","Noun","おんなのこ","family","その公園で女の子が遊んでいます。 /そのこうえんでおんなのこがあそんでいます。/ Sono kōen de onnanoko ga asondeimasu. / A girl is playing at that park.",1,"");
first_1000_vocab025 = new first_1000_vocab(025,"両親","parents; both parents","ryoushin","Noun","りょうしん","family","両親と一緒に旅行に行きます。/ りょうしんといっしょにりょこうにいきます。/Ryōshin to issho ni ryokō ni ikimasu./ - I will go on a trip with my parents.",1,"");
first_1000_vocab026 = new first_1000_vocab(026,"お母さん","mother; mom; mum; ma","okaasan","Noun","おかあさん","family","お母さんに手紙を書きます。/おかあさんにてがみをかきます。/ Okāsan ni tegami o kakimasu./ - I will write a letter to my mother.",1,"");
first_1000_vocab027 = new first_1000_vocab(027,"奥さん","wife; your wife; his wife","okusan","Noun","おくさん","family","奥さんはとても優しいです。/おくさんはとてもやさしいです。/Okusan wa totemo yasashii desu./ - My wife is very kind.",1,"");
first_1000_vocab028 = new first_1000_vocab(028,"誰","who","dare","Pronoun","だれ","family","/このセーターはだれのですか？ /Kono sētā wa dare no desu ka?/ who's sweater is this? ",1,"");
first_1000_vocab029 = new first_1000_vocab(029,"男の子","boy; male child; baby boy;son (informal, within family)","otokonoko","Noun","おとこのこ","family","男の子が公園で遊んでいます。/ おとこのこがこうえんであそんでいます。 / Otokonoko ga kōen de asondeimasu./ - The boy is playing at the park.",1,"");
first_1000_vocab030 = new first_1000_vocab(030,"お父さん","father; dad; papa; pa; pop; daddy","otousan","Noun","おとうさん","family","お父さんは仕事に行きました。/ おとうさんはしごとにいきました。 /Otōsan wa shigoto ni ikimashita./ - My father went to work.",1,"");
first_1000_vocab031 = new first_1000_vocab(031,"二","two; 2","niに","Noun","に","numbers","/ これは1つのりんごです。/ Kore wa hitotsu no ringo desu. / This is one apple.",1,"");
first_1000_vocab032 = new first_1000_vocab(032,"六","six; 6","roku","Noun","ろく","numbers","私の誕生日は六月です。/ わたしの たんじょうびは ろくがつ です。/ Watashi no tanjoubi wa rokugatsu desu. / My birthday is in June.",1,"");
first_1000_vocab033 = new first_1000_vocab(033,"三","three; 3","san","Noun","さん","numbers","彼は3歳です。/ かれはさんさいです。 / Kare wa sansai desu. / He is three years old.",1,"");
first_1000_vocab034 = new first_1000_vocab(034,"四","four; 4","shi","Noun","し","numbers","私の友達は四人います。/ わたしの ともだちは よにん います。/ Watashi no tomodachi wa yonin imasu. / I have four friends",1,"");
first_1000_vocab035 = new first_1000_vocab(035,"七","seven; 7","shichi","Noun","しち","numbers","その本は7ページあります。/ そのほんはななぺーじあります。 / Sono hon wa nanapēji arimasu. / That book has seven pages.",1,"");
first_1000_vocab036 = new first_1000_vocab(036,"九","nine; 9","kyuu","Noun","きゅう","numbers","私は9冊の本を読みました。/ わたしはきゅうさつのほんをよみました。/ Watashi wa kyūsatsu no hon o yomimashita. / I read nine books.",1,"");
first_1000_vocab037 = new first_1000_vocab(037,"十","ten; 10","juu","Noun","じゅう","numbers","あのクラスには10人の学生がいます。/あのくらすにはじゅっにんのがくせいがいます。/ Ano kurasu ni wa jūnin no gakusei ga imasu. / There are ten students in that class.",1,"");
first_1000_vocab038 = new first_1000_vocab(038,"五","five; 5","go","Noun","ご","numbers","私には5つの兄弟がいます。/わたしにはごっつのきょうだいがいます。 / Watashi ni wa itsutsu no kyōdai ga imasu. / I have five siblings.",1,"");
first_1000_vocab039 = new first_1000_vocab(039,"八","eight: 8","hachi","Noun","はち","numbers","これは8個のお菓子です。/ これははっこのおかしです。/ Kore wa hachiko no okashi desu. / These are eight pieces of candy.",1,"");
first_1000_vocab040 = new first_1000_vocab(040,"一","one; best; first; foremost; start","ichi","Noun","いち","numbers","これは一つのリンゴです。/ これはひとつのりんごです。/ Kore wa hitotsu no ringo desu. / This is one apple.",1,"");
first_1000_vocab041 = new first_1000_vocab(041,"水曜日","Wednesday","suiyoubi","Noun","すいようび","weekdays","今日は水曜日です。/ きょうはすいようびです。/ Kyō wa suiyōbi desu / it is wednesday today.",1,"");
first_1000_vocab042 = new first_1000_vocab(042,"土曜日","Saturday","doyoubi","Noun","どようび","weekday","土曜日が好きです。/ どようびがすきです。 / Doyōbi ga suki desu. / I like Saturdays",1,"");
first_1000_vocab043 = new first_1000_vocab(043,"金曜日","Friday","kinyoubi","Noun","きんようび","weekday","金曜日にチーズを買います。/ きんようびにちーずをかいます。/ Kinyōbi ni chīzu o kaimasu. / I'm buying cheese on Friday",1,"");
first_1000_vocab044 = new first_1000_vocab(044,"木曜日","Thursday","mokuyoubi","Noun","もくようび","weekday","明日は木曜日です。/ あしたはもくようびです。/ Ashita wa mokuyōbi desu. / Tomorrow is Thursday",1,"");
first_1000_vocab045 = new first_1000_vocab(045,"日曜日","Sunday","nichiyoubi","Noun","にちようび","weekday","今日は日曜日ですか？/ きょうはにちようびですか？/ Kyō wa nichiyōbi desu ka? / Is it Sunday today?",1,"");
first_1000_vocab046 = new first_1000_vocab(046,"月曜日","Monday","getsuyoubi","Noun","げつようび","weekdays","昨日は月曜日でした。/ きのうはげつようびでした。/ Kinō wa getsuyōbi deshita. / Yesterday was Monday",1,"");
first_1000_vocab047 = new first_1000_vocab(047,"火曜日","Tuesday","kayoubi","Noun","かようび","weekdays","いつですか？火曜日にです。/ いつですか？かようびにです。/ Itsu desu ka? Kayōbi ni desu. / When is it? It's on Tuesday",1,"");
first_1000_vocab048 = new first_1000_vocab(048,"昨日","yesterday","kinou","Noun","きのう","time","昨日は曇りでした。/ きのうはくもりでした。/ Kinō wa kumori deshita. / It was cloudy yesterday",1,"");
first_1000_vocab049 = new first_1000_vocab(049,"今日","today; this day","kyou","Noun","きょう","calendar","今日はセーターを着てください。/ きょうはセーターをきてください。/ Kyō wa sētā o kite kudasai. / Please wear a sweater today",1,"");
first_1000_vocab050 = new first_1000_vocab(050,"明日","tomorrow","ashita","Noun","あした","time","明日、箸を買います。/ あした、はしをかいます。Ashita, hashi o kaimasu / I will buy chopsticks tomorrow",1,"");
first_1000_vocab051 = new first_1000_vocab(051,"番号","number","bangou","Noun","ばんごう","numbers 2","この書類の番号は何ですか？ /Kono shorui no bangou wa nan desu ka?/ What is the number of this document?",1,"");
first_1000_vocab052 = new first_1000_vocab(052,"ゼロ","zero","zero","Noun","","numbers 2","私の財布の中にはお金がゼロ円です。/ Watashi no saifu no naka ni wa okane ga zero en desu. / There is zero yen in my wallet.",3,"");
first_1000_vocab053 = new first_1000_vocab(053,"百","100; hundred","hyaku","Noun","ひゃく","numbers 2","私の財布の中にはお金が100円だけです。/ Watashi no saifu no naka ni wa okane ga hyaku en dake desu. / There is only 100 yen in my wallet.",1,"");
first_1000_vocab054 = new first_1000_vocab(054,"万","10,000; ten thousand","man","Noun","まん","numbers 2","それは1万円です。/それはいちまんえんです。 / Sore wa ichiman en desu. / It costs 10000 yen.",1,"");
first_1000_vocab055 = new first_1000_vocab(055,"千","1,000; thousand","sen","Noun","せん","numbers 2","私は千円持っています。/わたしはせんえんもっています。/  Watashi wa sen'en motteimasu. / I have 1000 yen",1,"");
first_1000_vocab056 = new first_1000_vocab(056,"零","zero","rei","Noun","れい","numbers 2","テストの点数は零点でした。/ テストのてんすうはれいてんでした。/Tesuto no tensū wa reiten deshita. /  I got zero points on the test.",1,"");
first_1000_vocab057 = new first_1000_vocab(057,"一番","number one; first; 1st, first place​; best; most​","ichiban","Noun, Adverb","いちばん","numbers 2","それは町で一番美味しいケーキです。/ それはまちでいちばんおいしいけーきです。/ Sore wa machi de ichiban oishii kēki desu. / It is the best cake in town.",1,"");
first_1000_vocab058 = new first_1000_vocab(058,"円","japanese currency","yen","Noun","えん","numbers 2","この本は300円です。 /このほんはさんびゃくえんです。/ Kono hon wa sanbyaku en desu./ This book costs 300 yen.",1,"");
first_1000_vocab059 = new first_1000_vocab(059,"少ない","few; a little; scarce; insufficient; seldom","sukunai","い-adjective","すくない","numbers 2","お金が少ないです。/  おかねがすくないです。/ Okane ga sukunai desu. / I have little money.",1,"");
first_1000_vocab060 = new first_1000_vocab(060,"多い","many; numerous; a lot; large quantity; frequent","ooi","い-adjective","おおい","numbers 2","時間が多いです。/ じかんがおおいです。/ Jikan ga ooi desu. / I have a lot of time.",1,"");
first_1000_vocab061 = new first_1000_vocab(061,"好き","liking; being fond of; to one's liking; to one's taste;","suki","な-adjective","すき","Food ","抹茶好きです。/ まっちゃすきです。/ Matcha suki desu / I like matcha",1,"");
first_1000_vocab062 = new first_1000_vocab(062,"好き無い","not liking","suki nai","な-adjective","すきな い","Food ","魚好きではありません。/ さかなすきないです。/ Sakana sukinai desu / I don't like fish.",1,"");
first_1000_vocab063 = new first_1000_vocab(063,"食べる","to eat","taberu","Ichidan Verb","たべる","Food ","私は肉を食べません。/わたしはにくをたべません。 /Watashi wa niku o tabemasen./ / I do not eat meat",1,"tabe");
first_1000_vocab064 = new first_1000_vocab(064,"茶碗","rice bowl; tea cup; teacup","chawan","Noun","ちゃわん","food","母が美しい茶碗を使ってご飯を盛りました。 /ははがうつくしいちゃわんをつかってごはんをもりました。/  My mother used a beautiful rice bowl to serve the rice.",1,"");
first_1000_vocab065 = new first_1000_vocab(065,"箸","chopsticks","hashi","Noun","はし","food","私は箸を使えません。/ わたしははしをつかえません。 / Watashi wa hashi o tsukaemasen./ I can't use chopsticks",1,"");
first_1000_vocab066 = new first_1000_vocab(066,"水","water; fluid; liquid​","mizu","Noun","みず","food","私はコップ一杯の水を飲みました。/わたしはこっぷいっぱいのみずをのみました。 / Watashi wa koppu ippai no mizu o nomimashita. / I drank a cup of water ",1,"");
first_1000_vocab067 = new first_1000_vocab(067,"ナイフ","knife","naifu","Noun","","food","このナイフは緑色です。/ このないふはみどりいろです。/ Kono naifu wa midori-iro desu. / This knife is green  ",3,"");
first_1000_vocab068 = new first_1000_vocab(068,"大好き","love; like; like very much","daisuki","な-adjective","iだいすき","food"," 私はこの茶碗が大好きです / わたしはこのちゃわんがだいすきです。 / Watashi wa kono chawan ga daisuki desu / I love this teacup",1,"");
first_1000_vocab069 = new first_1000_vocab(069,"好き","like","sukiすき","Noun, な-adjective","DUPE","food","私は電車が好きです。/ わたしはでんしゃがすきです。/ Watashi wa densha ga suki desu. /  I like trains  ",1,"");
first_1000_vocab070 = new first_1000_vocab(070,"要る","to be needed","iru","Godan Verb, Intransitive","いる","day 2","お金が要ります。 /おかねがいります。/Okane ga irimasu.  / I need money.",1,"ir");
first_1000_vocab071 = new first_1000_vocab(071,"これ","this, this one (near speaker)","kore","Pronoun","","SADK"," /これはペンです。/ Kore wa pen desu./ This is a pen.",2,"");
first_1000_vocab072 = new first_1000_vocab(072,"あれ","that (over there, distant speaker and listener)","are","Pronoun","","SADK","あれは時計です。/ あれはとけいです。/ Are wa tokei desu. / That is a clock.",2,"");
first_1000_vocab073 = new first_1000_vocab(073,"どれ","which one? (of three or more)​","dore","Pronoun","","SADK","どれが好きですか？/ どれがすきですか？/ Dore ga suki desu ka? / Which one do you like?",2,"");
first_1000_vocab074 = new first_1000_vocab(074,"それ","that (closer to listener)","sore","Pronoun","","SADK","それは猫です。/ それはねこです。/ Sore wa neko desu. / That is a cat.",2,"");
first_1000_vocab075 = new first_1000_vocab(075,"質問","question; inquiry","shitsumon","Noun, Verb, Suru verb","しつもん","SADK","質問があります。/ しつもんがあります。/ Shitsumon ga arimasu. / I have a question.",1,"");
first_1000_vocab076 = new first_1000_vocab(076,"あちら","that way, that direction (over there, distant speaker and listener), formal","achira","Pronoun","","SADK","あちらに行きます。/ あちらにいきます。/ Achira ni ikimasu. / I'm going over there.",2,"");
first_1000_vocab077 = new first_1000_vocab(077,"どちら","which way; which direction (over there) , more formal","dochira","Pronoun","","SADK","どちらの方がましですか？/ どちらのほうがましですか？/ Dochira no hou ga mashi desu ka? / Which one is better?",2,"");
first_1000_vocab078 = new first_1000_vocab(078,"こちら","this way; this direction​ (closer to speaker) , more formal","kochira","Noun","","SADK","こちらは私の家です。/ こちらはわたしのいえです。/ Kochira wa watashi no ie desu. / This is my house.",2,"");
first_1000_vocab079 = new first_1000_vocab(079,"そちら","that way; that direction (closer to listener) , formal","sochira","Pronoun","","SADK","そちらはどこですか？/ そちらはどこですか？/ Sochira wa doko desu ka? / Where is that?",2,"");
first_1000_vocab080 = new first_1000_vocab(080,"あなた","you","anata","Pronoun","","day 2","あなたは友達です。/ あなたはともだちです。/ Anata wa tomodachi desu. / You are a friend.",2,"");
first_1000_vocab081 = new first_1000_vocab(081,"どの","[ + noun] which ","dono","Pre-noun adjectival","","SADK","どの本がいいですか？/ どのほんがいいですか？/ Dono hon ga ii desu ka? / Which book is good?",2,"");
first_1000_vocab082 = new first_1000_vocab(082,"その","[ + noun] that (closer to listener) ","sono","Pre-noun adjectival","","SADK","その傘は赤いです。/ そのかさはあかいです。/ Sono kasa wa akai desu. / That umbrella is red.",2,"");
first_1000_vocab083 = new first_1000_vocab(083,"この","[ + noun] this​ (near speaker)","kono","Pre-noun adjectival","","SADK","この車は私のです。/ このくるまはわたしのです。/ Kono kuruma wa watashi no desu. / This car is mine.",2,"");
first_1000_vocab084 = new first_1000_vocab(084,"あの","[ + noun] this​ (closer to speaker)","ano","Pre-noun adjectival","","SADK","あの人は先生です。/ あのひとはせんせいです。/ Ano hito wa sensei desu. / That person is a teacher.",2,"");
first_1000_vocab085 = new first_1000_vocab(085,"あっち","over there  (over there, distant speaker and listener), casual","acchi","Pronoun","","SADK","あっちに行きましょう。/ あっちにいきましょう。/ Acchi ni ikimashou. / Let's go that way.",2,"");
first_1000_vocab086 = new first_1000_vocab(086,"どっち","which; which one (over there), casual","docchi","Pronoun","","SADK","どっちが欲しいですか？/ どっちがほしいですか？/ Docchi ga hoshii desu ka? / Which one do you want?",2,"");
first_1000_vocab087 = new first_1000_vocab(087,"そっち","that way; ​over there (closer to listener)  casual","socchi","Pronoun","","SADK","そっちはどこですか？/ そっちはどこですか？/ Socchi wa doko desu ka? / Where is that direction?",2,"");
first_1000_vocab088 = new first_1000_vocab(088,"こっち","this person or way (closer to speaker)   casual","kocchi","Noun","","SADK","こっちに来てください。/ こっちにきてください。/ Kocchi ni kite kudasai. / Please come this way.",2,"");
first_1000_vocab089 = new first_1000_vocab(089,"何","what","nani","Noun, Pronoun, Prefix","なに","SADK","何を食べますか？/ なにをたべますか？/ Nani o tabemasu ka? / What will you eat?",1,"");
first_1000_vocab090 = new first_1000_vocab(090,"何故","why; how","naze","Adverb","なぜ","SADK","なぜそこにいますか？/ なぜそこにいますか？/ Naze soko ni imasu ka? / Why are you there?",1,"");
first_1000_vocab091 = new first_1000_vocab(091,"動物","animal","doubutsu","Noun","どうぶつ","animal","動物はたくさんいます。/ どうぶつはたくさんいます。/ Doubutsu wa takusan imasu. / There are many animals.",1,"");
first_1000_vocab092 = new first_1000_vocab(092,"小さい","small; little; tiny (physical size)","chiisai","い-adjective","ちいさい","animals","その猫は小さいです。/ そのねこはちいさいです。/ Sono neko wa chiisai desu. / That cat is small.",1,"");
first_1000_vocab093 = new first_1000_vocab(093,"小さな","small; little; tiny​ and cute","chiisana","Pre-noun adjectival","ちいさな","animals","私の猫は小さな猫です。/ わたしのねこはちいさなねこです。/ Watashi no neko wa chiisana neko desu. / My cat is a small cat.",1,"");
first_1000_vocab094 = new first_1000_vocab(094,"犬","dog","inu","Noun","いぬ","animals","私の犬はユキと呼ばれています。/ わたしのいぬはユキとよばれています。/ Watashi no inu wa Yuki to yobarete imasu. / My dog is called Yuki.",1,"");
first_1000_vocab095 = new first_1000_vocab(095,"可愛い","cute","kawai","い-adjective","かわいい","animals","可愛い犬が好きです。/ かわいいいぬがすきです。/ Kawaii inu ga suki desu. / I like cute dogs.",1,"");
first_1000_vocab096 = new first_1000_vocab(096,"短い","short","mijikai","い-adjective","みじかい","animals","短い道を歩いて行きました。/ みじかいみちをあるいていきました。/ Mijikai michi o aruite ikimashita. / I walked along a short road.",1,"");
first_1000_vocab097 = new first_1000_vocab(097,"猫","cat","neko","Noun","ねこ","animals","その猫は可愛いです。/ そのねこはかわいいです。/ Sono neko wa kawaii desu. / That cat is cute.",1,"");
first_1000_vocab098 = new first_1000_vocab(098,"ペット","pet","petto","Noun","","animals","私はペットを持っています。/ わたしはぺっとをもっています。/ Watashi wa petto o motteimasu. / I have a pet.",3,"");
first_1000_vocab099 = new first_1000_vocab(099,"魚","fish","sakana","Noun","さかな","animals","魚を食べたいです。/ さかなをたべたいです。/ Sakana o tabetai desu. / I want to eat fish.",1,"");
first_1000_vocab100 = new first_1000_vocab(100,"足","foot; leg; paw; arm","ashi","Noun","あし","animals","足が痛いです。/ あしがいたいです。/ Ashi ga itai desu. / My leg hurts.",1,"");
first_1000_vocab111 = new first_1000_vocab(111,"頭","head","atama","Noun","あたま","body","頭が痛いです。/ あたまがいたいです。/ Atama ga itai desu. / I have a headache.",1,"");
first_1000_vocab112 = new first_1000_vocab(112,"歯","tooth","ha","Noun","は","body","私は白い歯があります。/ わたしはしろいはがあります。/ Watashi wa shiroi ha ga arimasu. / I have white teeth.",1,"");
first_1000_vocab113 = new first_1000_vocab(113,"鼻","nose","hana","Noun","はな","body","鼻が長い人です。/ はながながいひとです。/ Hana ga nagai hito desu. / It's a person with a long nose.",1,"");
first_1000_vocab114 = new first_1000_vocab(114,"痛い","painful; sore​","itai","い-adjective","いたい","body","この爪が痛いです。/ このつめがいたいです。/ Kono tsume ga itai desu. / This nail hurts.",1,"");
first_1000_vocab115 = new first_1000_vocab(115,"体","body","karada","Noun","からだ","body","体が寒いです。/ からだがさむいです。/ Karada ga samui desu. / I feel cold.",1,"");
first_1000_vocab116 = new first_1000_vocab(116,"口","mouth, opening","kuchi","Noun","くち","body","口が渇いたです。/ くちがかわいたです。/ Kuchi ga kawaita desu. / I'm thirsty.",1,"");
first_1000_vocab117 = new first_1000_vocab(117,"目","eye","me","Noun","め","body","目が眩しいです。/ めがまぶしいです。/ Me ga mabushii desu. / My eyes are dazzled.",1,"");
first_1000_vocab118 = new first_1000_vocab(118,"お腹","stomach","onaka","Noun","おなか","body","お腹が空いたです。/ おなかがすいたです。/ Onaka ga suita desu. / I'm hungry.",1,"");
first_1000_vocab119 = new first_1000_vocab(119,"背","height; stature; back; spine","se","Noun","せ","body","私の妻は背が低いです。/ わたしのつまはせがひくいです。/ Watashi no tsuma wa se ga hikui desu. / My wife is short in height.",1,"");
first_1000_vocab120 = new first_1000_vocab(120,"手","hand; arm","te","Noun","て","body","私の手は冷たいです。/ わたしのてはつめたいです。/ Watashi no te wa tsumetai desu. / My hands are cold.",1,"");
first_1000_vocab121 = new first_1000_vocab(121,"カレンダー","calendar","karendaa","Noun","","calendar","カレンダーを見て予定を確認しましょう。/ かれんだーをみてよていをかくにんしましょう。/ Karendā o mite yotei o kakunin shimashou. / Let's check the schedule by looking at the calendar.",3,"");
first_1000_vocab122 = new first_1000_vocab(122,"今晩","tonight; this evening","konban","Noun","こんばん","calendar","今晩は友達とディナーに行きます。/ こんばんはともだちとディナーにいきます。/ Konban wa tomodachi to dinā ni ikimasu. / Tonight, I'm going to have dinner with friends.",1,"");
first_1000_vocab123 = new first_1000_vocab(123,"今月","this month","kongetsu","Noun","こんげつ","calendar","今月は誕生日があります。/ こんげつはたんじょうびがあります。/ Kongetsu wa tanjōbi ga arimasu. / I have a birthday this month.",1,"");
first_1000_vocab124 = new first_1000_vocab(124,"今週","this week","konshuu","Noun","こんしゅう","calendar","今週は忙しいですが、頑張ります。/ こんしゅうはいそがしいですが、がんばります。/ Konshū wa isogashii desu ga, ganbarimasu. / I'm busy this week, but I will do my best.",1,"");
first_1000_vocab125 = new first_1000_vocab(125,"今年","this year","kotoshi","Noun","ことし","calendar","今年は旅行に行きたいです。/ ことしはりょこうにいきたいです。/ Kotoshi wa ryokō ni ikitai desu. / I want to go on a trip this year.",1,"");
first_1000_vocab126 = new first_1000_vocab(126,"去年","last year","kyonen","Noun","きょねん","calendar","去年は新しい仕事を始めました。/ きょねんはあたらしいしごとをはじめました。/ Kyonen wa atarashii shigoto o hajimemashita. / I started a new job last year.",1,"");
first_1000_vocab127 = new first_1000_vocab(127,"一昨日","day before yesterday","ototoi","Noun","おととい","calendar","一昨日は友達と映画を見に行きました。/ おとといはともだちとえいがをみにいきました。/ Ototoi wa tomodachi to eiga o mini ikimashita. / The day before yesterday, I went to see a movie with my friend.",1,"");
first_1000_vocab128 = new first_1000_vocab(128,"一昨年","year before last","ototoshi","Noun","おととし","calendar","一昨年の夏は海に行きました。/ おととしのなつはうみにいきました。/ Ototoshi no natsu wa umi ni ikimashita. / I went to the beach during the summer two years ago.",1,"");
first_1000_vocab129 = new first_1000_vocab(129,"ポスト","post","posuto","Noun","","calendar","ポストに手紙を入れました。/ ポストにてがみをいれました。/ Posuto ni tegami o iremashita. / I put a letter in the mailbox.",3,"");
first_1000_vocab130 = new first_1000_vocab(130,"来月","next month","raigetsu","Noun","らいげつ","calendar","来月の予定を計画しています。/ らいげつのよていをけいかくしています。/ Raigetsu no yotei o keikaku shiteimasu. / I'm planning my schedule for next month.",1,"");
first_1000_vocab131 = new first_1000_vocab(131,"来年","next year","rainen","Noun","らいねん","calendar","来年は新しい目標を立てます。/ らいねんはあたらしいもくひょうをたてます。/ Rainen wa atarashii mokuhyō o tatemasu. / I will set new goals for next year.",1,"");
first_1000_vocab132 = new first_1000_vocab(132,"来週","next week","raishuu","Noun","らいしゅう","calendar","来週は友達と映画に行く予定です。/ らいしゅうはともだちとえいがにいくよていです。/ Raishū wa tomodachi to eiga ni iku yotei desu. / I have plans to go to the movies with friends next week.",1,"");
first_1000_vocab133 = new first_1000_vocab(133,"再来年","year after next","sarainen","Noun","さらいねん","calendar","再来年には結婚式を挙げます。/ さらいねんにはけっこんしきをあげます。/ Sarainen niwa kekkonshiki o agemasu. / I will have a wedding ceremony in the year after next.",1,"");
first_1000_vocab134 = new first_1000_vocab(134,"先月","last month","sengetsu","Noun","せんげつ","calendar","先月は忙しかったです。/ せんげつはいそがしかったです。/ Sengetsu wa isogashikatta desu. / Last month was busy.",1,"");
first_1000_vocab135 = new first_1000_vocab(135,"先週","last week","senshuu","Noun","せんしゅう","calendar","先週は友達とピクニックに行きました。/ せんしゅうはともだちとぴくにっくにいきました。/ Senshū wa tomodachi to pikunikku ni ikimashita. / I went on a picnic with friends last week.",1,"");
first_1000_vocab136 = new first_1000_vocab(136,"二十日","twentieth day of the month / 20 days","hatsuka","Noun","はつか","calendar","二十日は誕生日です。/ にじゅうにちはたんじょうびです。/ Hatsuka wa tanjōbi desu. / The 20th is my birthday.",1,"");
first_1000_vocab137 = new first_1000_vocab(137,"年","year; age","toshi","Noun","とし","calendar","年を取ると経験が増えます。/ としをとるとけいけんがふえます。/ Toshi o toru to keiken ga fuemasu. / As you get older, your experiences increase.",1,"");
first_1000_vocab138 = new first_1000_vocab(138,"直ぐに","immediately; right away; instantly​","sugu ni","Adverb","すぐに","calendar","直ぐに家に帰ります。/ すぐにいえにかえります。/ Suguni ie ni kaerimasu. / I will return home right away.",1,"");
first_1000_vocab139 = new first_1000_vocab(139,"時々","sometimes; at times","tokidoki","Noun, Adverb","ときどき","calendar","時々、友達と映画を見に行きます。/ ときどき、ともだちとえいがをみにいきます。/ Tokidoki, tomodachi to eiga o mini ikimasu. / Sometimes, I go to watch movies with friends.",1,"");
first_1000_vocab140 = new first_1000_vocab(140,"三日","the third day of the month / 3 days","mikka","Noun","みっか","calendar","三日間旅行に行きました。/ みっかかんりょこうにいきました。/ Mikkakan ryokō ni ikimashita. / I went on a three-day trip.",1,"");
first_1000_vocab141 = new first_1000_vocab(141,"時計","watch; clock; timepiece","tokei","Noun","とけい","time","時計を見ると時間が分かります。/ とけいをみるとじかんがわかります。/ Tokei o miru to jikan ga wakarimasu. / When you look at a clock, you can tell the time.",1,"");
first_1000_vocab142 = new first_1000_vocab(142,"六日","sixth day of the month / 6 days","muika","Noun","むいか","calendar","六日間の旅行を楽しんできました。/ むいっかかんのりょこうをたのしんできました。/ Muiikkakan no ryokō o tanoshinde kimashita. / I enjoyed a six-day trip.",1,"");
first_1000_vocab143 = new first_1000_vocab(143,"七日","seventh day of the month / 7 days","nanoka","Noun","なのか","calendar","七日間の休暇を取ります。/ なのかかんのきゅうかをとります。/ Nanokakan no kyūka o torimasu. / I will take a seven-day vacation.",1,"");
first_1000_vocab144 = new first_1000_vocab(144,"十日","tenth day of the month / 10 days","tooka","Noun","とおか","calendar","十日に友達とデートする予定です。/ とおかにともだちとでーとするよていです。/ Tōka ni tomodachi to dēto suru yotei desu. / I have plans to go on a date with a friend on the 10th.",1,"");
first_1000_vocab145 = new first_1000_vocab(145,"一日","first day of the month","tsuitachi","Noun","ついたち","calendar","一日中家で過ごしました。/ いちにちじゅういえですごしました。/ Ichinichijū ie de sugoshimashita. / I spent the whole day at home.",1,"");
first_1000_vocab146 = new first_1000_vocab(146,"四日","fourth day of the month / 4 days","yokka","Noun","よっか","calendar","四日後にパーティーがあります。/ よっかごにぱーてぃーがあります。/ Yokka go ni pātī ga arimasu. / There is a party in four days.",1,"");
first_1000_vocab147 = new first_1000_vocab(147,"八日","eighth day of the month / 8 days","youka","Noun","ようか","calendar","八日の朝に会議があります。/ ようかのあさにかいぎがあります。/ Yōka no asa ni kaigi ga arimasu. / There is a meeting on the morning of the eighth day.",1,"");
first_1000_vocab148 = new first_1000_vocab(148,"二日","the second day of the month / 2 days","futsuka","Noun","ふつか","calendar","二日に友達と映画を見に行きました。/ ふつかにともだちとえいがをみにいきました。/ Futsuka ni tomodachi to eiga o mini ikimashita. / I went to see a movie with a friend on the second day.",1,"");
first_1000_vocab149 = new first_1000_vocab(149,"五日","the fifth day of the month / 5 days","itsuka","Noun","いつか","calendar","五日は休日です。/ いつかはきゅうじつです。/ Itsuka wa kyūjitsu desu. / The fifth day is a holiday.",1,"");
first_1000_vocab150 = new first_1000_vocab(150,"九日","ninth day of the month / 9 days","kokonoka","Noun","ここのか","counter","九日に誕生日パーティーを開きます。/ ここのかにたんじょうびぱーてぃーをひらきます。/ Kokonoka ni tanjōbi pātī o hirakimasu. / I will have a birthday party on the ninth day.",1,"");
first_1000_vocab151 = new first_1000_vocab(151,"ボタン","button","botan","Noun","","clothing","ボタンを留めてください。/ ぼたんをとめてください。/ Botan o tomete kudasai. / Please button up.",3,"");
first_1000_vocab152 = new first_1000_vocab(152,"帽子","hat; cap","boushi","Noun","iぼうし","clothing","帽子をかぶって日差しを避けましょう。/ ぼうしをかぶってひざしをさけましょう。/ Bōshi o kabutte hizashi o sakemashō. / Let's wear a hat to avoid the sunlight.",1,"");
first_1000_vocab153 = new first_1000_vocab(153,"服","clothes","fuku","Noun","ふく","clothing","この服はとてもおしゃれです。/ このふくはとてもおしゃれです。/ Kono fuku wa totemo oshare desu. / This outfit is very stylish.",1,"");
first_1000_vocab154 = new first_1000_vocab(154,"履く","to wear, to put on trousers","haku","Godan Verb, Transitive","はく","clothing","靴を履いて外出しましょう。/ くつをはいてがいしゅつしましょう。/ Kutsu o haite gaishutsu shimashō. / Let's put on shoes and go out.",1,"hak");
first_1000_vocab155 = new first_1000_vocab(155,"ハンカチ","handkerchief​","hankachi","Noun","","clothing","ハンカチで顔を拭きましょう。/ はんかちでかおをふきましょう。/ Hankachi de kao o fukimashō. / Let's wipe our faces with a handkerchief.",3,"");
first_1000_vocab156 = new first_1000_vocab(156,"着る","to wear","kiru","Ichidan Verb, Transitive","きる","clothing","今日はスーツを着ます。/ きょうはスーツをきます。/ Kyō wa sūtsu o kimasu. / Today, I will wear a suit.",1,"ki");
first_1000_vocab157 = new first_1000_vocab(157,"コート","coat","kooto","Noun","","clothing","寒いのでコートを着ましょう。/ さむいのでコートをきましょう。/ Samui node kōto o kimasu. / It's cold, so let's wear a coat.",3,"");
first_1000_vocab158 = new first_1000_vocab(158,"靴","shoes","kutsu","Noun","くつ","clothing","靴を脱いで中に入ってください。/ くつをぬいでなかにはいってください。/ Kutsu o nuide naka ni haitte kudasai. / Please take off your shoes and come inside.",1,"");
first_1000_vocab159 = new first_1000_vocab(159,"靴下","socks","kutsushita","Noun","くつした","clothing","靴下を履いて足元を暖かくしましょう。/Kutsushita o haite ashimoto o atatakaku shimashou./ - Let's wear socks to keep our feet warm.",1,"");
first_1000_vocab160 = new first_1000_vocab(160,"ネクタイ","tie; necktie","nekutai","Noun","","clothing","ネクタイを締めるのが苦手です。/ ねくたいをしめるのがにがてです。/ Nekutai o shimeru no ga nigate desu. / I'm not good at tying a necktie.",3,"");
first_1000_vocab161 = new first_1000_vocab(161,"脱ぐ","to take off clothes","nugu","Godan Verb, Transitive","ぬぐ","clothing","靴を脱いで家に入りましょう。/ くつをぬいでいえにはいりましょう。/ Kutsu o nuide ie ni hairimashou. / Let's take off our shoes and enter the house.",1,"nug");
first_1000_vocab162 = new first_1000_vocab(162,"ポケット","pocket","poketto","Noun","","clothing","ポケットに手帳を入れました。/ ぽけっとにてちょうをいれました。/ Poketto ni techou o iremashita. / I put my notebook in my pocket.",3,"");
first_1000_vocab163 = new first_1000_vocab(163,"財布","purse; wallet","saifu","Noun","さいふ","clothing","財布を探しています。/ さいふをさがしています。/ Saifu o sagashiteimasu. / I'm looking for my wallet.",1,"");
first_1000_vocab164 = new first_1000_vocab(164,"シャツ","shirt","shatsu","Noun","","clothing","シャツをアイロンでしましょう。/ しゃつをあいろんでしましょう。/ Shatsu o airon de shimashou. / Let's iron the shirt.",3,"");
first_1000_vocab165 = new first_1000_vocab(165,"スカート","skirt","sukaato","Noun","","clothing","スカートが似合っていますね。/ すかーとがにあっていますね。/ Sukāto ga niatteimasu ne. / The skirt suits you well.",3,"");
first_1000_vocab166 = new first_1000_vocab(166,"ズボン","trousers; pants","zubon","Noun","","clothing","ズボンが短いです。/ ずぼんがみじかいです。/ Zubon ga mijikai desu. / The pants are short.",3,"");
first_1000_vocab167 = new first_1000_vocab(167,"セーター","sweater; jumper","seetaa","Noun","","clothing","セーターが暖かいですね。/ せーたーがあたたかいですね。/ Sētā ga atatakai desu ne. / The sweater is warm, isn't it?",3,"");
first_1000_vocab168 = new first_1000_vocab(168,"締める","to tie; to fasten; to tighten​","shimeru","Ichidan Verb, Transitive","しめる","clothing","ベルトを締めてください。/ べるとをしめてください。/ Beruto o shimete kudasai. / Please fasten your belt.",1,"shime");
first_1000_vocab169 = new first_1000_vocab(169,"洋服","western clothes","youfuku","Noun","ようふく","clothing","彼女は洋服を買いに行きました。/ かのじょはようふくをかいにいきました。/ Kanojo wa youfuku o kai ni ikimashita. / She went to buy clothes.",1,"");
first_1000_vocab170 = new first_1000_vocab(170,"上着","coat; tunic; jacket; outer garment","uwagi","Noun","うわぎ","clothing","上着をかけてください。/ うわぎをかけてください。/ Uwagi o kakete kudasai. / Please hang up the coat.",1,"");
first_1000_vocab171 = new first_1000_vocab(171,"ちょっと","a little","chotto","Adverb","","expression","ちょっと待ってください。/ ちょっとまってください。/ Chotto matte kudasai. / Please wait a moment.",2,"");
first_1000_vocab172 = new first_1000_vocab(172,"丁度","exactly","choudo","Adverb","ちょうど","expression","丁度時間です。/ ちょうどじかんです。/ Chōdo jikan desu. / It's exactly the time.",1,"");
first_1000_vocab173 = new first_1000_vocab(173,"だんだん","gradually","dandan","Adverb","","expression","だんだん暖かくなってきましたね。/ だんだんあたたかくなってきましたね。/ Dandan atatakaku natte kimashita ne. / It's gradually getting warmer, isn't it?",2,"");
first_1000_vocab174 = new first_1000_vocab(174,"ゆっくり","slowly","yukkuri","Adverb","","expression","ゆっくり休んでください。/ ゆっくりやすんでください。/ Yurukyoku yasunde kudasai. / Please take a rest and relax.",2,"");
first_1000_vocab175 = new first_1000_vocab(175,"じゃあ","then; well; so; well then","jaa","Conjunction","","expression","じゃあ、明日会いましょう。/ じゃあ、あしたあいましょう。/ Jaa, ashita aimashou. / Sure, let's meet tomorrow./Jā, ashita aimashō./ - Well then, let's meet tomorrow.",2,"");
first_1000_vocab176 = new first_1000_vocab(176,"こんな","such; like this​","konna","Pre-noun adjectival","","expression","こんな美しい景色を見たことがありません。/Konna utsukushii keshiki o mita koto ga arimasen./ - I have never seen such a beautiful view like this.",2,"");
first_1000_vocab177 = new first_1000_vocab(177,"さあ","well…","saa","Conjunction","","expression","さあ、出発の時間です。/ さあ、しゅっぱつのじかんです。/ Saa, shuppatsu no jikan desu. / Well, it's time to depart.",2,"");
first_1000_vocab178 = new first_1000_vocab(178,"本当","truth; reality; actuality; fact;really?","hontou","Noun, Adjective, な-adjective","ほんとう","expression","本当にありがとう。/ ほんとうにありがとう。/ Hontō ni arigatō. / Thank you very much.",1,"");
first_1000_vocab179 = new first_1000_vocab(179,"それでは","in that situation","sore dewa","Expression","","5","それでは、また後で会いましょう。/Soredewa, mata ato de aimashō./ - Well then, let's meet again later.",2,"");
first_1000_vocab180 = new first_1000_vocab(180,"少し","a little (bit); small quantity; few; short distance","sukoshi","Noun, Adverb","すこし","9","私は少し日本語を話します。/ わたしはすこしにほんごをはなします。/ Watashi wa sukoshi Nihongo o hanashimasu. / I speak a little Japanese.",1,"");
first_1000_vocab181 = new first_1000_vocab(181,"閉まる","to close, to be closed","shimaru","Godan Verb, Intransitive","しまる","shopoping","ドアが閉まりました。/ ドアがしまりました。/ Doa ga shimarimashita. / The door closed",1,"shimar");
first_1000_vocab182 = new first_1000_vocab(182,"欲しい","want","hoshii","い-adjective","ほしい","shopping","それが欲しいです。/ それがほしいです。/ Sore ga hoshii desu. / I want that.",1,"");
first_1000_vocab183 = new first_1000_vocab(183,"掛かる","to take (a resource, e.g. time or money)","kakaru","Godan Verb, Intransitive","かかる","shopping","電話に掛かりました。/ でんわにかかりました。/ Denwa ni kakarimashita. / I received a phone call.",1,"kakar");
first_1000_vocab184 = new first_1000_vocab(184,"ワイシャツ","shirt","wai shatsu","Noun, Katakana, Wasei","","clothing","ワイシャツをアイロンで仕上げてください。/ わいしゃつをアイロンでしあげてください。/ Waishatsu o airon de shiagete kudasai. / Please iron the dress shirt.",3,"");
first_1000_vocab185 = new first_1000_vocab(185,"色々","various","iroiro","Noun, な-adjective, Adverb","いろいろ","","色々な選択肢があります。/ いろいろなせんたくしょがあります。/ Iroiro na sentakushi ga arimasu. / There are various options.",1,"");
first_1000_vocab186 = new first_1000_vocab(186,"丈夫","strong, durable","joubu","な-adjective","じょうぶ","","このバッグは丈夫です。/ このバッグはじょうぶです。/ Kono baggu wa jōbu desu. / This bag is durable.",1,"");
first_1000_vocab187 = new first_1000_vocab(187,"言う","to say; to call","iu","Godan verb","いう","","何と言いましたか？/ なんといいましたか？/ Nanto iimashita ka? / What did you say?",1,"i");
first_1000_vocab188 = new first_1000_vocab(188,"自分","myself; yourself; oneself; himself; herself; i; me","jibun","Pronoun","じぶん","","自分の能力を信じてください。/ じぶんののうりょくをしんじてください。/ Jibun no nōryoku o shinjite kudasai. / Believe in your own abilities.",1,"");
first_1000_vocab189 = new first_1000_vocab(189,"貸す","to lend; to loan","kasu","Godan Verb, Transitive","かす","","お金を貸してもいいですか？/ おかねをかしてもいいですか？/ Okane o kashite mo ii desu ka? / Can I borrow some money?",1,"kas");
first_1000_vocab190 = new first_1000_vocab(190,"縦","length,height","tate","Noun","たて","","画面を縦に回転させてください。/ がめんをたてにかいてんさせてください。/ Gamen o tate ni kaiten sasete kudasai. / Please rotate the screen vertically.",1,"");
first_1000_vocab191 = new first_1000_vocab(191,"赤(い)","red; crimson; scarlet​","aka","Noun, い-adjective","あか(い)","colour","その車は赤いです。/ そのくるまはあかいです。/ Sono kuruma wa akai desu. / That car is red.",1,"");
first_1000_vocab192 = new first_1000_vocab(192,"青(い)","blue; azure","ao","Noun, い-adjective","あお(い)","colour","空は青いです。/ そらはあおいです。/ Sora wa aoi desu. / The sky is blue.",1,"");
first_1000_vocab193 = new first_1000_vocab(193,"黄色い","yellow","kiiroi","Noun, い-adjective","きいろ(い)","colour","この花は黄色いです。/ このはなはきいろいです。/ Kono hana wa kiiroi desu. / This flower is yellow.",1,"");
first_1000_vocab194 = new first_1000_vocab(194,"黒(い)","black","kuroi","Noun, い-adjective","くろ(い)","colour","彼の髪は黒いです。/ かれのかみはくろいです。/ Kare no kami wa kuroi desu. / His hair is black.",1,"");
first_1000_vocab195 = new first_1000_vocab(195,"緑","green (noun and adj)","midori","Noun","みどり","colour","公園の木々は緑です。/ こうえんのきぎはみどりです。/ Kōen no kigi wa midori desu. / The trees in the park are green.",1,"");
first_1000_vocab196 = new first_1000_vocab(196,"明るい","bright; light","akarui","Noun, い-adjective","あかるい","colours","その部屋は明るいです。/ そのへやはあかるいです。/ Sono heya wa akarui desu. / That room is bright.",1,"");
first_1000_vocab197 = new first_1000_vocab(197,"茶色","brown","chairo","Noun","ちゃいろ","colours","彼女は茶色の髪をしています。/ かのじょはちゃいろのかみをしています。/ Kanojo wa chairo no kami o shite imasu. / She has brown hair.",1,"");
first_1000_vocab198 = new first_1000_vocab(198,"色","colour; color","iro","Noun","いろ","colours","この花の色は赤です。/ このはなのいろはあかです。/ Kono hana no iro wa aka desu. / The color of this flower is red.",1,"");
first_1000_vocab199 = new first_1000_vocab(199,"白(い)","white; innocence; innocent person","shiro","Noun, い-adjective","しろ","colours","雪は白いです。/ ゆきはしろいです。/ Yuki wa shiroi desu. / Snow is white.",1,"");
first_1000_vocab200 = new first_1000_vocab(200,"暗い","dark; gloomy; murky","kurai","い-adjective","くらい","weather","この場所は暗いですね。/ このばしょはくらいですね。/ Kono basho wa kurai desu ne. / This place is dark, isn't it?",1,"");
first_1000_vocab201 = new first_1000_vocab(201,"後","behind; after; remainder; left; also","ato","Noun","あと","directions","待ってください、後で話しましょう。/ まってください、あとではなしましょう。/ Matte kudasai, ato de hanashimashou. / Please wait, let's talk later.",1,"");
first_1000_vocab202 = new first_1000_vocab(202,"左","left; left hand side","hidari","Noun","ひだり","directions","信号を左に曲がってください。/ しんごうをひだりにまがってください。/ Shingō o hidari ni magatte kudasai. / Please turn left at the traffic signal.",1,"");
first_1000_vocab203 = new first_1000_vocab(203,"東","east","higashi","Noun","ひがし","directions","東に向かって歩きましょう。/ ひがしにむかってあるきましょう。/ Higashi ni mukatte arukimashou. / Let's walk towards the east.",1,"");
first_1000_vocab204 = new first_1000_vocab(204,"北","north","kita","Noun","きた","directions","北に行くと涼しいですね。/ きたにいくとすずしいですね。/ Kita ni iku to suzushii desu ne. / It's cool when you go north, isn't it?",1,"");
first_1000_vocab205 = new first_1000_vocab(205,"右","right; right hand side","migi","Noun","みぎ","directions","右へ曲がってください。/ みぎへまがってください。/ Migi e magatte kudasai. / Please turn right.",1,"");
first_1000_vocab206 = new first_1000_vocab(206,"南","south","minami","Noun","みなみ","directions","南国へ旅行したいです。/ なんごくへりょこうしたいです。/ Nangoku e ryokō shitai desu. / I want to travel to a tropical country.",1,"");
first_1000_vocab207 = new first_1000_vocab(207,"西","west","nishi","Noun","にし","directions","夕日が西に沈んでいます。/ ゆうひがにしにしずんでいます。/ Yūhi ga nishi ni shizunde imasu. / The sunset is setting in the west.",1,"");
first_1000_vocab208 = new first_1000_vocab(208,"下","below; down; under; bottom","shita","Noun","した","directions","階段を下りてください。/ かいだんをおりてください。/ Kaidan o orite kudasai. / Please go down the stairs.",1,"");
first_1000_vocab209 = new first_1000_vocab(209,"上げる","to raise; to elevate","ageru","Ichidan Verb, Transitive","あげる","directions","その荷物を上げてください。/ そのにもつをあげてください。/ Sono nimotsu o agete kudasai. / Please lift that luggage.",1,"age");
first_1000_vocab210 = new first_1000_vocab(210,"地図","map","chizu","Noun","ちず","directions","地図を見ながら道を探しましょう。/ ちずをみながらみちをさがしましょう。/ Chizu o minagara michi o sagashimashou. / Let's search for the way while looking at the map.",1,"");
first_1000_vocab211 = new first_1000_vocab(211,"毎朝","every morning","maiasa","Noun","まいあさ","every","毎朝、ジョギングをします。/ まいあさ、じょぎんぐをします。/ Maiasa, joggingu o shimasu. / Every morning, I go jogging.",1,"");
first_1000_vocab212 = new first_1000_vocab(212,"毎晩","every night","maiban","Noun","まいばん","every","毎晩、家でテレビを見ます。/ まいばん、いえでてれびをみます。/ Maiban, ie de terebi o mimasu. / Every evening, I watch TV at home.",1,"");
first_1000_vocab213 = new first_1000_vocab(213,"毎日","every day","mainichi","Noun","まいにち","every","毎日勉強します。/ まいにち べんきょうします。/ Mainichi benkyou shimasu. / I study every day.",1,"");
first_1000_vocab214 = new first_1000_vocab(214,"毎週","every week","maishuu","Noun","まいしゅう","every"," 毎週土曜日に友達と遊びます。/ まいしゅう どようびに ともだちと あそびます。/ Mainichi doyoubi ni tomodachi to asobimasu. / I play with my friends every Saturday.",1,"");
first_1000_vocab215 = new first_1000_vocab(215,"毎年","every year; yearly; annually","maitoshi / mainen","Noun","まいとし / まいねん","every","毎年、家族で旅行に行きます。/ まいとし、かぞくでりょこうにいきます。/ Mainen, kazoku de ryokou ni ikimasu. / Every year, I go on a trip with my family.",1,"");
first_1000_vocab216 = new first_1000_vocab(216,"毎月","every month; monthly","maitsuki","Noun","まいつき","every","毎月給料をもらいます。/ まいつき きゅうりょうを もらいます。/ Maittsuki kyuuryou o moraimasu. / I receive my salary every month.",1,"");
first_1000_vocab217 = new first_1000_vocab(217,"皆さん","everyone","minasan","Noun","みなさん","every","皆さん、おはようございます。/ みなさん、おはようございます。/ Minasan, ohayou gozaimasu. / Good morning, everyone.",1,"");
first_1000_vocab218 = new first_1000_vocab(218,"みんな","all; everyone; everybody","minna","Noun, Adverb","","every","階段を下りてください。/ かいだんをおりてください。/ Kaidan o orite kudasai. / Please go down the stairs.",2,"");
first_1000_vocab219 = new first_1000_vocab(219,"全部","all","zenbu","Noun, Adverbial Noun","ぜんぶ","every","全部のりょうりがおいしいです。/ ぜんぶの りょうりが おいしい です。/ Romanji: Zenbu no ryouri ga oishii desu. / English: All the dishes are delicious.",1,"");
first_1000_vocab220 = new first_1000_vocab(220,"沢山","many","takusan","Noun, Adverbial Noun, な-adjective","たくさん","numbers","沢山の本を読みました。/ たくさんの ほんを よみました。/ Takusan no hon o yomimashita. / I read many books.",1,"");
first_1000_vocab221 = new first_1000_vocab(221,"姉","older sister; elder sister​","ane","Noun","あね","family","私の姉は医者です。/ わたしのあねはいしゃです。/ Watashi no ane wa isha desu. / My older sister is a doctor.",1,"");
first_1000_vocab222 = new first_1000_vocab(222,"兄","elder brother; older brother​","ani","Noun","あに","family","兄は学校に行っています。/ あにはがっこうにいっています。/ Ani wa gakkō ni itteimasu. / My older brother is going to school.",1,"");
first_1000_vocab223 = new first_1000_vocab(223,"妹","younger sister","imouto","Noun","いもうと","family","妹と一緒に遊びたいです。/ いもうとといっしょにあそびたいです。/ Imōto to issho ni asobitai desu. / I want to play with my younger sister.",1,"");
first_1000_vocab224 = new first_1000_vocab(224,"兄弟","siblings; brothers and sisters​; mate","kyoudai","Noun","きょうだい","family","私は三人兄弟です。/ わたしはさんにんきょうだいです。/ Watashi wa sannin kyōdai desu. / I have two siblings.",1,"");
first_1000_vocab225 = new first_1000_vocab(225,"伯父さん","uncle; old man; mister","ojisan","Noun","おじさん","family","伯父さんは昨日遊びに来ました。/ おじさんはきのうあそびにきました。/ Ojisan wa kinō asobi ni kimashita. / My uncle came to visit yesterday.",1,"");
first_1000_vocab226 = new first_1000_vocab(226,"お姉さん","elder sister; young lady; miss; ma'am","oneesan","Noun","おねえさん","family","お姉さんの誕生日プレゼントを買いました。/ おねえさんのたんじょうびプレゼントをかいました。/ Oneesan no tanjōbi purezento o kaimashita. / I bought a birthday present for my older sister.",1,"");
first_1000_vocab227 = new first_1000_vocab(227,"お兄さん","older brother; elder brother; young man; buddy","oniisan","Noun","おにいさん","family","お兄さんは車を運転できます。/ おにいさんはくるまをうんてんできます。/ Oniisan wa kuruma o unten dekimasu. / My older brother can drive a car.",1,"");
first_1000_vocab228 = new first_1000_vocab(228,"弟","younger brother","otouto","Noun","おとうと","family","弟はピアノを練習しています。/ おとうとはピアノをれんしゅうしています。/ Otōto wa piano o renshū shiteimasu. / My younger brother is practicing the piano.",1,"");
first_1000_vocab229 = new first_1000_vocab(229,"誕生日","birthday","tanjoubi","Noun","たんじょうび","people","来月は私の誕生日です。/ らいげつはわたしのたんじょうびです。/ Raigetsu wa watashi no tanjōbi desu. / Next month is my birthday.",1,"");
first_1000_vocab230 = new first_1000_vocab(230,"若い","young","wakai","い-adjective","わかい","","彼は若いです。/ かれはわかいです。/ Kare wa wakai desu. / He is young.",1,"");
first_1000_vocab231 = new first_1000_vocab(231,"甘い","sweet; sweet-tasting; sugary; naive; indulgent","amai","い-adjective","あまい","food","この果物は甘いです。/ このくだものはあまいです。/ Kono kudamono wa amai desu. / This fruit is sweet.",1,"");
first_1000_vocab232 = new first_1000_vocab(232,"飴","candy","ame","Noun","あめ","food","子供たちは飴を食べています。/ こどもたちはあめをたべています。/ Kodomo-tachi wa ame o tabeteimasu. / The children are eating candy.",1,"");
first_1000_vocab233 = new first_1000_vocab(233,"朝ご飯","breakfast","asagohan","Noun","あさごはん","food","朝ご飯は大切な食事です。/ あさごはんはたいせつなしょくじです。/ Asagohan wa taisetsu na shokuji desu. / Breakfast is an important meal.",1,"");
first_1000_vocab234 = new first_1000_vocab(234,"厚い","thick","atsui","い-adjective","あつい","food","このコートはとても厚いです。/ このこーとはとてもあついです。/ Kono kōto wa totemo atsui desu. / This coat is very thick.",1,"");
first_1000_vocab235 = new first_1000_vocab(235,"晩ご飯","dinner; evening meal","bangohan","Noun","ばんごはん","food","晩ご飯は何を食べますか？/ ばんごはんはなにをたべますか？/ Bangohan wa nani o tabemasu ka? / What will you have for dinner?",1,"");
first_1000_vocab236 = new first_1000_vocab(236,"バター","butter​","bataa","Noun","","food","このパンにバターを塗りましょう。/ このぱんにばたーをぬりましょう。/ Kono pan ni batā o nurimashou. / Let's spread butter on this bread.",3,"");
first_1000_vocab237 = new first_1000_vocab(237,"豚肉","pork","butaniku","Noun","ぶたにく","food","豚肉を使って料理を作りました。/ ぶたにくをつかってりょうりをつくりました。/ Butaniku o tsukatte ryōri o tsukurimashita. / I cooked a dish using pork.",1,"");
first_1000_vocab238 = new first_1000_vocab(238,"台所","kitchen","daidokoro","Noun","だいどころ","food","台所で料理をするのが好きです。/ だいどころでりょうりをするのがすきです。/ Daidokoro de ryōri o suru no ga suki desu. / I like cooking in the kitchen.",1,"");
first_1000_vocab239 = new first_1000_vocab(239,"フォーク","fork","fooku","Noun","","food","フォークでご飯を食べます。/ ふぉーくでごはんをたべます。/ Fōku de gohan o tabemasu. / I eat rice with a fork.",3,"");
first_1000_vocab240 = new first_1000_vocab(240,"ご飯","cooked rice, meal","gohan","Noun","ごはん","food","毎日、ご飯を食べます。/ まいにち、ごはんをたべます。/ Mainichi, gohan o tabemasu. / I eat rice every day.",1,"");
first_1000_vocab241 = new first_1000_vocab(241,"グラム","gram","guramu","Noun","","food","この果物は100グラムです。/ このくだものは100グラムです。/ Kono kudamono wa hyaku guramu desu. / This fruit weighs 100 grams.",3,"");
first_1000_vocab242 = new first_1000_vocab(242,"牛肉","beef","gyuuniku","Noun","ぎゅうにく","food","牛肉を焼いて食べましょう。/ ぎゅうにくをやいてたべましょう。/ Gyūniku o yaite tabemashou. / Let's grill and eat beef.",1,"");
first_1000_vocab243 = new first_1000_vocab(243,"牛乳","(cow's) milk","gyuunyuu","Noun","ぎゅうにゅう","food","牛乳を冷蔵庫に入れてください。/ ぎゅうにゅうをれいぞうこにいれてください。/ Gyuunyuu o reizouko ni irete kudasai. / Please put the milk in the refrigerator.",1,"");
first_1000_vocab244 = new first_1000_vocab(244,"半分","half","hanbun","Noun","はんぶん","food","ケーキを半分に切ってください。/ けーきをはんぶんにきってください。/ Kēki o hanbun ni kitte kudasai. / Please cut the cake in half.",1,"");
first_1000_vocab245 = new first_1000_vocab(245,"昼ご飯","lunch","hirugohan","Noun","ひるごはん","food","昼ご飯にサンドイッチを食べました。/ ひるごはんにさんどいっちをたべました。/ Hirugohan ni sandoitchi o tabemashita. / I had a sandwich for lunch.",1,"");
first_1000_vocab246 = new first_1000_vocab(246,"カップ","cup","kappu","Noun","","food","コーヒーカップが欲しいです。/ こーひーかっぷがほしいです。/ Kōhīkappu ga hoshii desu. / I want a coffee cup.",3,"");
first_1000_vocab247 = new first_1000_vocab(247,"辛い","spicy","karai","い-adjective","からい","food","辛い料理が好きですか？/ からいりょうりがすきですか？/ Karai ryōri ga suki desu ka? / Do you like spicy food?",1,"");
first_1000_vocab248 = new first_1000_vocab(248,"カレー","curry","karee","Noun","","food","カレーを作るにはスパイスが必要です。/ かれーをつくるにはすぱいすがひつようです。/ Karē o tsukuru ni wa supaisu ga hitsuyou desu. / Spices are necessary to make curry.",3,"");
first_1000_vocab249 = new first_1000_vocab(249,"キログラム","kilogram","kiro guramu","Noun","","food","この野菜は1キログラムです。/ このやさいは1キログラムです。/ Kono yasai wa ikkiroguramu desu. / This vegetable weighs 1 kilogram.",3,"");
first_1000_vocab250 = new first_1000_vocab(250,"切る","to cut","kiru","Godan Verb, Transitive","きる","food"," 野菜を切ってください。/ やさいを きってください。/ Yasai o kitte kudasai. / Please cut the vegetables.",1,"kir");
first_1000_vocab251 = new first_1000_vocab(251,"コーヒー","Coffee","koohii","Noun","","food","コーヒーが好きです。/ こーひーがすきです。/ Kōhī ga suki desu. / I like coffee.",3,"");
first_1000_vocab252 = new first_1000_vocab(252,"コップ","glass (drinking vessel); tumbler​","koppu","Noun","","food","コップに水を注ぎます。/ こっぷにみずをそそぎます。/ Koppu ni mizu o sosogimasu. / I pour water into a cup.",3,"");
first_1000_vocab253 = new first_1000_vocab(253,"紅茶","black tea","koucha","Noun","こうちゃ","food","紅茶を飲みたいです。/ こうちゃをのみたいです。/ Koucha o nomitai desu. / I want to drink tea.",1,"");
first_1000_vocab254 = new first_1000_vocab(254,"果物","fruit","kudamono","Noun","くだもの","food","果物をたくさん買いました。/ くだものをたくさんかいました。/ Kudamono o takusan kaimashita. / I bought a lot of fruits.",1,"");
first_1000_vocab255 = new first_1000_vocab(255,"不味い","unpleasant","mazui","い-adjective","まずい","food","この料理は不味いです。/ このりょうりはまずいです。/ Kono ryouri wa mazui desu. / This dish is not tasty.",1,"");
first_1000_vocab256 = new first_1000_vocab(256,"肉","meat","niku","Noun","にく","food","肉を焼いて食べます。/ にくをやいてたべます。/ Niku o yaite tabemasu. / I grill and eat meat.",1,"");
first_1000_vocab257 = new first_1000_vocab(257,"飲み物","drink; beverage","nomimono","Noun","のみもの","food","飲み物は何が好きですか？/ のみものはなにがすきですか？/ Nomimono wa nani ga suki desu ka? / What kind of drinks do you like?",1,"");
first_1000_vocab258 = new first_1000_vocab(258,"飲む","to drink","nomu","Godan Verb, Transitive","のむ","food","お茶を飲みながら本を読みます。/ おちゃをのみながらほんをよみます。/ Ocha o nominagara hon o yomimasu. / I drink tea while reading a book.",1,"nom");
first_1000_vocab259 = new first_1000_vocab(259,"お弁当","lunch box; Japanese box lunch","obentou","Noun","おべんとう","food","お弁当を持って学校に行きます。/ おべんとうをもってがっこうにいきます。/ O-bentou o motte gakkou ni ikimasu. / I bring a packed lunch and go to school.",1,"");
first_1000_vocab260 = new first_1000_vocab(260,"お茶","tea","ocha","Noun","おちゃ","food","お茶を飲みましょう。/ おちゃをのみましょう。/ Ocha o nomimashou. / Let's have some tea.",1,"");
first_1000_vocab261 = new first_1000_vocab(261,"美味しい","delicious","oishii","い-adjective","おいしい","food","この料理は美味しいです。/ このりょうりはおいしいです。/ Kono ryouri wa oishii desu. / This dish is delicious.",1,"");
first_1000_vocab262 = new first_1000_vocab(262,"お菓子","confections; sweets; candy","okashi","Noun","おかし","food","お菓子を食べたいです。/ おかしをたべたいです。/ Okashi o tabetai desu. / I want to eat sweets.",1,"");
first_1000_vocab263 = new first_1000_vocab(263,"お酒","alcohol","osake","Noun","おさけ","food","お酒は飲みますか？/ おさけはのみますか？/ Osake wa nomimasu ka? / Do you drink alcohol?",1,"");
first_1000_vocab264 = new first_1000_vocab(264,"お皿","plate, dish","osara","Noun","おさら","food","お皿を洗いましょう。/ おさらをあらいましょう。/ Osara o araimashou. / Let's wash the dishes.",1,"");
first_1000_vocab265 = new first_1000_vocab(265,"パン","bread","pan","Noun","","food","パンが好きです。/ ぱんがすきです。/ Pan ga suki desu. / I like bread.",3,"");
first_1000_vocab266 = new first_1000_vocab(266,"レストラン","restaurant","resutoran","Noun","","food","レストランで食事をします。/ れすとらんでしょくじをします。/ Resutoran de shokuji o shimasu. / I have a meal at a restaurant.",3,"");
first_1000_vocab267 = new first_1000_vocab(267,"料理","cuisine","ryouri","Noun, Suru verb","りょうり","food","料理を作るのが楽しいです。/ りょうりをつくるのがたのしいです。/ Ryouri o tsukuru no ga tanoshii desu. / I enjoy cooking.",1,"ryour");
first_1000_vocab268 = new first_1000_vocab(268,"砂糖","sugar","satou","Noun","さとう","food","砂糖を少し入れてください。/ さとうをすこしいれてください。/ Satou o sukoshi irete kudasai. / Please add a little sugar.",1,"");
first_1000_vocab269 = new first_1000_vocab(269,"塩","salt","shio","Noun","しお","food","塩を料理に加えてください。/ しおをりょうりにくわえてください。/ Shio o ryouri ni kuwaete kudasai. / Please add salt to the dish.",1,"");
first_1000_vocab270 = new first_1000_vocab(270,"食堂","cafeteria; dining room","shokudou","Noun","しょくどう","food","食堂で友達と一緒に食べます。/ しょくどうでともだちといっしょにたべます。/ Shokudou de tomodachi to issho ni tabemasu. / I will eat at the cafeteria with friends.",1,"");
first_1000_vocab271 = new first_1000_vocab(271,"醬油","soy sauce","shouyu","Noun","しょうゆ","Food 3","お寿司に醬油をつけて食べます。/ おすしにしょうゆをつけてたべます。/ Osushi ni shouyu o tsukete tabemasu. / I eat sushi with soy sauce.",1,"");
first_1000_vocab272 = new first_1000_vocab(272,"たばこ","tobacco; cigarette","tabako","Noun","","Food 3","たばこを吸わないで健康を守りましょう。/ たばこをすわないでけんこうをまもりましょう。/ Tabako o suwanai de kenkou o mamorimashou. / Let's protect our health by not smoking.",2,"");
first_1000_vocab273 = new first_1000_vocab(273,"食べ物","food","tabemono","Noun","たべもの","Food 3","食べ物の中で果物が好きです。/ たべもののなかでくだものがすきです。/ Tabemono no naka de kudamono ga suki desu. / Among food, I like fruits.",1,"");
first_1000_vocab274 = new first_1000_vocab(274,"食べる","to eat","taberu","Ichidan Verb, Intransitive","たべる","Food 3","昼ご飯にカレーライスを食べました。/ ひるごはんにかれーらいすをたべました。/ Hirugohan ni karee raisu o tabemashita. / I had curry rice for lunch.",1,"tabe");
first_1000_vocab275 = new first_1000_vocab(275,"卵","eggs; egg","tamago","Noun","たまご","Food 3","卵を割ってボウルに入れます。/ たまごをわってぼうるにいれます。/ Tamago o watte bouru ni iremasu. / I crack the eggs and put them in a bowl.",1,"");
first_1000_vocab276 = new first_1000_vocab(276,"八百屋","greengrocer; fruit and vegetable shop; versatile","yaoya","Noun","やおや","Food 3","野菜を八百屋で買います。/ やさいをやおやでかいます。/ Yasai o yaoya de kaimasu. / I buy vegetables at the greengrocer's.",1,"");
first_1000_vocab277 = new first_1000_vocab(277,"野菜","vegetable","yasai","Noun","やさい","Food 3","野菜をたくさん食べると健康に良いです。/ やさいをたくさんたべるとけんこうにいいです。/ Yasai o takusan taberu to kenkou ni ii desu. / Eating lots of vegetables is good for your health.",1,"");
first_1000_vocab278 = new first_1000_vocab(278,"夕飯","evening meal","yuuhan","Noun","ゆうはん","Food 3","家族と一緒に夕飯を食べるのが楽しみです。/ かぞくといっしょにゆうはんをたべるのがたのしみです。/ Kazoku to issho ni yuuhan o taberu no ga tanoshimi desu. / I look forward to having dinner with my family.",1,"");
first_1000_vocab279 = new first_1000_vocab(279,"鳥","bird","tori","Noun","とり","animals","公園で鳥を見た。/ こうえんでとりをみた。/ Kōen de tori o mita. / I saw a bird at the park.",1,"");
first_1000_vocab280 = new first_1000_vocab(280,"鶏肉","chicken meat","toriniku","Noun","とりにく","food","鶏肉を使ってカレーを作ります。/ とりにくをつかってかれーをつくります。/ Toriniku o tsukatte karē o tsukurimasu. / I will make curry using chicken meat.",1,"");
first_1000_vocab281 = new first_1000_vocab(281,"病院","hospital","byouin","Noun","びょういん","health","友達が病院に行っています。/ ともだちがびょういんにいっています。/ Tomodachi ga byōin ni itteimasu. / My friend is at the hospital.",1,"");
first_1000_vocab282 = new first_1000_vocab(282,"病気","illness; disease; sickness","byouki","Noun","びょうき","health","彼は病気です。/ かれはびょうきです。/ Kare wa byōki desu. / He is sick.",1,"");
first_1000_vocab283 = new first_1000_vocab(283,"医者","(medical) doctor; physician","isha","Noun","いしゃ","health","私は医者になりたいです。/ わたしはいしゃになりたいです。/ Watashi wa isha ni naritai desu. / I want to become a doctor.",1,"");
first_1000_vocab284 = new first_1000_vocab(284,"風邪","a cold","kaze","Noun","かぜ","health","風邪をひいてしまいました。/ かぜをひいてしまいました。/ Kaze o hiite shimaimashita. / I caught a cold.",1,"");
first_1000_vocab285 = new first_1000_vocab(285,"薬","medicine","kusuri","Noun","くすり","health","薬を飲んで休んでください。/ くすりをのんでやすんでください。/ Kusuri o nonde yasunde kudasai. / Please take medicine and rest.",1,"");
first_1000_vocab286 = new first_1000_vocab(286,"磨く","to polish; to shine; to brush (e.g. teeth)","migaku","Godan Verb, Intransitive","みがく","health","歯を磨くことは大切です。/ はをみがくことはたいせつです。/ Ha o migaku koto wa taisetsu desu. / Brushing your teeth is important.",1,"migak");
first_1000_vocab287 = new first_1000_vocab(287,"耳","ear; hearing","mimi","Noun","みみ","health","祖父は昨日亡くなりました。/ そふはきのうなくなりました。/ Sofu wa kinō nakunarimashita. / My grandfather passed away yesterday.",1,"");
first_1000_vocab288 = new first_1000_vocab(288,"死ぬ","to die","shinu","Godan Verb, Intransitive","しぬ","health","彼は体が弱いです。/ かれはからだがよわいです。/ Kare wa karada ga yowai desu. / He has a weak constitution.",1,"shin");
first_1000_vocab289 = new first_1000_vocab(289,"弱い","weak","yowai","い-adjective","よわい","health","彼は体が弱いです。 /かれはからだがよわいです。/ - He has a weak body.",1,"");
first_1000_vocab290 = new first_1000_vocab(290,"疲れる","to get tired","tsukareru","Ichidan Verb, Intransitive","つかれる","","一日中働いて疲れました。/ いちにちじゅうはたらいてつかれました。/ Ichinichijū hataraite tsukaremashita. / I worked all day and got tired.",1,"tsukarer");
first_1000_vocab291 = new first_1000_vocab(291,"浴びる","to bathe, to shower","abiru","Ichidan Verb, Transitive","あびる","Home","毎朝シャワーを浴びます。/ まいあさしゃわーをあびます。/ Maiasa shawā o abimasu. / I take a shower every morning.",1,"abi");
first_1000_vocab292 = new first_1000_vocab(292,"アパート","apartment","apaato","Noun","","home","彼はアパートに住んでいます。/ かれはあぱーとにすんでいます。/ Kare wa apāto ni sundeimasu. / He lives in an apartment.",3,"");
first_1000_vocab293 = new first_1000_vocab(293,"洗う","to wash","arau","Godan Verb, Intransitive","あらう","home","服を洗濯機で洗います。/ ふくをせんたくきであらいます。/ Fuku o sentakuki de araimasu. / I wash clothes in the washing machine.",1,"ara");
first_1000_vocab294 = new first_1000_vocab(294,"ベッド","bed","beddo","Noun","","home","私は毎日服を洗います。/ わたしはまいにちふくをあらいます。/ Watashi wa mainichi fuku o araimasu. / I wash clothes every day.",3,"");
first_1000_vocab295 = new first_1000_vocab(295,"出かける","to go out; to leave; to depart","dekakeru","Ichidan Verb, Intransitive","でかける","home","毎朝早く出かけます。/ まいあさはやくでかけます。/ Maiasa hayaku dekakemasu. / I leave early every morning.",1,"dekaker");
first_1000_vocab296 = new first_1000_vocab(296,"電気","electricity","denki","Noun","でんき","home","電気を消して、寝ます。/ でんきをけして、ねます。/ Denki o keshite, nemasu. / I turn off the lights and go to bed.",1,"");
first_1000_vocab297 = new first_1000_vocab(297,"電話","telephone (call / device)l; phone call","denwa","Noun, Verb, Suru verb","でんわ","home",": 彼女は電話で友達と話しています。/ かのじょはでんわでともだちとはなしています。/ Kanojo wa denwa de tomodachi to hanashiteimasu. / She is talking to her friend on the phone.",1,"");
first_1000_vocab298 = new first_1000_vocab(298,"ドア","door","doa","Noun","","home","友達に電話をかけました。/ ともだちにでんわをかけました。/ Tomodachi ni denwa o kakemashita. / I called a friend on the phone.",3,"");
first_1000_vocab299 = new first_1000_vocab(299,"絵","picture","e","Noun","え","home","この絵は美しいですね。/ このえはうつくしいですね。/ Kono e wa utsukushii desu ne. / This painting is beautiful, isn't it?",1,"");
first_1000_vocab300 = new first_1000_vocab(300,"トイレ","toilet","toire","Noun","","9","トイレに行きたいです。/ トイレにいきたいです。/ Toire ni ikitai desu. / I want to go to the toilet.",3,"");
first_1000_vocab301 = new first_1000_vocab(301,"玄関","entrance","genkan","Noun","げんかん","home","玄関は家の入り口です。/ げんかんはいえの いりぐちです。/ Genkan wa ie no iriguchi desu. / The entrance is the house's entryway.",1,"");
first_1000_vocab302 = new first_1000_vocab(302,"ギター","guitar","gitaa","Noun","","home","ベッドでゆっくり休みます。/ ベッドでゆっくりやすみます。/ Beddo de yukkuri yasumimasu. / I rest and relax on the bed.",3,"");
first_1000_vocab303 = new first_1000_vocab(303,"灰皿","ashtray","haizara","Noun","はいざら","home","この部屋には灰皿がありません。/ このへやには はいざらが ありません。/ Kono heya niwa haizara ga arimasen. / There is no ashtray in this room.",1,"");
first_1000_vocab304 = new first_1000_vocab(304,"箱","box; crate","hako","Noun","はこ","home","部屋の電気をつけてください。/ へやのでんきをつけてください。/ Heya no denki o tsukete kudasai. / Please turn on the lights in the room.",1,"");
first_1000_vocab305 = new first_1000_vocab(305,"花","flower","hana","Noun","はな","home","その花はとてもきれいです。/ そのはなは とても きれい です。/ Sono hana wa totemo kirei desu. / That flower is very beautiful.",1,"");
first_1000_vocab306 = new first_1000_vocab(306,"部屋","room","heya","Noun","へや","home","部屋がきれいです。/ へやが きれい です。/ Heya ga kirei desu. / The room is clean.",1,"");
first_1000_vocab307 = new first_1000_vocab(307,"本棚","bookshelf; bookcase","hondana","Noun","ほんだな","home","この部屋には本棚があります。/ このへやにはほんだながあります。/ Kono heya ni wa hondana ga arimasu. / There is a bookshelf in this room.",1,"");
first_1000_vocab308 = new first_1000_vocab(308,"椅子","chair","isu","Noun","いす","home","その椅子はとても快適です。/ そのいすは とても かいてき です。/ Sono isu wa totemo kaiteki desu. / That chair is very comfortable.",1,"");
first_1000_vocab309 = new first_1000_vocab(309,"花瓶","a vase","kabin","Noun","かびん","home","花瓶にはきれいな花が生けられています。/ かびんにはきれいなはながいけられています。/ Kabin ni wa kirei na hana ga ikareru teimasu. / There are beautiful flowers arranged in the vase.",1,"");
first_1000_vocab310 = new first_1000_vocab(310,"帰る","to go back​","kaeru","Godan Verb, Intransitive","かえる","home","帰る前に友達に電話をします。/ かえるまえにともだちにでんわをします。/ Kaeru mae ni tomodachi ni denwa o shimasu. / I will call my friend before I go home.",1,"kaer");
first_1000_vocab311 = new first_1000_vocab(311,"返す","to return something","kaesu","Godan Verb, Transitive","かえす","home","彼に本を返しました。/ かれにほんをかえしました。/ Kare ni hon o kaeshimashita. / I returned the book to him.",1,"kaes");
first_1000_vocab312 = new first_1000_vocab(312,"鍵","key","kagi","Noun","かぎ","home","鍵を持って家を出ました。/ かぎをもっていえをでました。/ Kagi o motte ie o demashita. / I left the house with the key.",1,"");
first_1000_vocab313 = new first_1000_vocab(313,"階段","stairs; stairway; staircase","kaidan","Noun","かいだん","home","階段を上りながら息が切れました。/ かいだんをのぼりながらいきがきれました。/ Kaidan o noborinagara iki ga kiremashita. / I got out of breath while climbing the stairs.",1,"");
first_1000_vocab314 = new first_1000_vocab(314,"掛ける","to hang up; to make (a call)​;","kakeru","Ichidan Verb, Transitive","かける","home","壁に絵を掛けました。/ かべにえをかけました。/ Kabe ni e o kakemashita. / I hung a picture on the wall.",1,"kaka");
first_1000_vocab315 = new first_1000_vocab(315,"カメラ","camera","kamera","Noun","","home","カメラで美しい景色を撮りました。/ カメラでうつくしいけしきをとりました。/ Kamera de utsukushii keshiki o torimashita. / I took a beautiful scenery with a camera.",3,"");
first_1000_vocab316 = new first_1000_vocab(316,"借りる","to borrow","kariru","Ichidan Verb, Transitive","かりる","home","友達から本を借りました。/ ともだちからほんをかりました。/ Tomodachi kara hon o karimashita. / I borrowed a book from a friend.",1,"kai");
first_1000_vocab317 = new first_1000_vocab(317,"傘","umbrella","kasa","Noun","かさ","home","傘を持って外出しました。/ かさを もって がいしゅつしました。/ Kasa o motte gaishutsu shimashita. / I went out holding an umbrella.",1,"");
first_1000_vocab318 = new first_1000_vocab(318,"家庭","household","katei","Noun","かてい","home","家庭の時間を大切にしましょう。/ かていのじかんをたいせつにしましょう。/ Katei no jikan o taisetsu ni shimashou. / Let's cherish family time.",1,"");
first_1000_vocab319 = new first_1000_vocab(319,"消す","to erase, to turn off power","kesu","Godan Verb, Transitive","けす","home","電気を消して節電しましょう。/ でんきをけしてせつでんしましょう。/ Denki o keshite setsuden shimashou. / Let's turn off the lights and save energy.",1,"kes");
first_1000_vocab320 = new first_1000_vocab(320,"汚い","dirty","kitanai","い-adjective","きたない","home","部屋が汚いので掃除しましょう。/ へやがきたないのでそうじしましょう。/ Heya ga kitanai node souji shimashou. / Let's clean the room because it's dirty.",1,"");
first_1000_vocab321 = new first_1000_vocab(321,"窓","window","mado","Noun","まど","home","窓から明るい光が差し込んでいます。/ まどからあかるいひかりがさしこんでいます。/ Mado kara akarui hikari ga sashikondeimasu. / Bright light is shining through the window.",1,"");
first_1000_vocab322 = new first_1000_vocab(322,"眼鏡","eye glasses","megane","Noun","めがね","home","眼鏡をかけると、視界がクリアになります。/ めがねをかけると、しかいがくりあになります。/ Megane o kakeru to, shikai ga kuria ni narimasu. / When you wear glasses, your vision becomes clear.",1,"");
first_1000_vocab323 = new first_1000_vocab(323,"門","gate","mon","Noun","もん","home","門の前には美しい花が咲いています。/ もんのまえにはうつくしいはながさいています。/ Mon no mae ni wa utsukushii hana ga saiteimasu. / Beautiful flowers are blooming in front of the gate.",1,"");
first_1000_vocab324 = new first_1000_vocab(324,"無くす","to lose (something)","nakusu","Godan Verb, Transitive","なくす","home","鍵を無くしてしまいました。/ かぎをなくしてしまいました。/ Kagi o nakushite shimaimashita. / I lost the key.",1,"nakus");
first_1000_vocab325 = new first_1000_vocab(325,"寝る","to sleep; to go to bed; to lie down","neru","Ichidan Verb, Intransitive","ねる","home","疲れたので寝る準備をします。/ つかれたのでねるじゅんびをします。/ Tsukareta node neru junbi o shimasu. / I'm tired, so I'll prepare to sleep.",1,"ne");
first_1000_vocab326 = new first_1000_vocab(326,"庭","garden","niwa","Noun","にわ","home","庭でバーベキューを楽しみました。/ にわでばーべきゅーをたのしみました。/ Niwa de baabekyuu o tanoshimimashita. / I enjoyed a barbecue in the garden.",1,"");
first_1000_vocab327 = new first_1000_vocab(327,"お風呂","bath","ofuro","Noun","おふろ","home","お風呂に入ってリラックスしましょう。/ おふろにはいってりらっくすしましょう。/ Ofuro ni haitte rirakkusu shimashou. / Let's take a bath and relax.",1,"");
first_1000_vocab328 = new first_1000_vocab(328,"お手洗い","toilet; restroom; lavatory; bathroom","otearai","Noun","おてあらい","home","お手洗いは左側にあります。/ おてあらいはひだりがわにあります。/ Otearai wa hidari gawa ni arimasu. / The restroom is on the left side.",1,"");
first_1000_vocab329 = new first_1000_vocab(329,"パーティー","party","paatii","Noun","","home","友達の誕生日にパーティーを開きます。/ ともだちのたんじょうびにぱーてぃーをひらきます。/ Tomodachi no tanjoubi ni paatii o hirakimasu. / We will have a party for my friend's birthday.",3,"");
first_1000_vocab330 = new first_1000_vocab(330,"ラジオ","radio","rajiio","Noun","","home","ラジオで好きな音楽を聴きました。/ らじおですきなおんがくをききました。/ Rajio de suki na ongaku o kikimashita. / I listened to my favorite music on the radio.",3,"");
first_1000_vocab331 = new first_1000_vocab(331,"冷蔵庫","refrigerator","reizouko","Noun","れいぞうこ","home","冷蔵庫には新鮮な食材が入っています。/ れいぞうこにはしんせんなしょくざいがはいっています。/ Reizouko ni wa shinsen na shokuzai ga haitteimasu. / The refrigerator contains fresh ingredients.",1,"");
first_1000_vocab332 = new first_1000_vocab(332,"レコード","record","rekoodo","Noun","","home","レコードをかけて音楽を楽しみました。/ レコードをかけておんがくをたのしみました。/ Rekoodo o kakete ongaku o tanoshimimashita. / I enjoyed listening to music by playing a record.",3,"");
first_1000_vocab333 = new first_1000_vocab(333,"廊下","corridor; hallway; passageway","rouka","Noun","ろうか","home","廊下を歩いて教室に向かいました。/ ろうかをあるいてきょうしつにむかいました。/ Rōka o aruite kyōshitsu ni mukaimashita. / I walked down the hallway and headed to the classroom.",1,"");
first_1000_vocab334 = new first_1000_vocab(334,"石鹼","soap","sekken","Noun","せっけん","home","石鹸で手を洗って清潔にしましょう。/ せっけんでてをあらってせいけつにしましょう。/ Sekken de te o aratte seiketsu ni shimashou. / Let's wash our hands with soap and keep them clean.",1,"");
first_1000_vocab335 = new first_1000_vocab(335,"洗濯","washing; laundry","sentaku","Noun, Suru verb","せんたく","home","洗濯物を干すためにベランダに出ました。/ せんたくものをほすためにべらんだにでました。/ Sentakumono o hosu tame ni beranda ni demashita. / I went out to the balcony to hang the laundry.",1,"sentak");
first_1000_vocab336 = new first_1000_vocab(336,"写真","photograph; photo","shashin","Noun","しゃしん","home","写真を撮って思い出を残しました。/ しゃしんをとっておもいでをのこしました。/ Shashin o totte omoide o nokoshimashita. / I took photos to capture memories.",1,"");
first_1000_vocab337 = new first_1000_vocab(337,"シャワー","shower","shawaa","Noun","","home","シャワーを浴びてリフレッシュしましょう。/ しゃわーをあびてりふれっしゅしましょう。/ Shawaa o abite rifuresshu shimashou. / Let's take a shower and refresh ourselves.",3,"");
first_1000_vocab338 = new first_1000_vocab(338,"閉める","to close; to shut","shimeru","Ichidan Verb, Transitive","しめる","home","ドアを閉めて外の音を遮りましょう。/ ドアをしめてそとのおとをさえぎりましょう。/ Doa o shimete soto no oto o saegirimashou. / Let's close the door to block out the outside noise.",1,"shime");
first_1000_vocab339 = new first_1000_vocab(339,"スプーン","spoon","supuun","Noun","","home","スプーンでアイスクリームを食べました。/ スプーンでアイスクリームをたべました。/ Supuun de aisukuriimu o tabemashita. / I ate ice cream with a spoon.",3,"");
first_1000_vocab340 = new first_1000_vocab(340,"スリッパ","slipper; slippers","surippa","Noun","","home","スリッパを履いて快適に過ごしました。/ スリッパをはいてかいてきにすごしました。/ Surippa o haite kaiteki ni sugoshimashita. / I wore slippers and had a comfortable time.",3,"");
first_1000_vocab341 = new first_1000_vocab(341,"立つ","to stand; to stand up​","tatsu","Godan Verb, Intransitive","たつ","home 2","庭に立って風を感じました。/ にわにたってかぜをかんじました。/ Niwa ni tatte kaze o kanjimashita. / I stood in the garden and felt the breeze.",1,"tat/tach");
first_1000_vocab342 = new first_1000_vocab(342,"テーブル","table","teeburu","Noun","","home 2","テーブルの上に本を置きました。/ テーブルのうえにほんをおきました。/ Tēburu no ue ni hon o okimashita. / I put the book on the table.",3,"");
first_1000_vocab343 = new first_1000_vocab(343,"テープ","tape","teepu","Noun","","home 2","テープを貼って箱を封しました。/ テープをはってはこをふうしました。/ Tēpu o hatte hako o fusshimashita. / I taped the box to seal it.",3,"");
first_1000_vocab344 = new first_1000_vocab(344,"テープレコーダー","tape recorder","teepu rekoodaa","Noun","","home 2","テープレコーダーで音声を録音しました。/ テープレコーダーでおんせいをろくおんしました。/ Tēpu rekōdā de onsei o rokuon shimashita. / I recorded audio with a tape recorder.",3,"");
first_1000_vocab345 = new first_1000_vocab(345,"テレビ","television; TV​","terebi","Noun","","home 2","テレビでお気に入りの番組を見ました。/ テレビでおきにいりのばんぐみをみました。/ Terebi de okiniiri no bangumi o mimashita. / I watched my favorite TV program on TV.",3,"");
first_1000_vocab346 = new first_1000_vocab(346,"戸","Japanese style door","to","Noun","と","home 2","戸を開けて外に出ました。/ とをあけてそとにでました。/ To o akete soto ni demashita. / I opened the door and went outside.",1,"");
first_1000_vocab347 = new first_1000_vocab(347,"つける","to turn on","tsukeru","Ichidan Verb, Transitive","","home 2","明かりをつけて部屋を明るくしました。/ あかりをつけてへやをあかるくしました。/ Akari o tsukete heya o akaruku shimashita. / I turned on the light to brighten up the room.",2,"tsukeru");
first_1000_vocab348 = new first_1000_vocab(348,"読む","to read; to guess; to predict; to read (someone's thoughts)","yomuよむ","Godan Verb, Transitive","よむ","home 2","本を読んで新しい知識を得ました。/ ほんをよんであたらしいちしきをえました。/ Hon o yonde atarashii chishiki o emashita. / I read a book and gained new knowledge.",1,"yom");
first_1000_vocab349 = new first_1000_vocab(349,"マッチ","match (for lighting a fire)​","macchi","Noun","","home 2","マッチでキャンドルを点けました。/ マッチでキャンドルをつけました。/ Matchi de kyandoru o tsukemashita. / I lit a candle with a match.",3,"");
first_1000_vocab350 = new first_1000_vocab(350,"方","way of doing something","kata","Noun","かた","home 2","この方は私の先生です。/ このかたは わたしの せんせいです。/ Kono kata wa watashi no sensei desu. / This person is my teacher.",1,"");
first_1000_vocab351 = new first_1000_vocab(351,"危ない","dangerous","abunai","い-adjective","あぶない","map","その道は危ないので注意が必要です。/ そのみちはあぶないのでちゅういがひつようです。/ Sono michi wa abunai node chūi ga hitsuyō desu. / That road is dangerous, so caution is necessary.",1,"");
first_1000_vocab352 = new first_1000_vocab(352,"地下鉄","subway; underground train","chikatetsu","Noun","ちかてつ","map","地下鉄で市内を移動しました。/ ちかてつでしないをいどうしました。/ Chikatetsu de shinai o idō shimashita. / I traveled around the city by subway.",1,"");
first_1000_vocab353 = new first_1000_vocab(353,"出口","exit; gateway; way out","deguchi","Noun","でぐち","map","出口から外に出て友達を待ちました。/ でぐちからそとにでてともだちをまちました。/ Deguchi kara soto ni dete tomodachi o machimashita. / I went outside from the exit and waited for my friend.",1,"");
first_1000_vocab354 = new first_1000_vocab(354,"映画","movie; film","eiga","Noun","えいが","map","映画を見て楽しい時間を過ごしました。/ えいがをみてたのしいじかんをすごしました。/ Eiga o mite tanoshii jikan o sugoshimashita. / I watched a movie and had a great time.",1,"");
first_1000_vocab355 = new first_1000_vocab(355,"映画館","movie theater; cinema","eigakan","Noun","えいがかん","map","映画館で最新作を鑑賞しました。/ えいがかんでさいしんさくをかんしょうしました。/ Eigakan de saishinsaku o kanshō shimashita. / I watched the latest movie at the movie theater.",1,"");
first_1000_vocab356 = new first_1000_vocab(356,"駅","station","eki","Noun","えき","map","駅で友達と待ち合わせました。/ えきでともだちとまちあわせました。/ Eki de tomodachi to machiawashimashita. / I met up with my friend at the station.",1,"");
first_1000_vocab357 = new first_1000_vocab(357,"銀行","bank","ginkou","Noun","ぎんこう","map","銀行にお金を預けに行きました。/ ぎんこうにおかねをあずけにいきました。/ Ginkō ni okane o azuke ni ikimashita. / I went to the bank to deposit money.",1,"");
first_1000_vocab358 = new first_1000_vocab(358,"入る","to enter; to go into","hairu","Godan Verb, Intransitive","はいる","map","入り口から店内に入りました。/ いりぐちからてんないにはいりました。/ Iriguchi kara ten'nai ni hairimashita. / I entered the store from the entrance.",1,"hair");
first_1000_vocab359 = new first_1000_vocab(359,"橋","bridge","hashi","Noun","はし","map","橋を渡って川の向こう側に行きました。/ はしをわたってかわのむこうがわにいきました。/ Hashi o watatte kawa no mukōgawa ni ikimashita. / I crossed the bridge and went to the other side of the river.",1,"");
first_1000_vocab360 = new first_1000_vocab(360,"辺","area","hen","Noun","へん","map","この辺にコンビニがあります。/ このへんに こんびにが あります。/ Kono hen ni konbini ga arimasu. / There is a convenience store around here.",1,"");
first_1000_vocab361 = new first_1000_vocab(361,"広い","spacious; vast; wide","hiroi","い-adjective","ひろい","map","広い公園でピクニックを楽しんだ。/ ひろいこうえんでピクニックをたのしんだ。/ Hiroi kōen de pikunikku o tanoshinda. / I enjoyed a picnic in a spacious park.",1,"");
first_1000_vocab362 = new first_1000_vocab(362,"ほか","other (place, thing, person); the rest","hoka","Noun","","map","ほかの店に行っても良いですか？/ ほかのみせにいってもいいですか？/ Hoka no mise ni itte mo ii desu ka?/ Can I go to another shop?",2,"");
first_1000_vocab363 = new first_1000_vocab(363,"ホテル","hotel","hoteru","Noun","","map","ホテルのロビーで待ち合わせました。/ ホテルのロビーでまちあわせました。/ Hoteru no robī de machiawashimashita. / We met up in the hotel lobby.",3,"");
first_1000_vocab364 = new first_1000_vocab(364,"家","house, residence, family","ie","Noun","いえ","map","家でゆっくり休みました。/ いえでゆっくりやすみました。/ Ie de yukkuri yasumimashita. / I relaxed at home.",1,"");
first_1000_vocab365 = new first_1000_vocab(365,"池","pond","ike","Noun","いけ","map","池の周りを散歩しました。/ いけのまわりをさんぽしました。/ Ike no mawari o sanpo shimashita. / I took a walk around the pond.",1,"");
first_1000_vocab366 = new first_1000_vocab(366,"入口","entrance; entry; gate","iriguchi","Noun","いりぐち","map","入口には大きな看板がありました。/ いりぐちにはおおきなかんばんがありました。/ Iriguchi ni wa ōkina kanban ga arimashita. / There was a big signboard at the entrance.",1,"");
first_1000_vocab367 = new first_1000_vocab(367,"会社","company; corporation","kaisha","Noun","かいしゃ","map","会社で一日中働きました。/ かいしゃでいちにちじゅうはたらきました。/ Kaisha de ichinichi-jū hatara kimashita. / I worked all day at the company.",1,"");
first_1000_vocab368 = new first_1000_vocab(368,"川","river; stream​","kawa","Noun, Suffix","かわ","map","川の水は清澄でした。/ かわのみずはせいちょうでした。/ Kawa no mizu wa seichō deshita. / The water in the river was clear.",1,"");
first_1000_vocab369 = new first_1000_vocab(369,"木","tree; shrub; bush; wood; timber","ki","Noun","き","map","木の下で本を読みました。/ きのしたでほんをよみました。/ Ki no shita de hon o yomimashita. / I read a book under the tree.",1,"");
first_1000_vocab370 = new first_1000_vocab(370,"綺麗","pretty; lovely; beautiful","kirei","な-adjective","きれい","map","綺麗な花が庭に咲いていました。/ きれいなはながにわにさいていました。/ Kirei na hana ga niwa ni saite imashita. / Beautiful flowers were blooming in the garden.",1,"");
first_1000_vocab371 = new first_1000_vocab(371,"交番","police box","kouban","Noun","こうばん","map","交番の前で警察官に助けを求めました。/ こうばんのまえでけいさつかんにたすけをもとめました。/ Kōban no mae de keisatsukan ni tasuke o motomemashita. / I asked a police officer for help in front of the police box.",1,"");
first_1000_vocab372 = new first_1000_vocab(372,"公園","park","kouen","Noun","こうえん","map","公園で友達と遊びました。/ こうえんでともだちとあそびました。/ Kōen de tomodachi to asobimashita. / I played with my friends at the park.",1,"");
first_1000_vocab373 = new first_1000_vocab(373,"交差点","intersection","kousaten","Noun","こうさてん","map","交差点で右に曲がってください。/ こうさてんでみぎにまがってください。/ Kōsaten de migi ni magatte kudasai. / Please turn right at the intersection.",1,"");
first_1000_vocab374 = new first_1000_vocab(374,"曲がる","to turn, to bend","magaru","Godan Verb, Intransitive","まがる","map","右に曲がってください。/ みぎにまがってください。/ Migi ni magatte kudasai. / Please turn right.",1,"magar");
first_1000_vocab375 = new first_1000_vocab(375,"道","road; street","michi","Noun","みち","map","道にはたくさんの車が通っていました。/ みちにはたくさんのくるまがとおっていました。/ Michi ni wa takusan no kuruma ga tōtte imashita. / There were many cars passing by on the road.",1,"");
first_1000_vocab376 = new first_1000_vocab(376,"村","village","mura","Noun","むら","map","村にはのどかな風景が広がっていました。/ むらにはのどかなふうけいがひろがっていました。/ Mura ni wa nodokana fūkei ga hirogatte imashita. / The village was surrounded by a peaceful scenery.",1,"");
first_1000_vocab377 = new first_1000_vocab(377,"賑やか","bustling,busy","nigiyaka","な-adjective","にぎやか","map","賑やかな市場で買い物をしました。/ にぎやかないちばでかいものをしました。/ Nigiyaka na ichiba de kaimono o shimashita. / I went shopping at a bustling market.",1,"");
first_1000_vocab378 = new first_1000_vocab(378,"プール","swimming pool","puuru","Noun","","map","プールで泳いで涼みました。/ プールでおよいですずみました。/ Pūru de oyoidesuzumimashita. / I swam and cooled off at the pool.",3,"");
first_1000_vocab379 = new first_1000_vocab(379,"大使館","embassy","taishikan","Noun","たいしかん","map","大使館の前でパスポートを取得しました。/ たいしかんのまえでパスポートをとくしゅしました。/ Taishikan no mae de pasupōto o tokushu shimashita. /I obtained my passport in front of the embassy.",1,"");
first_1000_vocab380 = new first_1000_vocab(380,"図書館","library","toshokan","Noun","としょかん","map","図書館で本を借りました。/ としょかんでほんをかりました。/ Toshokan de hon o karimashita. / I borrowed a book from the library.",1,"");
first_1000_vocab381 = new first_1000_vocab(381,"海","sea","umi","Noun","うみ","Map 1","海の近くで美しい夕日を見ました。/ うみのちかくでうつくしいゆうひをみました。/ Umi no chikaku de utsukushii yuuhi o mimashita. / I saw a beautiful sunset near the sea.",1,"");
first_1000_vocab382 = new first_1000_vocab(382,"町","town; block; neighborhood","machi","Noun","まち","Map 1","町の中心部には多くの店があります。/ まちのちゅうしんぶにはおおくのみせがあります。/ Machi no chuushinbu ni wa ooku no mise ga arimasu. / There are many shops in the city center.",1,"");
first_1000_vocab383 = new first_1000_vocab(383,"山","mountain; hill","yama","Noun","やま","Map 1","山に登るために装備を整えました。/ やまにのぼるためにそうびをととのえました。/ Yama ni noboru tame ni soubi o totonoemashita. / I prepared the equipment to climb the mountain.",1,"");
first_1000_vocab384 = new first_1000_vocab(384,"郵便局","post office","yuubinkyoku","Noun","ゆうびんきょく","Map 1","郵便局で手紙を送りました。/ ゆうびんきょくでてがみをおくりました。/ Yuubinkyoku de tegami o okurimashita. / I sent a letter at the post office.",1,"");
first_1000_vocab385 = new first_1000_vocab(385,"出す","to take out; to get out; to put out; to reveal","dasu","Godan Verb, Transitive","だす","map","ゴミを出す日は火曜日です。/ ごみをだすひはかようびです。/ Gomi o dasu hi wa kayoubi desu. / The garbage collection day is on Tuesday.",1,"das");
first_1000_vocab386 = new first_1000_vocab(386,"出る","to leave; to exit; to appear; to go out","deru","Ichidan Verb, Intransitive","でる","map","家を出て学校に向かいました。/ いえをでてがっこうにむかいました。/ Ie o dete gakkou ni mukaimashita. / I left home and headed to school.",1,"de");
first_1000_vocab387 = new first_1000_vocab(387,"角","a corner; angle​","kado","Noun","かど","map","角を曲がると公園があります。/ かどをまがるとこうえんがあります。/ Kado o magaru to kouen ga arimasu. / There is a park when you turn the corner.",1,"");
first_1000_vocab388 = new first_1000_vocab(388,"中","inside; in; within; center","naka","Noun","なか","map","中にはたくさんの人がいました。/ なかにはたくさんのひとがいました。/ Naka ni wa takusan no hito ga imashita. / There were many people inside.",1,"");
first_1000_vocab389 = new first_1000_vocab(389,"狭い","narrow","semai","い-adjective","せまい","map","部屋は狭いですが、居心地が良いです。/ へやはせまいですが、いごこちがいいです。/ Heya wa semai desu ga, igokochi ga ii desu. / The room is small, but it's cozy.",1,"");
first_1000_vocab390 = new first_1000_vocab(390,"入れる","to put in; to let in; to take in; to bring in; to insert; to install","ireru","Ichidan Verb, Transitive","いれる","map","カバンに本を入れました。/ かばんにほんをいれました。/ Kaban ni hon o iremashita. / I put books in my bag.",1,"ire");
first_1000_vocab391 = new first_1000_vocab(391,"三つ","three; 3 (of something)","mittsu","Noun","みっつ","counter","りんごを三つ買いました。/ りんごをみっつかいました。/ Ringo o mittsu kaimashita. / I bought three apples.",1,"");
first_1000_vocab392 = new first_1000_vocab(392,"二つ","two; 2 (of something)","futatsu","Noun","ふたつ","counter","机の上に二つの本があります。/ つくえのうえにふたつのほんがあります。/ Tsukue no ue ni futatsu no hon ga arimasu. / There are two books on the desk.",1,"");
first_1000_vocab393 = new first_1000_vocab(393,"五つ","five; 5 (of something)","itsutsu","Noun","いつつ","counter","友達と五つ星レストランに行きました。/ ともだちとごつせいレストランにいきました。/ Tomodachi to gotsusei resutoran ni ikimashita. / I went to a five-star restaurant with my friend.",1,"");
first_1000_vocab394 = new first_1000_vocab(394,"九つ","nine; 9 (of something)","kokonotsu","Noun","ここのつ","counter","彼の誕生日は九つの月です。/ かれのたんじょうびは ここのつの つきです。/ Kare no tanjoubi wa kokonotsu no tsuki desu. / His birthday is in the ninth month.",1,"");
first_1000_vocab395 = new first_1000_vocab(395,"六つ","six; 6 (of something)","muttsu","Noun","むっつ","counter","パーティーで六つのケーキを食べました。/ パーティーでむっつのケーキをたべました。/ Pātī de muttsu no kēki o tabemashita. / I ate six cakes at the party.",1,"");
first_1000_vocab396 = new first_1000_vocab(396,"七つ","seven; 7 (of something)","nanatsu","Noun","ななつ","counter","公園には七つの滑り台があります。/ こうえんにはななつのすべりだいがあります。/ Kōen ni wa nanatsu no suberidai ga arimasu. / There are seven slides in the park.",1,"");
first_1000_vocab397 = new first_1000_vocab(397,"八つ","eight: 8 (of something)","yattsu","Noun","やっつ","counter","試験で八つの問題に答えました。/ しけんでやっつのもんだいにこたえました。/ Shiken de yattsu no mondai ni kotaemashita. / I answered eight questions on the exam.",1,"");
first_1000_vocab398 = new first_1000_vocab(398,"四つ","four; 4 (of something)","yotsu","Noun","よつ","counter","机の上に四つのペンがあります。/ つくえのうえによっつのぺんがあります。/ Tsukue no ue ni yottsu no pen ga arimasu. / There are four pens on the desk.",1,"");
first_1000_vocab399 = new first_1000_vocab(399,"一つ","one;1 (of something)","hitostu","Noun","ひとつ","counter","このパズルは一つのピースが足りません。/ このパズルはひとつのピースがたりません。/ Kono pazuru wa hitotsu no pīsu ga tarimasen. / This puzzle is missing one piece.",1,"");
first_1000_vocab400 = new first_1000_vocab(400,"いくら","how much?; how many?​","ikura","Noun","","counter","いくらお金が必要ですか？/ いくらおかねがひつようですか？/ Ikura o-kane ga hitsuyō desu ka? / How much money do you need?",2,"");
first_1000_vocab401 = new first_1000_vocab(401,"誰か","someone; somebody","dareka","Pronoun","だれか","people","誰かに電話がかかってきました。/ だれかにでんわがかかってきました。/ Dareka ni denwa ga kakatte kimashita. / Someone called on the phone.",1,"");
first_1000_vocab402 = new first_1000_vocab(402,"人","person; human","hito","Noun","ひと","people","町にはたくさんの人がいました。/ まちにはたくさんのひとがいました。/ Machi ni wa takusan no hito ga imashita. / There were many people in the town.",1,"");
first_1000_vocab403 = new first_1000_vocab(403,"一人","one person​; alone; single","hitori","Noun, Adverb","ひとり","people","一人で映画を観に行きました。/ ひとりでえいがをみにいきました。/ Hitori de eiga o mi ni ikimashita. / I went to see a movie alone.",1,"");
first_1000_vocab404 = new first_1000_vocab(404,"家族","family; members of a family","kazoku","Noun","かぞく","people","家族でピクニックに行きました。/ かぞくでぴくにっくにいきました。/ Kazoku de pikunikku ni ikimashita. / I went on a picnic with my family.",1,"");
first_1000_vocab405 = new first_1000_vocab(405,"警官","policeman; police officer","keikan","Noun","けいかん","people","警官が交通整理をしていました。/ けいかんがこうつうせいりをしていました。/ Keikan ga kōtsū seiri o shite imashita. / The police officer was directing traffic.",1,"");
first_1000_vocab406 = new first_1000_vocab(406,"結婚","marriage","kekkon","Noun, Suru verb","けっこん","people","彼と結婚しました。/ かれとけっこんしました。/ Kare to kekkon shimashita. / I got married to him.",1,"suru");
first_1000_vocab407 = new first_1000_vocab(407,"子供","child","kodomo","Noun","こども","people","子供たちは公園で遊んでいました。/ こどもたちはこうえんであそんでいました。/ Kodomo-tachi wa kōen de asonde imashita. / The children were playing in the park.",1,"");
first_1000_vocab408 = new first_1000_vocab(408,"おばあさん","grandmother","obaasan","Noun","","people","おばあさんは優しい笑顔で話しかけてきました。/ おばあさんはやさしいえがおではなしかけてきました。/ Obāsan wa yasashii egao de hanashikakete kimashita. / The grandmother approached with a kind smile and started talking.",2,"");
first_1000_vocab409 = new first_1000_vocab(409,"伯母さん","aunt; old lady","obasan","Noun","おばさん","people","伯母さんに誕生日プレゼントを贈りました。/ おばさんにたんじょうびぷれぜんとをおくりました。/ Oba-san ni tanjōbi purezento o okurimashita. / I gave a birthday present to my aunt.",1,"");
first_1000_vocab410 = new first_1000_vocab(410,"女","woman; female sex","onna","Noun, Prefix","おんな","people","その女性は美しいドレスを着ていました。/ そのじょせいはうつくしいどれすをきていました。/ Sono josei wa utsukushii doresu o kite imashita. / The woman was wearing a beautiful dress.",1,"");
first_1000_vocab411 = new first_1000_vocab(411,"大勢","crowd of people; great number of people","oozei","Noun","おおぜい","people","公園には大勢の人が集まっていました。/ こうえんにはおおぜいのひとがあつまっていました。/ Kōen ni wa ōzei no hito ga atsumatte imashita. / Many people had gathered at the park.",1,"");
first_1000_vocab412 = new first_1000_vocab(412,"男","man; male","otoko","Noun","おとこ","people","その男は日本人です。/ そのおとこはにほんじんです。/ Sono otoko wa nihonjin desu. / That man is Japanese.",1,"");
first_1000_vocab413 = new first_1000_vocab(413,"大人","adult","otona","Noun","おとな","people","大人になると責任が増えます。/ おとなになるとせきにんがふえます。/ Otona ni naru to sekinin ga fuemasu. / As you become an adult, responsibilities increase.",1,"");
first_1000_vocab414 = new first_1000_vocab(414,"二十歳","20 years old; twenty years old","hatachi","Noun","はたち","people","彼は二十歳の誕生日を迎えました。/ かれははたちのたんじょうびをむかえました。/ Kare wa hatachi no tanjōbi o mukaemashita. / He celebrated his 20th birthday.",1,"");
first_1000_vocab415 = new first_1000_vocab(415,"友達","friend; companion","tomodachi","Noun","ともだち","people","友達と一緒に映画を観に行きました。/ ともだちといっしょにえいがをみにいきました。/ Tomodachi to issho ni eiga o mi ni ikimashita. / I went to watch a movie with my friends.",1,"");
first_1000_vocab416 = new first_1000_vocab(416,"有名","famous","yuumei","Noun, な-adjective","ゆうめい","people","彼は有名な俳優です。/ かれはゆうめいなはいゆうです。/ Kare wa yūmei na haiyū desu. / He is a famous actor.",1,"");
first_1000_vocab417 = new first_1000_vocab(417,"お巡りさん","police officer (friendly term for policeman)","omawari san","Noun","おまわりさん","people","お巡りさんが交通事故の現場に駆けつけました。/ おまわりさんがこうつうじこのげんばにかけつけました。/ Omawarisan ga kōtsū jiko no genba ni kaketsukemashita. / The police officer rushed to the scene of the traffic accident.",1,"");
first_1000_vocab418 = new first_1000_vocab(418,"住む","to live in; to reside; to inhabit; to dwell; to abide","sumu","Godan Verb, Intransitive","すむ","people","彼は町の中心部に住んでいます。/ かれはまちのちゅうしんぶにすんでいます。/ Kare wa machi no chūshinbu ni sunde imasu. / He lives in the center of the town.",1,"sum");
first_1000_vocab419 = new first_1000_vocab(419,"答える","to answer","kotaeru","Ichidan Verb, Intransitive","こたえる","people","質問に正しく答えました。/ しつもんにただしくこたえました。/ Shitsumon ni tadashiku kotaemashita. / I answered the question correctly.",1,"kotae");
first_1000_vocab420 = new first_1000_vocab(420,"頼む","to ask","tanomu","Godan Verb, Transitive","たのむ","people","頼むから手伝ってください。/ たのむからてつだってください。/ Tanomu kara tetsudatte kudasai. / Please help me, I'm begging you.",1,"tanom");
first_1000_vocab421 = new first_1000_vocab(421,"いつ","when","itsu","Pronoun","","SADK","いつ学校に行く予定ですか？/ いつがっこうにいくよていですか？/ Itsu gakkō ni iku yotei desu ka? / When are you planning to go to school?",2,"");
first_1000_vocab422 = new first_1000_vocab(422,"どなた","who","donata","Noun","","SADK","どなたとお話しているんですか？/ どなたとおはなししているんですか？/ Donata to ohanashi shite iru n desu ka? / Who are you talking to?",2,"");
first_1000_vocab423 = new first_1000_vocab(423,"どう","how; in what way; how about​","dou","Adverb","","SADK","どうやってその問題を解決しましたか？/ どうやってそのもんだいをかいけつしましたか？/ Dōyatte sono mondai o kaiketsu shimashita ka? / How did you solve that problem?",2,"");
first_1000_vocab424 = new first_1000_vocab(424,"そば","near; beside","soba","Noun","","Direction?","そばに美しい公園があります。/ そばにうつくしいこうえんがあります。/ Soba ni utsukushii kōen ga arimasu. / There is a beautiful park nearby.",2,"");
first_1000_vocab425 = new first_1000_vocab(425,"いかが","how; in what way; how about​","ikaga","Adverb","","SADK","いかがですか？お茶でもいかがですか？/ いかがですか？おちゃでもいかがですか？/ Ikaga desu ka? Ocha demo ikaga desu ka? / How about it? Would you like some tea?",2,"");
first_1000_vocab426 = new first_1000_vocab(426,"いくつ","how many?,how old?","ikutsu","Adverb","","SADK","いくつお問い合わせですか？/ いくつおといあわせですか？/ Ikutsu otoiawase desu ka? / How many inquiries do you have?",2,"");
first_1000_vocab427 = new first_1000_vocab(427,"そこ","that place​; there","soko","Pronoun","","SADK","そこには美しい景色が広がっています。/ そこにはうつくしいけしきがひろがっています。/ Soko ni wa utsukushii keshiki ga hirogatte imasu. / There is a beautiful view spreading there.",2,"");
first_1000_vocab428 = new first_1000_vocab(428,"ここ","here; this place","koko","Pronoun","","SADK","ここで待ち合わせしましょう。/ ここでまちあわせしましょう。/ Koko de machiawase shimashō. / Let's meet up here.",2,"");
first_1000_vocab429 = new first_1000_vocab(429,"あそこ","over there","asoko","Pronoun","","SADK","あそこに友達がいます。/ あそこにともだちがいます。/ Asoko ni tomodachi ga imasu. / There is a friend over there.",2,"");
first_1000_vocab430 = new first_1000_vocab(430,"どこ","where; what place​","doko","Pronoun","","SADK","どこに行きたいですか？/ どこにいきたいですか？/ Doko ni ikitai desu ka? / Where do you want to go?",2,"");
first_1000_vocab431 = new first_1000_vocab(431,"勉強","to study","benkyou","Noun, Suru Verb","べんきょう","school","毎日、勉強をして大学の試験に備えています。/ まいにち、べんきょうをしてだいがくのしけんにそなえています。/ Mainichi, benkyō o shite daigaku no shiken ni sonaete imasu. / I study every day to prepare for university exams.",1,"suru");
first_1000_vocab432 = new first_1000_vocab(432,"大学","university; college","daigaku","Noun","だいがく","school","大学で新しいことを習います。/ だいがくであたらしいことをならいます。/ Daigaku de atarashii koto o naraimasu. / I learn new things at university.",1,"");
first_1000_vocab433 = new first_1000_vocab(433,"鉛筆","pencil","enpitsu","Noun","えんぴつ","school","鉛筆を持って学校に行きました。/ えんぴつをもってがっこうにいきました。/ Enpitsu o motte gakkō ni ikimashita. / I went to school with a pencil.",1,"");
first_1000_vocab434 = new first_1000_vocab(434,"学校","school","gakkou","Noun","がっこう","school","学校の先生は熱心に教えてくれます。/ がっこうのせんせいはねっしんにおしえてくれます。/ Gakkō no sensei wa nesshin ni oshiete kuremasu. / The school teacher teaches us enthusiastically.",1,"");
first_1000_vocab435 = new first_1000_vocab(435,"学生","student","gakusei","Noun","がくせい","school","学校には多くの学生がいます。/ がっこうにはおおくのがくせいがいます。/ Gakkō ni wa ōku no gakusei ga imasu. / There are many students at school.",1,"");
first_1000_vocab436 = new first_1000_vocab(436,"授業","lesson; class work","jugyou","Noun, Suru Verb","じゅぎょう","school","学生たちは真剣に授業に取り組んでいます。/ がくせいたちはしんけんにじゅぎょうにとりくんでいます。/ Gakuseitachi wa shinken ni jugyō ni torikunde imasu. / The students are earnestly engaged in their classes.",1,"suru");
first_1000_vocab437 = new first_1000_vocab(437,"クラス","class","kurasu","Noun","","school","クラスで友達と一緒に楽しい時間を過ごしました。/ クラスでともだちといっしょにたのしいじかんをすごしました。/ Kurasu de tomodachi to issho ni tanoshii jikan o sugoshimashita. / I had a fun time with friends in class.",3,"");
first_1000_vocab438 = new first_1000_vocab(438,"教室","classroom","kyoushitsu","Noun","きょうしつ","school","教室には黒板と机があります。/ きょうしつにはこくばんとつくえがあります。/ Kyōshitsu ni wa kokuban to tsukue ga arimasu. / There are blackboards and desks in the classroom.",1,"");
first_1000_vocab439 = new first_1000_vocab(439,"万年筆","fountain pen","mannenhitsu","Noun","まんねんひつ","school","万年筆で美しい字を書きたいです。/ まんねんひつでうつくしいじをかきたいです。/ Mannenhitsu de utsukushii ji o kakitai desu. / I want to write beautiful characters with a fountain pen.",1,"");
first_1000_vocab440 = new first_1000_vocab(440,"習う","to be taught; to learn (from a teacher)","narau","Godan Verb, Transitive","ならう","school","習うことは人生の宝です。/ ならうことはじんせいのたからです。/ Narau koto wa jinsei no takara desu. / Learning is a treasure in life.",1,"nanar");
first_1000_vocab441 = new first_1000_vocab(441,"教える","to teach","oshieru","Ichidan Verb, Transitive","おしえる","school","先生が新しい言葉を教えてくれました。/ せんせいがあたらしいことばをおしえてくれました。/ Sensei ga atarashii kotoba o oshiete kuremashita. / The teacher taught me new words.",1,"oshie");
first_1000_vocab442 = new first_1000_vocab(442,"ページ","page","peeji","Noun","","school","本のページをめくりながら読んでいます。/ ほんのぺーじをめくりながらよんでいます。/ Hon no pēji o mekuri nagara yonde imasu. / I am reading while flipping through the pages of the book.",3,"");
first_1000_vocab443 = new first_1000_vocab(443,"ペン","pen","pen","Noun","","school","ペンで手紙を書きました。/ ペンでてがみをかきました。/ Pen de tegami o kakimashita. / I wrote a letter with a pen.",3,"");
first_1000_vocab444 = new first_1000_vocab(444,"留学生","overseas student; exchange student","ryuugakusei","Noun","りゅうがくせい","school","留学生と一緒に国際交流を楽しみました。/ りゅうがくせいといっしょにこくさいこうりゅうをたのしみました。/ Ryūgakusei to issho ni kokusai kōryū o tanoshimimashita. / I enjoyed international exchange with international students.",1,"");
first_1000_vocab445 = new first_1000_vocab(445,"生徒","pupil; student","seito","Noun","せいと","school","生徒たちはクラスで活発に議論しました。/ せいとたちはくらすでかっぱつにぎろんしました。/ Seito-tachi wa kurasu de kappatsu ni giron shimashita. / The students actively",1,"");
first_1000_vocab446 = new first_1000_vocab(446,"先生","teacher; instructor; master","sensei","Noun, Suffix","せんせい","school","先生は教室で授業をしています。/ せんせいはきょうしつでじゅぎょうをしています。/ Sensei wa kyōshitsu de jugyō o shiteimasu. / The teacher is giving a class in the classroom.",1,"");
first_1000_vocab447 = new first_1000_vocab(447,"宿題","homework; assignment; pending issue","shukudai","Noun","しゅくだい","school","宿題を忘れずに提出しました。/ しゅくだいをわすれずにていしゅつしました。/ Shukudai o wasurezu ni teishutsu shimashita. / I submitted my homework without forgetting.",1,"");
first_1000_vocab448 = new first_1000_vocab(448,"テスト","examination; quiz; test","tesuto","Noun, Suru verb","","school","テストの結果が良かったです。/ テストのけっかがよかったです。/ Tesuto no kekka ga yokatta desu. / I got a good result on the test.",3,"suru");
first_1000_vocab449 = new first_1000_vocab(449,"問題","problem; question (e.g. on a test)","mondai","Noun","もんだい","school","数学の問題を解くのが得意です。/ すうがくのもんだいをとくのがとくいです。/ Sūgaku no mondai o toku no ga tokui desu. / I am good at solving math problems.",1,"");
first_1000_vocab450 = new first_1000_vocab(450,"ノート","notebook","nooto","Noun","","","授業中にノートにメモを取りました。/ じゅぎょうちゅうにのーとにめもをとりました。/ Jugyōchū ni nōto ni memo o torimashita. / I took notes on my notebook during class.",3,"");
first_1000_vocab451 = new first_1000_vocab(451,"上手","skillful; skilled; proficient; good (at)","jouzu","Noun, な-adjective","じょうず","sports","彼はピアノが上手です。/ かれはぴあのがじょうずです。/ Kare wa piano ga jōzu desu. / He is good at playing the piano.",1,"");
first_1000_vocab452 = new first_1000_vocab(452,"スポーツ","sport; sports","supootsu","Noun","","sports","スポーツをすることが好きです。/ すぽーつをすることがすきです。/ Supōtsu o suru koto ga suki desu. / I enjoy doing sports.",3,"");
first_1000_vocab453 = new first_1000_vocab(453,"終わる","to finish; to end","owaru","Godan Verb, Intransitive","おわる","Sport","授業が終わりました。/ じゅぎょうがおわりました。/ Jugyō ga owarimashita. / The class has ended.",1,"owar");
first_1000_vocab454 = new first_1000_vocab(454,"泳ぐ","to swim","oyogu","Godan Verb, Intransitive","およぐ","Sport","プールで泳ぐのが好きです。/ ぷーるでおよぐのがすきです。/ Pūru de oyogu no ga suki desu. / I like swimming in the pool.",1,"oyog");
first_1000_vocab455 = new first_1000_vocab(455,"練習","practice; practicing","renshuu","Noun, Suru Verb","れんしゅう","Sport","練習を重ねることで上達します。/ れんしゅうをかさねることでじょうたつします。/ Renshū o kasaneru koto de jōtatsu shimasu. / You improve by repeating practice.",1,"suru");
first_1000_vocab456 = new first_1000_vocab(456,"散歩","walk; stroll","sanpo","Noun, Suru Verb","さんぽ","Sport","毎日散歩に出かけます。/ まいにちさんぽにでかけます。/ Mainichi sanpo ni dekakemasu. / I go for a walk every day.",1,"suru");
first_1000_vocab457 = new first_1000_vocab(457,"難しい","difficult","muzukashii","い-adjective","むずかしい","Sport","この問題は難しいです。/ このもんだいはむずかしいです。/ Kono mondai wa muzukashii desu. / This problem is difficult.",1,"");
first_1000_vocab458 = new first_1000_vocab(458,"嫌い","hate","kirai","Noun, な-adjective","きらい","Sport","彼は野菜が嫌いです。/ かれは やさいが きらい です。/ Kare wa yasai ga kirai desu. / He dislikes vegetables.",1,"");
first_1000_vocab459 = new first_1000_vocab(459,"困る","to be troubled","komaru","Godan Verb, Intransitive","こまる","Sport","困ったことがあったら助けてください。/ こまったことがあったらたすけてください。/ Komatta koto ga attara tasukete kudasai. / Please help me if I have any problems.",1,"komar");
first_1000_vocab460 = new first_1000_vocab(460,"撮る","to take a photo or record a film","toru","Godan Verb, Transitive","とる","Sport","美しい風景を写真に撮りました。/ うつくしいふうけいをしゃしんにとりました。/ Utsukushii fūkei o shashin ni torimashita. / I took a photo of a beautiful landscape.",1,"tor");
first_1000_vocab461 = new first_1000_vocab(461,"秋","autumn; fall","aki","Noun","あき","season","秋には紅葉が美しいです。/ あきにはこうようがうつくしいです。/ Aki niwa kōyō ga utsukushii desu. / The autumn foliage is beautiful in autumn.",1,"");
first_1000_vocab462 = new first_1000_vocab(462,"冬","winter","fuyu","Noun","ふゆ","season","冬には雪が降ります。/ ふゆにはゆきがふります。/ Fuyu niwa yuki ga furimasu. / It snows in winter.",1,"");
first_1000_vocab463 = new first_1000_vocab(463,"春","spring; springtime","haru","Noun","はる","season","春には花が咲きます。/ はるにははながさきます。/ Haru niwa hana ga sakimasu. / Flowers bloom in spring.",1,"");
first_1000_vocab464 = new first_1000_vocab(464,"暇","free time","hima","Noun, な-adjective","ひま","seasons","暇な時間に本を読むのが好きです。/ ひまなじかんにほんをよむのがすきです。/ Hima na jikan ni hon o yomu no ga suki desu. / I like to read books in my free time.",1,"");
first_1000_vocab465 = new first_1000_vocab(465,"夏","summer","natsu","Noun","なつ","seasons","夏は暑いですが、海に行くのが楽しみです。/ なつはあついですが、うみにいくのがたのしみです。/ Natsu wa atsui desu ga, umi ni iku no ga tanoshimi desu. / Summer is hot, but I'm looking forward to going to the beach.",1,"");
first_1000_vocab466 = new first_1000_vocab(466,"夏休み","summer vacation; summer holiday","natsuyasumi","Noun","なつやすみ","seasons","夏休みに旅行に行く予定です。/ なつやすみにりょこうにいくよていです。/ Natsuyasumi ni ryokō ni iku yotei desu. / I have plans to go on a trip during the summer vacation.",1,"");
first_1000_vocab467 = new first_1000_vocab(467,"遊ぶ","to play; to enjoy oneself","asobu","Godan Verb, Intransitive","あそぶ","event","友達と公園で遊びました。/ ともだちとこうえんであそびました。/ Tomodachi to kōen de asobimashita. / I played at the park with my friends.",1,"asob");
first_1000_vocab468 = new first_1000_vocab(468,"音楽","music","ongaku","Noun","おんがく","events","音楽を聴くことは心を豊かにします。/ おんがくをきくことはこころをゆたかにします。/ Ongaku o kiku koto wa kokoro o yutaka ni shimasu. / Listening to music enriches the soul.",1,"");
first_1000_vocab469 = new first_1000_vocab(469,"楽しい","enjoyable; fun","tanoshii","い-adjective","たのしい","events","楽しい時間を過ごしました。/ たのしいじかんをすごしました。/ Tanoshii jikan o sugoshimashita. / I had a great time.",1,"");
first_1000_vocab470 = new first_1000_vocab(470,"時間","time; hour(s)","jikan","Noun","じかん","travel","時間が足りなくて急いでいます。/ じかんがたりなくていそいでいます。/ Jikan ga tarinakute isoide imasu. / I'm in a hurry because I don't have enough time.",1,"");
first_1000_vocab471 = new first_1000_vocab(471,"開ける","to open (a door, etc.); to unwrap (e.g. parcel, package); to unlock","akeru","Ichidan Verb, Transitive","あける","shopping","ドアを開けて部屋に入りました。/ ドアをあけてへやにはいりました。/ Doa o akete heya ni hairimashita. / I opened the door and entered the room.",1,"ake");
first_1000_vocab472 = new first_1000_vocab(472,"開く","to open (e.g. doors, business, etc)","aku","Godan Verb, Intransitive","あく","shopping","花が開くと美しいです。/ はながひらくとうつくしいです。/ Hana ga hiraku to utsukushii desu. / Flowers are beautiful when they bloom.",1,"ak");
first_1000_vocab473 = new first_1000_vocab(473,"会う","to meet; to encounter; to see","au","Godan Verb, Intransitive","あう","shopping","友達に会う約束をしました。/ ともだちにあうやくそくをしました。/ Tomodachi ni au yakusoku o shimashita. / I made a promise to meet a friend.",1,"a");
first_1000_vocab474 = new first_1000_vocab(474,"デパート","department store","depaato","Noun","","shopping","デパートでお買い物をします。/ デパートでおかいものをします。/ Depāto de o-kaimono o shimasu. / I go shopping at the department store.",3,"");
first_1000_vocab475 = new first_1000_vocab(475,"古い","old (not used for people)","furui","い-adjective","ふるい","shopping","古い建物が町にあります。/ ふるいたてものがまちにあります。/ Furui tatemono ga machi ni arimasu. / There are old buildings in the town.",1,"");
first_1000_vocab476 = new first_1000_vocab(476,"貼る","to stick; to paste","haru","Godan Verb, Transitive","はる","shopping","手紙を壁に貼りました。/ てがみをかべにはりました。/ Tegami o kabe ni harimashita. / I stuck the letter to the wall.",1,"har");
first_1000_vocab477 = new first_1000_vocab(477,"忙しい","busy","isogashii","い-adjective","いそがしい","shopping","最近忙しくて時間がありません。/ さいきんいそがしくてじかんがありません。/ Saikin isogashikute jikan ga arimasen. / I've been busy lately and don't have time.",1,"");
first_1000_vocab478 = new first_1000_vocab(478,"一緒","together; at the same time; same; identical","issho","Noun","いっしょ","shopping","一緒に映画を見に行きましょう。/ いっしょにえいがをみにいきましょう。/ Issho ni eiga o mi ni ikimashō. / Let's go watch a movie together.",1,"");
first_1000_vocab479 = new first_1000_vocab(479,"かばん","bag; basket​","kaban","Noun","","shopping","かばんの中に財布が入っています。/ かばんのなかにさいふがはいっています。/ Kaban no naka ni saifu ga haitte imasu. / There is a wallet inside the bag.",2,"");
first_1000_vocab480 = new first_1000_vocab(480,"買い物","shopping; purchased goods","kaimono","Noun","かいもの","shopping","買い物に行って必要なものを揃えました。/ かいものにいってひつようなものをそろえました。/ Kaimono ni itte hitsuyōna mono o soroemashita. / I went shopping and got everything I needed.",1,"");
first_1000_vocab481 = new first_1000_vocab(481,"軽い","light (weight)","karui","い-adjective","かるい","shopping","このバッグはとても軽いです。/ このバッグはとてもかるいです。/ Kono baggu wa totemo karui desu. / This bag is very light.",1,"");
first_1000_vocab482 = new first_1000_vocab(482,"買う","to buy; to purchase","kau","Godan Verb, Transitive","かう","shopping","新しい本を買いました。/ あたらしいほんをかいました。/ Atarashii hon o kaimashita. / I bought a new book.",1,"ka");
first_1000_vocab483 = new first_1000_vocab(483,"切手","stamp (postage)","kitte","Noun","きって","shopping","手紙を送るために切手が必要です。/ てがみをおくるためにきってがひつようです。/ Tegami o okuru tame ni kitte ga hitsuyō desu. / Stamps are necessary to send a letter.",1,"");
first_1000_vocab484 = new first_1000_vocab(484,"店","store; shop; establishment; restaurant","mise","Noun","みせ","shopping","町には多くのお店があります。/ まちにはおおくのおみせがあります。/ Machi ni wa ōku no omise ga arimasu. / There are many shops in the town.",1,"");
first_1000_vocab485 = new first_1000_vocab(485,"持つ","to hold","motsu","Godan verb","もつ","shopping","彼はいつもスマートフォンを持っています。/ かれはいつもスマートフォンをもっています。/ Kare wa itsumo sumātofon o motteimasu. / He always has a smartphone with him.",1,"mot/motch");
first_1000_vocab486 = new first_1000_vocab(486,"お金","money","okane","Noun","おかね","shopping","お金を節約することは重要です。/ おかねをせつやくすることはじゅうようです。/ Okane o setsuyaku suru koto wa jūyō desu. / Saving money is important.",1,"");
first_1000_vocab487 = new first_1000_vocab(487,"高い","high; tall; expensive; above average","takai","い-adjective","たかい","shopping","その時計は高いですが、品質が優れています。/ そのとけいはたかいですが、ひんしつがすぐれています。/ Sono tokei wa takai desu ga, hinshitsu ga sugureteimasu. / That watch is expensive, but the quality is excellent.",1,"");
first_1000_vocab488 = new first_1000_vocab(488,"売る","to sell","uru","Godan Verb, Transitive","うる","shopping","古い家具を売りました。/ ふるいかぐをうりました。/ Furui kagu o urimashita. / I sold old furniture.",1,"ur");
first_1000_vocab489 = new first_1000_vocab(489,"喫茶店","coffee shop; tearoom; cafe","kissaten","Noun","きっさてん","shopping","近くの喫茶店でコーヒーを飲みましょう。/ ちかくのきっさてんでこーひーをのみましょう。/ Chikaku no kissaten de kōhī o nomimashō. / Let's have coffee at a nearby cafe.",1,"");
first_1000_vocab490 = new first_1000_vocab(490,"もっと","more; longer; further","motto","Adverb","","shopping","もっと頑張りましょう！/ もっとがんばりましょう！/ Motto ganbarimashō! / Let's try harder!",2,"");
first_1000_vocab491 = new first_1000_vocab(491,"朝","morning","asa","Noun","あさ","time","朝ごはんを食べます。/ あさごはんをたべます。/ Asa gohan o tabemasu. / I eat breakfast.",1,"");
first_1000_vocab492 = new first_1000_vocab(492,"明後日","day after tomorrow","asatte","Noun","あさって","time","明後日は予定があります。/ あさってはよていがあります。/ Asatte wa yotei ga arimasu. / I have plans the day after tomorrow.",1,"");
first_1000_vocab493 = new first_1000_vocab(493,"午後","afternoon; p.m.","gogo","Noun","ごご","time","午後は仕事が忙しいです。/ ごごはしごとがいそがしいです。/ Gogo wa shigoto ga isogashii desu. / I'm busy with work in the afternoon.",1,"");
first_1000_vocab494 = new first_1000_vocab(494,"午前","morning; a.m.","gozen","Noun","ごぜん","time","午前中に買い物に行きます。/ ごぜんちゅうにかいものにいきます。/ Gozenchū ni kaimono ni ikimasu. / I'll go shopping in the morning.",1,"");
first_1000_vocab495 = new first_1000_vocab(495,"半","half; semi-; half-past","han","Noun","はん","time","時間は3時半です。/ じかんはさんじはんです。/ Jikan wa san-ji han desu. / The time is half past 3.",1,"");
first_1000_vocab496 = new first_1000_vocab(496,"昼","noon; midday; daytime; lunch","hiru","Noun","ひる","time","昼ごはんはお弁当を食べました。/ ひるごはんはおべんとうをたべました。/ Hirugohan wa obentō o tabemashita. / I had a bento for lunch.",1,"");
first_1000_vocab497 = new first_1000_vocab(497,"一日","one day, all day","ichinichi","Noun, Adverbial Noun","いちにち","time","一日中雨が降っていました。/ いちにちじゅうあめがふっていました。/ Ichinichijū ame ga futteimashita. / It rained all day.",1,"");
first_1000_vocab498 = new first_1000_vocab(498,"今","now; the present time; soon","ima","Noun, Adverbial Noun","いま","time","今、友達と話しています。/ いま、ともだちとはなしています。/ Ima, tomodachi to hanashiteimasu. / I'm talking to a friend right now.",1,"");
first_1000_vocab499 = new first_1000_vocab(499,"今朝","this morning","kesa","Noun, Temporal noun","けさ","time","今朝、散歩に行きました。/ けさ、さんぽにいきました。/ Kesa, sanpo ni ikimashita. / I went for a walk this morning.",1,"");
first_1000_vocab500 = new first_1000_vocab(500,"先","previous; prior; first; earlier","saki","Noun, Prefix, Suffix","さき","time","先週、旅行に行きました。/ せんしゅう、りょこうにいきました。/ Senshū, ryokō ni ikimashita. / I went on a trip last week.",1,"");
first_1000_vocab501 = new first_1000_vocab(501,"歩く","to walk","aruku","Godan Verb, Intransitive","あるく","travel","歩いて学校に行きます。/ あるいてがっこうにいきます。/ Aruite gakkō ni ikimasu. / I go to school on foot.",1,"aruk");
first_1000_vocab502 = new first_1000_vocab(502,"バス","bus","basu","Noun","","travel","バスで公園に行きます。/ バスでこうえんにいきます。/ Basu de kōen ni ikimasu. / I go to the park by bus.",3,"");
first_1000_vocab503 = new first_1000_vocab(503,"電車","train; electric train","densha","Noun","でんしゃ","travel","電車で旅行します。/ でんしゃでりょこうします。/ Densha de ryokō shimasu. / I will travel by train.",1,"");
first_1000_vocab504 = new first_1000_vocab(504,"走る","to run","hashiru","Godan Verb, Intransitive","はしる","travel","公園で走ります。/ こうえんではしります。/ Kōen de hashirimasu. / I run in the park.",1,"hashir");
first_1000_vocab505 = new first_1000_vocab(505,"飛行機","airplane; aircraft","hikouki","Noun","ひこうき","travel","飛行機で海外に行きます。/ ひこうきでかいがいにいきます。/ Hikōki de kaigai ni ikimasu. / I will go abroad by plane.",1,"");
first_1000_vocab506 = new first_1000_vocab(506,"行く","to go; to move","iku","Godan Verb, Intransitive","いく","travel","映画館に行きたいです。/ えいがかんにいきたいです。/ Eigakan ni ikitai desu. / I want to go to the movie theater.",1,"ik");
first_1000_vocab507 = new first_1000_vocab(507,"自動車","automobile; motorcar; motor vehicle; car","jidousha","Noun","じどうしゃ","travel","自動車でドライブします。/ じどうしゃでどらいぶします。/ Jidōsha de doraibu shimasu. / I will go for a drive by car.",1,"");
first_1000_vocab508 = new first_1000_vocab(508,"自転車","bicycle","jitensha","Noun","じてんしゃ","travel","自転車で学校に行きます。/ じてんしゃでがっこうにいきます。/ Jitensha de gakkō ni ikimasu. / I go to school by bicycle.",1,"");
first_1000_vocab509 = new first_1000_vocab(509,"切符","ticket","kippu","Noun","きっぷ","travel","切符を買って旅行します。/ きっぷをかってりょこうします。/ Kippu o katte ryokō shimasu. / I will buy a ticket and travel.",1,"");
first_1000_vocab510 = new first_1000_vocab(510,"キロメートル","kilometer","kiro meetoru","Noun","","travel","この道は10キロメートルです。/ このみちは10キロメートルです。/ Kono michi wa 10 kiromētoru desu. / This road is 10 kilometers long.",3,"");
first_1000_vocab511 = new first_1000_vocab(511,"来る","to come","kuru","Intransitive Verb","くる","travel","友達が明日来ます。/ ともだちがあしたきます。/ Tomodachi ga ashita kimasu. / My friend is coming tomorrow.",1,"kur");
first_1000_vocab512 = new first_1000_vocab(512,"車","car; automobile; vehicle","kuruma","Noun","くるま","travel","車で買い物に行きます。/ くるまでかいものにいきます。/ Kuruma de kaimono ni ikimasu. / I will go shopping by car.",1,"");
first_1000_vocab513 = new first_1000_vocab(513,"長い","long (distance)​; long (time); lengthy.","nagai","い-adjective","ながい","travel","この橋はとても長いです。/ このはしはとてもながいです。/ Kono hashi wa totemo nagai desu. / This bridge is very long.",1,"");
first_1000_vocab514 = new first_1000_vocab(514,"並ぶ","to line up,to stand in a line","narabu","Godan Verb, Intransitive","ならぶ","travel","バス停で人が並んでいます。/ バスていでひとがならんでいます。/ Basutei de hito ga narandeimasu. / People are lining up at the bus stop.",1,"narab");
first_1000_vocab515 = new first_1000_vocab(515,"荷物","luggage; baggage","nimotsu","Noun","にもつ","travel","旅行のために荷物を準備します。/ りょこうのためににもつをじゅんびします。/ Ryokō no tame ni nimotsu o junbi shimasu. / I will prepare my luggage for the trip.",1,"");
first_1000_vocab516 = new first_1000_vocab(516,"乗る","to get on (train, plane, bus, ship, etc.)","noru","Godan Verb, Intransitive","のる","travel","電車に乗って学校に行きます。/ でんしゃにのってがっこうにいきます。/ Densha ni notte gakkō ni ikimasu. / I go to school by train.",1,"nor");
first_1000_vocab517 = new first_1000_vocab(517,"降りる","to get off","oriru","Ichidan Verb, Intransitive","おりる","travel","バスから降りる前にベルを押してください。/ バスからおりるまえにベルをおしてください。/ Basu kara oriru mae ni beru o oshite kudasai. / Please press the bell before getting off the bus.",1,"oi");
first_1000_vocab518 = new first_1000_vocab(518,"旅行","travel; trip; journey; excursion; tour","ryokou","Noun, Verb, Suru verb","りょこう","travel","夏休みに旅行に行きます。/ なつやすみにりょこうにいきます。/ Natsuyasumi ni ryokō ni ikimasu. / I will go on a trip during the summer vacation.",1,"");
first_1000_vocab519 = new first_1000_vocab(519,"タクシー","taxi","takushii","Noun","","travel","タクシーで空港に向かいます。/ タクシーでくうこうにむかいます。/ Takushī de kūkō ni mukaimasu. / I am heading to the airport by taxi.",3,"");
first_1000_vocab520 = new first_1000_vocab(520,"着く","to arrive at","tsuku","Godan Verb, Intransitive","つく","travel","列車は5時に東京駅に着きます。/ れっしゃはごじにとうきょうえきにつきます。/ Ressha wa go-ji ni Tōkyō-eki ni tsukimasu. / The train will arrive at Tokyo Station at 5 o'clock.",1,"tsuk");
first_1000_vocab521 = new first_1000_vocab(521,"雨","rain","ame","Noun","あめ","weather","今日は雨が降っています。/ きょうはあめがふっています。/ Kyō wa ame ga futteimasu. / It's raining today.",1,"");
first_1000_vocab522 = new first_1000_vocab(522,"暖かい","warm","atatakai","い-adjective","あたたかい","weather","春は暖かいです。/ はるはあたたかいです。/ Haru wa atatakai desu. / Spring is warm.",1,"");
first_1000_vocab523 = new first_1000_vocab(523,"暑い","hot; sultry","atsui","い-adjective","あつい","weather","夏は暑いです。/ なつはあついです。/ Natsu wa atsui desu. / Summer is hot.",1,"");
first_1000_vocab524 = new first_1000_vocab(524,"熱い","hot","atsui","い-adjective","あつい","weather","コーヒーが熱いです。/ コーヒーがあついです。/ Kōhī ga atsui desu. / The coffee is hot.",1,"");
first_1000_vocab525 = new first_1000_vocab(525,"吹く","to blow (of the wind)","fuku","Godan Verb, Intransitive","ふく","weather","風が強く吹いています。/ かぜがつよくふいています。/ Kaze ga tsuyoku fuiteimasu. / The wind is blowing strongly.",1,"fuk");
first_1000_vocab526 = new first_1000_vocab(526,"降る","to fall","furu","Godan Verb, Intransitive","ふる","weather","雪が降っています。/ ゆきがふっています。/ Yuki ga futteimasu. / It's snowing.",1,"fur");
first_1000_vocab527 = new first_1000_vocab(527,"晴れ","clear weather","hare","Noun","はれ","weather","明日は晴れる予報です。/ あしたははれるよほうです。/ Ashita wa hareru yohō desu. / Tomorrow is forecasted to be sunny.",1,"");
first_1000_vocab528 = new first_1000_vocab(528,"晴れる","to be sunny","hareru","Ichidan Verb, Intransitive","はれる","weather","雨がやんで晴れました。/ 雨がやんで晴れました。/ Ame ga yande hare mashita. / The rain has stopped and it's sunny now.",1,"hare");
first_1000_vocab529 = new first_1000_vocab(529,"風","wind","kaze","Noun","かぜ","weather","風が心地よいです。/ 風がここちよいです。/ Kaze ga kokochi yoi desu. / The wind feels pleasant.",1,"");
first_1000_vocab530 = new first_1000_vocab(530,"曇り","cloudiness; cloudy weather","kumori","Noun","くもり","weather","今日は曇りのち雨です。/ きょうはくもりのちあめです。/ Kyō wa kumori nochi ame desu. / Today is cloudy with rain later.",1,"");
first_1000_vocab531 = new first_1000_vocab(531,"曇る","to become cloudy, to become dim","kumoru","Godan Verb, Intransitive","くもる","weather","空が曇っています。/ そらがくもっています。/ Sora ga kumotte imasu. / The sky is cloudy.",1,"kumor");
first_1000_vocab532 = new first_1000_vocab(532,"咲く","to bloom","saku","Godan Verb, Intransitive","さく","weather","花がきれいに咲いています。/ はながきれいにさいています。/ Hana ga kirei ni saite imasu. / The flowers are blooming beautifully.",1,"sak");
first_1000_vocab533 = new first_1000_vocab(533,"寒い","cold","samui","い-adjective","さむい","weather","冬はとても寒いです。/ ふゆはとてもさむいです。/ Fuyu wa totemo samui desu. / Winter is very cold.",1,"");
first_1000_vocab534 = new first_1000_vocab(534,"涼しい","refreshing, cool","suzushii","い-adjective","すずしい","weather","外は涼しい風が吹いています。/ そとはすずしいかぜがふいています。/ Soto wa suzushii kaze ga fuite imasu. / There is a cool breeze blowing outside.",1,"");
first_1000_vocab535 = new first_1000_vocab(535,"天気","weather; the elements","tenki","Noun","てんき","weather","今日の天気は晴れです。/ きょうのてんきははれです。/ Kyō no tenki wa hare desu. / Today's weather is sunny.",1,"");
first_1000_vocab536 = new first_1000_vocab(536,"雪","snow","yuki","Noun","ゆき","weather","雪が積もっています。/ ゆきがつもっています。/ Yuki ga tsumotte imasu. / Snow has piled up.",1,"");
first_1000_vocab537 = new first_1000_vocab(537,"空","sky; the air","sora","Noun","そら","weather","空にはたくさんの星が見えます。/ そらにはたくさんのほしをみえます。/ Sora ni wa takusan no hoshi ga miemasu. / Many stars are visible in the sky.",1,"");
first_1000_vocab538 = new first_1000_vocab(538,"休み","rest; vacation; holiday","yasumi","Noun","やすみ","seasons","明日は休みです。/ あしたはやすみです。/ Ashita wa yasumi desu. / Tomorrow is a day off.",1,"");
first_1000_vocab539 = new first_1000_vocab(539,"休む","to be absent; to take a day off; to rest","yasumu","Godan Verb, Intransitive","やすむ","seasons","疲れたので少し休みます。/ つかれたのですこしやすみます。/ Tsukareta node sukoshi yasumimasu. / I'm tired, so I'll take a short rest.",1,"yasum");
first_1000_vocab540 = new first_1000_vocab(540,"嫌","unpleasant","iya","Noun, な-adjective","いや","seasons","その食べ物が嫌いです。/ そのたべものがきらいです。/ Sono tabemono ga kirai desu. / I don't like that food.",1,"");
first_1000_vocab541 = new first_1000_vocab(541,"字引","dictionary","jibiki","Noun","じびき","wriitng","字引を使って漢字の意味を調べます。/ じびきをつかってかんじのいみをしらべます。/ Jibiki o tsukatte kanji no imi o shirabemasu. / I use a dictionary to look up the meanings of kanji.",1,"");
first_1000_vocab542 = new first_1000_vocab(542,"ボールペン","ball-point pen","boorupen","Noun","","writing","ボールペンで手紙を書きます。/ ボールペンでてがみをかきます。/ Bōrupen de tegami o kakimasu. / I write a letter with a ballpoint pen.",3,"");
first_1000_vocab543 = new first_1000_vocab(543,"文章","sentence","bunshou","Noun","ぶんしょう","writing","この本には素晴らしい文章がたくさんあります。/ このほんにはすばらしいぶんしょうがたくさんあります。/ Kono hon ni wa subarashii bunshō ga takusan arimasu. / This book has many wonderful sentences.",1,"");
first_1000_vocab544 = new first_1000_vocab(544,"封筒","envelope","fuutou","Noun","ふうとう","writing","手紙を封筒に入れて送ります。/ てがみをふうとうにいれておくります。/ Tegami o fūtō ni irete okurimasu. / I put the letter in an envelope and send it.",1,"");
first_1000_vocab545 = new first_1000_vocab(545,"葉書","postcard","hagaki","Noun","はがき","writing","旅行先から友達に葉書を送ります。/ りょこうさきからともだちにはがきをおくります。/ Ryokōsaki kara tomodachi ni hagaki o okurimasu. / I send a postcard to my friend from my travel destination.",1,"");
first_1000_vocab546 = new first_1000_vocab(546,"本","book; volume; script","hon","Noun","ほん","writing","図書館で本を借ります。/ としょかんでほんをかります。/ Toshokan de hon o karimasu. / I borrow books from the library.",1,"");
first_1000_vocab547 = new first_1000_vocab(547,"辞書","dictionary","jisho","Noun","じしょ","writing","新しい言葉を辞書で調べます。/ あたらしいことばをじしょでしらべます。/ Atarashii kotoba o jisho de shirabemasu. / I look up new words in the dictionary.",1,"");
first_1000_vocab548 = new first_1000_vocab(548,"書く","to write; to compose; to pen; to draw","kaku","Godan Verb, Transitive","かく","writing","手紙を書いて送ります。/ てがみをかいておくります。/ Tegami o kaite okurimasu. / I write a letter and send it.",1,"kak");
first_1000_vocab549 = new first_1000_vocab(549,"紙","paper","kami","Noun","かみ","writing","ノートに書くために紙を使います。/ ノートにかくためにかみをつかいます。/ Nōto ni kaku tame ni kami o tsukaimasu. / I use paper to write in my notebook.",1,"");
first_1000_vocab550 = new first_1000_vocab(550,"漢字","kanji","kanji","Noun","かんじ","writing","日本語の文章にはたくさんの漢字があります。/ にほんごのぶんしょうにはたくさんのかんじがあります。/ Nihongo no bunshō ni wa takusan no kanji ga arimasu. / There are many kanji characters in Japanese sentences.",1,"");
first_1000_vocab551 = new first_1000_vocab(551,"言葉","word; words","kotoba","Noun","ことば","writing","日本語の言葉を勉強します。/ にほんごのことばをべんきょうします。/ Nihongo no kotoba o benkyō shimasu. / I study Japanese words.",1,"");
first_1000_vocab552 = new first_1000_vocab(552,"日記","diary; journal","nikki","Noun","にっき","writing","毎日日記を書いています。/ まいにちにっきをかいています。/ Mainichi nikki o kaiteimasu. / I write a diary every day.",1,"");
first_1000_vocab553 = new first_1000_vocab(553,"作文","writing; composition","sakubun","Noun","さくぶん","writing","学校で作文を書きます。/ がっこうでさくぶんをかきます。/ Gakkō de sakubun o kakimasu. / I write compositions at school.",1,"");
first_1000_vocab554 = new first_1000_vocab(554,"新聞","newspaper","shinbun","Noun","しんぶん","writing","毎朝新聞を読みます。/ まいあさしんぶんをよみます。/ Maiasa shinbun o yomimasu. / I read the newspaper every morning.",1,"");
first_1000_vocab555 = new first_1000_vocab(555,"手紙","Letter (message)​","tegami","Noun","てがみ","writing","友達に手紙を書きます。/ ともだちにてがみをかきます。/ Tomodachi ni tegami o kakimasu. / I write a letter to my friend.",1,"");
first_1000_vocab556 = new first_1000_vocab(556,"雑誌","magazine","zasshi","Noun","ざっし","writing","時々、電車で雑誌を読みます。/ ときどき、でんしゃでざっしをよみます。/ Tokidoki, densha de zasshi o yomimasu. / Sometimes I read magazines on the train.",1,"");
first_1000_vocab557 = new first_1000_vocab(557,"エレベーター","elevator","erebeetaa","Noun","","work","エレベーターはいつも遅いです。/ エレベーターはいつもおそいです。/ Erebētā wa itsumo osoi desu. / The elevator is always slow.",3,"");
first_1000_vocab558 = new first_1000_vocab(558,"働く","to work","hataraku","Godan Verb, Intransitive","はたらく","work","私の父は大きな会社で働いています。/ わたしのちちはおおきなかいしゃではたらいています。/ Watashi no chichi wa ōkina kaisha de hataraiteimasu. / My father works at a big company.",1,"hatarak");
first_1000_vocab559 = new first_1000_vocab(559,"コピー","copy; photocopy","kopii","Noun, Suru Verb","","work","重要な書類をコピーします。/ じゅうようなしょるいをコピーします。/ Jūyōna shorui o kopī shimasu. / I make copies of important documents.",3,"suru");
first_1000_vocab560 = new first_1000_vocab(560,"背広","business suit","sebiro","Noun","せびろ","work","彼は背広を着て会議に出席しました。/ かれはせびろをきてかいぎにしゅっせきしました。/ Kare wa sebiro o kite kaigi ni shusseki shimashita. / He wore a suit and attended the meeting.",1,"");
first_1000_vocab561 = new first_1000_vocab(561,"新しい","new; novel; fresh; recent; latest","atarashii","い-adjective","あたらしい","music","彼は新しい車を買いました。/ かれはあたらしいくるまをかいました。/ Kare wa atarashii kuruma o kaimashita. / He bought a new car.",1,"");
first_1000_vocab562 = new first_1000_vocab(562,"声","voice","koe","Noun","こえ","Music","彼女の声はとても美しいです。/ かのじょのこえはとてもうつくしいです。/ Kanojo no koe wa totemo utsukushii desu. / Her voice is very beautiful.",1,"");
first_1000_vocab563 = new first_1000_vocab(563,"面白い","interesting","omoshiroi","い-adjective","おもしろい","music","その映画は面白かったです。/ そのえいがはおもしろかったです。/ Sono eiga wa omoshirokatta desu. / That movie was interesting.",1,"");
first_1000_vocab564 = new first_1000_vocab(564,"詰まらない","boring","tsumaranai","い-adjective","つまらない","music","この本は全く詰まらないです。/ このほんはまったくつまらないです。/ Kono hon wa mattaku tsumaranai desu. / This book is not interesting at all.",1,"");
first_1000_vocab565 = new first_1000_vocab(565,"歌","song","uta","Noun","うた","music","彼女は美しい歌を歌います。/ かのじょはうつくしいうたをうたいます。/ Kanojo wa utsukushii uta o utaimasu. / She sings beautiful songs.",1,"");
first_1000_vocab566 = new first_1000_vocab(566,"歌う","to sing","utau","Godan verb, Intransitive","うたう","music","彼は毎日シャワーを浴びながら歌います。/ かれはまいにちシャワーをあびながらうたいます。/ Kare wa mainichi shawā o abinagara utaimasu. / He sings while taking a shower every day.",1,"uta");
first_1000_vocab567 = new first_1000_vocab(567,"下手","unskillful; poor; awkward​","heta","Noun, な-adjective","へた","Music","彼はピアノを下手です。/ かれはピアノをへたです。/ Kare wa piano o heta desu. / He is not good at playing the piano.",1,"");
first_1000_vocab568 = new first_1000_vocab(568,"弾く","to play (a stringed or keyboard instrument)​`","hiku","Godan Verb, Transitive","ひく","Music","彼はギターを上手に弾きます。/ かれはギターをじょうずにひきます。/ Kare wa gitā o jōzu ni hikimasu. / He plays the guitar well.",1,"hik");
first_1000_vocab569 = new first_1000_vocab(569,"聞く","to hear; to listen (to music); to ask; to learn of","kiku","Godan Verb, Transitive","きく","Music","私は音楽を聞くのが好きです。/ わたしはおんがくをきくのがすきです。/ Watashi wa ongaku o kiku no ga suki desu. / I enjoy listening to music.",1,"kik");
first_1000_vocab570 = new first_1000_vocab(570,"静か","quiet","shizuka","な-adjective","しずか","","図書館で静かにしてください。/ としょかんでしずかにしてください。/ Toshokan de shizuka ni shite kudasai. / Please be quiet in the library.",1,"");
first_1000_vocab571 = new first_1000_vocab(571,"起きる","to get up; to wake up","okiru","Ichidan Verb, Intransitive","おきる","home","毎朝、早く起きることができます。/ まいあさ、はやくおきることができます。/ Maiasa, hayaku okiru koto ga dekimasu. / I can wake up early every morning.",1,"oki");
first_1000_vocab572 = new first_1000_vocab(572,"外","outside; exterior;","soto","Noun","そと","home","外は暑いですね。/ そとはあついですね。/ Soto wa atsui desu ne. / It's hot outside, isn't it?",1,"");
first_1000_vocab573 = new first_1000_vocab(573,"掃除","to clean, to sweep","souji","Noun, Suru verb","そうじ","home","週末に部屋を掃除します。/ しゅうまつにへやをそうじします。/ Shūmatsu ni heya o sōji shimasu. / I clean my room on weekends.",1,"*");
first_1000_vocab574 = new first_1000_vocab(574,"ストーブ","heater; stove","sutoobu","Noun","","home","冬にはストーブを使います。/ ふゆにはすとーぶをつかいます。/ Fuyu ni wa sutōbu o tsukaimasu. / We use a heater in winter.",3,"");
first_1000_vocab575 = new first_1000_vocab(575,"隣","next door to","tonari","Noun","となり","home","彼女は私の隣に座っています。/ かのじょはわたしのとなりにすわっています。/ Kanojo wa watashi no tonari ni suwatte imasu. / She is sitting next to me.",1,"");
first_1000_vocab576 = new first_1000_vocab(576,"机","desk","tsukue","Noun","つくえ","home","机の上に本があります。/ つくえのうえにほんがあります。/ Tsukue no ue ni hon ga arimasu. / There is a book on the desk.",1,"");
first_1000_vocab577 = new first_1000_vocab(577,"座る","to sit","suwaru","Godan Verb, Intransitive","すわる","home","彼は椅子に座っています。/ かれはいすにすわっています。/ Kare wa isu ni suwatte imasu. / He is sitting on the chair.",1,"suwar");
first_1000_vocab578 = new first_1000_vocab(578,"フィルム","film","firumu","Noun","","home","カメラにフィルムを入れました。/ かめらにふぃるむをいれました。/ Kamera ni firumu o iremashita. / I loaded the film into the camera.",3,"");
first_1000_vocab579 = new first_1000_vocab(579,"温い","luke warm","nurui","い-adjective","ぬるい","weather","お茶が温いです。/ おちゃがぬるいです。/ Ocha ga nurui desu. / The tea is lukewarm.",1,"");
first_1000_vocab580 = new first_1000_vocab(580,"ニュース","news","nyuusu","Noun","","","テレビでニュースを見ました。/ テレビでニュースをみました。/ Terebi de nyūsu o mimashita. / I watched the news on TV.",3,"");
first_1000_vocab581 = new first_1000_vocab(581,"取る","to take; to pick up; to harvest; to earn; to win; to choose","toru","Godan Verb, Transitive","とる","work","本を図書館から取りました。/ ほんをとしょかんからとりました。/ Hon o toshokan kara torimashita. / I borrowed a book from the library.",1,"tor");
first_1000_vocab582 = new first_1000_vocab(582,"建物","building","tatemono","Noun","たてもの","work","その建物は高いですね。/ そのたてものはたかいですね。/ Sono tatemono wa takai desu ne. / That building is tall, isn't it?",1,"");
first_1000_vocab583 = new first_1000_vocab(583,"使う","to use","tsukau","Godan Verb, Transitive","つかう","work","毎日スマートフォンを使います。/ まいにちすまーとふぉんをつかいます。/ Mainichi sumātofon o tsukaimasu. / I use a smartphone every day.",1,"tsuka");
first_1000_vocab584 = new first_1000_vocab(584,"付ける","to attach; affix; add; apply","tsukeru","Ichidan Verb, Transitive","つける","work","ライトを付けてください。/ らいとをつけてください。/ Raito o tsukete kudasai. / Please turn on the light.",1,"tsuke");
first_1000_vocab585 = new first_1000_vocab(585,"作る","to make","tsukuru","Godan Verb, Transitive","つくる","work","料理を作ります。/ りょうりをつくります。/ Ryōri o tsukurimasu. / I'm cooking.",1,"tsukur");
first_1000_vocab586 = new first_1000_vocab(586,"勤める","to work for someone","tsutomeru","Ichidan Verb, Transitive","つとめる","work","彼は会社で勤めています。/ かれはかいしゃでつとめています。/ Kare wa kaisha de tsutomete imasu. / He works at the company.",1,"tsume");
first_1000_vocab587 = new first_1000_vocab(587,"仕事","work; job; business","shigoto","Noun, Suru Verb","しごと","work","私は忙しい仕事です。/ わたしはいそがしいしごとです。/ Watashi wa isogashii shigoto desu. / I have a busy job.",1,"*");
first_1000_vocab588 = new first_1000_vocab(588,"鳴く","animal noise. to chirp","naku","Godan Verb, Intransitive","なく","work","朝、鳥が鳴きます。/ あさ、とりが なきます。/ Asa, tori ga nakimasu. / In the morning, birds chirp.",1,"nak");
first_1000_vocab589 = new first_1000_vocab(589,"並べる","to line up,to set up","naraberu","Verb, Ichidan Verb, Transitive verb","ならべる","work","本を並べることが好きです。/ ほんをならべることがすきです。/ Hon o naraberu koto ga suki desu. / I enjoy arranging books.",1,"narabe");
first_1000_vocab590 = new first_1000_vocab(590,"登る","to climb","noboru","Godan Verb, Intransitive","のぼる","work","山に登りたいです。/ やまにのぼりたいです。/ Yama ni noboritai desu. / I want to climb a mountain.",1,"nobor");
first_1000_vocab591 = new first_1000_vocab(591,"時","time; moment; occasion; chance","toki","Noun","とき","time"," 時間を守ることは大切です。/ じかんをまもることはたいせつです。/ Jikan o mamoru koto wa taisetsu desu. / It's important to keep time.",1,"");
first_1000_vocab592 = new first_1000_vocab(592,"夜","evening; night","yoru","Noun","よる","time","夜に星がきれいです。/ よるにほしはきれいです。/ Yoru ni hoshi ga kirei desu. / The stars are beautiful at night.",1,"");
first_1000_vocab593 = new first_1000_vocab(593,"昨夜","last night","yuube","Noun","ゆうべ","time","昨夜、友達と映画を見ました。/ さくや、ともだちとえいがをみました。/ Sakuya, tomodachi to eiga o mimashita. / Last night, I watched a movie with my friends.",1,"");
first_1000_vocab594 = new first_1000_vocab(594,"夕方","evening; dusk","yuugata","Noun","ゆうがた","time","夕方に散歩に行きます。/ ゆうがたにさんぽにいきます。/ Yūgata ni sanpo ni ikimasu. / I will go for a walk in the evening.",1,"");
first_1000_vocab595 = new first_1000_vocab(595,"初めて","for the first time","hajimete","Adverb","はじめて","time","彼と初めて会いました。/ かれとはじめてあいました。/ Kare to hajimete aimashita. / I met him for the first time.",1,"");
first_1000_vocab596 = new first_1000_vocab(596,"もう一度","once more; again","mouichido","Expression","もういちど","time","もう一度やり直しましょう。/ もういちどやりなおしましょう。/ mō ichido yarinaoshimashō. / Let's try again.",1,"");
first_1000_vocab597 = new first_1000_vocab(597,"遅い","slow; time-consuming; late","osoi","い-adjective","おそい","time","彼はいつも遅いです。/ かれはいつもおそいです。/ Kare wa itsumo osoi desu. / He is always late.",1,"");
first_1000_vocab598 = new first_1000_vocab(598,"結構","splendid, enough","kekkou","Noun, Adverbial Noun, な-adjective, Adverb","けっこう","time","これで結構です。/ これでけっこうです。/ Kore de kekkō desu. / This is fine.",1,"");
first_1000_vocab599 = new first_1000_vocab(599,"消える","to disappear","kieru","Ichidan Verb, Intransitive","きえる","time","ライトが突然消えました。/ ライトがとつぜんきえました。/ Raito ga totsuzen kiemashita. / The light suddenly went out.",1,"kie");
first_1000_vocab600 = new first_1000_vocab(600,"多分","perhaps; probably","tabun","な-adjective, Adverb","たぶん","","多分明日雨が降るでしょう。/ たぶんあしたあめがふるでしょう。/ Tabun ashita ame ga furu deshō. / It will probably rain tomorrow.",1,"");
first_1000_vocab601 = new first_1000_vocab(601,"近い","near; close","chikai","い-adjective","ちかい","directions","あなたの家はここから近いですね。/ あなたのいえはここからちかいですね。/ Anata no ie wa koko kara chikai desu ne. / Your house is close from here, isn't it?",1,"");
first_1000_vocab602 = new first_1000_vocab(602,"早い","fast; early","hayai","い-adjective","はやい","directions","彼はいつも早起きです。/ かれはいつもはやおきです。/ Kare wa itsumo hayaoki desu. / He always wakes up early.",1,"");
first_1000_vocab603 = new first_1000_vocab(603,"速い","fast; quick; hasty; brisk","hayai","い-adjective","はやい","directions","彼の車はとても速いです。/ かれのくるまはとてもはやいです。/ Kare no kuruma wa totemo hayai desu. / His car is very fast.",1,"");
first_1000_vocab604 = new first_1000_vocab(604,"前","previous; before; in front; ago","mae","Noun, Suffix","まえ","directions","彼女は私の前に座っています。/ かのじょはわたしのまえにすわっています。/ Kanojo wa watashi no mae ni suwatteimasu. / She is sitting in front of me.",1,"");
first_1000_vocab605 = new first_1000_vocab(605,"待つ","to wait​","matsu","Godan Verb, Intransitive","まつ","directions","彼を待っています。/ かれをまっています。/ Kare o matteimasu. / I'm waiting for him.",1,"mat/mach");
first_1000_vocab606 = new first_1000_vocab(606,"真っ直ぐ","straight ahead,direct","massugu","Noun, Adjective, な-adjective, Adverb","まっすぐ","directions","真っ直ぐに進んでください。/ まっすぐにすすんでください。/ massugu ni susunde kudasai. / Please proceed straight.",1,"");
first_1000_vocab607 = new first_1000_vocab(607,"向こう","over there","mukou","Noun","むこう","directions","公園の向こうに見える建物が学校です。/ こうえんのむこうにみえるたてものががっこうです。/ kōen no mukō ni mieru tatemono ga gakkō desu. / The building you see beyond the park is the school.",1,"");
first_1000_vocab608 = new first_1000_vocab(608,"所","place","tokoro","Noun, Suffix","ところ","directions","あなたの所に行きます。/ あなたのところにいきます。/ anata no tokoro ni ikimasu. / I will come to your place.",1,"");
first_1000_vocab609 = new first_1000_vocab(609,"止まる","to stop; to come to a halt","tomaru","Godan Verb, Intransitive","とまる","directions","バスが停まりました。/ バスがとまりました。/ basu ga tomarimashita. / The bus has stopped.",1,"tomar");
first_1000_vocab610 = new first_1000_vocab(610,"遠い","far","tooi","い-adjective","とおい","directions","あの山は遠いですね。/ あのやまはとおいですね。/ ano yama wa tōi desu ne. / That mountain is far, isn't it?",1,"");
first_1000_vocab611 = new first_1000_vocab(611,"便利","convenient; handy; useful","benri","な-adjective","べんり","shopping","このアプリはとても便利です。/ このアプリはとてもべんりです。/ kono apuri wa totemo benri desu. / This app is very convenient.",1,"");
first_1000_vocab612 = new first_1000_vocab(612,"違う","to differ","chigau","Godan Verb, Intransitive","ちがう","shopping","それは違います。/ それはちがいます。/ sore wa chigaimasu. / That is incorrect.",1,"chiga");
first_1000_vocab613 = new first_1000_vocab(613,"安い","cheap; inexpensive","yasui","い-adjective","やすい","shopping","この店の商品は安いです。/ このみせのしょうひんはやすいです。/ kono mise no shōhin wa yasui desu. / The products at this store are cheap.",1,"");
first_1000_vocab614 = new first_1000_vocab(614,"悪い","bad; poor; undesirable","warui","い-adjective","わるい","shopping","彼の態度は悪かったです。/ かれのたいどはわるかったです。/ kare no taido wa warukatta desu. / His attitude was bad.",1,"");
first_1000_vocab615 = new first_1000_vocab(615,"見る","to see; to look; to watch; to view; to observe","miru","Ichidan Verb, Transitive","みる","shopping","映画を見ます。/ えいがをみます。/ eiga o mimasu. / I watch movies.",1,"mi");
first_1000_vocab616 = new first_1000_vocab(616,"見せる","to show; to display (relared to shop?)","miseru","Ichidan Verb, Transitive","みせる","shopping","私は彼に写真を見せました。/ わたしはかれにしゃしんをみせました。/ watashi wa kare ni shashin o misemashita. / I showed him the photo.",1,"mise");
first_1000_vocab617 = new first_1000_vocab(617,"物","thing","mono","Noun","もの","shopping","机の上に物がたくさんあります。/ つくえのうえにものがたくさんあります。/ tsukue no ue ni mono ga takusan arimasu. / There are many things on the desk.",1,"");
first_1000_vocab618 = new first_1000_vocab(618,"太い","fat; thick","futoi","い-adjective","ふとい","shopping","その木は太くて丈夫です。/ そのきはふとくてじょうぶです。/ sono ki wa futo kute jōbu desu. / That tree is thick and sturdy.",1,"");
first_1000_vocab619 = new first_1000_vocab(619,"細い","thin; slender","hosoi","い-adjective","ほそい","shopping","彼女は細い体型です。/ かのじょはほそいたいけいです。/ kanojo wa hosoi taikei desu. / She has a slim figure.",1,"");
first_1000_vocab620 = new first_1000_vocab(620,"低い","short,low","hikui","い-adjective","ひくい","shopping","このテーブルは低すぎます。/ このてーぶるはひくすぎます。/ kono tēburu wa hisugisugimasu. / This table is too low.",1,"");
first_1000_vocab621 = new first_1000_vocab(621,"引く","to pull","hiku","Godan Verb, Transitive","ひく","","ドアを引いて開けてください。/ ドアをひいてあけてください。/ doa o hiite akete kudasai. / Please pull the door to open it.",1,"hik");
first_1000_vocab622 = new first_1000_vocab(622,"意味","meaning; significance; sense","imi","Noun","いみ","","この言葉の意味を教えてください。/ このことばのいみをおしえてください。/ kono kotoba no imi o oshiete kudasai. / Please tell me the meaning of this word.",1,"");
first_1000_vocab623 = new first_1000_vocab(623,"丸い","round,circular","marui","い-adjective","","11","丸い形のテーブルがあります。/ まるいかたちのてーぶるがあります。/ marui katachi no tēburu ga arimasu. / There is a round-shaped table.",1,"");
first_1000_vocab624 = new first_1000_vocab(624,"メートル","metre; meter","meetoru","Noun","","","この道は1キロメートルです。/ このみちは1キロメートルです。/ kono michi wa 1 kiromētoru desu. / This road is 1 kilometer long.",3,"");
first_1000_vocab625 = new first_1000_vocab(625,"覚える","to remember","oboeru","Ichidan Verb, Transitive","おぼえる","14","彼は新しい言葉をすぐに覚えます。/ かれはあたらしいことばをすぐにおぼえます。/ kare wa atarashii kotoba o sugu ni oboemasu. / He quickly memorizes new words.",1,"oboe");
first_1000_vocab626 = new first_1000_vocab(626,"置く","to put; to place​","oku","Godan Verb, Transitive","おく","","本をテーブルの上に置いてください。/ ほんをてーぶるのうえにおいてください。/ hon o tēburu no ue ni oite kudasai. / Please put the book on the table.",1,"ok");
first_1000_vocab627 = new first_1000_vocab(627,"重い","heavy","omoi","い-adjective","おもい","4","その荷物はとても重いです。/ そのにもつはとてもおもいです。/ sono nimotsu wa totemo omoi desu. / That luggage is very heavy.",1,"");
first_1000_vocab628 = new first_1000_vocab(628,"同じ","same","onaji","Noun, Adverb","おなじ","5","彼と私は同じ学校に通っています。/ かれとわたしはおなじがっこうにかよっています。/ Kare to watashi wa onaji gakkō ni kayotte imasu. / He and I attend the same school.",1,"");
first_1000_vocab629 = new first_1000_vocab(629,"大きい","big; large; great; important","ookii","い-adjective","おおきい","7","あの建物はとても大きいです。/ あのたてものはとてもおおきいです。/ ano tatemono wa totemo ōkii desu. / That building is very big.",1,"");
first_1000_vocab630 = new first_1000_vocab(630,"大きな","big; large; great​","ookina","Pre-noun adjectival","おおきな","9","彼は大きな夢を持っています。/ かれはおおきなゆめをもっています。/ Kare wa ōkina yume o motteimasu. / He has big dreams.",1,"");
first_1000_vocab631 = new first_1000_vocab(631,"押す","to push; to press​","osu","Godan Verb, Transitive","おす","10","ボタンを押してください。/ ボタンをおしてください。/ Botan o oshite kudasai. / Please press the button.",1,"os");
first_1000_vocab632 = new first_1000_vocab(632,"立派","splendid","rippa","な-adjective","りっぱ","7","彼女は立派なリーダーです。/ かのじょはりっぱなリーダーです。/ Kanojo wa rippa na rīdā desu. / She is an excellent leader.",1,"");
first_1000_vocab633 = new first_1000_vocab(633,"差す","to stretch out hands, to raise an umbrella","sasu","Godan Verb, Transitive","さす","weather","太陽が空に差しています。/ たいようがそらにさしています。/ Taiyō ga sora ni sashiteimasu. / The sun is shining in the sky.",1,"sas");
first_1000_vocab634 = new first_1000_vocab(634,"知る","to know","shiru","Godan Verb, Transitive","しる","14","彼はその事実を知っていますか？/ かれはそのじじつをしっていますか？/ Kare wa sono jijitsu o shitteimasu ka? / Does he know the fact?",1,"shir");
first_1000_vocab635 = new first_1000_vocab(635,"吸う","to smoke, to suck","suu","Godan Verb, Transitive","すう","","彼はタバコを吸っています。/ かれはタバコをすっています。/ Kare wa tabako o sutteimasu. / He is smoking a cigarette.",1,"su");
first_1000_vocab636 = new first_1000_vocab(636,"大変","very; greatly; terribly; serious; difficult","taihen","Noun, な-adjective, Adverb","たいへん","3","今日は大変忙しいです。/ きょうはたいへんいそがしいです。/ Kyō wa taihen isogashii desu. / Today is very busy.",1,"");
first_1000_vocab637 = new first_1000_vocab(637,"大切","important; necessary; indispensable; beloved","taisetsu","Noun, な-adjective","たいせつ","","家族は私にとってとても大切です。/ かぞくはわたしにとってとてもたいせつです。/ Kazoku wa watashi ni totte totemo taisetsu desu. / Family is very important to me.",1,"");
first_1000_vocab638 = new first_1000_vocab(638,"飛ぶ","to fly; to hop","tobu","Godan Verb, Intransitive","とぶ","","鳥が空を飛んでいます。/ とりがそらをとんでいます。/ Tori ga sora o tondeimasu. / Birds are flying in the sky.",1,"tob");
first_1000_vocab639 = new first_1000_vocab(639,"次","next","tsugi","Noun","つぎ","","次の駅で降りてください。/ つぎのえきでおりてください。/ Tsugi no eki de orite kudasai. / Please get off at the next station.",1,"");
first_1000_vocab640 = new first_1000_vocab(640,"冷たい","cold to the touch","tsumetai","い-adjective","つめたい","","氷は冷たいです。/ こおりはつめたいです。/ Kōri wa tsumetai desu. / Ice is cold.",1,"");
first_1000_vocab641 = new first_1000_vocab(641,"強い","powerful","tsuyoi","い-adjective","つよい","","彼はとても強い選手です。/ かれはとてもつよいせんしゅです。/ Kare wa totemo tsuyoi senshu desu. / He is a very strong player.",1,"");
first_1000_vocab642 = new first_1000_vocab(642,"上","above; up; over; top; surface","ue","Noun, Suffix","うえ","1","本棚の上に本があります。/ ほんだなのうえにほんがあります。/ Hondana no ue ni hon ga arimasu. / There are books on the bookshelf.",1,"");
first_1000_vocab643 = new first_1000_vocab(643,"生まれる","to be born","umareru","Ichidan Verb, Intransitive","うまれる","2","彼女は東京で生まれました。/ かのじょはとうきょうでうまれました。/ Kanojo wa Tōkyō de umaremashita. / She was born in Tokyo.",1,"umare");
first_1000_vocab644 = new first_1000_vocab(644,"煩い","noisy, annoying","urusai","い-adjective","うるさい","3","隣の部屋がうるさいです。/ となりのへやがうるさいです。/ Tonari no heya ga urusai desu. / The neighboring room is noisy.",1,"");
first_1000_vocab645 = new first_1000_vocab(645,"後ろ","back; behind; rear","ushiro","Noun","うしろ","","彼は私の後ろに座っています。/ かれはわたしのうしろにすわっています。/ Kare wa watashi no ushiro ni suwatteimasu. / He is sitting behind me.",1,"");
first_1000_vocab646 = new first_1000_vocab(646,"薄い","thin; weak","usui","い-adjective","うすい","10","この紙は薄いです。/ このかみはうすいです。/ Kono kami wa usui desu. / This paper is thin.",1,"");
first_1000_vocab647 = new first_1000_vocab(647,"忘れる","to forget","wasureru","Ichidan Verb, Transitive","わすれる","","忘れ物をしました。/ わすれものをしました。/ Wasuremono o shimashita. / I forgot something.",1,"wasure");
first_1000_vocab648 = new first_1000_vocab(648,"渡る","to go across","wataru","Godan Verb, Intransitive","わたる","12","手紙を友達に渡しました。/ てがみをともだちにわたしました。/ Tegami o tomodachi ni watashimashita. / I handed the letter to my friend.",1,"watar");
first_1000_vocab649 = new first_1000_vocab(649,"渡す","to hand over","watasu","Godan Verb, Transitive","わたす",""," 彼は手紙を彼女に渡しました。/ かれはてがみをかのじょにわたしました。/ Kare wa tegami o kanojo ni watashimashita. / He handed the letter to her.",1,"watas");
first_1000_vocab650 = new first_1000_vocab(650,"やる","to do","yaru","Godan Verb, Transitive","やる","14","仕事を頑張ってやります。/ しごとをがんばってやります。/ Shigoto o ganbatte yarimasu. / I will work hard and do my best.",2,"yar");
first_1000_vocab651 = new first_1000_vocab(651,"易しい","easy, simple","yasashii","い-adjective","やさしい","1","これは易しい問題です。/ これはやさしいもんだいです。/ Kore wa yasashii mondai desu. / This is an easy problem.",1,"");
first_1000_vocab652 = new first_1000_vocab(652,"呼ぶ","to call out, to invite","yobu","Godan Verb, Transitive","よぶ","2","彼を名前で呼びました。/ かれをなまえでよびました。/ Kare o namae de yobimashita. / I called him by his name.",1,"yob");
first_1000_vocab653 = new first_1000_vocab(653,"良い","good","yoi/ii","い-adjective","よい/いい","","このレストランの料理はとても良いです。/ このレストランのりょうりはとてもいいです。/ Kono resutoran no ryōri wa totemo ii desu. / The food at this restaurant is very good.",1,"");
first_1000_vocab654 = new first_1000_vocab(654,"横","beside,side,width","yoko","Noun","よこ","","机の横に本があります。/ つくえのよこにほんがあります。/ Tsukue no yoko ni hon ga arimasu. / There is a book next to the desk.",1,"");
first_1000_vocab655 = new first_1000_vocab(655,"よく","often, well","yoku","Adverb","","5","彼女はよく笑います。/ かのじょはよくわらいます。/ Kanojo wa yoku waraimasu. / She often laughs.",2,"");
  
// 7 ok first_1000_vocab648 = new first_1000_vocab(648,"渡る","aaa","wataru","godan verb, intransitive","わたる","12","手紙を友達に渡しました。/ てがみをともだちにわたしました。/ Tegami o tomodachi ni watashimashita. / I handed the letter to my friend.",2);
// first_1000_vocab649 = new first_1000_vocab(649,"渡す","aaa","watasu","godan verb, transitive","わたす",""," 彼は手紙を彼女に渡しました。/ かれはてがみをかのじょにわたしました。/ Kare wa tegami o kanojo ni watashimashita. / He handed the letter to her.",2);
//first_1000_vocab650 = new first_1000_vocab(650,"やる","aaa","yaru","godan verb, transitive","やる","14","仕事を頑張ってやります。/ しごとをがんばってやります。/ Shigoto o ganbatte yarimasu. / I will work hard and do my best.",2);
//first_1000_vocab651 = new first_1000_vocab(651,"易しい","aaa","yasashii","い-adjective","やさしい","1","これは易しい問題です。/ これはやさしいもんだいです。/ Kore wa yasashii mondai desu. / This is an easy problem.",2);
//first_1000_vocab652 = new first_1000_vocab(652,"呼ぶ","aaa","yobu","godan verb, transitive","よぶ","2","彼を名前で呼びました。/ かれをなまえでよびました。/ Kare o namae de yobimashita. / I called him by his name.",2);
//first_1000_vocab653 = new first_1000_vocab(653,"良い","aaa","yoi/ii","い-adjective","よい/いい","","このレストランの料理はとても良いです。/ このレストランのりょうりはとてもいいです。/ Kono resutoran no ryōri wa totemo ii desu. / The food at this restaurant is very good.",2);
//first_1000_vocab654 = new first_1000_vocab(654,"横","aaa","yoko","noun","よこ","","机の横に本があります。/ つくえのよこにほんがあります。/ Tsukue no yoko ni hon ga arimasu. / There is a book next to the desk.",2);
//first_1000_vocab655 = new first_1000_vocab(655,"よく","aaa","yoku","adverb","","5","彼女はよく笑います。/ かのじょはよくわらいます。/ Kanojo wa yoku waraimasu. / She often laughs.",2);

kanji_list = [
first_1000_vocab001,
first_1000_vocab002,
first_1000_vocab003,
first_1000_vocab004,
first_1000_vocab005,
first_1000_vocab006,
first_1000_vocab007,
first_1000_vocab008,
first_1000_vocab009,
first_1000_vocab010,
first_1000_vocab011,
first_1000_vocab012,
first_1000_vocab013,
first_1000_vocab014,
first_1000_vocab015,
first_1000_vocab016,
first_1000_vocab017,
first_1000_vocab018,
first_1000_vocab019,
first_1000_vocab020,
first_1000_vocab021,
first_1000_vocab022,
first_1000_vocab023,
first_1000_vocab024,
first_1000_vocab025,
first_1000_vocab026,
first_1000_vocab027,
first_1000_vocab028,
first_1000_vocab029,
first_1000_vocab030,
first_1000_vocab031,
first_1000_vocab032,
first_1000_vocab033,
first_1000_vocab034,
first_1000_vocab035,
first_1000_vocab036,
first_1000_vocab037,
first_1000_vocab038,
first_1000_vocab039,
first_1000_vocab040,
first_1000_vocab041,
first_1000_vocab042,
first_1000_vocab043,
first_1000_vocab044,
first_1000_vocab045,
first_1000_vocab046,
first_1000_vocab047,
first_1000_vocab048,
first_1000_vocab049,
first_1000_vocab050,
first_1000_vocab051,
first_1000_vocab052,
first_1000_vocab053,
first_1000_vocab054,
first_1000_vocab055,
first_1000_vocab056,
first_1000_vocab057,
first_1000_vocab058,
first_1000_vocab059,
first_1000_vocab060,
first_1000_vocab061,
first_1000_vocab062,
first_1000_vocab063,
first_1000_vocab064,
first_1000_vocab065,
first_1000_vocab066,
first_1000_vocab067,
first_1000_vocab068,
first_1000_vocab069,
first_1000_vocab070,
first_1000_vocab071,
first_1000_vocab072,
first_1000_vocab073,
first_1000_vocab074,
first_1000_vocab075,
first_1000_vocab076,
first_1000_vocab077,
first_1000_vocab078,
first_1000_vocab079,
first_1000_vocab080,
first_1000_vocab081,
first_1000_vocab082,
first_1000_vocab083,
first_1000_vocab084,
first_1000_vocab085,
first_1000_vocab086,
first_1000_vocab087,
first_1000_vocab088,
first_1000_vocab089,
first_1000_vocab090,
first_1000_vocab091,
first_1000_vocab092,
first_1000_vocab093,
first_1000_vocab094,
first_1000_vocab095,
first_1000_vocab096,
first_1000_vocab097,
first_1000_vocab098,
first_1000_vocab099,
first_1000_vocab100,
first_1000_vocab111,
first_1000_vocab112,
first_1000_vocab113,
first_1000_vocab114,
first_1000_vocab115,
first_1000_vocab116,
first_1000_vocab117,
first_1000_vocab118,
first_1000_vocab119,
first_1000_vocab120,
first_1000_vocab121,
first_1000_vocab122,
first_1000_vocab123,
first_1000_vocab124,
first_1000_vocab125,
first_1000_vocab126,
first_1000_vocab127,
first_1000_vocab128,
first_1000_vocab129,
first_1000_vocab130,
first_1000_vocab131,
first_1000_vocab132,
first_1000_vocab133,
first_1000_vocab134,
first_1000_vocab135,
first_1000_vocab136,
first_1000_vocab137,
first_1000_vocab138,
first_1000_vocab139,
first_1000_vocab140,
first_1000_vocab141,
first_1000_vocab142,
first_1000_vocab143,
first_1000_vocab144,
first_1000_vocab145,
first_1000_vocab146,
first_1000_vocab147,
first_1000_vocab148,
first_1000_vocab149,
first_1000_vocab150,
first_1000_vocab151,
first_1000_vocab152,
first_1000_vocab153,
first_1000_vocab154,
first_1000_vocab155,
first_1000_vocab156,
first_1000_vocab157,
first_1000_vocab158,
first_1000_vocab159,
first_1000_vocab160,
first_1000_vocab161,
first_1000_vocab162,
first_1000_vocab163,
first_1000_vocab164,
first_1000_vocab165,
first_1000_vocab166,
first_1000_vocab167,
first_1000_vocab168,
first_1000_vocab169,
first_1000_vocab170,
first_1000_vocab171,
first_1000_vocab172,
first_1000_vocab173,
first_1000_vocab174,
first_1000_vocab175,
first_1000_vocab176,
first_1000_vocab177,
first_1000_vocab178,
first_1000_vocab179,
first_1000_vocab180,
first_1000_vocab181,
first_1000_vocab182,
first_1000_vocab183,
first_1000_vocab184,
first_1000_vocab185,
first_1000_vocab186,
first_1000_vocab187,
first_1000_vocab188,
first_1000_vocab189,
first_1000_vocab190,
first_1000_vocab191,
first_1000_vocab192,
first_1000_vocab193,
first_1000_vocab194,
first_1000_vocab195,
first_1000_vocab196,
first_1000_vocab197,
first_1000_vocab198,
first_1000_vocab199,
first_1000_vocab200,
first_1000_vocab201,
first_1000_vocab202,
first_1000_vocab203,
first_1000_vocab204,
first_1000_vocab205,
first_1000_vocab206,
first_1000_vocab207,
first_1000_vocab208,
first_1000_vocab209,
first_1000_vocab210,
first_1000_vocab211,
first_1000_vocab212,
first_1000_vocab213,
first_1000_vocab214,
first_1000_vocab215,
first_1000_vocab216,
first_1000_vocab217,
first_1000_vocab218,
first_1000_vocab219,
first_1000_vocab220,
first_1000_vocab221,
first_1000_vocab222,
first_1000_vocab223,
first_1000_vocab224,
first_1000_vocab225,
first_1000_vocab226,
first_1000_vocab227,
first_1000_vocab228,
first_1000_vocab229,
first_1000_vocab230,
first_1000_vocab231,
first_1000_vocab232,
first_1000_vocab233,
first_1000_vocab234,
first_1000_vocab235,
first_1000_vocab236,
first_1000_vocab237,
first_1000_vocab238,
first_1000_vocab239,
first_1000_vocab240,
first_1000_vocab241,
first_1000_vocab242,
first_1000_vocab243,
first_1000_vocab244,
first_1000_vocab245,
first_1000_vocab246,
first_1000_vocab247,
first_1000_vocab248,
first_1000_vocab249,
first_1000_vocab250,
first_1000_vocab251,
first_1000_vocab252,
first_1000_vocab253,
first_1000_vocab254,
first_1000_vocab255,
first_1000_vocab256,
first_1000_vocab257,
first_1000_vocab258,
first_1000_vocab259,
first_1000_vocab260,
first_1000_vocab261,
first_1000_vocab262,
first_1000_vocab263,
first_1000_vocab264,
first_1000_vocab265,
first_1000_vocab266,
first_1000_vocab267,
first_1000_vocab268,
first_1000_vocab269,
first_1000_vocab270,
first_1000_vocab271,
first_1000_vocab272,
first_1000_vocab273,
first_1000_vocab274,
first_1000_vocab275,
first_1000_vocab276,
first_1000_vocab277,
first_1000_vocab278,
first_1000_vocab279,
first_1000_vocab280,
first_1000_vocab281,
first_1000_vocab282,
first_1000_vocab283,
first_1000_vocab284,
first_1000_vocab285,
first_1000_vocab286,
first_1000_vocab287,
first_1000_vocab288,
first_1000_vocab289,
first_1000_vocab290,
first_1000_vocab291,
first_1000_vocab292,
first_1000_vocab293,
first_1000_vocab294,
first_1000_vocab295,
first_1000_vocab296,
first_1000_vocab297,
first_1000_vocab298,
first_1000_vocab299,
first_1000_vocab300,
first_1000_vocab301,
first_1000_vocab302,
first_1000_vocab303,
first_1000_vocab304,
first_1000_vocab305,
first_1000_vocab306,
first_1000_vocab307,
first_1000_vocab308,
first_1000_vocab309,
first_1000_vocab310,
first_1000_vocab311,
first_1000_vocab312,
first_1000_vocab313,
first_1000_vocab314,
first_1000_vocab315,
first_1000_vocab316,
first_1000_vocab317,
first_1000_vocab318,
first_1000_vocab319,
first_1000_vocab320,
first_1000_vocab321,
first_1000_vocab322,
first_1000_vocab323,
first_1000_vocab324,
first_1000_vocab325,
first_1000_vocab326,
first_1000_vocab327,
first_1000_vocab328,
first_1000_vocab329,
first_1000_vocab330,
first_1000_vocab331,
first_1000_vocab332,
first_1000_vocab333,
first_1000_vocab334,
first_1000_vocab335,
first_1000_vocab336,
first_1000_vocab337,
first_1000_vocab338,
first_1000_vocab339,
first_1000_vocab340,
first_1000_vocab341,
first_1000_vocab342,
first_1000_vocab343,
first_1000_vocab344,
first_1000_vocab345,
first_1000_vocab346,
first_1000_vocab347,
first_1000_vocab348,
first_1000_vocab349,
first_1000_vocab350,
first_1000_vocab351,
first_1000_vocab352,
first_1000_vocab353,
first_1000_vocab354,
first_1000_vocab355,
first_1000_vocab356,
first_1000_vocab357,
first_1000_vocab358,
first_1000_vocab359,
first_1000_vocab360,
first_1000_vocab361,
first_1000_vocab362,
first_1000_vocab363,
first_1000_vocab364,
first_1000_vocab365,
first_1000_vocab366,
first_1000_vocab367,
first_1000_vocab368,
first_1000_vocab369,
first_1000_vocab370,
first_1000_vocab371,
first_1000_vocab372,
first_1000_vocab373,
first_1000_vocab374,
first_1000_vocab375,
first_1000_vocab376,
first_1000_vocab377,
first_1000_vocab378,
first_1000_vocab379,
first_1000_vocab380,
first_1000_vocab381,
first_1000_vocab382,
first_1000_vocab383,
first_1000_vocab384,
first_1000_vocab385,
first_1000_vocab386,
first_1000_vocab387,
first_1000_vocab388,
first_1000_vocab389,
first_1000_vocab390,
first_1000_vocab391,
first_1000_vocab392,
first_1000_vocab393,
first_1000_vocab394,
first_1000_vocab395,
first_1000_vocab396,
first_1000_vocab397,
first_1000_vocab398,
first_1000_vocab399,
first_1000_vocab400,
first_1000_vocab401,
first_1000_vocab402,
first_1000_vocab403,
first_1000_vocab404,
first_1000_vocab405,
first_1000_vocab406,
first_1000_vocab407,
first_1000_vocab408,
first_1000_vocab409,
first_1000_vocab410,
first_1000_vocab411,
first_1000_vocab412,
first_1000_vocab413,
first_1000_vocab414,
first_1000_vocab415,
first_1000_vocab416,
first_1000_vocab417,
first_1000_vocab418,
first_1000_vocab419,
first_1000_vocab420,
first_1000_vocab421,
first_1000_vocab422,
first_1000_vocab423,
first_1000_vocab424,
first_1000_vocab425,
first_1000_vocab426,
first_1000_vocab427,
first_1000_vocab428,
first_1000_vocab429,
first_1000_vocab430,
first_1000_vocab431,
first_1000_vocab432,
first_1000_vocab433,
first_1000_vocab434,
first_1000_vocab435,
first_1000_vocab436,
first_1000_vocab437,
first_1000_vocab438,
first_1000_vocab439,
first_1000_vocab440,
first_1000_vocab441,
first_1000_vocab442,
first_1000_vocab443,
first_1000_vocab444,
first_1000_vocab445,
first_1000_vocab446,
first_1000_vocab447,
first_1000_vocab448,
first_1000_vocab449,
first_1000_vocab450,
first_1000_vocab451,
first_1000_vocab452,
first_1000_vocab453,
first_1000_vocab454,
first_1000_vocab455,
first_1000_vocab456,
first_1000_vocab457,
first_1000_vocab458,
first_1000_vocab459,
first_1000_vocab460,
first_1000_vocab461,
first_1000_vocab462,
first_1000_vocab463,
first_1000_vocab464,
first_1000_vocab465,
first_1000_vocab466,
first_1000_vocab467,
first_1000_vocab468,
first_1000_vocab469,
first_1000_vocab470,
first_1000_vocab471,
first_1000_vocab472,
first_1000_vocab473,
first_1000_vocab474,
first_1000_vocab475,
first_1000_vocab476,
first_1000_vocab477,
first_1000_vocab478,
first_1000_vocab479,
first_1000_vocab480,
first_1000_vocab481,
first_1000_vocab482,
first_1000_vocab483,
first_1000_vocab484,
first_1000_vocab485,
first_1000_vocab486,
first_1000_vocab487,
first_1000_vocab488,
first_1000_vocab489,
first_1000_vocab490,
first_1000_vocab491,
first_1000_vocab492,
first_1000_vocab493,
first_1000_vocab494,
first_1000_vocab495,
first_1000_vocab496,
first_1000_vocab497,
first_1000_vocab498,
first_1000_vocab499,
first_1000_vocab500,
first_1000_vocab501,
first_1000_vocab502,
first_1000_vocab503,
first_1000_vocab504,
first_1000_vocab505,
first_1000_vocab506,
first_1000_vocab507,
first_1000_vocab508,
first_1000_vocab509,
first_1000_vocab510,
first_1000_vocab511,
first_1000_vocab512,
first_1000_vocab513,
first_1000_vocab514,
first_1000_vocab515,
first_1000_vocab516,
first_1000_vocab517,
first_1000_vocab518,
first_1000_vocab519,
first_1000_vocab520,
first_1000_vocab521,
first_1000_vocab522,
first_1000_vocab523,
first_1000_vocab524,
first_1000_vocab525,
first_1000_vocab526,
first_1000_vocab527,
first_1000_vocab528,
first_1000_vocab529,
first_1000_vocab530,
first_1000_vocab531,
first_1000_vocab532,
first_1000_vocab533,
first_1000_vocab534,
first_1000_vocab535,
first_1000_vocab536,
first_1000_vocab537,
first_1000_vocab538,
first_1000_vocab539,
first_1000_vocab540,
first_1000_vocab541,
first_1000_vocab542,
first_1000_vocab543,
first_1000_vocab544,
first_1000_vocab545,
first_1000_vocab546,
first_1000_vocab547,
first_1000_vocab548,
first_1000_vocab549,
first_1000_vocab550,
first_1000_vocab551,
first_1000_vocab552,
first_1000_vocab553,
first_1000_vocab554,
first_1000_vocab555,
first_1000_vocab556,
first_1000_vocab557,
first_1000_vocab558,
first_1000_vocab559,
first_1000_vocab560,
first_1000_vocab561,
first_1000_vocab562,
first_1000_vocab563,
first_1000_vocab564,
first_1000_vocab565,
first_1000_vocab566,
first_1000_vocab567,
first_1000_vocab568,
first_1000_vocab569,
first_1000_vocab570,
first_1000_vocab571,
first_1000_vocab572,
first_1000_vocab573,
first_1000_vocab574,
first_1000_vocab575,
first_1000_vocab576,
first_1000_vocab577,
first_1000_vocab578,
first_1000_vocab579,
first_1000_vocab580,
first_1000_vocab581,
first_1000_vocab582,
first_1000_vocab583,
first_1000_vocab584,
first_1000_vocab585,
first_1000_vocab586,
first_1000_vocab587,
first_1000_vocab588,
first_1000_vocab589,
first_1000_vocab590,
first_1000_vocab591,
first_1000_vocab592,
first_1000_vocab593,
first_1000_vocab594,
first_1000_vocab595,
first_1000_vocab596,
first_1000_vocab597,
first_1000_vocab598,
first_1000_vocab599,
first_1000_vocab600,
first_1000_vocab601,
first_1000_vocab602,
first_1000_vocab603,
first_1000_vocab604,
first_1000_vocab605,
first_1000_vocab606,
first_1000_vocab607,
first_1000_vocab608,
first_1000_vocab609,
first_1000_vocab610,
first_1000_vocab611,
first_1000_vocab612,
first_1000_vocab613,
first_1000_vocab614,
first_1000_vocab615,
first_1000_vocab616,
first_1000_vocab617,
first_1000_vocab618,
first_1000_vocab619,
first_1000_vocab620,
first_1000_vocab621,
first_1000_vocab622,
first_1000_vocab623,
first_1000_vocab624,
first_1000_vocab625,
first_1000_vocab626,
first_1000_vocab627,
first_1000_vocab628,
first_1000_vocab629,
first_1000_vocab630,
first_1000_vocab631,
first_1000_vocab632,
first_1000_vocab633,
first_1000_vocab634,
first_1000_vocab635,
first_1000_vocab636,
first_1000_vocab637,
first_1000_vocab638,
first_1000_vocab639,
first_1000_vocab640,
first_1000_vocab641,
first_1000_vocab642,
first_1000_vocab643,
first_1000_vocab644,
first_1000_vocab645,
first_1000_vocab646,
first_1000_vocab647,
first_1000_vocab648,
first_1000_vocab649,
first_1000_vocab650,
first_1000_vocab651,
first_1000_vocab652,
first_1000_vocab653,
first_1000_vocab654
#first_1000_vocab655
]
