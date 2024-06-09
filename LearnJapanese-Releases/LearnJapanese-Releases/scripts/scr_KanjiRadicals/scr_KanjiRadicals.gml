//
// Kanji Radicals
//

//index	sorting/frequency/strokes	 logograph	strokes	kana_reading	romanji	meaning	type	examples	_variation

function kanji_component(
	_index,_kanji,_meaning,_romanji,_position,_frequency,_variation,_examples,_strokes,_kana_reading
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
	}
	
//_index	_kanji	_meaning	_romanji	
//_field_1	_field_2	_field_3	_examples	_field_4
	

Radical1 = new kanji_component(1,"人","human, person","hito","",25,"亻","人,欠,夫,肉,丙","2","ひと")
Radical2 = new kanji_component(2,"亻","human, person","","Left hand side",25,"人","仏,化,付,何,代,","2","")
Radical3 = new kanji_component(3,"口","mouth, opening","kuchi","",25,"","口,古,可,名,君","3","くち")
Radical4 = new kanji_component(4,"氵","water","","Left hand side",25,"","泳,決,治,海,演,","3","")
Radical5 = new kanji_component(5,"扌","hand","","Left hand side",25,"","持,掛,打,批,技,","3","")
Radical6 = new kanji_component(6,"忄","heart","","Left hand side",25,"心","忙,快,怪,怖,性","3","")
Radical7 = new kanji_component(7,"心","heart","kokoro","Bottom",25,"忄","必,芯,忍,忌,秘,","4","こころ")
Radical8 = new kanji_component(8,"手","hand","te","",25,"","手,挙","4","て")
Radical9 = new kanji_component(9,"木","tree","ki","",25,"","木,相,森,楽,機,","4","き")
Radical10 = new kanji_component(10,"水","water","mizu","",25,"","水,永","4","みず")
Radical11 = new kanji_component(11,"土","earth","tsuchi","",50,"","土,地","3","つち")
Radical12 = new kanji_component(12,"女","woman, female","onna","",50,"","女","3","おんな")
Radical13 = new kanji_component(13,"宀","roof","","",50,"","家","3","")
Radical14 = new kanji_component(14,"幺","short thread","","",50,"","幻,幼","3","")
Radical15 = new kanji_component(15,"⻖←","mound (阝-left)","","Left hand side",50,"→⻏","阪,防,阻,院,陳","3","")
Radical16 = new kanji_component(16,"→⻏","town (阝-right)","","Right hand side",50,"⻖←","那,邦,郎,部,郭,","3","")
Radical17 = new kanji_component(17,"日","sun, day","nichi","",50,"","日,白,百,明,的,","4","にち")
Radical18 = new kanji_component(18,"月","moon, month; body, flesh","tsuki","",50,"","有,服,青,朝","4","つき")
Radical19 = new kanji_component(19,"糸","silk","ito","",50,"","","6","いと")
Radical20 = new kanji_component(20,"肉","meat","niku","",50,"","","6","にく")
Radical21 = new kanji_component(21,"貝","shell","kai","",50,"","","7","かい")
Radical22 = new kanji_component(22,"金","metal, gold","kane","",50,"","","8","かね")
Radical23 = new kanji_component(23,"刀","knife, sword","katana","",75,"刂","","2","かたな")
Radical24 = new kanji_component(24,"刂","knife, sword","","Right hand side",75,"刀","割,利,前","2","")
Radical25 = new kanji_component(25,"十","ten, complete","jū","",75,"","","2","じゅう")
Radical26 = new kanji_component(26,"又","again, right hand","mata","",75,"","","2","また")
Radical27 = new kanji_component(27,"广","on a cliff","","Top left",75,"","序,店,府","3","")
Radical28 = new kanji_component(28,"囗","enclosure","","Wrap",75,"","四,回","3","")
Radical29 = new kanji_component(29,"大","big, very","dai","",75,"","大,天","3","だい")
Radical30 = new kanji_component(30,"寸","thumb, sundial degree","sun","",75,"","時","3","すん")
Radical31 = new kanji_component(31,"尸","corpse","","",75,"","尺,局","3","")
Radical32 = new kanji_component(32,"山","mountain","yama","",75,"","山,岡,岩,島","3","やま")
Radical33 = new kanji_component(33,"巾","turban, scarf","haba","",75,"","市,布,帝,常","3","はば")
Radical34 = new kanji_component(34,"弓","bow","yumi","",75,"","弓,引","3","ゆみ")
Radical35 = new kanji_component(35,"彳","step","","Left hand side",75,"","役,彼,後,得,徳","3","")
Radical36 = new kanji_component(36,"犭","dog","","Left hand side",75,"","犯,狂,狙","3","")
Radical37 = new kanji_component(37,"文","script, literature","bunn","",75,"","文","4","ぶん")
Radical38 = new kanji_component(38,"火","fire","hi","",75,"","火,灯","4","ひ")
Radical39 = new kanji_component(39,"犬","dog","inu","",75,"","犬,献,獣","4","いぬ")
Radical40 = new kanji_component(40,"王","king","ou","",75,"","王,玉,主,国,弄,","4","おう")
Radical41 = new kanji_component(41,"田","field","ta","",75,"","田,町,思,略,番","5","た")
Radical42 = new kanji_component(42,"目","eye","me","",75,"","目,見,具,省,眠","5","め")
Radical43 = new kanji_component(43,"石","stone","shi","",75,"","石,岩,砂,破,碑","5","いし")
Radical44 = new kanji_component(44,"示","altar, display","shimesu","",75,"","示,奈,祭,禁","5","しめす")
Radical45 = new kanji_component(45,"禾","grain","nogi","",75,"","利,私,季,和,科,","5","のぎ")
Radical46 = new kanji_component(46,"⺮","bamboo","take","",75,"","竹,第,筆,竿","6","たけ")
Radical47 = new kanji_component(47,"衣","clothes","koromo","",75,"","","6","ころも")
Radical48 = new kanji_component(48,"車","cart, car","kuruma","",75,"","","7","くるま")
Radical49 = new kanji_component(49,"酉","wine, alcohol","tori","",75,"","","7","とり")
Radical50 = new kanji_component(50,"雨","rain","ame","",75,"","","8","あめ")
Radical51 = new kanji_component(51,"食","eat, food","shyoku","",75,"","","9","しょく")
Radical52 = new kanji_component(52,"一","one","ichi","",75,"","一,戸,旦","1","いち")
Radical53 = new kanji_component(53,"冫","ice","","Left hand side",100,"","次,冶,冷","2","")
Radical54 = new kanji_component(54,"丨","line","","",100,"","巾,引,中,甲,旧","1","")
Radical55 = new kanji_component(55,"丶","dot","ten","",100,"","刃,凡,丹,犬,丼","1","てん")
Radical56 = new kanji_component(56,"丿","bend","","",100,"","丈,久,才,万,少","1","")
Radical57 = new kanji_component(57,"乙 ","second, latter","otsu","",100,"乚","乙,乞,乏,孔,屯,","1","おつ")
Radical58 = new kanji_component(58,"乚","second, latter","otsu","",100,"乙 ","札,礼,宅,乱,枕","1","おつ")
Radical59 = new kanji_component(59,"亅","hook","","",100,"","了,丁,才","1","")
Radical60 = new kanji_component(60,"二","two","ni","",100,"","井,仁,元,示","2","に")
Radical61 = new kanji_component(61,"亠","lid","","Top",100,"","六,玄,市,夜,京","2","")
Radical62 = new kanji_component(62,"𠆢","person (人); (入; roof)","","Top",100,"","介,合,全,会,","2","")
Radical63 = new kanji_component(63,"入","enter","iru","",100,"","入,込","2","いる")
Radical64 = new kanji_component(64,"八","eight; divide","hachi","Top",100,"","八,谷,沿,松,俗,","2","はち")
Radical65 = new kanji_component(65,"ハ","animal legs","","Bottom",100,"","六,穴,呉,兵,貝","2","")
Radical66 = new kanji_component(66,"儿","human legs","","Bottom",100,"","児,兄,四,見","2","")
Radical67 = new kanji_component(67,"丷","grass, plant; horns","","Top",100,"","平,半,羊,岡,前,","2","")
Radical68 = new kanji_component(68,"凵","container, open mouth","","Bottom",100,"","画","2","")
Radical69 = new kanji_component(69,"匚","box","","Wrap",100,"","匯","2","")
Radical70 = new kanji_component(70,"冂","upside down box","","Wrap",100,"","円,冊,再,同","2","")
Radical71 = new kanji_component(71,"冖","cover","","Top",100,"","売,学,骨,常","2","")
Radical72 = new kanji_component(72,"几","desk, table","tsukue","Bottom",100,"","","2","つくえ")
Radical73 = new kanji_component(73,"九","nine","kyū","",100,"","","2","きゅう")
Radical74 = new kanji_component(74,"力","power, force","chikara","",100,"","男","2","ちから")
Radical75 = new kanji_component(75,"乃","","no","Bottom",100,"","秀,透,携,誘,/及","2","の")
Radical76 = new kanji_component(76,"勹","wrap, embrace","","Wrap",100,"","与,勾,匂,欠,巧,","2","")
Radical77 = new kanji_component(77,"⺈","knife, sword","","Top",100,"","危,争,色,角,免","2","")
Radical78 = new kanji_component(78,"マ","Katakana マ","ma","Top",100,"","勇,通,湧,痛,踊","2","ま")
Radical79 = new kanji_component(79,"匕","spoon; (七 = seven)","saji","",100,"","七,匂,化,叱,北,","2","さじ")
Radical80 = new kanji_component(80,"卜","divination","uranai","Right hand side",100,"","","2","うらない")
Radical81 = new kanji_component(81,"厶","private","mu","",100,"","","2","む")
Radical82 = new kanji_component(82,"卩","seal","","Right hand side",100,"㔾","厄,犯,令,危,印,","2","")
Radical83 = new kanji_component(83,"㔾","seal","","Right hand side",100,"卩","厄,服,卵,命,報","2","")
Radical84 = new kanji_component(84,"厂","cliff","","Top left",100,"","","2","")
Radical85 = new kanji_component(85,"士","scholar, bachelor","samurai","",100,"","士","3","さむらい")
Radical86 = new kanji_component(86,"夂","go","","Bottom",100,"","夏","3","")
Radical87 = new kanji_component(87,"夕","evening, sunset","yūbe","",100,"","夕,外,多,夜","3","ゆうべ")
Radical88 = new kanji_component(88,"尢","","","",100,"","沈,就,蹴,尤,无","3","")
Radical89 = new kanji_component(89,"子","child, seed","ko","",100,"","子","3","こ")
Radical90 = new kanji_component(90,"小","small, insignificant","chiisai","",100,"⺌","小,少","3","ちいさい")
Radical91 = new kanji_component(91,"⺌","small, insignificant","","",100,"小","当,光,鎖,巣,桜,","3","")
Radical92 = new kanji_component(92,"川","river","kawa","",100,"","川,州,巡","3","かわ")
Radical93 = new kanji_component(93,"工","work","takumi","",100,"","工,左,差","3","たくみ")
Radical94 = new kanji_component(94,"已","oneself","onore","",100,"","(己,巳)","3","おのれ")
Radical95 = new kanji_component(95,"亡","dead, gone","nakusu","",100,"","亡,妄,忙,忘,盲,","3","なくす")
Radical96 = new kanji_component(96,"干","dry","hoshi","",100,"","平,年","3","ほし")
Radical97 = new kanji_component(97,"廾","two hands, twenty","","",100,"","弁","3","")
Radical98 = new kanji_component(98,"廴","long stride","","Bottom left",100,"","延","3","")
Radical99 = new kanji_component(99,"⻌ ","walk","","Bottom left",100,"辶","巡,迎,通,追,逃,","3","")
Radical100 = new kanji_component(100,"辶","walk","","Bottom left",100,"⻌ ","巡,迎,逃,迎,進","3","")
Radical101 = new kanji_component(101,"也","","","Right hand side",100,"","地,池,他,施","3","")
Radical102 = new kanji_component(102,"弋","ceremony, shoot, arrow","","",100,"","式","3","")
Radical103 = new kanji_component(103,"彐","pig snout","","",100,"","","3","")
Radical104 = new kanji_component(104,"彡","hair, bristle, stubble, beard","","",100,"","杉,形,参,珍,修","3","")
Radical105 = new kanji_component(105,"丬 (爿)","split wood","","Left hand side",100,"","北,壮,状,荘,背,","3","")
Radical106 = new kanji_component(106,"艹","grass, vegetation","","Top",100,"","共,花,英,苦,草,","3","")
Radical107 = new kanji_component(107,"戈","spear, halberd","","",100,"","成,式,弐,戦","4","")
Radical108 = new kanji_component(108,"戸","door, house","to","",100,"","戸,戻,所","4","と")
Radical109 = new kanji_component(109,"攵","action, whip","nobunn","",100,"","","4","のぶん")
Radical110 = new kanji_component(110,"斗","dipper, measuring scoop","","",100,"","料","4","")
Radical111 = new kanji_component(111,"斤","axe","kinn","",100,"","新","4","きん")
Radical112 = new kanji_component(112,"方","way, square, raft","hō","",100,"","方,放,旅,族","4","ほう")
Radical113 = new kanji_component(113,"欠","yawn, lack","ketsu","",100,"","歌,欧","4","けつ")
Radical114 = new kanji_component(114,"止","stop","tomeru","",100,"","止,正,歩","4","とめる")
Radical115 = new kanji_component(115,"歹","death, decay","","",100,"","死,列","4","")
Radical116 = new kanji_component(116,"殳","weapon, lance","rumata","",100,"","役,投,殴","4","るまた")
Radical117 = new kanji_component(117,"毋","do not","","",100,"","毎,梅","4","")
Radical118 = new kanji_component(118,"比","compare, compete","kuraberu","",100,"","皆,昆","4","くらべる")
Radical119 = new kanji_component(119,"毛","fur, hair","ke","",100,"","毛","4","け")
Radical120 = new kanji_component(120,"氏","clan","uji","",100,"","氏,民,紙","4","うじ")
Radical121 = new kanji_component(121,"气","steam, breath","","",100,"","汽,気","4","")
Radical122 = new kanji_component(122,"灬","fire","","",100,"","焦,然,煮","4","")
Radical123 = new kanji_component(123,"⺤ ","claw, nail, talon","tsume","",100,"124","爪,妥,采,乳,受,","4","つめ")
Radical124 = new kanji_component(124,"爪","claw, nail, talon","tsume","",100,"123",",浮,将,渓,淫,彩,","4","つめ")
Radical125 = new kanji_component(125,"父","father","chichi","",100,"","釜","4","ちち")
Radical126 = new kanji_component(126,"牛","cow","ushi","",100,"","牛,告,牧,物,特,","4","うし")
Radical127 = new kanji_component(127,"礻","altar, display","","",100,"","礼,社,神,視,福","4","")
Radical128 = new kanji_component(128,"耂","old","","",100,"","孝","4","")
Radical129 = new kanji_component(129,"勿","do not","","",100,"","","4","")
Radical130 = new kanji_component(130,"五","five","go","",100,"","五","4","ご")
Radical131 = new kanji_component(131,"巴","cylinder with a trailing tail","","",100,"","色,把,肥","4","")
Radical132 = new kanji_component(132,"元","base, origin","moto","",100,"","","4","もと")
Radical133 = new kanji_component(133,"井","well","sei","",100,"","","4","せい")
Radical134 = new kanji_component(134,"予","beforehand, previously","yo","",100,"","予,序,野,預,/矛","4","よ")
Radical135 = new kanji_component(135,"屯","","ton","",100,"","屯,純,鈍,頓","4","トン")
Radical136 = new kanji_component(136,"甘","sweet","amai","",100,"","甘,甚,某,勘,紺","5","あまい")
Radical137 = new kanji_component(137,"生","life","umareru","",100,"","牲,甥","5","うまれる")
Radical138 = new kanji_component(138,"用","use","you","",100,"","用","5","よう")
Radical139 = new kanji_component(139,"疋","small animal; bolt of cloth","hiki","",100,"","延","5","ひき")
Radical140 = new kanji_component(140,"疒","sickness","","Top left",100,"","病,症,痛,癖","5","")
Radical141 = new kanji_component(141,"癶","footsteps","","",100,"","発,登","5","")
Radical142 = new kanji_component(142,"白","white","shiro","",100,"","的,皆,皇","5","しろ")
Radical143 = new kanji_component(143,"皮","skin","kegawa","",100,"","披,彼,波","5","けがわ")
Radical144 = new kanji_component(144,"皿","dish","sara","",100,"","皿","5","さら")
Radical145 = new kanji_component(145,"矢","arrow","ya","",100,"","医,族","5","や")
Radical146 = new kanji_component(146,"穴","cave","ana","",100,"","空,突","5","あな")
Radical147 = new kanji_component(147,"立","stand, erect","tatsu","",100,"","立,音,産,翌,意","5","たつ")
Radical148 = new kanji_component(148,"母","mother","haha","",100,"","母","5","はは")
Radical149 = new kanji_component(149,"衤","clothes","","",100,"","初,被,複","5","")
Radical150 = new kanji_component(150,"罒","net","","",100,"","買,罪,置,羅","5","")
Radical151 = new kanji_component(151,"世","society, world; generation","yo","",100,"","","5","よ")
Radical152 = new kanji_component(152,"⺻","brush","","",100,"","津,律,建,書,庸","5","")
Radical153 = new kanji_component(153,"冊","(counting) books","satsu","",100,"","冊,柵,倫,偏,遍,","5","さつ")
Radical154 = new kanji_component(154,"而","rake","","",100,"","耐,需,端,儒","6","")
Radical155 = new kanji_component(155,"","","","",100,"","","","")
Radical156 = new kanji_component(156,"米","rice","kome","",100,"","","6","こめ")
Radical157 = new kanji_component(157,"缶","tin can","kann","",100,"","缶,陶,鬱","6","かん")
Radical158 = new kanji_component(158,"羊","sheep","hitsuji","",100,"","","6","ひつじ")
Radical159 = new kanji_component(159,"羽","feather, wing","hane","",100,"","","6","はね")
Radical160 = new kanji_component(160,"耳","ear","mimi","",100,"","","6","みみ")
Radical161 = new kanji_component(161,"自","self (nose=self)","ji","",100,"","","6","じ")
Radical162 = new kanji_component(162,"至","arrive","itaru","",100,"","","6","いたる")
Radical163 = new kanji_component(163,"舌","tongue","shita","",100,"","","6","した")
Radical164 = new kanji_component(164,"舟","boat","fune","",100,"","","6","ふね")
Radical165 = new kanji_component(165,"艮 ","stopping(?); (good)","ushitora","",100,"良","","6","うしとら")
Radical166 = new kanji_component(166,"良","stopping(?); (good)","ushitora","",100,"艮 ","","6","うしとら")
Radical167 = new kanji_component(167,"虍","tiger stripes","","",100,"","虎,虐,虚,虜,虞","6","")
Radical168 = new kanji_component(168,"虫","insect","mushi","",100,"","","6","むし")
Radical169 = new kanji_component(169,"血","blood","chi","",100,"","","6","ち")
Radical170 = new kanji_component(170,"行","go, do","gyou","",100,"","","6","ぎょう")
Radical171 = new kanji_component(171,"覀","west","nishi","",100,"172","西,価,要,票,煙,","6","にし")
Radical172 = new kanji_component(172,"襾","west","nishi","",100,"171","腰,慄,漂,遷,標,","6","にし")
Radical173 = new kanji_component(173,"臣","minister, official; slave (building a brick wall)","shin","",100,"","","7","しん")
Radical174 = new kanji_component(174,"見","see","miru","",100,"","","7","みる")
Radical175 = new kanji_component(175,"角","horn","tsuno","",100,"","","7","つの")
Radical176 = new kanji_component(176,"言","speech","koto","",100,"","","7","こと")
Radical177 = new kanji_component(177,"谷","valley","tani","",100,"","","7","たに")
Radical178 = new kanji_component(178,"豆","bean","mame","",100,"","","7","まめ")
Radical179 = new kanji_component(179,"豕","pig","inoko","",100,"","","7","いのこ")
Radical180 = new kanji_component(180,"足","foot","ashi","",100,"","","7","あし")
Radical181 = new kanji_component(181,"身","body","mi","",100,"","","7","み")
Radical182 = new kanji_component(182,"辛","spicy, bitter","karai","",100,"","","7","からい")
Radical183 = new kanji_component(183,"辰","dragon; morning","tatsu","",100,"","","7","たつ")
Radical184 = new kanji_component(184,"里","village, mile","sato","",100,"","","7","さと")
Radical185 = new kanji_component(185,"赤","red","aka","",100,"","赤,赦,跡,嚇,繊","7","あか")
Radical186 = new kanji_component(186,"走","race","sou","",100,"","走,赴,徒,起,越,","7","そう")
Radical187 = new kanji_component(187,"長","long, grow; leader","nagai/chou","",100,"","","8","ながい/ちょう")
Radical188 = new kanji_component(188,"門","gate","mon","",100,"","","8","もん")
Radical189 = new kanji_component(189,"隹","small bird","futuri","",100,"","","8","ふるとり")
Radical190 = new kanji_component(190,"青","blue, green","ao","",100,"","","8","あお")
Radical191 = new kanji_component(191,"岡","hill","oka","",100,"","岡,剛,綱,鋼","8","おか")
Radical192 = new kanji_component(192,"免","dismissal","menn","",100,"","免,勉,逸,晩","8","めん")
Radical193 = new kanji_component(193,"斉","Chinese Qi kingdom","sei","",100,"","斉,剤,斎,済","8","せい")
Radical194 = new kanji_component(194,"音","sound","oto","",100,"","","9","おと")
Radical195 = new kanji_component(195,"頁","big shell","oogai","",100,"","","9","おおがい")
Radical196 = new kanji_component(196,"首","neck, head","kubi","",100,"","","9","くび")
Radical197 = new kanji_component(197,"品","item","hin","",100,"","","9","ひん")
Radical198 = new kanji_component(198,"馬","horse","uma","",100,"","","10","うま")
Radical199 = new kanji_component(199,"高","tall, high","takai","",100,"","","10","たかい")
Radical200 = new kanji_component(200,"啇","base, stem","","",100,"","嫡,滴,摘,適,敵","11","")
Radical201 = new kanji_component(201,"無","nothing","mu","",100,"","無,舞","12","む")

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
Radical197,Radical198,Radical199,Radical200,
Radical201 ]