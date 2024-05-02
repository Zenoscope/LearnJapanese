//
// Kanji Radicals
//

//index	sorting/frequency/strokes	 logograph	strokes	kana_reading	romanji	meaning	type	examples	_variation

function kanji_component(
	_index,_kanji,_meaning,_romanji,_position,_frequency,_variation,_examples,_strokes,_kana_reading,
	_sprite_xloc
	) constructor {
	index		=_index;
	kanji		=_kanji;
	meaning		=_meaning;
	romanji		=_romanji;
	field_1		=_position;
	field_2		=_frequency;
	field_3		=_variation;
	examples	=_examples;
	field_4		=_strokes;
	kana_reading=_kana_reading;	
	sprite_xloc = 300; 
	}
	
//_index	_kanji	_meaning	_romanji	
//_field_1	_field_2	_field_3	_examples	_field_4
	
Radical1 = new kanji_component(1,"一","one","ichi","",3,"","一 戸 旦","1","いち")
Radical2 = new kanji_component(2,"丨","line","","",4,"","巾 引 中 甲 ","1","")
Radical3 = new kanji_component(3,"丶","dot","ten","",4,"","刃 凡 丸 丹 ","1","てん")
Radical4 = new kanji_component(4,"丿","bend","","",4,"","丈 久 才 万 ","1","")
Radical5 = new kanji_component(5,"乙","second, latter","otsu","",4,"乚","乙 乞 乏 孔 ","1","おつ")
Radical6 = new kanji_component(6,"亅","hook","","",4,"","了 丁 才","1","")
Radical7 = new kanji_component(7,"二","two","ni","",4,"","井 仁 元 示","2","に")
Radical8 = new kanji_component(8,"亠","lid","","top",4,"","六 玄 市 夜 ","2","")
Radical9 = new kanji_component(9,"人","human, person","hito","",1,"亻","人 欠 夫 内 ","2","ひと")
Radical10 = new kanji_component(10,"亻","human, person","","left",1,"人","仏 化 付 代 ","2","")
Radical11 = new kanji_component(11,"𠆢","person (人); (入; roof)","","top",4,"","介 今 合 全 ","2","")
Radical12 = new kanji_component(12,"入","enter","iru","",4,"","入 込","2","いる")
Radical13 = new kanji_component(13,"八","eight; divide","hachi","top",4,"","八 分 公 谷 ","2","はち")
Radical14 = new kanji_component(14,"ハ","animal legs","","bottom",4,"","六 穴 呉 兵 ","2","")
Radical15 = new kanji_component(15,"儿","human legs","","bottom",4,"","児 兄 四 見","2","")
Radical16 = new kanji_component(16,"丷","grass, plant; horns","","top",4,"","平 半 羊 岡 ","2","")
Radical17 = new kanji_component(17,"冫","ice","","left",4,"","次 冶 冷","2","")
Radical18 = new kanji_component(18,"凵","container, open mouth","","bottom",4,"","画凶屯廿","2","")
Radical19 = new kanji_component(19,"匚","box","","wrap",4,"","匯区匹巨","2","")
Radical20 = new kanji_component(20,"冂","upside down box","","wrap",4,"","円 冊 再 同","2","")
Radical21 = new kanji_component(21,"冖","cover","","top",4,"","売 学 骨 常","2","")
Radical22 = new kanji_component(22,"几","desk, table","tsukue","right",4,"","几凡冗殳","2","つくえ")
Radical23 = new kanji_component(23,"九","nine","kyū","",4,"","丸仇卆","2","きゅう")
Radical24 = new kanji_component(24,"力","power, force","chikara","",3,"","男","2","ちから")
Radical25 = new kanji_component(25,"刀","knife, sword","katana","top left",3,"","刃刄分","2","かたな")
Radical26 = new kanji_component(26,"刂","knife, sword","","right",3,"","割 利 前","2","")
Radical27 = new kanji_component(27,"乃","","no","bottom",4,"","秀 透 携 誘 ","2","の")
Radical28 = new kanji_component(28,"勹","wrap, embrace","","wrap",4,"","与 勾 匂 欠 ","2","")
Radical29 = new kanji_component(29,"⺈","knife, sword","","top",4,"","危 争 色 角 ","2","")
Radical30 = new kanji_component(30,"マ","Katakana マ","ma.","top",4,"","勇 通 湧 痛 ","2","ま")
Radical31 = new kanji_component(31,"匕","spoon; (七 = seven)","saji","",4,"","七 匂 化 切 ","2","さじ")
Radical32 = new kanji_component(32,"十","ten, complete","jū","",3,"","千午半","2","じゅう")
Radical33 = new kanji_component(33,"卜","divination","uranai","right",4,"","卜下仆占","2","うらない")
Radical34 = new kanji_component(34,"又","again, right hand","mata","",4,"","叉友皮","2","また")
Radical35 = new kanji_component(35,"厶","private","mu","",4,"","厶仏広","2","む")
Radical36 = new kanji_component(36,"卩","seal","","right",4,"㔾","厄 犯 令 危 ","2","")
Radical37 = new kanji_component(37,"厂","cliff","","top left",4,"","厂仄仮","2","")
Radical38 = new kanji_component(38,"广","on a cliff","","top left",3,"","序 店 府","2","")
Radical39 = new kanji_component(39,"口","mouth, opening","kuchi","",1,"","口 古 可 名 ","3","くち")
Radical40 = new kanji_component(40,"囗","enclosure","","wrap",3,"","四 回","3","")
Radical41 = new kanji_component(41,"土","earth","tsuchi","",2,"","土 地","3","つち")
Radical42 = new kanji_component(42,"士","scholar, bachelor","samurai","",4,"","士","3","さむらい")
Radical43 = new kanji_component(43,"夂","go","","bottom",3,"","夏","3","")
Radical44 = new kanji_component(44,"夕","evening, sunset","yūbe","",4,"","夕 外 多 夜","3","ゆうべ")
Radical45 = new kanji_component(45,"尢","","","",4,"","沈 枕 就 蹴 ","3","")
Radical46 = new kanji_component(46,"大","big, very","dai","",3,"","大 天","3","だい")
Radical47 = new kanji_component(47,"女","woman, female","onna","",2,"","女","3","おんな")
Radical48 = new kanji_component(48,"子","child, seed","ko","",4,"","子","3","こ")
Radical49 = new kanji_component(49,"宀","roof","","",2,"","家","3","")
Radical50 = new kanji_component(50,"寸","thumb, sundial degree","sun","",3,"","時","3","すん")
Radical51 = new kanji_component(51,"小","small, insignificant","chīsai","",4,"⺌","小 少","3","ちいさい")
Radical52 = new kanji_component(52,"⺌","small, insignificant","","",4,"小","当 光 鎖 巣 ","3","")
Radical53 = new kanji_component(53,"幺","short thread","","",2,"","幻 幼","3","")
Radical54 = new kanji_component(54,"尸","corpse","","",3,"","尺 局","3","")
Radical55 = new kanji_component(55,"山","mountain","yama","",3,"","山 岡 岩 島","3","やま")
Radical56 = new kanji_component(56,"川","river","kawa","",4,"","川 州 巡","3","かわ")
Radical57 = new kanji_component(57,"工","work","takumi","",4,"","工 左 差","3","たくみ")
Radical58 = new kanji_component(58,"已","oneself","onore","",4,"","(己 巳)","3","おのれ")
Radical59 = new kanji_component(59,"亡","dead, gone","nakusu","",4,"","亡 妄 忙 忘 ","3","な・くす")
Radical60 = new kanji_component(60,"巾","turban, scarf","haba","",3,"","市 布 帝 常","3","はば")
Radical61 = new kanji_component(61,"干","dry","hoshi","",4,"","平 年","3","ほし")
Radical62 = new kanji_component(62,"廾","two hands, twenty","","",4,"","弁","3","")
Radical63 = new kanji_component(63,"廴","long stride","","bottom left",4,"","延","3","")
Radical64 = new kanji_component(64,"⻌ ","walk","","bottom left",2,"辶","巡 迎 通 追 ","3","")
Radical65 = new kanji_component(65,"也","","","right",4,"","地 池 他 施","3","")
Radical66 = new kanji_component(66,"弋","ceremony, shoot, arrow","","",4,"","式","3","")
Radical67 = new kanji_component(67,"弓","bow","yumi","",3,"","弓 引","3","ゆみ")
Radical68 = new kanji_component(68,"彐","pig snout","","",4,"","当伊事","3","")
Radical69 = new kanji_component(69,"彡","hair, bristle, stubble, beard","","",4,"","杉 形 参 珍 ","3","")
Radical70 = new kanji_component(70,"彳","step","","left",3,"","役 彼 後 得 ","3","")
Radical71 = new kanji_component(71,"氵","water","","left",1,"水","泳 決 治 海 ","3","")
Radical72 = new kanji_component(72,"丬","split wood","","left",4,"爿","北 壮 状 荘 ","3","")
Radical73 = new kanji_component(73,"犭","dog","","left",3,"","犯 狂 狙","3","")
Radical74 = new kanji_component(74,"扌","hand","","left",1,"","持 掛 打 批 ","3","")
Radical75 = new kanji_component(75,"艹","grass, vegetation","","top",2,"","共 花 英 苦 ","3","")
Radical76 = new kanji_component(76,"⻖","mound","","left",2,"","阪 防 阻 院 ","3","")
Radical77 = new kanji_component(77,"⻖","town","","right",2,"","那 邦 郎 部 ","3","")
Radical78 = new kanji_component(78,"忄","heart","","left",1,"","忙 快 怪 怖 ","3","")
Radical79 = new kanji_component(79,"心","heart","kokoro","bottom",1,"","心 必 芯 忍 ","4","こころ")
Radical80 = new kanji_component(80,"戈","spear, halberd","","",4,"","成 式 弐 戦","4","")
Radical81 = new kanji_component(81,"戸","door, house","to","",4,"","戸 戻 所","4","と")
Radical82 = new kanji_component(82,"手","hand","te","",1,"","手 挙","4","て")
Radical83 = new kanji_component(83,"攵","action, whip","nobunn","",3,"","夂攴各","4","のぶん")
Radical84 = new kanji_component(84,"文","script, literature","bunn","",4,"","文","4","ぶん")
Radical85 = new kanji_component(85,"斗","dipper, measuring scoop","","",4,"","料","4","")
Radical86 = new kanji_component(86,"斤","axe","kinn","",4,"","新","4","きん")
Radical87 = new kanji_component(87,"方","way, square, raft","hō","",4,"","方 放 旅 族","4","ほう")
Radical88 = new kanji_component(88,"日","sun, day","nichi","",2,"","日 白 百 明 ","4","にち")
Radical89 = new kanji_component(89,"月","moon, month; body, flesh","tsuki","",2,"","有 服 青 朝","4","つき")
Radical90 = new kanji_component(90,"木","tree","ki","",1,"","木 板 相 根 ","4","き")
Radical91 = new kanji_component(91,"欠","yawn, lack","ketsu","",4,"","歌 欧","4","けつ")
Radical92 = new kanji_component(92,"止","stop","tomeru","",4,"","止 正 歩","4","とめる")
Radical93 = new kanji_component(93,"歹","death, decay","","",4,"","死 列","4","")
Radical94 = new kanji_component(94,"殳","weapon, lance","rumata","",4,"","役 投 殴","4","るまた")
Radical95 = new kanji_component(95,"毋","do not","","",4,"","毎 梅","4","")
Radical96 = new kanji_component(96,"比","compare, compete","kuraberu","",4,"","皆 昆","4","くらべる")
Radical97 = new kanji_component(97,"毛","fur, hair","ke","",4,"","毛","4","け")
Radical98 = new kanji_component(98,"氏","clan","uji","",4,"","氏 民 紙","4","うじ")
Radical99 = new kanji_component(99,"气","steam, breath","","",4,"","汽 気","4","")
Radical100 = new kanji_component(100,"水","water","mizu","",1,"氵","水 永","4","みず")
Radical101 = new kanji_component(101,"火","fire","hi","",3,"灬","火 灯","4","ひ")
Radical102 = new kanji_component(102,"灬","fire","","",3,"火","焦 然 煮","4","")
Radical103 = new kanji_component(103,"⺤","claw, nail, talon","tsume","",4,"爪","爪 妥 采 乳 ","4","つめ")
Radical104 = new kanji_component(104,"父","father","chichi","",4,"","釜","4","ちち")
Radical105 = new kanji_component(105,"牛","cow","ushi","",4,"","牛 告 牧 物 ","4","うし")
Radical106 = new kanji_component(106,"犬","dog","inu","",3,"","犬 献 獣","4","いぬ")
Radical107 = new kanji_component(107,"王","king","ō","",3,"","王 玉 主 国 ","4","おう")
Radical108 = new kanji_component(108,"礻","altar, display","","",4,"","礼 社 神 視 ","4","")
Radical109 = new kanji_component(109,"耂","old","","",4,"","孝","4","")
Radical110 = new kanji_component(110,"勿","do not","","",4,"","勿刎吻","4","")
Radical111 = new kanji_component(111,"五","five","go","",4,"","五","5","ご")
Radical112 = new kanji_component(112,"巴","cylinder with a trailing tail","","",4,"","色 把 肥","5","")
Radical113 = new kanji_component(113,"元","base, origin","moto","",4,"","元完玩冠","5","もと")
Radical114 = new kanji_component(114,"井","well","sei","",4,"","井,囲,耕","5","せい")
Radical115 = new kanji_component(115,"予","beforehand, previously","yo","",4,"","予 序 野 預 ","5","よ")
Radical116 = new kanji_component(116,"屯","","ton","",4,"","屯 純 鈍 頓","5","トン")
Radical117 = new kanji_component(117,"甘","sweet","amai","",4,"","甘 甚 某 勘 ","5","あまい")
Radical118 = new kanji_component(118,"生","life","umareru","",4,"","牲 甥","5","うまれる")
Radical119 = new kanji_component(119,"用","use","yō","",4,"","用","5","よう")
Radical120 = new kanji_component(120,"田","field","ta","",3,"","田 町 思 留 ","5","た")
Radical121 = new kanji_component(121,"疋","small animal; bolt of cloth","hiki","",4,"","延","5","ひき")
Radical122 = new kanji_component(122,"疒","sickness","","top left",3,"","病 症 痛 癖","5","")
Radical123 = new kanji_component(123,"癶","footsteps","","",4,"","発 登","5","")
Radical124 = new kanji_component(124,"白","white","shiro","",4,"","的 皆 皇","5","しろ")
Radical125 = new kanji_component(125,"皮","skin","kegawa","",4,"","披 彼 波","5","けがわ")
Radical126 = new kanji_component(126,"皿","dish","sara","",4,"","皿","5","さら")
Radical127 = new kanji_component(127,"目","eye","me","",3,"","目 見 具 省 ","5","め")
Radical128 = new kanji_component(128,"矢","arrow","ya","",4,"","医 族","5","や")
Radical129 = new kanji_component(129,"石","stone","ishi","",3,"","石 岩 砂 破 ","5","いし")
Radical130 = new kanji_component(130,"示","altar, display","shimesu","",3,"","示 奈 祭 禁","5","しめす")
Radical131 = new kanji_component(131,"禾","grain","nogi","",3,"","利 私 季 和 ","5","のぎ")
Radical132 = new kanji_component(132,"穴","cave","ana","",4,"","空 突","5","あな")
Radical133 = new kanji_component(133,"立","stand, erect","tatsu","",4,"","立 音 産 翌 ","5","たつ")
Radical134 = new kanji_component(134,"母","mother","haha","",4,"","母","5","はは")
Radical135 = new kanji_component(135,"衤","clothes","","",4,"","初 被 複","5","")
Radical136 = new kanji_component(136,"罒","net","","",4,"","買 罪 置 羅","5","")
Radical137 = new kanji_component(137,"世","society, world; generation","yo","",4,"","世,泄,楪","5","よ")
Radical138 = new kanji_component(138,"⺻","brush","","",4,"","津 律 建 書 ","5","")
Radical139 = new kanji_component(139,"冊","(counting) books","satsu","",4,"","冊 柵 倫 偏 ","5","さつ")
Radical140 = new kanji_component(140,"而","rake","","",4,"","耐 需 端 儒","6","")
Radical141 = new kanji_component(141,"⺮","bamboo","take","",3,"","竹 第 筆 竿 ","6","たけ")
Radical142 = new kanji_component(142,"米","rice","kome","",4,"","米,来,粁","6","こめ")
Radical143 = new kanji_component(143,"糸","silk","ito","",2,"","糸,系,約","6","いと")
Radical144 = new kanji_component(144,"缶","tin can","kann","",4,"","缶 陶 鬱","6","かん")
Radical145 = new kanji_component(145,"羊","sheep","hitsuji","",4,"","羊,祥,羌","6","ひつじ")
Radical146 = new kanji_component(146,"羽","feather, wing","hane","",4,"","竹,笑,笛","6","はね")
Radical147 = new kanji_component(147,"耳","ear","mimi","",4,"","耳,耶,恥","6","みみ")
Radical148 = new kanji_component(148,"自","self","ji","",4,"","自,臭,息","6","じ")
Radical149 = new kanji_component(149,"至","arrive","itaru","",4,"","至,屋,咥","6","いたる")
Radical150 = new kanji_component(150,"舌","tongue","shita","",4,"","舌,舍,舐","6","した")
Radical151 = new kanji_component(151,"舟","boat","fune","",4,"","舟,般,舶","6","ふね")
Radical152 = new kanji_component(152,"艮","stopping(?); (good)","ushitora","",4,"良","艮,退,根","6","うしとら")
Radical153 = new kanji_component(153,"虍","tiger stripes","","",4,"","虎 虐 虚 虜 ","6","")
Radical154 = new kanji_component(154,"虫","insect","mushi","",4,"","虫,風,虹","6","むし")
Radical155 = new kanji_component(155,"血","blood","chi","",4,"","血,洫,衄","6","ち")
Radical156 = new kanji_component(156,"行","go, do","gyō","",4,"","行,哘,術","6","ぎょう")
Radical157 = new kanji_component(157,"衣","clothes","koromo","",3,"","辰依衷","6","ころも")
Radical158 = new kanji_component(158,"覀","west","nishi","",4,"襾","西 価 要 票 ","7","にし")
Radical159 = new kanji_component(159,"臣","minister, official; slave (building a brick wall)","shin","",4,"","臣,臥,煕","7","しん")
Radical160 = new kanji_component(160,"見","see","miru","",4,"","見,現,覓","7","みる")
Radical161 = new kanji_component(161,"角","horn","tsuno","",4,"","角,埆,觝","7","つの")
Radical162 = new kanji_component(162,"言","speech","koto","",2,"","言,訳,訂","7","こと")
Radical163 = new kanji_component(163,"谷","valley","tani","",4,"","谷,浴,欲","7","たに")
Radical164 = new kanji_component(164,"豆","bean","mame","",4,"","豆,荳,凱","7","まめ")
Radical165 = new kanji_component(165,"豕","pig","inoko","",4,"","豕,家,隊","7","いのこ")
Radical166 = new kanji_component(166,"貝","shell","kai","",2,"","負貞頁","7","かい")
Radical167 = new kanji_component(167,"足","foot","ashi","",4,"","足,捉,踞","7","あし")
Radical168 = new kanji_component(168,"身","body","mi","",4,"","身,躯,躱","7","み")
Radical169 = new kanji_component(169,"車","cart, car","kuruma","",2,"","軋軌庫","7","くるま")
Radical170 = new kanji_component(170,"辛","spicy, bitter","karai","",4,"","辛,倖,報","7","からい")
Radical171 = new kanji_component(171,"辰","dragon; morning","tatsu","",4,"","辰,唇,晨","7","たつ")
Radical172 = new kanji_component(172,"酉","wine, alcohol","tori","",2,"","哂洒","7","とり")
Radical173 = new kanji_component(173,"里","village, mile","sato","",4,"","里,厘,狸","7","さと")
Radical174 = new kanji_component(174,"赤","red","aka","",4,"","赤 赦 跡 嚇 ","7","あか")
Radical175 = new kanji_component(175,"走","race","sō","",4,"","走 赴 徒 起 ","7","そう")
Radical176 = new kanji_component(176,"金","metal, gold","kane","",2,"","金,釘,釡","8","かね")
Radical177 = new kanji_component(177,"長","long, grow; leader","nagai; ちょう","",4,"","門,問,間","8","ながい")
Radical178 = new kanji_component(178,"門","gate","mon","",4,"","隹,隼,進","8","もん")
Radical179 = new kanji_component(179,"隹","small bird","furutori","",4,"","隼雀惟","8","ふるとり")
Radical180 = new kanji_component(180,"雨","rain","ame","",3,"","雪雫零","8","あめ")
Radical181 = new kanji_component(181,"青","blue, green","ao","",4,"","青,清,晴","8","あお")
Radical182 = new kanji_component(182,"岡","hill","oka","",4,"","岡 剛 綱 鋼","8","おか")
Radical183 = new kanji_component(183,"免","dismissal","menn","",4,"","免 勉 逸 晩","8","めん")
Radical184 = new kanji_component(184,"斉","Chinese Qi kingdom","sei","",4,"","斉 剤 斎 済","8","せい")
Radical185 = new kanji_component(185,"音","sound","oto","",4,"","音,意,韵","8","おと")
Radical186 = new kanji_component(186,"頁","big shell","ōgai","",4,"","頁,順,傾","9","おおがい")
Radical187 = new kanji_component(187,"食","eat, food","shyoku","",3,"","飲喰飫","9","しょく")
Radical188 = new kanji_component(188,"首","neck, head","kubi","",4,"","首,馗,道","9","くび")
Radical189 = new kanji_component(189,"品","item","hin","",4,"","品,嵒,嫗","9","ひん")
Radical190 = new kanji_component(190,"馬","horse","uma","",4,"","馬,馭,馴","10","うま")
Radical191 = new kanji_component(191,"高","tall, high","takai","",4,"","高,蒿,稾","10","たかい")
Radical192 = new kanji_component(192,"啇","base, stem","","",4,"","嫡 滴 摘 適 ","11","")
Radical193 = new kanji_component(193,"無","nothing","mu","",4,"","無 舞","12","む")
Radical194 = new kanji_component(194,"鬼","ghost, demon "," oni","",4,"","魂 魁 鬽 魄","10","おに")
Radical195 = new kanji_component(195,"魚","fish "," uo","",4,"","鯉 鮑 魛 魜 ","11","うお")
Radical196 = new kanji_component(196,"鳥","bird "," tori","",4,"","鳫 鳮 鳱 鳳 ","11","とり")
Radical197 = new kanji_component(197,"鹵","salt "," ro","",4,"","鹹 鹼 鹽","11","ろ")
Radical198 = new kanji_component(198,"鹿","deer "," shika","",4,"","塵 麃 麋 麉 ","11","しか")
Radical199 = new kanji_component(199,"麦","wheat "," mugi","",4,"麥","麴 麵 麱 麨 ","7","むぎ")
Radical200 = new kanji_component(200,"麻","hemp, flax "," asa","",4,"","麼 魔","11","あさ")
Radical201 = new kanji_component(201,"黄","yellow "," kīro","",4,"黃","黊 黌","11","きいろ")
Radical202 = new kanji_component(202,"黍","millet "," kibi","",4,"","黏 黎","12","きび")
Radical203 = new kanji_component(203,"黒","black "," kuro","",4,"黑","點 黛 黱 黨","11","くろ")
Radical204 = new kanji_component(204,"黹","embroidery, needlework "," futsu","",4,"","黼 黻","12","ふつ")
Radical205 = new kanji_component(205,"黽","frog, amphibian "," ben","",4,"","黿 鼈","13","べん")
Radical206 = new kanji_component(206,"鼎","sacrificial tripod "," kanae","",4,"","鼏 鼒","13","かなえ")
Radical207 = new kanji_component(207,"鼓","drum "," tsudzumi","",4,"","鼗 鼘","13","つづみ")
Radical208 = new kanji_component(208,"鼠","rat, mouse "," nezumi","",4,"","鼢 鼣 鼤","13","ねずみ")
Radical209 = new kanji_component(209,"鼻","nose "," hana","",4,"","鼼 鼽 鼿","14","はな")
Radical210 = new kanji_component(210,"齊","even, uniformly "," sei","",4,"","齋 齏 齏","14","せい")
Radical211 = new kanji_component(211,"歯","tooth, molar "," ha","",4,"齒","齡 齠 齗","12","は")
Radical212 = new kanji_component(212,"竜","dragon "," ryū","",4,"龍","龖 龘","10","りゅう")
Radical213 = new kanji_component(213,"亀","turtle, tortoise "," kame","",4,"龜","龝","11","かめ")
Radical214 = new kanji_component(214,"龠","flute "," yaku","",4,"","龣","17","やく")

