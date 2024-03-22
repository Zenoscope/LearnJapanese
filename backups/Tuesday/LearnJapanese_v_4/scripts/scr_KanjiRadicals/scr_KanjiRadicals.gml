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
	
Radical1 = new kanji_component(1,"人","human, person","hito","*any* <any> _any_",1,"亻","人,欠,夫,肉,丙","2","ひと")
Radical2 = new kanji_component(2,"亻","human, person","...","Left hand side",1,"人","仏,化,付,何,代","2","")
Radical3 = new kanji_component(3,"口","mouth, opening","kuchi","any",1,"none","口,古,可,名,君","3","くち")
Radical4 = new kanji_component(4,"氵","water","","Left hand side",1,"none","泳,決,治,海,演,","3","")
Radical5 = new kanji_component(5,"扌","hand","","Left hand side",1,"none","持,掛,打,批,技,","3","")
Radical6 = new kanji_component(6,"忄","heart","","Left hand side",1,"心","忙,快,怪,怖,性","3","")
Radical7 = new kanji_component(7,"心","heart","kokoro","Bottom",1,"忄","必,芯,忍,忌,秘,","4","こころ")
Radical8 = new kanji_component(8,"手","hand","te","any",1,"none","手,挙","4","て")
Radical9 = new kanji_component(9,"木","tree","ki","any",1,"none","木,相,森,楽,機,","4","き")
Radical10 = new kanji_component(10,"水","water","mizu","any",1,"none","水,永","4","みず")
Radical11 = new kanji_component(11,"土","earth","tsuchi","any",2,"none","土,地","3","つち")
Radical12 = new kanji_component(12,"女","woman, female","onna","any",2,"none","奴,妓,怒","3","おんな")
Radical13 = new kanji_component(13,"宀","roof","","any",2,"none","穴,字,定","3","")
Radical14 = new kanji_component(14,"幺","short thread","","any",2,"none","幻,幼","3","")
Radical15 = new kanji_component(15,"⻖←","mound (阝-left)","","Left hand side",2,"→⻏","阪,防,阻,院,陳","3","")
Radical16 = new kanji_component(16,"→⻏","town (阝-right)","","Right hand side",2,"⻖←","那,邦,郎,部,郭,","3","")
Radical17 = new kanji_component(17,"日","sun, day","nichi","any",2,"none","日,白,百,明,的,","4","にち")
Radical18 = new kanji_component(18,"月","moon, month; body, flesh","tsuki","any",2,"none","有,服,青,朝","4","つき")
Radical19 = new kanji_component(19,"糸","silk","ito","any",2,"none","糸,系,約","6","いと")
Radical20 = new kanji_component(20,"肉","meat","niku","any",2,"none","肉,腐,臠","6","にく")
Radical21 = new kanji_component(21,"貝","shell","kai","any",2,"none","貝,貞,唄","7","かい")
Radical22 = new kanji_component(22,"金","metal, gold","kane","any",2,"none","金,釘,釡","8","かね")
Radical23 = new kanji_component(23,"刀","knife, sword","katana","any",3,"刂","刔,型","2","かたな")
Radical24 = new kanji_component(24,"刂","knife, sword","...","Right hand side",3,"刀","割,利,前","2","")
Radical25 = new kanji_component(25,"十","ten, complete","jū","any",3,"none","午,支,古","2","じゅう")
Radical26 = new kanji_component(26,"又","again, right hand","mata","any",3,"none","支,技,奴","2","また")
Radical27 = new kanji_component(27,"广","on a cliff","","Top left",3,"none","序,店,府","3","")
Radical28 = new kanji_component(28,"囗","enclosure","","Wrap",3,"none","四,回","3","")
Radical29 = new kanji_component(29,"大","big, very","dai","any",3,"none","大,天","3","だい")
Radical30 = new kanji_component(30,"寸","thumb, sundial degree","sun","any",3,"none","寸,寺,守","3","すん")
Radical31 = new kanji_component(31,"尸","corpse","","any",3,"none","尸,尺,声","3","")
Radical32 = new kanji_component(32,"山","mountain","yama","any",3,"none","山,岡,岩,島","3","やま")
Radical33 = new kanji_component(33,"巾","turban, scarf","haba","any",3,"none","市,布,帝,常","3","はば")
Radical34 = new kanji_component(34,"弓","bow","yumi","any",3,"none","弓,引","3","ゆみ")
Radical35 = new kanji_component(35,"彳","step","","Left hand side",3,"none","役,彼,後,得,徳","3","")
Radical36 = new kanji_component(36,"犭","dog","","Left hand side",3,"none","犯,狂,狙","3","")
Radical37 = new kanji_component(37,"文","script, literature","bunn","any",3,"none","文,吝,蚊","4","ぶん")
Radical38 = new kanji_component(38,"火","fire","hi","any",3,"none","火,灯","4","ひ")
Radical39 = new kanji_component(39,"犬","dog","inu","any",3,"none","犬,献,獣","4","いぬ")
Radical40 = new kanji_component(40,"王","king","ou","any",3,"none","王,玉,主,国,弄,","4","おう")
Radical41 = new kanji_component(41,"田","field","ta","any",3,"none","田,町,思,略,番","5","た")
Radical42 = new kanji_component(42,"目","eye","me","any",3,"none","目,見,具,省,眠","5","め")
Radical43 = new kanji_component(43,"石","stone","shi","any",3,"none","石,岩,砂,破,碑","5","いし")
Radical44 = new kanji_component(44,"示","altar, display","shimesu","any",3,"none","示,奈,祭,禁","5","しめす")
Radical45 = new kanji_component(45,"禾","grain","nogi","any",3,"none","利,私,季,和,科,","5","のぎ")
Radical46 = new kanji_component(46,"⺮","bamboo","take","any",3,"none","竹,第,筆,竿","6","たけ")
Radical47 = new kanji_component(47,"衣","clothes","koromo","any",3,"none","n","6","ころも")
Radical48 = new kanji_component(48,"車","cart, car","kuruma","any",3,"none","n","7","くるま")
Radical49 = new kanji_component(49,"酉","wine, alcohol","tori","any",3,"none","n","7","とり")
Radical50 = new kanji_component(50,"雨","rain","ame","any",3,"none","n","8","あめ")
Radical51 = new kanji_component(51,"食","eat, food","shyoku","any",3,"none","n","9","しょく")
Radical52 = new kanji_component(52,"一","one","ichi","any",3,"none","一,戸,旦","1","いち")
Radical53 = new kanji_component(53,"冫","ice","...","Left hand side",4,"...","次,冶,冷","2","")
Radical54 = new kanji_component(54,"丨","line","","any",4,"none","巾,引,中,甲,旧","1","")
Radical55 = new kanji_component(55,"丶","dot","ten","any",4,"none","刃,凡,丹,犬,丼","1","てん")
Radical56 = new kanji_component(56,"丿","bend","","any",4,"none","丈,久,才,万,少","1","")
Radical57 = new kanji_component(57,"乙 ","second, latter","otsu","any",4,"乚","乙,乞,乏,孔,屯","1","おつ")
Radical58 = new kanji_component(58,"乚","second, latter","otsu","any",4,"乙 ","札,礼,宅,乱,枕","1","おつ")
Radical59 = new kanji_component(59,"亅","hook","","any",4,"none","了,丁,才","1","")
Radical60 = new kanji_component(60,"二","two","ni","any",4,"none","井,仁,元,示","2","に")
Radical61 = new kanji_component(61,"亠","lid","...","Top",4,"none","六,玄,市,夜,京","2","")
Radical62 = new kanji_component(62,"𠆢","person (人); (入; roof)","","Top",4,"none","介,合,全,会","2","")
Radical63 = new kanji_component(63,"入","enter","iru","any",4,"none","入,込","2","いる")
Radical64 = new kanji_component(64,"八","eight; divide","hachi","Top",4,"none","八,谷,沿,松,俗","2","はち")
Radical65 = new kanji_component(65,"ハ","animal legs","...","Bottom",4,"none","六,穴,呉,兵,貝","2","")
Radical66 = new kanji_component(66,"儿","human legs","...","Bottom",4,"none","児,兄,四,見","2","")
Radical67 = new kanji_component(67,"丷","grass, plant; horns","...","Top",4,"none","平,半,羊,岡,前","2","")
Radical68 = new kanji_component(68,"凵","container, open mouth","...","Bottom",4,"none","画,凹","2","")
Radical69 = new kanji_component(69,"匚","box","...","Wrap",4,"none","匯,区","2","")
Radical70 = new kanji_component(70,"冂","upside down box","...","Wrap",4,"none","円,冊,再,同","2","")
Radical71 = new kanji_component(71,"冖","cover","...","Top",4,"none","売,学,骨,常","2","")
Radical72 = new kanji_component(72,"几","desk, table","tsukue","Bottom",4,"none","凡,冗,処","2","つくえ")
Radical73 = new kanji_component(73,"九","nine","kyū","any",4,"none","丸,卆,尻","2","きゅう")
Radical74 = new kanji_component(74,"力","power, force","chikara","any",4,"none","男,加,沒","2","ちから")
Radical75 = new kanji_component(75,"乃","","no","Bottom",4,"none","秀,透,携,誘,/及","2","の")
Radical76 = new kanji_component(76,"勹","wrap, embrace","...","Wrap",4,"none","与,勾,匂,欠,巧","2","")
Radical77 = new kanji_component(77,"⺈","knife, sword","...","Top",4,"none","危,争,色,角,免","2","")
Radical78 = new kanji_component(78,"マ","Katakana マ","ma","Top",4,"none","勇,通,湧,痛,踊","2","ま")
Radical79 = new kanji_component(79,"匕","spoon; (七 = seven)","saji","any",4,"none","七,匂,化,叱,北","2","さじ")
Radical80 = new kanji_component(80,"卜","divination","uranai","Right hand side",4,"none","下,朴,占","2","うらない")
Radical81 = new kanji_component(81,"厶","private","mu","any",4,"none","云,刧,公","2","む")
Radical82 = new kanji_component(82,"卩","seal","...","Right hand side",4,"㔾","厄,犯,令,危,印","2","")
Radical83 = new kanji_component(83,"㔾","seal","...","Right hand side",4,"卩","厄,服,卵,命,報","2","")
Radical84 = new kanji_component(84,"厂","cliff","...","Top left",4,"none","仄,圧,后","2","")
Radical85 = new kanji_component(85,"士","scholar, bachelor","samurai","any",4,"none","士,仕,莊","3","さむらい")
Radical86 = new kanji_component(86,"夂","go","","Bottom",4,"none","夏,各,抜","3","")
Radical87 = new kanji_component(87,"夕","evening, sunset","yūbe","any",4,"none","夕,外,多,夜","3","ゆうべ")
Radical88 = new kanji_component(88,"尢","","","any",4,"none","沈,就,蹴,尤,无","3","")
Radical89 = new kanji_component(89,"子","child, seed","ko","any",4,"none","子,字,存,李","3","こ")
Radical90 = new kanji_component(90,"小","small, insignificant","chiisai","any",4,"⺌","小,少,尖","3","ちいさい")
Radical91 = new kanji_component(91,"⺌","small, insignificant","","any",4,"小","当,光,鎖,巣,桜","3","")
Radical92 = new kanji_component(92,"川","river","kawa","any",4,"none","川,州,巡","3","かわ")
Radical93 = new kanji_component(93,"工","work","takumi","any",4,"none","工,左,差","3","たくみ")
Radical94 = new kanji_component(94,"已","oneself","onore","any",4,"none","(己,巳)","3","おのれ")
Radical95 = new kanji_component(95,"亡","dead, gone","nakusu","any",4,"none","亡,妄,忙,忘,盲","3","なくす")
Radical96 = new kanji_component(96,"干","dry","hoshi","any",4,"none","平,年,芋","3","ほし")
Radical97 = new kanji_component(97,"廾","two hands, twenty","","any",4,"none","弁,卉,弄","3","")
Radical98 = new kanji_component(98,"廴","long stride","","Bottom left",4,"none","廷,廸,蜑","3","")
Radical99 = new kanji_component(99,"⻌ ","walk","","Bottom left",4,"辶","巡,迎,通,追,逃,","3","")
Radical100 = new kanji_component(100,"辶","walk","","Bottom left",4,"⻌ ","巡,迎,逃,迎,進","3","")
Radical101 = new kanji_component(101,"也","","","Right hand side",4,"none","地,池,他,施","3","")
Radical102 = new kanji_component(102,"弋","ceremony, shoot, arrow","","any",4,"none","代,弐,杙","3","")
Radical103 = new kanji_component(103,"彐","pig snout","","any",4,"none","当,唐,事","3","")
Radical104 = new kanji_component(104,"彡","hair, bristle, stubble, beard","","any",4,"none","杉,形,参,珍,修","3","")
Radical105 = new kanji_component(105,"丬 (爿)","split wood","","Left hand side",4,"none","北,壮,状,荘,背","3","")
Radical106 = new kanji_component(106,"艹","grass, vegetation","","Top",4,"none","共,花,英,苦,草","3","")
Radical107 = new kanji_component(107,"戈","spear, halberd","","any",4,"none","成,式,弐,戦","4","")
Radical108 = new kanji_component(108,"戸","door, house","to","any",4,"none","戸,戻,所","4","と")
Radical109 = new kanji_component(109,"攵","action, whip","nobunn","any",4,"none","攴,処,各","4","のぶん")
Radical110 = new kanji_component(110,"斗","dipper, measuring scoop","","any",4,"none","図,蚪,萪","4","")
Radical111 = new kanji_component(111,"斤","axe","kinn","any",4,"none","丘,近,沂","4","きん")
Radical112 = new kanji_component(112,"方","way, square, raft","hō","any",4,"none","方,放,旅,族","4","ほう")
Radical113 = new kanji_component(113,"欠","yawn, lack","ketsu","any",4,"none","歌,欧","4","けつ")
Radical114 = new kanji_component(114,"止","stop","tomeru","any",4,"none","止,正,歩","4","とめる")
Radical115 = new kanji_component(115,"歹","death, decay","","any",4,"none","死,列","4","")
Radical116 = new kanji_component(116,"殳","weapon, lance","rumata","any",4,"none","役,投,殴","4","るまた")
Radical117 = new kanji_component(117,"毋","do not","","any",4,"none","毎,梅","4","")
Radical118 = new kanji_component(118,"比","compare, compete","kuraberu","any",4,"none","皆,昆","4","くらべる")
Radical119 = new kanji_component(119,"毛","fur, hair","ke","any",4,"none","尾,竓,耗","4","け")
Radical120 = new kanji_component(120,"氏","clan","uji","any",4,"none","氏,民,紙","4","うじ")
Radical121 = new kanji_component(121,"气","steam, breath","","any",4,"none","汽,気","4","")
Radical122 = new kanji_component(122,"灬","fire","","any",4,"none","焦,然,煮","4","")
Radical123 = new kanji_component(123,"爪","claw, nail, talon","tsume","any",4,"⺤ ","爪,妥,采,乳,受","4","つめ")
Radical124 = new kanji_component(124,"父","father","chichi","any",4,"none","釜,交,咬","4","ちち")
Radical125 = new kanji_component(125,"牛","cow","ushi","any",4,"none","牛,告,牧,物,特","4","うし")
Radical126 = new kanji_component(126,"礻","altar, display","","any",4,"none","礼,社,神,視,福","4","")
Radical127 = new kanji_component(127,"耂","old","","any",4,"none","孝,考,者","4","")
Radical128 = new kanji_component(128,"勿","do not","","any",4,"none","勿,刎,吻","4","")
Radical129 = new kanji_component(129,"五","five","go","any",4,"none","五,吾,悟","4","ご")
Radical130 = new kanji_component(130,"巴","cylinder with a trailing tail","","any",4,"none","色,把,肥","4","")
Radical131 = new kanji_component(131,"元","base, origin","moto","any",4,"none","元,玩,冦","4","もと")
Radical132 = new kanji_component(132,"井","well","sei","any",4,"none","井,囲,耕","4","せい")
Radical133 = new kanji_component(133,"予","beforehand, previously","yo","any",4,"none","予,序,野,預,/矛","4","よ")
Radical134 = new kanji_component(134,"屯","tonne","ton","any",4,"none","屯,純,鈍,頓","4","トン")
Radical135 = new kanji_component(135,"甘","sweet","amai","any",4,"none","甘,甚,某,勘,紺","5","あまい")
Radical136 = new kanji_component(136,"生","life","umareru","any",4,"none","牲,甥","5","うまれる")
Radical137 = new kanji_component(137,"用","use","you","any",4,"none","用,鼡,俑","5","よう")
Radical138 = new kanji_component(138,"疋","small animal; bolt of cloth","hiki","any",4,"none","延,定淀","5","ひき")
Radical139 = new kanji_component(139,"疒","sickness","","Top left",4,"none","病,症,痛,癖","5","")
Radical140 = new kanji_component(140,"癶","footsteps","","any",4,"none","発,登","5","")
Radical141 = new kanji_component(141,"白","white","shiro","any",4,"none","的,皆,皇","5","しろ")
Radical142 = new kanji_component(142,"皮","skin","kegawa","any",4,"none","披,彼,波","5","けがわ")
Radical143 = new kanji_component(143,"皿","dish","sara","any",4,"none","皿,血,盂","5","さら")
Radical144 = new kanji_component(144,"矢","arrow","ya","any",4,"none","医,族","5","や")
Radical145 = new kanji_component(145,"穴","cave","ana","any",4,"none","空,突","5","あな")
Radical146 = new kanji_component(146,"立","stand, erect","tatsu","any",4,"none","立,音,産,翌,意","5","たつ")
Radical147 = new kanji_component(147,"母","mother","haha","any",4,"none","母,侮,拇","5","はは")
Radical148 = new kanji_component(148,"衤","clothes","","any",4,"none","初,被,複","5","")
Radical149 = new kanji_component(149,"罒","net","","any",4,"none","買,罪,置,羅","5","")
Radical150 = new kanji_component(150,"世","society, world; generation","yo","any",4,"none","世,泄,楪","5","よ")
Radical151 = new kanji_component(151,"⺻","brush","","any",4,"none","津,律,建,書,庸","5","")
Radical152 = new kanji_component(152,"冊","(counting) books","satsu","any",4,"none","冊,柵,倫,偏,遍","5","さつ")
Radical153 = new kanji_component(153,"而","rake","","any",4,"none","耐,需,端,儒","6","")
Radical154 = new kanji_component(154,"","","","any",4,"none","","","")
Radical155 = new kanji_component(155,"米","rice","kome","any",4,"none","米,来,粁","6","こめ")
Radical156 = new kanji_component(156,"缶","tin can","kann","any",4,"none","缶,陶,鬱","6","かん")
Radical157 = new kanji_component(157,"羊","sheep","hitsuji","any",4,"none","羊,祥,羌","6","ひつじ")
Radical158 = new kanji_component(158,"羽","feather, wing","hane","any",4,"none","竹,笑,笛","6","はね")
Radical159 = new kanji_component(159,"耳","ear","mimi","any",4,"none","耳,耶,恥","6","みみ")
Radical160 = new kanji_component(160,"自","self (nose=self)","ji","any",4,"none","自,臭,息","6","じ")
Radical161 = new kanji_component(161,"至","arrive","itaru","any",4,"none","至,屋,咥","6","いたる")
Radical162 = new kanji_component(162,"舌","tongue","shita","any",4,"none","舌,舍,舐","6","した")
Radical163 = new kanji_component(163,"舟","boat","fune","any",4,"none","舟,般,舶","6","ふね")
Radical164 = new kanji_component(164,"艮 ","stopping(?); (good)","ushitora","any",4,"良","艮,退,根","6","うしとら")
Radical165 = new kanji_component(165,"良","stopping(?); (good)","ushitora","any",4,"艮 ","艮,退,根","6","うしとら")
Radical166 = new kanji_component(166,"虍","tiger stripes","","any",4,"none","虎,虐,虚,虜,虞","6","")
Radical167 = new kanji_component(167,"虫","insect","mushi","any",4,"none","虫,風,虹","6","むし")
Radical168 = new kanji_component(168,"血","blood","chi","any",4,"none","血,洫,衄","6","ち")
Radical169 = new kanji_component(169,"行","go, do","gyou","any",4,"none","行,哘,術","6","ぎょう")
Radical170 = new kanji_component(170,"覀","west","nishi","any",4,"襾","西,価,要,票,煙","6","にし")
Radical171 = new kanji_component(171,"襾","west","nishi","any",4,"覀","腰,慄,漂,遷,標","6","にし")
Radical172 = new kanji_component(172,"臣","minister, official; slave (building a brick wall)","shin","any",4,"none","臣,臥,煕","7","しん")
Radical173 = new kanji_component(173,"見","see","miru","any",4,"none","見,現,覓","7","みる")
Radical174 = new kanji_component(174,"角","horn","tsuno","any",4,"none","角,埆,觝","7","つの")
Radical175 = new kanji_component(175,"言","speech","koto","any",4,"none","言,訳,訂","7","こと")
Radical176 = new kanji_component(176,"谷","valley","tani","any",4,"none","谷,浴,欲","7","たに")
Radical177 = new kanji_component(177,"豆","bean","mame","any",4,"none","豆,荳,凱","7","まめ")
Radical178 = new kanji_component(178,"豕","pig","inoko","any",4,"none","豕,家,隊","7","いのこ")
Radical179 = new kanji_component(179,"足","foot","ashi","any",4,"none","足,捉,踞","7","あし")
Radical180 = new kanji_component(180,"身","body","mi","any",4,"none","身,躯,躱","7","み")
Radical181 = new kanji_component(181,"辛","spicy, bitter","karai","any",4,"none","辛,倖,報","7","からい")
Radical182 = new kanji_component(182,"辰","dragon; morning","tatsu","any",4,"none","辰,唇,晨","7","たつ")
Radical183 = new kanji_component(183,"里","village, mile","sato","any",4,"none","里,厘,狸","7","さと")
Radical184 = new kanji_component(184,"赤","red","aka","any",4,"none","赤,赦,跡,嚇,繊","7","あか")
Radical185 = new kanji_component(185,"走","race","sou","any",4,"none","走,赴,徒,起,越","7","そう")
Radical186 = new kanji_component(186,"長","long, grow; leader","nagai/chou","any",4,"none","長,髟,脹","8","ながい/ちょう")
Radical187 = new kanji_component(187,"門","gate","mon","any",4,"none","門,問,間","8","もん")
Radical188 = new kanji_component(188,"隹","small bird","futuri","any",4,"none","隹,隼,進","8","ふるとり")
Radical189 = new kanji_component(189,"青","blue, green","ao","any",4,"none","青,清,晴","8","あお")
Radical190 = new kanji_component(190,"岡","hill","oka","any",4,"none","岡,剛,綱,鋼","8","おか")
Radical191 = new kanji_component(191,"免","dismissal","menn","any",4,"none","免,勉,逸,晩","8","めん")
Radical192 = new kanji_component(192,"斉","Chinese Qi kingdom","sei","any",4,"none","斉,剤,斎,済","8","せい")
Radical193 = new kanji_component(193,"音","sound","oto","any",4,"none","音,意,韵","9","おと")
Radical194 = new kanji_component(194,"頁","big shell","oogai","any",4,"none","頁,順,傾","9","おおがい")
Radical195 = new kanji_component(195,"首","neck, head","kubi","any",4,"none","首,馗,道","9","くび")
Radical196 = new kanji_component(196,"品","item","hin","any",4,"none","品,嵒,嫗","9","ひん")
Radical197 = new kanji_component(197,"馬","horse","uma","any",4,"none","馬,馭,馴","10","うま")
Radical198 = new kanji_component(198,"高","tall, high","takai","any",4,"none","高,蒿,稾","10","たかい")
Radical199 = new kanji_component(199,"啇","base, stem","","any",4,"none","嫡,滴,摘,適,敵","11","")
Radical200 = new kanji_component(200,"無","nothing","mu","any",4,"none","無,舞","12","む")


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
]