kanji_list = [
Radical1, Radical2, Radical3, Radical4,
Radical5, Radical6, Radical7, Radical8,
Radical9, Radical10, Radical11, Radical12,
Radical13, Radical14, Radical15, Radical16,
Radical17, Radical18, Radical19, Radical20,
Radical21, Radical22, Radical23, Radical24,
Radical25, Radical26, Radical27, Radical28,
Radical29, Radical30, Radical31, Radical32,
Radical33, Radical34, Radical35, Radical36,
Radical37, Radical38, Radical39, Radical40,
Radical41, Radical42, Radical43, Radical44,
Radical45, Radical46, Radical47, Radical48,
Radical49, Radical50, Radical51, Radical52,
Radical53, Radical54, Radical55, Radical56,
Radical57, Radical58, Radical59, Radical60,
Radical61, Radical62, Radical63, Radical64,
Radical65, Radical66, Radical67, Radical68,
Radical69, Radical70, Radical71, Radical72,
Radical73, Radical74, Radical75, Radical76,
Radical77, Radical78, Radical79, Radical80,
Radical81, Radical82, Radical83, Radical84,
Radical85, Radical86, Radical87, Radical88,
Radical89, Radical90, Radical91, Radical92,
Radical93, Radical94, Radical95, Radical96,
Radical97, Radical98, Radical99, Radical100,
Radical101,Radical102,Radical103,Radical104,
Radical105,Radical106,Radical107,Radical108,
Radical109,Radical110,Radical111,Radical112,
Radical113,Radical114,Radical115,Radical116,
Radical117,Radical118,Radical119,Radical120,
Radical121,Radical122,Radical123,Radical124,
Radical125,Radical126,Radical127,Radical128,
Radical129,Radical130,Radical131,Radical132,
Radical133,Radical134,Radical135,Radical136,
Radical137,Radical138,Radical139,Radical140,
Radical141,Radical142,Radical143,Radical144,
Radical145,Radical146,Radical147,Radical148,
Radical149,Radical150,Radical151,Radical152,
Radical153,Radical154,Radical155,Radical156,
Radical157,Radical158,Radical159,Radical160,
Radical161,Radical162,Radical163,Radical164,
Radical165,Radical166,Radical167,Radical168,
Radical169,Radical170,Radical171,Radical172,
Radical173,Radical174,Radical175,Radical176,
Radical177,Radical178,Radical179,Radical180,
Radical181,Radical182,Radical183,Radical184,
Radical185,Radical186,Radical187,Radical188,
Radical189,Radical190,Radical191,Radical192,
Radical193,Radical194,Radical195,Radical196,
Radical197,Radical198,Radical199,Radical200
Radical201,Radical202,Radical203,Radical204,
Radical205,Radical206,Radical207,Radical208,
Radical209,Radical210,Radical211,Radical212,
Radical213,Radical214
]