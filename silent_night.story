:: start
嗯……那首著名的圣诞诗怎么说的来着？
<<set $aries_describe_visited = false>>
<<set $bos_describe_visited = false>>
<<set $describe_mari_visited = false>>
<<set $describe_artesa_visited = false>>
<<set $wake_no_idea_visited = false>>
<<set $alone_qtrs_visited = false>>
<<set $check_shep_visited = false>>
<<set $wake_after_briefing_visited = false>>
<<set $go_ready_room_visited = false>>
<<set $cockpit_now_visited = false>>
<<set $footsteps_qtrs_visited = false>>
<<set $artesa_talk_visited = false>>
<<set $shepherd_talk_visited = false>>
<<set $key_talk_visited = false>>
<<set $cockpit_mission_visited = false>>
<<set $walk_bunk_visited = false>>
<<set $don_aries_bos_visited = false>>
<<set $don_aries_visited = false>>
<<set $break_up_bos_visited = false>>
<<set $cockpit_no_mission_visited = false>>
<<set $dive_in_bos_visited = false>>
<<set $help_navs_visited = false>>
<<set $nav_code_visited = false>>
<<set $grab_crystals_visited = false>>
<<set $no_fix_visited = false>>
<<set $arrive_ready_first_visited = false>>
<<set $no_one_knows_visited = false>>
<<set $footsteps_approaching_visited = false>>
<<set $its_bos_visited = false>>
<<set $galley_door_visited = false>>
<<set $hoping_time_visited = false>>
<<set $no_other_way_visited = false>>
<<set $mentioned_again_visited = false>>
<<set $footsteps_cockpit_visited = false>>
<<set $doctalk = false>>
<<set $sheptalk = false>>
<<set $gotalien = false>>
<<set $aliencaught = false>>
<<set $alienmention = false>>
<<set $artesaout = false>>
<<set $ayainfected = false>>
<<set $backpack = false>>
<<set $describeminers = false>>
<<set $describeothers = false>>
<<set $docknocked = false>>
<<set $end = null>>
<<set $explosive = false>>
<<set $icepack = false>>
<<set $ievasuit = false>>
<<set $maploc = "crewqtrs">>
<<set $mapmention = false>>
<<set $marilaunched = false>>
<<set $marinestrapped = false>>
<<set $mentionedtunguskite = false>>
<<set $minerfight = false>>
<<set $pills = 0>>
<<set $pulsegun = false>>
<<set $shotdon = false>>
<<set $triedlights = false>>
<<set $tunguskite = false>>
<<set $turnedgreen = false>>
[[old_poem]]


:: old_poem
“就在圣诞前夜，就在整艘飞船里。
我们被尖锐的雷达警报声惊醒？”
[[没这样的诗吧。|not_poem]] | [[唔……是谁？|whos_this]]


:: lucky_star
就是这！样！的！
我是说，我可是费了吃奶的劲儿才发射出了个失事信标……
……不过，说实话，我真是走了狗屎运，他们的采矿船刚好经过那个星区。
……我在那个叫天天不灵叫地地不应的混蛋卫星上过了三天——
要不是他们来搭救，我觉得我多半再也熬不过三！分！钟！
话又说回来，这可是圣诞节啊。注定充满奇迹的季节，对吧？
[[是有这么一说。|alien_talk]] | [[那颗卫星上就你一个人？|alone_moon]]


:: actual_aliens
也不全是……我知道这听起来实在是太邪门儿了，但是那里真的有活的外星生命体。
恐怖的小……我也说不清楚，我决定管那些货叫“寄生怪”。
是种诡异的绿色生命形态，能进入人体和老鼠体内——不管宿主是死是活——
宿主就像是他们的衣服一样，被他们穿着，指挥着，到处活动。
他们还把宿主的眼睛变成荧光绿，简直像是部史蒂芬∙金的故事。
我不是指的那部《伴我同行》，我说的是有恐怖的绿眼睛的那一部。
[[基弗∙萨瑟兰就有恐怖绿眼睛。《伴我同行》里就有他，而且他的眼睛真的有点怪。|kiefer]] | [[外星人……听着好吓人啊。|scary_aliens]]
//Stand By Me is a film adaptation of a Stephen King story; Kiefer Sutherland is one of the stars.


:: unicorn_news
要是有彩虹屁，他们岂不是要疯了。
……唔。
奇怪。
[[什么奇怪？|shiny_interest]] | [[你还好吧？|okay_interest]]


:: how_long_marooned
我在那里困了漫长的三天。
我是说，天仓星的三次升起落下。不太确定换成地球时间算是多久。
话说，我运气实在是太好了，白星号收到了我的求救信号，及时赶到，当时……
要不是他们来搭救，我看我多半再也熬不过三！分！钟！
话又说回来，这可是圣诞节啊。注定充满奇迹的季节，对吧？
[[是有这么一说。|alien_talk]] | [[那颗卫星上就你一个人？|alone_moon]]


:: alien_talk
那会儿我简直什么菩萨都要拜了……
……然后白星号从天而降——字面意义的——帮我逃出生天。
要是突然蹦出一只独角兽，屁股后面喷出一道彩虹屁，屁的一头连着地球……
……我也不！会！这么惊讶！
（有道理，等我回了地球，我就拿这个当真！事！讲了。）
[[肯定受欢迎。^这个时代，大家都把见到独角兽当大新闻。|unicorn_news]] | [[你说不定能开创个新潮流。|start_cult]]


:: sorry_woke
哎，是啊。我不是在梦到外星人……
……就是在去梦到外星人的路上。
总会梦到的。
说起警报器，我真该去看看出什么状况了。
说起外星人……我真心希望不是外星人。
等我脱了这身睡衣，然后……
嗯？
有意思。
[[什么有意思？|shiny_interest]] | [[你还好吧？|okay_interest]]


:: how_long_home
<<set $mentionedtunguskite = true>>
说实话，我不清楚究竟我们几时能到地球。
玛瑞是白星号的领航员，她计划好了航线。
明显嘛，那是她的工作，我看她挺在行的。
但问题是，白星号的商载，把一切都搞没了。
我可以……我可以试试看能不能给你解释下。不过得等一会儿。
至于现在嘛……嗯……
[[shiny_interest]]


:: StoryTitle
生命线：静夜


:: not_poem
哎，对，你要原谅我是个理科生，没什么文学修养。
虽然我没梦到圣诞糖梅（那是什么玩意儿？）……
……从那颗卫星上逃出来以后，我这还是头！一！回！睡个踏实觉。
我头一回没一身冷汗惊醒过来，脑子里还萦绕着瓦里亚号的队员……
……他们那诡异的绿眼睛和超自然神力……
……相反的是，警报器铃声大作，居然把我猛地惊醒，差点摔下了床。
[[说慢点，麻烦给点解释。^我简直不懂你在说什么。|slow_down]] | [[不会吧，你不会真是他吧？^这个故事听起来似曾相识。你真的是……泰勒？|are_you_taylor]]


:: whos_this
哦哟，我还真没礼貌。不好意思啊。
我叫泰勒。
是宇航员里的学生兵，原属瓦里亚号。瓦里亚号原来是艘宇宙飞船。
不过，在飞越天仓星系时，从天上掉到一颗荒凉的卫星上，摔成了一堆破铜烂铁。
我就跟没了壳的寄居蟹一样乱窜……
……直到采矿船白星号好心地扑身下来救了我。
[[哇，你运气真好。|lucky_star]] | [[哦，耶！泰勒！我就知道是你！|know_taylor]]


:: know_taylor
太棒了！我说怎么听你打字这么耳熟呢！
又遇到你真是太好了！
[[真高兴又见面了！你还好吧？|how_you_been]] | [[你被困了多久？|how_long_marooned]]


:: alone_moon
哦，严格地说，我可不是一！个！人！
我还有阿雅船长，虽说她当时没有（现在还没有）知觉……
……我还有四只带上船用来做实验的老鼠。
哦，还有，你懂的……外星人。
可不能把外星人给忘了。
<<if $alienmention is false>>[[什么？你是说非法移民吗？|illegal_aliens]] | [[你指的是真的外！星！人！吗？|actual_aliens]]
<<elseif $alienmention is true>>[[哦，对，你说过了。|mentioned_aliens]] | [[你指的是真的外！星！人！吗？|actual_aliens]]
<<endif>>


:: start_cult
呵呵，也许是的哦。
我一直觉得，最麻烦的问题多半是要所有人就鞋子的问题达成共识吧。
满屋子的人穿同款球鞋，一定会死吗？
我估计有人会就这个问题进行一大篇关于时尚的辩论吧——
嗯。
奇怪。
[[什么奇怪？|shiny_interest]] | [[你还好吧？|okay_interest]]


:: safe_earth
是啊，可能吧。我看那！是！早晚的事。
[[how_long_home]]


:: okay_interest
嗯，是的，一切都好，我觉得吧。
[[shiny_interest]]


:: weight_problem
不是，重量不是个问题。在宇宙的真空里，重量完全没有意义。
白星号能带多少就带多少，一点不影响起飞。
他们一冲出大气层，就基本上松了一口气。
[[那有什么问题呢？|what_problem]] | [[什么是商载？|what_payload]]


:: what_payload
我提到过，白星号是一艘采矿船。
他们会到我之前在的星区——差不多算是外太空里的荒山野岭的地方——
是因为他们刚去了更偏远的一颗星球，正在返航路上。
他们去的那颗行星不但没人勘测过，连个名字都没有。就只有一个编号。
叫U33J6号。
[[听着很棒嘛。^简直是建避暑山庄的好地方。|summer_home]] | [[为什么他们要去那里？|why_there]]


:: summer_home
是啊，我肯定那里基本上就是土豪的度假胜地，只是高尔夫球场少点，陨石坑多点。
（哈，这么说来，一杆进洞那还不是小事一桩啊？）
[[why_there]]


:: StoryAuthor
Dave Justus


:: slow_down
哎呀，不好意思啊。我八成有点操之过急了。
我叫泰勒。
是宇航员里的学生兵，原属瓦里亚号。瓦里亚号原来是艘宇宙飞船。
它坠毁在天仓星系的一颗荒凉卫星上，成了两截变形的破铜烂铁。
[[啊？好惨啊。|rough_contact]] | [[很高兴认识你，泰勒。|nice_meet]]


:: are_you_taylor
士官生泰勒，原属瓦里亚号，愿听候您吩咐。
（前提是你的吩咐，不会比让我揉掉自己眼屎更麻烦。）
想我了没？
[[想死我了！|really_missed]] | [[呃，没怎么想。^说实话，你之前真是牢骚满腹烦死人。|kinda_whiny]]


:: how_you_been
还行，没什么好抱怨的。
（没什么不！好！抱怨的。）
我受了点小伤，受了点小惊吓，有点腻味了太空速食餐……
……哦， 还有点“再也不想被外星人爬进我嘴”。
除此之外，我感觉不要太好！
我不在这段时间，你有没有想我？
[[说实话，我还挺想你的。|really_missed]] | [[没怎么想。^说实话，你之前真是牢骚满腹烦死人。|kinda_whiny]]


:: illegal_aliens
要知道，我没想过看他们有没有工作签证。
不过，不是那样的。我是说这些是真的活外星生物。
恐怖的小……我也说不清楚，我决定管那货叫“寄生怪”。
是种诡异的绿色生命形态，能进入人体和老鼠体内——不管宿主是死是活——
宿主就像是他们的衣服一样。被他们穿着，指挥着，到处活动。
他们还把宿主的眼睛变成荧光绿，简直像是部史蒂芬∙金的故事。
我不是指的那部《伴我同行》，我说的是有恐怖的绿眼睛的那一部。
[[基弗∙萨瑟兰就有恐怖绿眼睛。^《伴我同行》里就有他，而且他的眼睛真的有点怪。|kiefer]] | [[外星人。听上去……好吓人啊。|scary_aliens]]
//Stand By Me is a film adaptation of a Stephen King story; Kiefer Sutherland is one of the stars.


:: mentioned_aliens
哎，是吧……算是大家会提的那类事情吧。
[[actual_aliens]]


:: shiny_interest
哦……我眼睛的余光，瞄到点东西，在窗户外面。
发亮的东西。
不该在太空里看到的东西。
[[是什么？|shiny_okay]] | [[会不会是卫星？^是不是什么人造设备，比如探测飞船之类的？|manmade_object]]


:: manmade_object
唔……可能吧？
不打包票的可能？
这个星区人烟稀少。可以说是人迹罕至。
说实话，在这里，“人迹”这个词都用不到。
所以，突然在这里的航道上看到有什么东西……还是有点怪。
[[好吧，那是什么呢？|shiny_okay]] | [[要是不是人造的，还会是什么呢？^要是不是人造设备……那这玩意儿是打哪里钻出来的呢？|shiny_okay_2]]

:: shiny_okay_2
[[shiny_okay]]

:: what_problem
问题不是我们运的物品的重量……
……是我们运的物品的性质。
你可别指望我对货舱里的货物性质真了解得那么透彻啊。
[[what_payload]]


:: why_there
他们飞去的那颗行星，近距离环绕一个黑洞运转。
它刚好稳定在黑洞的事件视角之外，没掉进黑洞里去……
……但是黑洞对它有奇特的影响。
而且特别是对那里的某种特殊矿物有影响。他们去那里采掘的就是那种特殊矿物。
[[是什么矿？|what_mineral]] | [[有什么影响？|what_effects]]


:: not_dead
<<set $alienmention = true>>
那颗卫星上……有一！些! 玩意儿！是外星生命。
它们钻进我做实验的老鼠身体里……操纵它们——至少我觉得就是这么样的。
然后它们还占据了瓦里亚号船员的身体。
它们还想，想要控制我。想……通过我的嘴巴爬进我的身体里！
[[外星人？你是说真！正！的外星人吗？|actual_aliens]] | [[真让人毛骨悚然。|scary_aliens]]


:: kiefer
哦，那个演员啊，其实，那家伙的眼睛是一只绿一只蓝。
所以你觉得他的眼睛好“惊悚”。
那是因为他有种叫虹膜异色症的基因病。我以前在学校里学过。
不过，据我所知，基弗∙萨瑟兰从没试过爬进人家的嘴巴里去操纵谁。
只是据我所知。
[[那你也不能100%确定啊。|never_sure]] | [[好吧。搞笑的吗？外星人？|scary_aliens]]



:: scary_aliens
<<if $mentioned_again_visited is true>>
等我意识到我可不是那里唯一的活物时，还同时遭遇了一万件事……
<<else>>真！的！非！常！惊！悚！
等我意识到我可不是那里唯一的活物时，还同时遭遇了一万件事……<<endif>>
……那里是坠毁飞船的坟场，那里有一座山，山峰里有一排排的电脑控制系统……
……那里有一种脉冲武器，能将时空中的目标击落……
……而且，最糟的是，我只剩一袋辣椒通心粉了……
……所以我基本上没有时间被外星人吓尿了。
但是，自从我逃出了那个星球，那些事情在我的脑海里一直挥之不去。
我看我做恶梦的问题，一时半会儿是好不了的啦。
[[也许等你回地球就好了。^等你一站在地球的土地上，也许你就又会有安全感了。|safe_earth]] | [[真可惜，警报器把你吵醒了。^要不是因为警报响了，你这一觉睡得还挺香嘛。|sorry_woke]]

:: mentioned_again
<<set $mentioned_again_visited = true>>
是啊，我经常说过就忘。
我没说过这点吗？
无所谓了。
[[scary_aliens]]

:: never_sure
有道理。我是说，他爸唐纳德∙萨瑟兰不就演过外星人嘛。
这估计也是能基因遗传的。
总之，我们都说跑题了。我离题万里的水平高强，地球人都知道。
不过，话说回来。那颗石头卫星上就只有我，和一大堆外星怪物。
[[对，你说过了。|mentioned_again]] | [[简直是毛骨悚然。|scary_aliens]]


:: why_me_2
[[why_me]]

:: why_me
这个么，呃……我不太清楚你个人对宇宙有多少了解……
……不过嘛，宇宙无边无际，而且其中绝大部分都很惊悚可怕。
即使是现在——在人家的飞船上做客，周围都是牛人——
我还是有点害怕。
不过和你用这种方式来交流——语音转化成文本的方式——
你帮我渡过了无比艰难的一关。
救了我的命。更重要的是，让我集中精力。
这可不是什么我随便就能抛在脑后的事情——
嘿！瞧！有什么东西在闪！
[[你简直太二了。^你对闪光物品的迷恋，堪称人类里的喜鹊，你知道吧？|magpie_person]] | [[是什么东西？什么东西？|whats_shiny]]


:: really_missed
嘿，说实话，你这么说真是太客气了。
我知道，以前——在那颗卫星上你帮我那会儿——我状态不怎么好。
（哎，我还是别装腔作势了。那是我这辈子第二倒霉的时候了。）
（最倒霉的宝座，中学毕业舞会肯定是当仁不让啦。）
不过你陪我坚持到底，我们挺了过来。
我们一起。
这就是为什么现在我又联络上了你。
[[是啊……为什么是我呢？|why_me]] | [[你不是一个人。^船上还有别人呢。你不用只依靠我啊。|why_me_2]]





:: what_effects
嘿，我可不是天体物理学家。
我可以试试拿外行的话来解释一下，这样咱俩都懂。
它把那些矿物变得非！常！高！级！
[[tunguskite]]


:: what_mineral
这种矿物叫“通古斯石”。
至于这玩意儿究竟是！什！么？能做！什！么？…………我就不是特别清楚了。
[[tunguskite]]


:: nice_meet
谢谢你。你也是。
你，呃，八成觉得我简直是古怪吧……
……这样穿越时空随便找到个陌生人侃大山。
这个么，呃……我不太清楚你个人对宇宙有多少了解……
……不过嘛，宇宙无边无际，而且其中绝大部分都很惊悚可怕。
即使是现在——在人家的飞船上做客，周围都是牛人——
我还是有点害怕。
不过这个装在手套上的通讯器——能把语音转化成文本——
在之前那颗恐怖的卫星上，帮我熬过无比艰难的一关。
救了我的命。更重要的是，帮助我集中精力。
这可不是什么我随便就能抛在脑后的东西——
嘿！瞧！有什么东西在闪！
[[你简直太二了。^你对闪光物品的迷恋，堪称人类里的喜鹊，你知道吧？|magpie_person]] | [[是什么东西？|whats_shiny]]





:: rough_contact
是啊。“惨”倒是……唔……可以形容得八九不离十。
这个么，呃……我不太清楚你个人对宇宙有多少了解……
……不过嘛，宇宙无边无际，而且其中绝大部分都很惊悚可怕。
即使是现在——在人家的飞船上做客，周围都是牛人——
我还是有点害怕。
所以我才又重新启动了这个安装在手套上的通讯器，这个小小的语音—文本转化设备。
它穿越宇宙，联络上你……
……不管你是谁，身在何处。
在之前那颗卫星上时，我就这么来过一次了——我找了个人一直保持联系。
我靠这办法，才从鬼门关脱身。
言归正传。我说过了，我从前坐的那艘飞船，瓦里亚号，在那颗卫星上坠毁了。
其余的船员……哦，我想办法把受重伤的船长安置到一个医疗舱里……
……但是别的人全都遇难了。
然后，过了几天……他们都！没！死！
[[你是什！么！意思？|not_dead]] | [[你被困了多久？|how_long_marooned]]


:: magpie_person
你懂的，那都是没文化的大妈们的无稽之谈。
各种研究都证明了喜鹊对偷亮闪闪的东西没兴趣。
它们其实会尽量避开亮东西。
相信我，我还是差不多上完了几门科学课的。我可不是在扯淡。
[[好吧。好吧。那你看到的发亮的是什么？|whats_shiny]] | [[你那边一切都还好吧？|shiny_okay]]


:: whats_shiny
我……我也说不上来…
它在动……速度挺快，我觉得应该有动力。
肯定不是什么小星星周末出来溜个小弯儿……
……是……一艘飞船。
这就解释了为什么警报会响了。啊呀！响！够！了！没？能不能把警报关了啊？
[[是别的飞船吗？|shiny_okay]] | [[也许只是颗彗星。^宇宙里到处是破烂玩意儿，没必要紧张。|no_freak]]


:: kinda_whiny
嘿，你知道吗？说得挺对。
我猜，我在一颗鸟不生蛋的卫星上孤孤单单地乱窜时……
……搞得身上到处是伤，还差点饿死时……
……最后还遭遇了一支能从时！空！里击毁飞船的邪恶外星势力时……我确！实！有点小唠叨。
也许我确！实！稍微嘀咕了一点点。
有机会咱俩交换交换。看看你能不能挺过这些，还声儿都不吭一下。
[[好，好。为什么联系上我呢？|why_me_whine]] | [[没问题，我可强悍着呢！|im_tough]]


:: why_me_whine
说真的吗？因为……我觉得你能帮我。
我知道这听起来很老土，但我是真心的。
……宇宙无边无际，而且其中绝大部分都很惊悚可怕。
即使是现在——在人家的飞船上做客，周围都是牛人——
我还是有点害怕。
不过靠这个装在手套上的通讯器——能把语音转化成文本——我跟你交流……
你帮我渡过了无比艰难的一关。
救了我的命。更重要的是，让我集中精力。
当灾难降临时，你就是那个支持我帮助我的人。
你会听我吐槽……也会及时制止我吐不完的槽。
[[你是可以稍微发发牢骚。|earned_whine]] | [[坚强点，学学我。|im_tough]]


:: shiny_okay
<<set $mapmention = true>>
你这问题……真是问得好啊！
通过船员卧舱里的右舷视窗，我只能看到太空里很窄小的一部分景象。
我肯定，只要我能去驾驶舱的话——
我能看得更清楚点——
而且，你懂的，还能弄到点仪器的数据，借鉴点其他船员的专家意见。
（忘了说，这个通讯器是带有动态地图功能的……
……所以，你可以随时看到我在船上的位置。）
（怎么样，算是个奖励吧？）
[[绝对算，你去驾驶舱吧。|go_to_cockpit]] | [[不行，你就呆在卧舱里。|stay_in_quarters]]


:: crew_handle
对。是的。当然你说得没错。
这里一堆堆的规矩。
就跟……跟瓦里亚号一样，有被从时空中打下来的规矩。
哦，等一下，就是这样，我们瓦里亚号上完全没！有！规矩。
是我的错。
死了！死了！死了！我们死翘翘了。
[[你没！死！放轻松点。^你是倒了不少霉。差点挂了。但你会没事的。|not_dead_yet]] | [[那种东西是什么样的？|shiny_okay]]


:: tunguskite
这种矿物是晶体状的，有一种复杂的晶格结构。
那种结构好像能无比有效地……
……捕获并存储霍金辐射产生出的负能量。
由于事件视界处有黑洞量子效应……
……说明黑洞在不断吐出霍金辐射，就跟大学新生喝多了一样。
……这种通古斯石刚好占尽天时地利……
……能够吸收所有这些我们本来不能存储的东西。
[[我听糊涂了。^你这话里面尽是科学术语，太艰涩了。|too_much_science]] | [[你们带的货是负能量？|hauling_neg]]


:: no_freak
好吧，首先，我没！有！吓尿。
其次，如果我真！的！吓尿了，也是因为我刚想起来，对……
……太空里确！实！是有各种各样的垃圾……
……而且有的就其敌意来说，绝对是逆天了。那些长着绿眼睛之类的玩意儿。
再次，那！就！是！我吓尿的原因。
[[冷静点。^不管那是什么，我确定白星号的船员们能搞定的。|crew_handle]] | [[你觉得那是艘船吗？|shiny_okay]]


:: earned_whine
当然！谢谢你。
我在尽量不滥用我的特权。
比如，现在，我在有意识地选择不嘀咕那个亮闪闪的东西……
……那个在右舷视窗外的太空里闪耀的东西……
……虽然我也不知道那是什么玩意儿……
……虽然它让人非常十分无比地……闹心……
[[嘿，振作起来！^你对闪光物品的迷恋，堪称人类里的喜鹊，你知道吧？|magpie_person]] | [[是什么？外面有什么东西？|whats_shiny]]


:: im_tough
哦哟，糟糕，我肯定离开地球老家太久了，比我想得还久。
他们都把“硬汉”的意思改成了“异想天开”了。
我还错过了啥？是不是“上”变成了“下”？“内”有没有变成“外”？
他们有没有把李安的电影改名成《站虎显龙》？
[[你是不是该去看一眼警报器啊？^你尽浪费时间唧唧歪歪，对弄清前来的东西是什么一点用都没有。|closing_in]] | [[先别开玩笑了，快去看一眼雷达吧。|check_radar]]
//Nick Nolte movie's original title is Down And Out In Beverly Hills.


:: closing_in
或者弄清“后去的东西”。
（不好意思啦。）
[[check_radar]]


:: hauling_neg
我想差不多就是这样子的。
那种晶体能吸收本来只能存在瞬间的虚粒子……
……并且能将它们一直保存下来。
（说实话，我觉得听着一点都不安全靠谱。不过，我连砖家都算不上，对吧？）
[[是啊……听起来真是危险。|danger_crystals]] | [[它怎么会让你们偏离航线？|off_course]]


:: too_much_science
你瞧瞧我，我还是个理科生呢，可是*我*对刚才我说的那番话，有一半都不懂。
你可以这么理解，我们有魔法月球石，具备时间和波浪变化无常的能力，好吧？
或者我们有一个动物园的宠物石头，还没有驯化。
所以，有很大可能性，这些玩意儿会咬人或在地上撒尿。
[[这可开不得玩笑。^好吧，你这么说，感觉确实像有潜在危险啊。|danger_crystals]] | [[它们怎么会让你们偏离航线呢？|off_course]]
//Idiom: "wibbly wobbly timey wimey" is a Doctor Who phrase.


:: not_dead_yet
哦哟，哪怕我就是死了，还可能会有东西爬到我的嘴巴里……
……把我当衣服穿着到处晃悠，像件“泰勒服”一样。
然后人们还会当我没死，照常过我的日子……
……说不定谁都不会注意到真正的我已经死了。
[[我肯定，那样你会少饶点舌。|talk_less]] | [[够啦，快去瞧瞧是什么在闪光吧。^你慌得跟没头苍蝇一样……你到底看出那是什么东西没？|shiny_okay]]


:: stay_in_quarters
额。好吧。我猜也是个选项。
我觉得这几天，我无聊地抠手都抠到要断了……
……但是，好吧，要是我在这里坐得够久，一定会有人来跟我报告下出了啥事的。
又但是，我睡衣都脱了一半，快要穿上“驾驶舱视察服”了……
……看来，我得选要么去，要么不去。
[[好吧，去驾驶舱吧。|cockpit_okay]] | [[哪都别去。^没必要跑去那上面。他们迟早会告诉你那闪光的是什么玩意儿的。|stay_put]]


:: go_to_cockpit
<<set $maploc = "hall">>
好主意。
（尤其是在我都把睡衣脱了一半要穿上套头衫的情况下。）
等我一下，我要穿好衣服，到那上头去了。一会儿再聊。
[[delay 30s^泰勒在准备|cockpit_first]]


:: miss_talk
你当然会啦。我可是个制造惊悚气氛的高手啊。
我说……我们不如做个买卖吧。
要是我有！哪！一！天！不开脑残笑话，不吐流行文化的槽……
……你就知道外星人已经霸占了我的身体，我再也不能控制我的大脑了。
到那时，麻烦你想办法把我给挂了，好吧？
因为不能随时拿《梦幻岛》吐槽的生活，
根本就不算是生活。
[[好，一锤子买卖。|kill_deal]] | [[笑一笑，大家笑一笑。|smiles]]


:: check_radar
<<set $maploc = "hall">>
拿过时的流行文化吐槽，是我控制焦虑情绪的方法。
我睡得正香呢，警报器惊声尖叫，我噔地一下醒了。我要黑一下杜兰杜兰了。
这就是我的本能反应。
（肚肚肚肚烂烂烂。）
总之，你说的多半没错。我该去看看那个警报是怎么回事。
<<if $mapmention is false>>（忘了说，这个通讯器是带有动态地图功能的……
……所以，你可以随时看到我在船上的位置。）
（怎么样，算是个奖励吧？）
等我一下，我要穿好衣服，上驾驶舱瞧瞧去。
……一会儿再聊。
<<else>>等我一下，我要穿好衣服，上驾驶舱瞧瞧去。
……一会儿再聊。<<endif>>
[[delay 30s^泰勒在准备|cockpit_first]]


:: cockpit_first
<<set $maploc = "cockpit">>
好了，警报终于不响了。我头都被吵晕了。现在我在驾驶舱。
（回头记得提醒我，针对飞船各个部分的名字，挨个儿吐槽。）
哦，精确地说，我在驾驶舱旁边，因为里面已经挤满了其他所有船员。
夏帕德船长在掌舵，当然了。我就从！没！在！别的地方见过她。
玛瑞正在导航设备前工作。船上的医生阿特沙被挤到了她的背后去。
还有矿工们——那三个下到卫星表面来救我上船的人。
唐纳德、阿里思、博斯——我的英雄们。
啊！算了。我就是喜欢跑题。你对船员们没啥兴趣吧？
[[我当然有兴趣啦。^跟我说说他们，我很感兴趣。|describe_crew]] | [[你说得对，我没兴趣。^你刚给我的描述就足够了，谢谢。|no_describe_crew]]


:: time_theory
瞧瞧，我在整理我知道的事实。
（管这叫“事实”也真是有点夸张了。）
至于这玩意儿究竟是怎么用的，你要是有更靠谱的假说……
……写下来，装在信封里，贴在火箭上……
……我应该早晚会收到的。
<<if $nav_code_visited is true>>[[cockpit_crystals]]
<<else>>总之，我——
唔。
有意思。
[[什么有意思？|shiny_interest]] | [[你还好吧？|okay_interest]]<<endif>>


:: how_moon
那里有座诡异的山峰，好像是那些外星怪物——寄生怪——修的。
能把星际飞船从空间中击落，而且更重要的是……
……从时间中击落。
那座山峰时而闪亮，时而消失不见……
……我在那里面的时候，我也跟着不见了。
当时，时间流逝的速度改变了，直到山峰复原才又变回来。
当时，我对为什么会发生那些事，完全没有一点概念……
……不过现在，我知道有这些晶体之后，这倒是能说得通多了。
[[对，“说”的话。|makes_sense]] | [[嗯……头头是道。|time_theory]]


:: off_course
明显这些玩意儿有什么古怪的时间膨胀效应。
我觉得……思维稍微跳跃一点就可以得出这么个重大结论：
我肯定，这些通古斯石多半跟我困在那个卫星上回不了家有关。
[[你怎么猜出来的？|how_moon]] | [[哦，我觉得我听明白了。^你指的是你在那座山峰里的事情吧？|inside_peak]]


:: danger_crystals
对，我同意，我猜这个任务也跟在刀尖上走差不多。
我私下认为，这就说得通了……
<<if $nav_code_visited is true>>……阿里思跟我说过，他从没有哪次小活儿拿过这么多钞票。
（这还没算上他们来搭救我，还要再收获点危险工作津贴。）
不过，是啊，这些晶体让船偏离了航线。
[[off_course_two]]
<<else>>……阿里思跟我说过，他从没有哪次小活儿拿过这么多钞票。
（这还没算上他们来搭救我，还要再收获点危险工作津贴。）
[[等一下，我们帮你还会有！钱！拿！？^我的支票在哪里？|my_check]] | [[那么，是这些晶体让你们脱离航线的吗？|off_course_two]]<<endif>>


:: cockpit_okay
<<set $maploc = "hall">>
好极了。尤其是我那套“驾驶舱视察服”还从来没穿过……
……还没沾上“泰勒狐臭香型™”，现在还闻着像衣服柔顺剂的味道。
（泰勒狐臭香型™为本人腋窝注册商标。保留所有权利。）
等我一下，我要穿好衣服，到那上头去了。一会儿再聊。
[[delay 10m^泰勒在准备|cockpit_first]]


:: no_mind_talk
好吧。也许我应该请你坐会儿冷板凳。看看你吃不吃得消。
要知道，我要是嘴巴闭上就撬不开的。
毫无困难。
我可以坚持一！辈！子！
现在……
开！始！
[[delay 1m^泰勒在保持沉默|silent_over]]


:: talk_less
你肯定喜欢的吧？
[[我倒不介意。|no_mind_talk]] | [[才怪。我会想你的。|miss_talk]]


:: stay_put
好吧，那我就待在这里。
借用刚才那首圣诞诗，“妈妈裹起头巾，我戴上睡帽……
……安下心下来睡个冬天的长觉”。
[[delay 5m^泰勒在安心养神|arose]]


:: no_describe_crew
有道理。
还要记得提醒我，不要啰嗦从舷窗里看到的星系是如何如何壮丽。
真的。它们会送你去见周公的。
除了星云还是星云。打哈欠了，我说得对吧？
[[风景挺好的嘛，泰勒。|apples_oranges]] | [[好吧，那就描述下船员吧。|describe_crew]]


:: describe_crew
行啊。你想八卦谁？矿工，还是其他人？
[[跟我说说矿工们。|describe_miners]] | [[船长和其他船员。|describe_others]]


:: makes_sense
好吧，我的意思是，这也不比《回到未来》的时空穿梭车，或者是《神秘博士》的蓝色电话亭更扯淡啊。
<<if $nav_code_visited is true>>[[cockpit_crystals]]
<<else>>总之，这也不是像——
唔。
有意思。
[[什么有意思？|shiny_interest]] | [[你还好吧？|okay_interest]]<<endif>>
//Flux capacitor is from Back To The Future.


:: inside_peak
是的，就是说！你记得的。
那座山峰里的脉冲武器能将飞船从时空里击毁……
……而且整座山峰会闪一下就消失。
要是它消失时，里面有人在的话——我亲身体验……
……会感觉到时间的流逝完全不同了，直到山峰变回来为止。
有点像在坐用破表制造的翻滚列车一样。
但是如果那座山峰的系统是由这些晶体来提供能量……
……嗯，我猜这就说得通得多了。
[[听起来像是那么回事。|time_theory]] | [[我可不觉得这“通”。|makes_sense]]


:: off_course_two
明显，它们能影响到导航软件。
随机加入或者抽取一段时间。
玛瑞可以标十次航线，却得出来十个不同的预计到达时间。
[[off_course]]


:: my_check
哈！
当然了。你只要去美国国家航空航天局，把手板心摊开来。
我肯定他们能帮你搞定。
问题是——
唔。
有意思。
[[什么有意思？|shiny_interest]] | [[你还好吧？|okay_interest]]


:: cockpit_finally
<<set $maploc = "hall">>
行了。就那么办！
等我一下，我要把睡帽换下来，穿上见得人的衣服……
……等我上去那边后再跟你聊。
[[delay 10m^泰勒在准备|cockpit_first]]


:: shiny_two
卧舱的右舷视窗的视野很小。
不过我多半能看得更清楚点——
而且，还可以跟别的船员打听下——
只要我能去驾驶舱的话。
<<if $mapmention is false>>（忘了说，这个通讯器是带有动态地图功能的……
……所以，你可以随时看到我在船上的位置。）
（怎么样，算是个奖励吧?)
那么……驾驶舱？驾驶舱，驾驶舱，驾驶舱，驾驶舱。
<<else>>那么……驾驶舱？驾驶舱，驾驶舱，驾驶舱，驾驶舱。<<endif>>
[[好吧，去驾驶舱吧。|go_to_cockpit]] | [[不行，你就呆在卧舱里。|stay_in_quarters]]


:: smiles
明白了吧？你！最懂我了。
总之，我！的！最终幻想是，不要再被那些魂淡变态的绿外星怪物追着跑……
……所以，我多半还是该去瞧瞧外面那发亮的玩意儿是什么。
[[shiny_two]]


:: kill_deal
行了。真高兴咱俩这买卖做成了。
我想，我们现在也算够熟了……
……要是我没经常拿《最终幻想》的幻影开玩笑的话，你马上就会注意到。
说起“幻影”，还是赶紧去看看那外头发亮的鬼影子是什么吧。
[[shiny_two]]


:: apples_oranges
是啊，好吧。你喜欢风景画，不喜欢肖像画。我明白了。
话说回来，没有这些船员们，我是没可能在这里欣赏风景的……
……所以，他们对我而言当然意义非凡。
总之。
[[description_done]]


:: describe_others
<<set $describeothers = true>>没问题！我觉得，应该首先介绍一下船长，伊莱娜∙夏帕德。
她的声音柔和，但是其中的威严不容抗拒。
她一下命令，那些矿工们——虽然块头是她的三倍——丝毫不敢违抗。
有时候，我觉得她有点像瓦里亚号的船长，芮妮∙阿雅……
……阿雅船长现在白星号的医疗舱里，处于医疗诱导昏迷中。
[[然后还有个医生？|describe_artesa]] | [[你还提到了一个导航员？|describe_mari]]


:: describe_miners
<<set $describeminers = true>>
没问题。这几个家伙看上去就像是沐浴露广告里走出来的肌肉型男。
（可惜了，在太空里泡了那么久，他们闻着和广告里的可差远了。）
工头是一个叫做唐纳德∙凯的人。
你有没有看过一部叫《飞侠哥顿》的老片儿？唐纳德看上去就像是演主角的山姆∙琼斯。
我猜他试镜时交了张写着“太空豪侠”的简历照。
[[你还说了个……阿里思？|aries_describe]] | [[另外有个叫博斯？|bos_describe]]


:: aries_describe
<<set $aries_describe_visited = true>>
<<if $bos_describe_visited is true>>然后是阿里思∙韦瑟。这家伙很好玩儿。
<<else>>是的，马上说到阿里思∙韦瑟。这家伙很好玩儿。<<endif>>
他啊，最招牌的就是咧开大笑的嘴巴，围着一圈胡茬。
<<if $bos_describe_visited is true>>[[miner_summary]]
<<else>>[[bos_describe]]<<endif>>


:: silent_over
好吧，不过严肃认真地说，我们还是该讨论一下外面这个发亮的东西到底是什么鬼。
[[shiny_two]]


:: arose
啊——呀！
一阵呜啦呜啦响又把人吵醒了。
而且，警报还响个没完了！
不弄个一清二楚，我就要疯了。
[[好，快去看一看吧。|cockpit_finally]] | [[要是很危险怎么办？^为什么你这么着急，要一头冲进去冒险？|maybe_danger]]


:: maybe_danger
你看，你说到点子上了。太空里确实塞满了各种危险的破烂玩意儿。
不过最近我也算是生死线上走了一圈来的，什么没见过？
至少我去瞧一瞧的话，我会知道——
哈！近距警报器终于不响了！——
我会知道究竟是要冒哪！门！子！的险。
（或者我会撞大运，根本没出大事，不需要冒险。）
（等你习以为常了以后，你就不觉得字典里真有“冒险”这个词了。）
[[那就去驾驶舱吧。|cockpit_finally]] | [[待在原地别动。^现在警报也不响了，你说不定可以睡个回笼觉。|back_to_sleep]]


:: back_to_sleep
是啊……你说的有点道理。
我真！是！累死了。要是有机会睡，还不多睡睡啊。
不管出了什么事，我看白星号的人都能对付吧。
好了。“卧薪尝胆”里我顶多就能接受“卧薪”了。
（不管你关不关心，我看这张床垫子不比“薪”舒服多少。）
[[delay 1h^泰勒在睡觉|wake_no_idea]]


:: miner_summary
我能结识这三个人，也算是种奇遇了吧……
……他们救了我的命，我很庆幸，他们不顾一切地着陆到我那颗卫星上。
<<if $describeothers is false>>[[是的！跟我讲讲其他人。|describe_others]] | [[好吧，够了。^你的英雄崇拜里细节太多了。|detail_overload]]
<<else>>[[所以，这就是全部的人了吗？|everyone_then]] | [[我可记不住每一个。|detail_overload]]<<endif>>


:: bos_describe
<<set $bos_describe_visited = true>>
<<if $aries_describe_visited is true>>最后我不能忘了提，博斯∙泽布。大块头、沉默寡言。
体格简直是“固若金汤”，我成语不好，你自行脑补下吧。
<<else>>博斯∙泽布是个大块头，沉默寡言。体格简直是“固若金汤”，我成语不好，你自行脑补下吧。<<endif>>
他休息时，喜欢听布莱恩∙伊诺的音乐，还有读卡夫卡的书。
<<if $aries_describe_visited is true>>[[miner_summary]]
<<else>>[[aries_describe]]<<endif>>


:: describe_mari
<<set $describe_mari_visited = true>>
<<if $describe_artesa_visited is true>>然后当然不能忘了我们的导航员，玛瑞∙李。
我一上船，就感受到了她的亲切和蔼。
<<else>>我们的导航员是一个叫玛瑞∙李的年轻女人。我一上船，就感受到了她的亲切和蔼。<<endif>>
她身上有种天然母性，想要把每个人都照顾得妥妥当当的。
跟瓦里亚号上的科尔比很像。
<<if $describe_artesa_visited is true>>[[others_summary]]
<<else>>[[describe_artesa]]<<endif>>


:: describe_artesa
<<set $describe_artesa_visited = true>>
<<if $describe_mari_visited is true>>然后是船上的医生，约瑟夫∙阿特沙。
<<else>>对，还有船上的医生，约瑟夫∙阿特沙。<<endif>>
我上船后，是他治的我，但是我不太了解他。
他对待病人的态度算是……高冷？
就好像他有医生的水平，但没当医生的心思？
不太好评价，真的。
<<if $describe_mari_visited is true>>[[others_summary]]
<<else>>[[describe_mari]]<<endif>>


:: you_hurt
我没事。相比我最近的遭遇，能从床上摔下来已经算是奢侈的了。
我光在之前那颗卫星上晃悠，把自己整得都比这惨得多。
我本来还以为我才是自己最大的敌人……
……你懂的，直到我真正遇到了最可怕的敌人。
[[快去看看出了什么事。|find_shep]] | [[你现在是一个人吗？|alone_qtrs]]


:: happened_wake
不知道……我真是一点头绪都没有。
刚才还在……睡觉……然后整艘船就……疯狂地颠簸了下。
就像是我们被什么东西撞了一下，从上方狠撞了一下。
[[你受伤没？|you_hurt]] | [[你一个人吗？|alone_qtrs]]


:: wake_no_idea
<<set $wake_no_idea_visited = true>>
神——马？！
什么鬼名堂？
[[出了什么事？|happened_wake]] | [[你还好吗？|all_right_wake]]


:: detail_overload
放松。又没说我等下要考你，让你把每个人对号入座什么的。
<<if $describeothers is false>>你想知道另外三个人吗？
[[好啊，当然了。|describe_others]] | [[不用了，够了。|no_others_thanks]]
<<elseif $describeminers is false>>你想听我说说那些矿工吗？
[[好啊。跟我说说他们。|describe_miners]] | [[不用了。谢啦。|no_miners_thanks]]
<<else>>我只是觉得他们值得一提，你懂的，因为……
……我跟他们一起困在这太空深处，天晓得还有多久。
[[everyone_then]]<<endif>>


:: others_summary
这艘船纪律严明……
……但也正好有人情味到愿意着陆下来救我。
所以，你知道的……对我来说，他们真是挺伟大的。
<<if $describeminers is false>>[[不错。跟我讲讲矿工呢？|describe_miners]] | [[好吧，够了。^你的英雄崇拜里细节太多了。|detail_overload]]
<<else>>[[所以，这就是所有人了吗？|everyone_then]] | [[我可记不住每一个。|detail_overload]]<<endif>>



:: alone_qtrs
<<set $alone_qtrs_visited = true>>
不是，我不是一个人在这里。唐纳德，矿工的工头，也在这里抽空打个呼。
等一下，我去问问他。
<don>待这儿别动，泰勒。</don>
<don>我不知道这是什么……或者是不是和之前的那艘船有关……</don>
<don>……不过我要去看看。</don>
<don>保持你的船上通讯频道畅通，我到了准备室会通知你的。</don>
<<if $wake_no_idea_visited is true>>等下……“之前的那艘船”？
我真二！我刚才该去听听简报的。他说的是啥，我完全一头雾水。
不过没关系。好吧，我要保持镇定。
<<else>>好吧，有道理。<<endif>>
万一真需要搞定啥，那么唐纳德肯定比我能干得多。
那……我现在干点什么好呢？
[[留在船员卧舱里。^唐纳德刚才叫你呆着别动。我也觉得这样才对。|stay_don]] | [[试试联系船长吧。|find_shep]]


:: all_right_wake
呃……我想是的。大概吧。
我从床上掉下来了，手肘撞得不轻。
我们的飞船被什么撞了一下，撞得很狠。是从上面撞来的。
[[你受伤没？|you_hurt]] | [[你一个人吗？|alone_qtrs]]


:: everyone_then
这就是全部成员了。白星号设计上只能装载六人。
他们救下了我和阿雅船长，远远超出了船的容纳人数。
他们重新分配了食物、水、和氧气……
……为了救我，作出了巨大的牺牲。
我只希望自己值得他们那么做。
[[description_done]]


:: overkill
是啊。要知道，白星号可没有烟囱。
所以万一圣诞老人想从别的路线进来的话，我还有点担心他会搞得飞船失压爆炸呢。
我最好睁着一只眼睛睡觉。
好吧……我要试下这样睡得着不了，或者等着又被警报器吵醒。
晚安。
[[delay 1h^泰勒在睡觉|wake_after_briefing]]


:: rudolph
尤其是鲁道夫那只驯鹿！
我打赌我们的导弹瞄准仪一定会盯上它那只红鼻子的。
好了，不管了。我打算再睡会儿回笼觉……
……希望我不要被那些得得得的蹄声吵醒了。
晚安。
[[delay 1h^泰勒在睡觉|wake_after_briefing]]


:: no_miners_thanks
好了。随便你。
但是过会儿，要是我说什么“博斯讲了一个超搞笑的卡夫卡笑话”，你可别问我谁是博斯。
我绝对！不会！告诉你的。
[[description_done]]


:: no_others_thanks
好吧。随便你。
但是待会儿，要是我说什么“阿里思说了这个那个的”，你可别问我谁是阿里思。
我绝对！不会！告诉你的。
[[description_done]]


:: find_shep
好主意。我要呼叫夏帕德船长，看看她能不能告诉我究竟怎么了。
泰勒呼叫夏帕德。泰勒呼叫夏帕德。请回复。
<shep>这里有点忙，泰——</shep>
呃……夏帕德？
船长？
<shep>……</shep>
嗯。
这下好了。
听着怎么不太妙啊。
[[上去驾驶舱看看。^你应该去看看她，确保一切正常。|check_shep]] | [[呆在这里别动。|stay_right_there]]


:: stay_don
哎，是吧，是个办法。
我就在这里等着，等他呼叫我。
他就像是个超级太空豪侠，不管出了啥乱子，没有他搞不定的。
好吧。
那我就等着吧。
[[delay 3m^泰勒在原地等待|don_wait]]


:: maybe_santa
是啊，按我说，圣诞老人你最好快点行动，赶紧发更新过的应答讯号……
……要不然白星号可不是吃素的，会把你那群驯鹿炸出外太空的。
[[连鲁道夫都不例外吗？|rudolph]] | [[不要滥杀无辜嘛。|overkill]]


:: after_briefing
<<set $maploc = "crewqtrs">>
这，信息量……挺“大”。
就像一部叫座恐怖片的信息量那么大……
……那种片儿的能耐就是叫你起满身鸡皮疙瘩，吓得屁滚尿流。
所以就是，有艘飞船追上了我们，很有可能还打算拦截我们……
……也没正经应答我们发出的致意讯号。
哎……好像也没啥可干的，除了干等。你看……要不我打个盹？
[[祝你好运。|good_luck_sleep]] | [[说不定是圣诞老人哦。^凭空冒出来的古怪飞行器……是雪橇？|maybe_santa]]


:: briefing_no
那……好吧。不过我决定还是听下简报。
我真是挺想知道究竟为毛这警报响了，你懂吧？
所以，嗯……我很快就会再与你联系的。
[[delay 30m^泰勒在听简报|after_briefing]]


:: description_done
好了，现在我走进了驾驶舱，和六个资深的太空老兵们在一起……
……哎，真心觉得此时应该有个应景的段子的。
可惜这里没人在笑。
我会保持我们之间的通讯畅通，这样你就能听到夏帕德船长的简报。
[[太棒了，谢谢。|briefing_yes]] | [[不，没关系。别麻烦了。|briefing_no]]


:: briefing_yes
<shep>各位，现在报告目前我们所掌握的情况。刚才把大家都吓了一跳的警报声？</shep>
<shep>那是提示任何来历不明的飞行器进入此星区的警报。</shep>
<shep>可以认为，任！何！外界的飞行器，除了我们之外，都属于“来历不明”。</shep>
<shep>这不是太空残骸……而是一艘飞行中的飞船。有人驾驶。</shep>
<shep>有人正在对我们的致意讯号，发送一周之前的旧回应码。</shep>
好吧。这解释了我之前看到的发光物体：确实是艘飞船。
但是不知道咋的，听了这些，我没觉得踏实点。
[[是啊，的确挺瘆人的。|freaky]] | [[先别慌。^他们只是来历不明，但并不一定有敌意。|dont_panic]]


:: get_away
是啊，我也这么想。
[[get_away_two]]


:: get_away_two
<shep>我已经让玛瑞规划一条躲避航线，但不到万不得已，我们不会使用。</shep>
<shep>白星号的体型足够小，允许我们采取这样的行动……</shep>
<shep>……不过咱们的访客似乎更小。</shep>
<shep>由于对那艘飞船的体量，我们只能进行估计，所以这计划还是有很多值得考量的地方。</shep>
<shep>至于现在，除了玛瑞和我之外，你们大家都可以回去卧舱，如果你们觉得还睡得着的话……</shep>
<shep>……或者去干点别的事，我会给大家通报进展的。解散。</shep>
[[所以……那还真是件新闻，对吧？|some_news]] | [[你觉得还睡得着吗？|can_you_sleep?]]


:: some_news
是啊，对吧？
我一个人在颗卫星上浪迹了三天，居然发现我不！是！“一个人”。
然后我好不容易登上了这个星区里唯一的飞船……
……居然发现它不！是！这个星区里“唯一”的飞船。
我也真够倒霉的，回回被拆台，就不能给我这两只全地形鞋子找个台子站嘛？
我，唔……我想我还是听船长的建议，回去睡觉吧。
等我睡醒了，再和你聊。
<<set $maploc = "crewqtrs">>
[[delay 1h^泰勒在睡觉|wake_after_briefing]]


:: stay_right_there
是啊。好吧。有点道理。
我也帮不上什么忙。也许除了帮点“倒忙”。
我就待在这里，躺在我这张不怎么舒服的床上，体验……不舒服吧。
[[delay 3m^泰勒不太舒服|don_wait]]


:: don_wait
哇呀呀，我真是……等够了。我要联系他。
泰勒呼叫凯。泰勒呼叫凯。请回复。
<don>泰勒？快去叫博斯来！去叫阿里思！去叫大家——</don>
嗯……凯？
唐纳德？
<don>……</don>
这……
嗯。
我可没期待这样的回复啊。
[[通讯断了吗？|dead_comm]] | [[快去找他。^如果通讯断了，你最好还是去找他本人。|find_don]]


:: check_shep
<<set $check_shep_visited = true>>
我，呃……我不知道这样做对不对……
……但我猜肯定比啥都不干强。
好吧，我准备上去了。不过我先得再试试用通讯频道呼叫她一次。
夏帕德船长？
船——长——啊呀！
[[怎么啦？|what_yahhh]] | [[你还好吧？|okay_yahhh]]


:: good_luck_sleep
嗯。
想起来，我还有过不需要人说“祝你好运”，就能倒头就睡的好日子。
感觉像是上辈子的事了。
总之，晚安。
[[delay 1h^泰勒在睡觉|wake_after_briefing]]


:: dont_panic
我是说，你多半说得对……
……但是，这就像没有窗户的陌生车里突然递给你一颗糖一样。
总觉得有点不对劲，你懂吧？
[[好吧。你还知道什么？|freaky]] | [[他们是冲着你来的吗？|


:: freaky
<shep>我们能看到对方。</shep>
<shep>目前他们只是一个亮点，和我们保持着距离。</shep>
<shep>我们每次打信号致意时，他们都会后退……但是始终和我们保持同样的速度。</shep>
<shep>我想可以确信的是，遥测显示……</shep>
<shep>……他们的最终目的是拦截我们。</shep>
[[这么说……他们是冲着你们来的吗？|coming_to_you]] | [[你们能躲开吗？|get_away]]


:: bad_feeling
嘿，我说现在啊，别乌鸦嘴了。
至少我们俩中间的一个要当傻白甜，乐观积极吧。
等下，我想夏帕德船长正在总结。
[[get_away_two]]


:: can_you_sleep?
好吧…………我累死了，这样也好。
我要回去船员卧舱，再睡下。
不过，我要记好了给圣诞老人留点牛奶和饼干。
万一他来了呢？
<<set $maploc = "crewqtrs">>
[[delay 1h^泰勒在睡觉|wake_after_briefing]]


:: okay_yahhh
是的，我……啊啊！
……要死人了啊，头痛得简直要炸开来了。
[[what_yahhh]]


:: dead_comm
没有，好像完完好好的啊。只是……没有别的动静从他的通讯频道传过来了。
也许——啊呀！
[[怎么啦？|what_yahhh]] | [[你还好吗？|okay_yahhh]]


:: wake_after_briefing
<<set $wake_after_briefing_visited = true>>
神——马？！
什么鬼名堂？
[[出了什么事？|happened_wake]] | [[你还好吧？|all_right_wake]]


:: find_don
好吧。
这倒是一个建议。
我是说，不就是他走了，然后惊声尖叫、呼救，然后他的通讯器没声了……
……没什么值得我！害怕的，对吧？
我们只不过是困在外太空荒山野岭里最荒的那中间，离星战的卡塞尔线只有12秒差。
<<if $wake_after_briefing_visited is true>>也许只不过是，有艘不该出现在这里的飞船……
……不长眼撞了下我们的船，搞坏了我们的通讯系统呗。
不值得大惊小怪。
<<else>>然后什么东西撞了下我们，搞坏了我们的通讯系统……
……本来我能知道个一二，要不是我睡过了简报的话。
所以……哎。真是绝了。<<endif>>
不如直接去准备室瞧瞧算了，是吧？
你果然是会出妙！计！啊！
[[当然是妙计啦。|go_ready_room]] | [[好吧。就呆在原地不要动。|stay_bunks]]


:: coming_to_you
我觉得船长是这个意思。
也许……也许他们只是来找点补给？
（虽说白星号也没什么富裕，尤其是我来了之后那就更紧张了。）
啊哟，我有种不祥的预感。
[[是啊，我也是。|bad_feeling]] | [[也许你们能飞出他们的控制区域。|get_away]]


:: what_yahhh
超多的噪音杂音，全都在我耳朵里尖叫……
……好吧，现在通讯频道彻底瘫了。
事实是……
……所有的通讯频道全都瘫痪了。
周围……
……一片安静。
死寂。
<<if $check_shep_visited is true>>[[有点……吓人啊。|silence_bad]] | [[你快去驾驶舱，马上！^假如通讯系统不灵光了，你得亲自去打探一下。|cockpit_now]]
<<else>>[[还真是……吓人啊。|silence_bad]] | [[你得去找到唐纳德。|find_don]]<<endif>>


:: total_blackout
刚才……所有的灯都灭了。
天啊……这里简直是漆黑一片。
唯一的亮光是来自舷窗外面……但是能看到的也只有外面的太空。
你懂的……也是差不多黑漆漆的一片。
好了。
死一样的寂静，坟墓一样的黑暗。
我基本上和困在自己的棺材里没啥区别，在这真空里抖得跟筛子一样。
[[镇定，保持冷静。^恐慌又没什么用，你要保持镇静。|settle_down]] | [[连我都被你吓到了。|freakin_out]]


:: stay_bunks
是啊。就那么办！我就呆在这里了……
……专注心神，把呼吸调整到正常水平。
给我点时间让我镇静下。
[[delay 5m^泰勒在调整呼吸|total_blackout]]


:: go_ready_room
<<set $go_ready_room_visited = true>>
哎，你说的八成也有点道理。
毕竟，我的宇航服还挂在准备室呢……
……再说了，船上的军械也在那里，再怎么微不足道也算是点武器嘛。
不是说我那么血腥暴力……
……但是有备无患，对吧？
那我就……
噢，惨了
[[怎么了？出了什么事？|off_guard]] | [[泰勒，你还好吧？|off_guard_2]]

:: off_guard_2
[[off_guard]]

:: silence_bad
是啊，谢谢你这么说。
要是夏帕德船长哪天要退休了，也许你可以接任她……
……你懂的，从首席“明知故问”中尉直接晋升船长。
“明知故问”船长。
唉，我一！紧！张！就胡扯！
不过还好，我没事。只是这里挺吓人。简直想不到还能怎么更吓人——
哦，衰——
[[怎么了？出了什么事？|much_scarier]] | [[泰勒，你还好吧？|much_scarier_2]]


:: cockpit_now
<<set $cockpit_now_visited = true>>
是啊，哎，我看是吧。
对于飞船上最年轻，最菜鸟的乘客来说，最好的选择肯定是……
……深入危机的腹地，晃来荡去，指望一切完美大团圆。
指望着那个戴曲棍球面具的十三号星期五杀手不会跳出来戳一刀。
（说真的，真有部《十三号星期五》里主角杰森进太空打了一场。）
（不过，现在你可！不！能！丢下我不管，跑去租那部片儿来看。）
[[太晚了！已经在下载了。^你不该告诉我这个的嘛。我这个人专注力不咋地。|jasonx]] | [[你放心，我跟着你呢。|still_with_you]]


:: settle_down
我在努力！我在努力！
虽说在银河系的这个星区里，我是第一怂……可是我在加油。
[[next_step]]


:: freakin_out
我倒是想要鄙视你的熊样儿的，我还想说至少咱俩中有一个得冷静……
……但是我又不想把我的名片更新成：“泰勒：太空伪君子。”
[[next_step]]


:: off_guard
我……都没准备好。
完全没有料到。
[[total_blackout]]


:: answer_door
我拿不定主意……
我是说……好吧，行。你说得没错。一定是白星号的哪个船员，对吧？
通讯系统失灵，所以他们一定是派人来通知我。
跟我说要穿上宇航服之类的，或者说大家要在一起开简报会了。
要是我不开门的话，我就永远也不知道——
好吧。无所谓了。
不管是谁在门外面，肯定知道密码，已经直接进来了。
[[first_encounter]]


:: door_opens
所以……不管是谁在门外，肯定知道密码，已经直接进来了。
我看就不用猜了……
……不过我还没准备好从床垫背后出来。
[[first_encounter]]

:: much_scarier_2
[[much_scarier]]

:: much_scarier
打我这张可恶的乌鸦嘴。
这……实在是越来越恐怖了。
[[total_blackout]]


:: jasonx
当你发现“杰森X”并不是“公民凯恩”，你会觉得被忽悠了。
唉，还不如那部89年的《十三号星期五》第八部好看呢，那些什么杰森啊曼哈顿啊冰上的情节。
要拿下曼哈顿的时候，杰森就不再是二楞子了，我就知道——
哦，衰——
[[怎么了？出了什么事？|muppet_shut_up]] | [[泰勒，你还好吧？|muppet_shut_up_2]]
//Jason Voorhees is the killer in the Friday The 13th films. Taylor also references the film The Muppets Take Manhattan.

:: muppet_shut_up_2
[[muppet_shut_up]]

:: ieva_submit
[宇航服传感器显示严重心跳过速]
[检测到局部缺血]
[检测到心肌梗塞]
[通讯消失]


:: ieva_pod
[宇航服传感器显示无信号]
[正在检测……]
[正在检测……]
[无信号确认]
[通讯消失]


:: ieva_fire
[宇航服传感器显示严重心跳过速]
[散热器无法工作]
[严重心跳过速]
[检测到局部缺血]
[检测到心肌梗塞]
[通讯消失]


:: still_with_you
太棒了！谢谢你。
很高兴在这场真人秀恐怖大片即将上映之际，你没有抛弃我。
其实，我在想——
啊呀，作死啊
[[怎么了？出了什么事？|total_blackout]] | [[泰勒，你还好吧？|total_blackout_2]]

:: total_blackout_2
[[total_blackout]]


:: footsteps_qtrs
<<set $footsteps_qtrs_visited = true>>
呃……
事情是这样子滴：有脚步声。
就在外面走道里。
一开始很远很轻，我装作没听到……
……不过声音越来越重，也越来越快了，现在……
……啊哟，不会吧……
……现在，他们就在！这！里！
在门外。
[[开门看看。|answer_door]] | [[躲起来！|hide_bunks]]


:: hide_bunks
嗯，是啊。
等我试试看，能不能用文字，来给你提供一点脑补的素材。
船员卧舱根本“没”地方给你躲！
我可以用几个床垫凑合搭个贼囧的碉堡……
……但要说隐蔽程度嘛，大概就比大喊“向我开炮！”稍微低那么一点点。
如果这是玩躲猫猫的话，那我就是只死翘翘的耗子。
[[那就开门看看吧。|answer_door]] | [[好吧，尽全力躲躲好。|hide_anyway]]
//"Olly-olly-oxen-free" is shouted at the end of games of hide-and-seek, to let hiders know they can come out. I have no idea how or whether that translates.


:: next_step
哎，只有硬着头皮上了！
指望车到山前必有路。
事已至此……也就是这样做最靠谱了。
<<if $cockpit_now_visited is true>>[[cockpit_take_two]]
<<elseif $go_ready_room_visited is true>>[[ready_take_two]]
<<else>>[[bunks_take_two]]<<endif>>


:: hide_anyway
好吧。好吧。我就只能……蜷在床垫和墙之间……
……然后发挥创意利用下这些垫子……
……然后听天由命了。
[[delay 30s^泰勒在等待|door_opens]]


:: muppet_shut_up
是吧……我想我要暂停一下拿电影说段子了，要是你没意见的话。
[[total_blackout]]


:: goodbye
<<set $end = "goodbyegreen">>
<<if $ievasuit is true>>[[ieva_submit]]
<<else>>[通讯丧失]<<endif>>
你和泰勒之间的通讯已经丧失。
<<if $turnedgreen is true>>外星绿怪已经侵蚀了泰勒的身体……
<<else>>外星绿怪已经登上了白星号……<<endif>>
……正在向地球进发。
另一个时间……另一个人生……也许事情会有所不同。
只是时间不对。
只是人生不对。
gameover


:: goodbyepod
<<set $end = "goodbyepod">>
<<if $ievasuit is true>>[[ieva_pod]]
<<else>>[通讯丧失]<<endif>>
你和泰勒之间的通讯已经丧失。
最后已知通讯信号来自无动力逃生舱（型号Xrev-8）。
失事信标未启动。逃生舱下落不明。
<<if $turnedgreen is true>>外星绿怪已经侵蚀了泰勒的身体……
<<else>>外星绿怪已经登上了白星号……<<endif>>
……正在向地球进发。
另一个时间……另一个人生……也许事情会有所不同。
只是时间不对。
只是人生不对。
gameover


:: goodbyefire
<<set $end = "goodbyefire">>
<<if $ievasuit is true>>[[ieva_fire]]
<<else>>[通讯丧失]<<endif>>
你和泰勒之间的通讯已经丧失。
<<if $turnedgreen is true>>外星绿怪已经侵蚀了泰勒的身体……
<<else>>外星绿怪已经修复了军舰……<<endif>>
……正在向地球进发。
另一个时间……另一个人生……也许事情会有所不同。
只是时间不对。
只是人生不对。
gameover


:: cockpit_take_two
<<set $maploc = "hall">>
我打算去驾驶舱，夏帕德船长应该在那里。
我希望，在那里，能了解点情况。
我上来白星号的时间还不够长，周围环境也不熟……
……然后——啊哟，痛死了！
我本想说，“这一停电更坏事了。”
结果，我的小腿在黑暗里狠狠地撞了一下，果然事实胜于雄辩啊。
我打算先不说话了，好认真找路……
……我到了驾驶舱，再和你联系，好吧？
[[delay 15m^泰勒在走路|footsteps_cockpit_travel]]


:: ready_take_two
<<set $maploc = "hall">>
我要去准备室，唐纳德刚去了那里。
那是在飞船的尾部——啊……哟！
这黑灯瞎火的，我差点戳断脚趾头了，真是绝了。
我上来白星号的时间还不长，周围环境也不熟……
……这一停电就更坏事了。
所以我打算分外小心，缓慢行事。
我到那边后再联系你，好吧？
[[delay 15m^泰勒在走路|footsteps_ready_travel]]


:: bunks_take_two
我就打算守死在船员卧舱，躲好、不慌。
喂，你知道吧？要是闭上两只眼睛，根本就注意不到停电的。
你说这样会不会……稳当点？
[[delay 15m^泰勒蹲着|footsteps_qtrs]]


:: fight_them
好吧，我查过了，我的菜单上……没有“和他们打”这个选项。
<<if $break_up_bos_visited is true>>他们五个……
<<else>>他们四个……<<endif>>
……全副武装
力大无穷
<<if $pulsegun is true && $shotdon is false>>[[gunfight_sluggish]]
<<else>>唐纳德正在换门锁密码
通讯器也呼叫不到任何人
哦，不要啊
哦，天啊
完蛋了
不也相信我在那颗卫星上打败了它们
但它们竟然追我到了这里
该死
<green>来吧，泰勒。</green>
<green>反抗是毫无意义的。</green>
<green>张大嘴巴。这会让你痛一下下。</green>
<green>很久，很久的一下下。</green>
啊啊——
啊
<<set $turnedgreen = true>>
[[goodbye]]
<<endif>>


:: whats_going_on
哦。
哦，我滴妈啊，不要。
他们的眼睛。
他们的眼睛正在闪着荧荧绿光。
三个海陆战队员……
<<if $break_up_bos_visited is true>>……还有阿里思和唐纳德，也一样。
<<else>>……还有唐纳德，也一样。<<endif>>
[[快离开那里！|get_out]] | [[和他们拼了!|fight_them]]


:: first_encounter
哦，偶滴神啊！我紧张得都要心肌梗塞了。
但是，这只是……
[[either("shepherd_talk","key_talk","aries_talk","bos_talk","artesa_talk")]]


:: get_out
我……我不能“出去”。
<<if $break_up_bos_visited is true>>阿里思和那些变态士兵拦住了我的去路……
<<else>>那些士兵拦住了我的去路……<<endif>>
<<if $pulsegun is true && $shotdon is false>>[[gunfight_clear]]
<<else>>……而且唐纳德堵在门口，正在换门锁密码，防止别人进来。
不，不是唐纳德。
那家伙已经不再是唐纳德了。
一旦寄生怪进入他的身体……他就已经不再是本尊了。
就像是……
哦，天
就像是我也要身不由己了
啊啊——
啊呃呃呃呃
<green>来吧，泰勒。</green>
<green>反抗是毫无意义的。</green>
<green>张大嘴巴。这会让你痛一下下。</green>
<green>很久，很久的一下下。</green>
啊啊——
啊
<<set $turnedgreen = true>>
[[goodbye]]
<<endif>>


:: dont_like
是啊，说实话，我感觉也不妙啊。
用星战系列里面大半演员说过的那句台词……
……我有种不祥的预感。
[[whats_going_on]]


:: bang_on_door
哇喔！
更多脚步声来了。这回，有好几个人。
然后又有人站在门口。
是……
<<if $describeminers is false>>……哈，唐纳德，矿工工头。
<<else>>……哈，是唐纳德。<<endif>>
<<if $break_up_bos_visited is true>>全副武装地穿着宇航服。阿里思也在这里。
他们背后还有三个人。
<<else>>全副武装地穿着宇航服，背后还站着三个人。<<endif>>
<<if $key_talk_visited is true>><don>嘿！泰勒！你怎么没来准备室见见这几个兄弟？</don>
<don>所以我决定还是带他们来见你吧。</don>
<<else>><don>嘿！泰勒！我猜你说不定想要见见这几个兄弟。</don>
<don>我们请求空袭你之前待过的那颗卫星，他们就是前来回应的海军陆战队员。</don>
<don>他们正好赶上了我们，想得到一些医疗上的帮助，再拿些补给。</don><<endif>>
<don>兄弟们，这是泰勒。泰勒，这是兄弟们。</don>
呃……大家，好。
这三个新来的都穿着军装，上面有名牌：
克鲁齐格、基奥，还有个叫德∙雷。
不过目前为止，我对他们的了解，也就仅限于此了。
<don>哦，糟糕。我们真没礼貌啊。</don>
<don>来吧，哥儿几个，摘下头盔吧。</don>
[[泰勒？我感觉有诈。|dont_like]] | [[出什么事了？|whats_going_on]]


:: footsteps_cockpit_travel
所以，嗯，不是吓唬你……
……但是我都快吓尿了，我看你也该差不多。
我听到走廊里有脚步声，有一会儿了……
……现在声音越来越近，越来越重，越来越快，我再也不能假装没听到了……
……嗷，不是吧……
……现在，他们就在！这！里！
[[first_encounter]]


:: footsteps_ready_travel
对了，你知道夜魔侠失明之后，其他感官能力就变得超强是怎么回事吗？
嗯，这里还是一片黑咕隆咚……
……但我觉得我快变成夜魔侠了，果然是狗屎运啊。
因为我之前听到，走廊远处有脚步声……
……但现在声音越来越近，越来越重，越来越快……
……嗷，不是吧……
……现在，他们就在！这！里！
[[first_encounter]]


:: keep_hiding
<<if $walk_bunk_visited is true>>太强了！我居然成功回了船员卧舱。
<<else>>是啊，是啊，这……感觉最靠谱了。<<endif>>
这里有六个床垫，可以拿来造一个还算凑合的碉堡。
没必要去见那些当兵的。
尤其这里还这么黑咕隆咚的。搞得大家个个都囧得很。
好了，我决定了：我要呆在这里，不让那些太空硬汉们感觉难堪。
我都要崇拜我自己的决定了。
[[delay 30m^泰勒在躲藏|bang_on_door]]


:: artesa_talk
<<set $artesa_talk_visited = true>>
<<set $doctalk = true>>
<<if $describeothers is false>>……那个医生。约瑟夫∙阿特沙。
<<else>>……阿特沙医生。<<endif>>
（挺奇怪的，以前在地球上的时候，我从来没有见过哪个医生穿短裤T恤。）
（不过我看到的阿特沙医生，从来只穿短裤T恤。）
<<if $footsteps_cockpit_visited is true>><doc>泰勒！你到底想要去哪里？</doc>
我……我本想去驾驶舱的。
我想船长或者玛瑞能告诉我，这倒底是出了什么乱子。
<<elseif $footsteps_qtrs_visited is true>><doc>泰勒！泰勒！你是……躲在枕头后面吗？</doc>
呃，也许是那些枕头躲在我前面。
你试过这种逆向思维吗？
<<else>><doc>泰勒！你到底要去哪里啊？</doc>
我正拖着撞痛了的脚趾头，龟速前往准备室。<<endif>>
<doc>听着……我也完全搞不懂，这里到底出了什么事。</doc>
<doc>而且我最恨被蒙在鼓里了。</doc>
是啊，百爪挠心的感觉是吧？
<doc>……说得再贴切不过了。</doc>
<doc>不过，瞧瞧你自己。虽然在这点微光底下，我也看得出你有流血。</doc>
<doc>一定是刚才船颠簸的时候你擦到头了。</doc>
<doc>你不如先掉头去医疗舱吧？</doc>
<doc>可以先在伤口涂点碘酒，我一会就来，帮你包扎下。</doc>
嗯，我并不是真的……
……唔，好吧。他已经走了。
那……你怎么想？
<<if $footsteps_cockpit_visited is true>>[[继续前往驾驶舱。^按原计划行事。你在那里能了解到所有情况。|continue_cockpit]] | [[前往医疗舱。|go_med_bay]]
<<elseif $footsteps_qtrs_visited is true>>[[前往医疗舱。|go_med_bay]] | [[继续呆在卧舱。|keep_hiding]]
<<else>>[[继续前往准备室。|change_ready]] | [[前往医疗舱。|go_med_bay]]<<endif>>


:: shepherd_talk
<<set $shepherd_talk_visited = true>>
<<set $sheptalk = true>>
……夏帕德船长。
一脸愁容……这种表情我可从没在她脸上见过。
<<if $footsteps_cockpit_visited is true>><shep>泰勒！你是要去驾驶舱吗？</shep>
是啊，我是这么打算的。怎么了？出什么事了？
<<elseif $footsteps_qtrs_visited is true>><shep>泰勒！泰勒！你到底在干嘛，躲在那里？</shep>
嗯，我只是在……测试下……床垫的……粘性？
<shep>你还号称自己是学理科的？你确定？</shep>
无可奉告。
<<else>><shep>泰勒！你刚才准备去哪里？</shep>
我本来是打算去准备室的。
<shep>先等会儿，我需要你到驾驶舱来一下。</shep><<endif>>
<shep>你对电脑挺在行的，对吧？在那颗卫星上，你就让电脑听命于你了，是吧？</shep>
是的，我算不上是专家，但是够用了。
<shep>够用这会儿就够了。</shep>
<shep>快上来驾驶舱，看看你能不能让备用照明启动起来。</shep>
<shep>这件事现在最要紧。然后是恢复通讯，假如你能搞定的话。</shep>
收到，船长。马上到。
……哎，她不在了。我可不觉得获取了什么新信息。
你觉得我应该到驾驶舱去对吗？
<<if $footsteps_cockpit_visited is true>>[[当然，你本来就这么计划的。|cockpit_mission]] | [[你好像也没什么别的选项。|much_choice]]
<<elseif $footsteps_qtrs_visited is true>>[[对，去驾驶舱。|cockpit_mission]] | [[别去，就呆在你的卧舱里。|keep_hiding]]
<<else>>[[对，去驾驶舱。|cockpit_mission]] | [[继续前往准备室。^那是你原本想要去的地方，按计划进行。|change_ready]]<<endif>>


:: key_talk
<<set $key_talk_visited = true>>
<<if $alone_qtrs_visited is true>>……唐纳德。
<<else>>……唐纳德∙凯，矿工工头。<<endif>>
他穿着他的宇航服——是件重型制服，比我的厚重多了。
<<if $alone_qtrs_visited is true>>这当然合情合理了。他在那种环境下工作，我想都想不到有多辛苦。
我猜他去过准备室了。
<<else>>这当然合情合理了。他在那种环境下工作，我想都想不到有多辛苦。<<endif>>
<<if $footsteps_cockpit_visited is true>><don>泰勒！你要去哪里？</don>
我，我正打算去驾驶舱，看看究竟出了什么事情。
<<elseif $footsteps_qtrs_visited is true>><don>泰勒！你还在这里吗？</don>
呃，我只是在……检查下床垫上的商标都还在不在。
把标签除掉可是犯罪，你知道吧？“空间重罪”。
<<else>><don>泰勒！你刚才要去哪里？</don>
我本来是准备去准备室的。
<don>太棒了，我本来就想派你去那里。</don><<endif>>
<don>我们来客人了，你没必要害怕。</don>
<don>你还记得你怎么建议我们的吗？就在我们把你和阿雅从那颗卫星上捞出来的时候……</don>
<don>……召集一次军事空袭？现在，那艘军舰赶上我们了。</don>
<don>他们有人受伤了……现在正在寻找补给。</don>
<don>他们现在全都在准备室里。三个粗人，通通像混球。</don>
<don>依我看，你该去那里，当面感谢他们一下，是吧？</don>
<don>等我把情况和其他船员说过了，我就来找你们。</don>
好吧……但是他们为什么要中断通讯系统呢？还有照明？
<don>技术失误，明显不是他们的本意。</don>
哦，哎，那好吧，我也觉得该去道个谢。
<don>好！我会尽快来找你们的。</don>
然后……他就走了。
那……你怎么想？
<<if $footsteps_cockpit_visited is true>>[[继续前往驾驶舱。^按原计划执行。你会在那里了解到所有情况。|continue_cockpit]] | [[前往准备室。|change_ready]]
<<elseif $footsteps_qtrs_visited is true>>[[前往准备室。|change_ready]] | [[继续呆在卧舱。|keep_hiding]]
<<else>>[[继续前往准备室。^你本来就计划要去那里，保持原计划。|change_ready]] | [[也许跟着他？|follow_don]]<<endif>>


:: aries_talk
<<if $describeminers is false>>……阿里思∙韦瑟。
是个矿工，超爱开玩笑，幽默感巨强。
<<else>>……阿里思。<<endif>>
他正穿着他的重型宇航服，从头武装到脚。糟糕，我是不是也早就应该穿上我自己的？
<<if $footsteps_cockpit_visited is true>><aries>泰勒！你要晃荡去哪里啊？</aries>
我……我正在黑灯瞎火地摸去驾驶舱。我想知道这到底是出了什么事。
<<elseif $footsteps_qtrs_visited is true>><aries>泰勒！你在这里？</aries>
嗯，是啊，只是……捣腾下床垫。
你得经常这么弄一下。为了，嗯……科学的理由。
<<else>><aries>泰勒！你刚才想要去哪里？</aries>
我本来想要一路又跌又撞，去准备室的。
<aries>啊，太好了。我正想要让你去那里。</aries><<endif>>
<aries>我告诉你出了什么事。之前的那个颠簸？</aries>
<aries>是一艘军舰，他们和我们对接的时候没调整好。</aries>
军舰？他们来这荒山野岭干嘛？
<aries>我们把他们呼叫来的。按你说的。这是来扫荡你那颗卫星的军舰。</aries>
<aries>他们追上我们，来拿一些补给，同时给几个伤员包扎下。</aries>
<aries>一共三个人，现在都在准备室里。</aries>
<aries>你是不是该过去一趟，当面感谢下他们？</aries>
<aries>我看他们和凯在侃，聊得挺欢的。</aries>
<aries>等会儿我就来找你们……</aries>
<aries>……等我和别的船员通报完情况，就马上过来。</aries>
<aries>一会儿见，小子。</aries>
然后……就这样，他走了。
那……你怎么想？
<<if $footsteps_cockpit_visited is true>>[[继续前往驾驶舱。^按原计划进行。 你会在那里了解所有情况的。|continue_cockpit]] | [[前往准备室。|change_ready]]
<<elseif $footsteps_qtrs_visited is true>>[[前往准备室。|change_ready]] | [[继续呆在卧舱。|keep_hiding]]
<<else>>[[继续前往准备室。^你本来就是计划要去那里，保持原计划。|change_ready]] | [[也许跟着他？|follow_aries]]<<endif>>


:: bos_talk
<<if $describeminers is false>>……博斯∙泽布。
<<else>>……博斯，是个大块头。<<endif>>
怪了，他正光着脚巴丫子在跑。
不过他的脚步声还是像钉锤敲铁板那样响。
这家伙简直是座铜墙铁壁，好夸张。
<<if $footsteps_cockpit_visited is true>><bos>泰勒！你还好吧？你要去哪里？</bos>
我挺好的，算是吧。虽然膝盖老是东碰西撞的，不过，总的来说，还行。
我正在黑灯瞎火里找路，想去驾驶舱那里。
我猜去那里，大概就能搞清到底出了什么事了吧。
<bos>好。只要你在朝船的最前面去……</bos>
<<elseif $footsteps_qtrs_visited is true>><bos>泰勒！你在不在这里？</bos>
嗯，我在。嗨，博斯。我正在……这些床垫下面捡钱。
要知道，万一我们会经过什么星球，上面能租到《太空侵略者》之类的酷游戏。
<bos>是啊，对，说到《太空侵略者》……</bos>
<<else>><bos>泰勒！你刚才准备去哪里？</bos>
我本来想一路跌跌撞撞，去准备室的。
<bos>眼下，我也不知道这算不算是好主意……</bos><<endif>>
<bos>……我刚从准备室回来，我在那里看到的东西把我吓半死。</bos>
你，呃……你在我眼里，可不像是随便被吓倒的人啊，博斯。
<bos>可不是。可是我刚看见的那三个人——</bos>
<bos>我感觉是两男一女，但是他们的宇航服又厚又重，也很难讲——</bos>
<bos>从舱顶的气阀门进来，进到准备室……</bos>
<bos>……然后直接把凯揍了个半死。</bos>
<bos>一言不发，一句解释没有，什么都没有。他们直冲进来把他海扁了一顿。</bos>
他们……他们袭击唐纳德？为什么他们要这么做？
<bos>鬼晓得。我上去想劝他们住手，其中一个猛推了我一把。</bos>
<bos>泰勒，我感觉……我这辈子从没碰到过这么强壮的东西。</bos>
<bos>我狠狠地撞到了门框上，那劲道，我肯定我撞断几根肋骨。</bos>
<bos>吓死我了，所以我赶紧逃走了。</bos>
<bos>我在找阿里思。 我觉得，我跟他两个人一起，跟他们斗，也许还有点胜算。</bos>
如果……如果我看到他的话，我会告诉他你在找他。
<bos>好极了。我打算到处找找他，然后到钻机控制室躲起来。</bos>
<bos>如果你碰见他的话，让他到那里和我会合。谢了，泰勒。</bos>
然后……他就走了。
不管那些访客是什么人……如果他们能对博斯这样的重量级人物做出那样的事……
……我这种连泥菩萨都算不上的小角色，就完全没戏了。
那……你怎么想？
<<if $footsteps_cockpit_visited is true>>[[继续前往驾驶舱。^按原计划进行。你会在那里了解所有情况。|continue_cockpit]] | [[前往准备室。^说不定你能帮上唐纳德的忙。|change_ready]]
<<elseif $footsteps_qtrs_visited is true>>[[前往准备室。^说不定你能帮上唐纳德的忙。|change_ready]] | [[继续呆在卧舱。|keep_hiding]]
<<else>>[[继续前往准备室。^你本来就是计划要去那里，也许你能帮上唐纳德。|change_ready]] | [[也许跟着博斯？|follow_bos]]<<endif>>


:: cockpit_mission
<<set $cockpit_mission_visited = true>>
啊哟，我能不能成功去那里都是个大问题。
更别提我就算到了那里，究竟能修好些啥了。
[[你确定要这么干？^不管这船是有什么毛病，你确定能修得好？|fix_ship]] | [[一路要小心啊。|be_careful]]


:: follow_don
是啊，也许就该这么做。
毕竟，除了他的脚步声，我就什么都听不见了。
人多势众嘛，对吧？还是说……“祸”不单行？
好吧。我还是跟着唐纳德吧。
[[delay 3m^泰勒在走路|caught_up_don]]


:: follow_aries
对，有道理。
毕竟，除了他的脚步声，我就什么都听不见了。
我要跟紧了他，然后集合其他人，再一起回准备室去。
好吧，我去找阿里思了。
[[delay 3m^泰勒在走路|caught_up_aries]]


:: follow_bos
是啊，这想法不错。
毕竟，除了他的脚步声，我就什么都听不见了。
（因为说实在的，每一声听着都像是汽车粉碎机。）
我要跟紧了他，然后集合其他船员……
……然后我们就可以一起去对付那些不速之客了。
好，就这么办。我要跟着博斯。
[[delay 3m^泰勒在走路|caught_up_bos]]


:: go_med_bay
好吧，听着挺像那么回事的。
我要在黑灯瞎火的走廊里朝底下走……
……要是运气好的话，我能完好无缺地走到医疗舱。
或者，就算不是的话，但愿也只是破成能轻松重组起来的几大块。
[[delay 20m^泰勒在走路|med_bay]]


:: med_bay
<<set $maploc = "medbay">>
好吧，我到了。我现在在医疗舱。
我必须指出——我的泰勒牌霉运还是忠心耿耿地追随着我——我的膝盖快撞碎了。
不是一路走来撞的，而是正好在我要到时，梆！撞在门框上了。
不弄点最糗最二的出场，那我就不叫泰勒了。
不过这房间里应该有什么东西可以帮我止痛吧。
[[找找看止痛片。|look_pills]] | [[找个冰袋。^用冷敷可以防肿。|find_icepack]]


:: walk_bunk
<<set $walk_bunk_visited = true>>
对……像是上上策。
好吧，我走回去了。
[[delay 15m^泰勒在走路|keep_hiding]]


:: much_choice
是啊，我是说，当然有别的选择了。
我可以选择直接抗命，然后躲在我的床上。
我已经吓得半死，而且分分钟能把剩下半条命吓没了。
躲在床上感觉是挺爽的防御机制。
甚至比流行文化扯淡还要安慰人心，信不信由你。
[[好吧，回床上去吧。|walk_bunk]] | [[那不行。快去驾驶舱。|go_cockpit_now]]


:: caught_up_don
有一阵子差点跟丢了，不过我能听到他就在前面，正和阿里思讲话。
我觉得他们就在下个转角。
是的，他们就——
我滴神啊！
我看到了什么啊？
[[怎么了？|don_aries]] | [[你到底看到了什么？^你可得记住，咱们在纯文本交流。麻烦来点画面解释好嘛！|don_aries_2]]


:: change_ready
好吧。我出发去准备室了。
它在船的“艉部”（“艉”就是后面、尾部，航海名词）……
……所以嘛，我最好还是调整下我的“尾部”，然后摸索去那边。
我到那儿就通知你。
[[delay 30m^泰勒在走路|arrive_ready_first]]


:: caught_up_aries
妈哟，阿里思真够快的，就算停电也没让他慢下来一步。
我差点跟丢了，不过我能听到他就在前面，正和唐纳德说话。
我觉得他们就在下个转角。
是的，他们就在那里，还有博斯——
我滴神啊！
我看到了什么啊？
[[怎么了？|don_aries_bos]] | [[你到底看到了什么？^你可得记住，咱们在纯文本交流。麻烦给点解释好嘛！|don_aries_bos_2]]


:: caught_up_bos
妈哟，博斯走得好快。
这个大的块头，怎么可以移动得那么迅速？简直是一只人肉隐形战斗机。
就算停电也不会让他慢下来一步。
差点跟丢了，不过我想我听到他在前面，正在和其它矿工们说话。
我觉得他们就在下个转角。
是的，他们就在那里。而且——
搞什么鬼？
这是什么啊？
[[怎么了？|don_aries_bos]] | [[你到底看到了什么？^你可得记住，咱们在纯文本交流。麻烦给点解释好嘛！|don_aries_bos_2]]


:: continue_cockpit
好吧，从这里出去还得花我点功夫。
真希望夏帕德船长，或者玛瑞，或者谁谁谁在那里可以给我一点解释。
[[delay 10m|cockpit_no_mission]]


:: prioritize
嗨， 随时随地补充点词汇量何乐而不为呢！
毕竟，现在智商爆表比高颜值更流行……
……再说了，要是我在这里死翘翘了，我可得让自己流芳百世才行。
配上《带我去月球（卫星）》这首好歌。
不说了，我要在走道里找找路。等会儿再和你联系。
[[delay 1h^泰勒在走路|explore_fun]]


:: look_pills
你觉得呢？
我觉得我们可以达成共识，我在那颗卫星上时，还是吃过点止痛片的……
……可是基本上没用，对我的冒险经历来说也没点实际的好处。
[[找找再说嘛。|look_pills_two]] | [[好吧，那就找找冰袋。|find_icepack]]


:: find_icepack
<<set $icepack = true>>
正在搜索……
正在搜索……
（这是我正在找的声音。）
哦，哈哈！找到啦！我找到一个冰袋。
等我打开包装。
[[delay 2m^泰勒正在打开冰袋|ice_packed]]


:: go_cockpit_now
好吧，军令如山。
我来了。
[[cockpit_mission]]


:: fix_ship
要是我没把它撞得更烂，那就算我赢了。
[[delay 15m|arrive_cockpit]]


:: be_careful
我一定——
噢噢噢我的小腿哦我的妈哟疼死了啊哟啊哟——
记好了。
[[delay 15m|arrive_cockpit]]

:: don_aries_bos_2
[[don_aries_bos]]

:: don_aries_bos
<<set $don_aries_bos_visited = true>>
<<set $minerfight = true>>
唐纳德和阿里思把博斯顶在走廊墙壁上，他们正在……
……正在猛揍他。
妈呀，隔这么老远，我都能看出来他的鼻梁被打断了……
……然后他的下巴……好像位置也不太对。
他们干嘛这么对他？博斯是他们的兄弟！
[[你得去把他们分开。|break_up_bos]] | [[别干涉。^你要是去掺和的话，对你太危险了。|too_hardcore]]

:: don_aries_2
[[don_aries]]


:: don_aries
<<set $don_aries_visited = true>>
<<set $minerfight = true>>
唐纳德刚刚……一把抓起阿里思，把他狠狠地甩到了墙上。
然后对着他的鼻子就是重重一拳。
我知道阿里思平常会讲点黄段子，还经常让人不爽……
……但是据我所知，这几个家伙是铁杆兄弟啊。为什么要——
我勒个去。他又揍了阿里思一拳……
……啊，阿里思刚吐出好几颗牙齿。重口味啊。
[[你得去把他们分开。|break_this_up]] | [[别干涉。^听上去太！重！口！味！了，你还是别掺和了。|too_hardcore]]


:: santa_real
是啊，在咱俩没认识时，你多半还认定外！星！人！是假的呢。
你每天都有新发现了吧。
不管了，我得在这些走道里找找路。等会儿再和你联系。
[[delay 1h^泰勒在走路|explore_fun]]


:: keep_exploring
<<set $maploc = "hall">>
行，这里真是匪夷所思的黑暗和寂静。
我最好忘记所有我看过的恐怖片里的建议……
……然后穿梭在这些走道里，沉思着“穿梭”这个词的词源。
嘿，圣诞老人，如果你有在听的话……我想要一本迷你字典当我的圣诞礼物。
哦，我还想要有灯光、没故障的通讯设备等等。另外，我还想避免在这外太空的荒山野岭里死翘翘。
但是，最要紧的是字典，好吧？
[[真是太知道轻重缓急了。|prioritize]] | [[我可不信有圣诞老人。|santa_real]]


:: look_pills_two
你说了算，领导。
我这里一片漆黑，麻烦给我点时间，让我看看还能发现点啥。
[[delay 7m^泰勒在搜寻|found_pills]]


:: ice_packed
啊！
这真是……冰！爽！
太好了！这冰袋够！冰！能帮我消肿。
我甚至还找到一卷纱布，可以把冰袋绑在膝盖上，就不用老捧着了。
开心一刻。
我想现在我该等阿特沙医生回来。
[[对，就在那里等着。|wait_for_doc]] | [[别了，继续探查飞船。|keep_exploring]]


:: arrive_cockpit
<<set $maploc = "cockpit">>
噢，有点古怪。
通常，驾驶舱里都灯火通明的，就像是棵……圣诞树，我觉得。
（不好意思，假日气氛引发的联想。）
可是现在，这里的光线非常昏暗，就像是很多控制仪器都失灵了一样。
我们的导航员，玛瑞∙李，只有她一个人在。
嘿，玛瑞，一切都好吧？
<mari>嘿，泰勒。有一艘，呃，海军陆战队的军舰正在我们上方搭载…</mari>
<mari>……他们对接上来的时候，把我们的船撞得一片混乱。</mari>
<mari>而且，我想你很清楚，“混乱”可不是太空航行的理想状态。</mari>
<mari>所以我可就把你刚才的问题当成客套话了，假如你不介意的话。</mari>
行啊，我当然不介意了。
<mari>你对电脑还蛮在行，是吧？</mari>
呃，算是吧。这就是为什么夏帕德船长叫我来这儿。
她想让我试试看恢复船上的备用照明，可能的话，再修修通讯系统。
<mari>是啊，我猜那些对你来说是小事一桩吧。</mari>
<mari>不过更紧迫的恐怕是导航系统，如果你能帮我的话。</mari>
[[遵照夏帕德的指示。^做你来这里该做的事，修照明和通讯系统。|obey_orders]] | [[帮助玛瑞修导航系统。^她人在这里，在等你帮助。你应该先帮助她。|help_navs]]


:: break_up_bos
<<set $break_up_bos_visited = true>>
把他们分开？
好吧，我……我猜你说得对。道义上来说，我是应该这么做。
但是如果说唐纳德和阿里思都可以放倒博斯——那个除了肌肉还是肌肉的肌肉男——
……我还没来得及眨眼，他们就把我扁成肉饼了。
[[那么大声呼救吧。|shout_for_help]] | [[过去那里。^也许你会吃几拳，但是你得制止他们。|dive_in_bos]]


:: cockpit_no_mission
<<set $cockpit_no_mission_visited = true>>
<<set $maploc = "cockpit">>
噢，有点古怪。
通常，驾驶舱里都灯火通明的，就像是棵……圣诞树，我觉得。
（不好意思，都是假日气氛闹得。）
可是现在，这里的光线非常昏暗，就像是很多控制仪器都失灵了一样。
我们的导航员，玛瑞∙李，只有她一个人在。
嘿，玛瑞，一切都好吧？
<mari>嘿，泰勒。有一艘，呃，海军陆战队的军舰正在我们上方搭载…</mari>
<mari>……他们对接上来的时候把我们的船撞得一片混乱。</mari>
<mari>而且，我想你很清楚，“混乱”可不是太空航行的理想状态。</mari>
<mari>所以我可就把你刚才的问题当成客套话了，假如你不介意的话。</mari>
行啊，我当然不介意了。
<mari>你对电脑还蛮在行，是吧？</mari>
嗯，算是吧。你为什么这么问？
<mari>自从那艘船来了之后，导航系统就紊乱了。</mari>
<mari>要是你能帮我把这个修复的话，我可就欠你一个大人情了。</mari>
[[帮助玛瑞修复导航系统。|help_navs]] | [[别捣乱。^你不了解这个，说不定会搞得更糟。|no_navs]]


:: feel_better
嘿，谢谢你！你也是的。
总之，药得有点时间才能见效。
我想我该等阿特沙医生回来。
[[对，在那里等着。|wait_for_doc]] | [[不行，继续查探下这艘船。|keep_exploring]]


:: found_pills
<<set $pills = 10>>
好极了，这瓶子里看来还有几颗止痛片。
为了我的膝盖，我要吃一片。
你知道吧，我真是太感激你了，你催我找药。
我看冰袋不见得比药更有用。
[[好吧，那希望你能好受些。|feel_better]] | [[管它呢，先拿个冰袋吧。|ice_pack_too]]


:: too_hardcore
同意。我应该朝相反的方向走，要快。
运气好的话，也许很快能碰上别的白星号船员……
<<if $don_aries_bos_visited is true>>……然后也许，我们一起，可以想出办法对付唐纳德和阿里思。
<<else>>……然后也许，我们一起，可以想出办法对付唐纳德。<<endif>>
妈哟……前提是还有正常点的船员。
<<if $arrive_ready_first_visited is true>>[[where_to_next]]
<<else>>你觉得呢？……去准备室？
还是去驾驶舱，指望那里有人能给点情报？
[[去准备室。|change_ready]] | [[试试看驾驶舱。|continue_cockpit]]


:: break_this_up
把他们分开？
是啊，我……我猜你说得对。我应该这么做。
但是如果唐纳德可以放倒阿里思——那个除了肌肉还是肌肉的肌肉男——还那么轻松……
……我还没来得及眨眼，他就把我扁成肉饼了。
[[那么大声呼救吧。|shout_for_help]] | [[过去那里。^也许你会吃几拳，但是你得制止他们。|dive_in]]


:: wait_for_doc
好极了，我打算翘起二郎腿，稍微放松下。
和阿雅船长一起待一会儿。
她正躺在担架床上，身上插满了一堆监控仪器。
我确信医学昏迷是对她来说最好的选择……
……但是我当然更希望她能醒来，这样我可以跟她讲讲她错过的事。
（说得好像她会相信我似的。）
唉……我累成狗了。
不如在等医生的同时，打个盹吧。
[[当然了，睡吧。|take_nap]] | [[你该保持警觉。|stay_alert]]


:: dive_in_bos
<<set $dive_in_bos_visited = true>>
也许你说的有点道理。
至少能分散下他们的注意力，让博斯有机会振作下。
也许，在我的帮助下，他能起来击倒唐纳德和阿里思。
或者至少我们能让他们冷静下来，看看究竟出了什么鬼事。
哎。
豁出去了。
[[delay 2m^泰勒在打斗|bad_fight]]


:: ice_pack_too
<<set $icepack = true>>
呃……当然啦。为什么不？
<<if $ievasuit is true>>宇航服上有些口袋，应该派派用场。
我要未雨绸缪，就像松鼠囤粮一样。
<<else>>把它放进口袋，以备不时之需，就像松鼠囤粮一样。<<endif>>
或者像松鼠囤硝酸铵冰袋。
（话说，这只松鼠到底是要干嘛？）
总之，这些药得有点时间才能见效。
我想现在我该等阿特沙医生回来。
[[对，在那里等着。|wait_for_doc]] | [[不行，继续探查飞船。|keep_exploring]]


:: shout_for_help
是啊，这恐怕才是上上策。妈呀，我好希望通讯设备能用。
但是，好吧，我豁出去了。
嘿！有人吗！有谁在吗？
我这里有情况，呃……我这里到底算哪里？
……右舷前的走道，我觉得是吧！快来人！
快来人——
噢，惨了。
惨了，惨了，这下真的惨了。
唐纳德走过来了。
[[快跑！|run_from_don]] | [[坚守你的阵地。|stand_ground]]


:: dive_in
也许你说的有点道理。
至少能分散下他的注意力，让阿里思有机会振作下。
我也只敢对你私底下说说：我说不定能让唐纳德冷静下。
哎。
豁出去了。
[[delay 2m^泰勒在打斗|bad_fight]]


:: stay_alert
呃。
但是，保持警惕挺难的。这包括……你懂的……真的要“保持”住。
简直不知道这有什么用。
[[只是会觉得更安全。^“因为我会怕黑，因为我觉得意冷心灰。”哈，你不如弄点娱乐吧。|stay_awake]] | [[好吧，那就小睡一会。|take_nap]]
//The "With the lights out..." lines are paraphrased from Nirvana's song "Smells Like Teen Spirit."


:: take_nap
好吧，我就……拿这箱橡胶手套当（超级不舒服的）枕头……
……然后变成机器人，做梦梦见数电子羊。
一会儿再和你联系。
[[delay 90m^泰勒在睡觉|doc_green]]


:: stand_ground
“坚守阵地”是那些胜券在握的人才干的事。
然而我嘛，却是——
啊啊啊
[[delay 1h^泰勒失去了知觉|awake_captured]]


:: run_from_don
收到。我正在跑。
唯一的问题是，唐纳德也在跑。
而且他还比我快好多——
呜呜
啊啊啊
[[delay 1h^泰勒失去了知觉|awake_captured]]


:: bad_fight
这真是
坏主意
<<if $dive_in_bos_visited is true>>博斯昏过去了
另外两个人看上去有点
啊啊啊啊啊
狂暴
<<else>>阿里思昏过去了
唐纳德看上去有点
啊啊啊啊啊
狂暴<<endif>>
我的背天啊我的背
哦，我的妈啊
我的
天！
[[delay 1h^泰勒失去了知觉|awake_captured]]


:: help_navs
<<set $help_navs_visited = true>>
让我看看我能不能修好导航系统。
给我几分钟，等我稍微研究下编码。
[[delay 10m^泰勒正在工作|nav_code]]


:: obey_orders
我，呃……是这样的，玛瑞，船长直接下达了个命令给我，让我修复照明系统。
至少让我先试下把那个任务完成——
然后要么修好，要么修得更烂——
接着我就过来帮你，行不行？
<mari>行啊，好吧。是该这样。</mari>
<mari>我只是……六神无主了。一切都已经乱七八糟……</mari>
<mari>……偏偏这时候，软件又把硬件搞瘫痪了。</mari>
<mari>我可从没想过我的工作会这么艰难。</mari>
还真是，“空间科学”——“空前惊喜”！
<mari>说得好。</mari>
[[delay 20m^泰勒正在工作|no_lights]]


:: no_navs
哎，要知道，我最怕瞎折腾不熟的系统了……
……最后还弄得更糟，还不如不掺和的时候。
<mari>泰勒，你还没怎么搞清楚状况啊？</mari>
<mari>说实话，我不觉得你还能“弄得更糟”了。</mari>
言之过早了，玛瑞。
<<if $minerfight is true>>[[告诉她矿工们打架的事情。|mari_miner_fight]] | [[还是什么都别说了。|no_mari_miner]]
<<else>>[[她说得对，帮帮她。|help_navs]] | [[别碰那些电脑仪器。|no_navs_two]]<<endif>>


:: no_navs_two
我先看你弄一会儿。
如果我觉得能搭上手的话……我再试着来帮忙下。
<mari>好的，行。</mari>
<mari>这艘船现在安静得出奇。</mari>
<mari>有个人作伴也挺好的。</mari>
我也这么觉得。赶时髦乐队有首歌叫《享受宁静》，我们不如也享受下这宁静吧。
[[delay 15m^泰勒在假装自己是赶时髦乐队|mari_confessional]]
//"Enjoy The Silence" is a song by the band Depeche Mode.


:: stay_awake
娱乐一下你？
好，好吧。
我可以，跟着阿雅船长心跳监测仪的节奏来段快板？
要么拿各种药罐棉棒来段皮影戏？
用一根真正的名牌棉棒？
这可是一艘小型采矿船上的医务室。
这不是娱乐新天地，这是办正事的地方。虽说不太够标准。
这都不像是老家的小诊所，那里至少还有小册子可以读下。
“是这样的，你怀孕了……在太空里！”
“检查下天王星是否有息肉。”
“尽快测试……您的纤原体！”
好了，你消遣到了吗？
[[逗死了，你真是喜剧之王啊。|solid_jokes]] | [[呃……你还是睡吧。^我仔细考虑过了，你的确需要睡眠，好给你的幽默细胞们充下电。|take_nap]]


:: doc_green
嗯！
睡得……比我计划的要久。
哦，嘿！阿特沙医生回来了。
看来他正在检查阿雅船长。
怎么样，医生？结果如何？
<doc>结果么，泰勒，我可以用一个词来形容：“共栖"。 你知道这个词吗？</doc>
呃……
[[对，我知道。|know_word]] | [[从没听说过。|dont_know_word]]


:: know_word
你知道？是什么意思？
[[就像是共生。^只是其中的一个有机体获利，而另一个只是维持现状。|defined_it]] | [[是寄生关系的一种。^只是其中的一个有机体获利，而另一个维持无恙。|defined_it_2]]


:: defined_it_2
[[defined_it]]


:: defined_it
所以……这是一种宿主和寄生物之间的关系？
或者，像是……寄生怪？
噢，吐槽，我一点也不喜欢这个话题的走向。
<doc>像你这么小小年纪，竟然对如此浅显的事情有如此深刻的理解。</doc>
你这是……恭维吗？我听着不像啊。
<doc>和我们对接的那艘军舰，泰勒……</doc>
<doc>……他们曾经去过你的卫星。他们带来点纪念品呢。</doc>
死了，死了，死无葬生之地了！
他手里有个那玩意儿。
那种能通过嘴巴爬进你体内的，外星小绿怪。
他手里有个寄生怪。
[[把它从他那里拿走。|get_occupier]] | [[快跑！|run_occupier]]


:: awake_captured
<<set $maploc = "crewqtrs">>
呃，出什么事了？我在哪里？
噢。回到了……船员卧舱。
感觉……真的好怪。就像是我有一部分……没完全回来似的。
我不能……
……奇怪。我可以看到我的腿，还长着，和以前一样。
可是我却不能移动我的腿，甚至都感觉不到。
这……太诡异了。
嘿，房间里还有别人，也许他们跟我说出了什么事。
是……是唐纳德。
<<if $break_up_bos_visited is true>>全副武装地穿着他的宇航服，阿里思也在这里。
他们背后还有三个人。
<<else>>全副武装地穿着他的宇航服，背后还站着三个人。<<endif>>
<don>嗨，泰勒。我猜你兴许想要见见这些人。</don>
<don>我们请求对你的那颗卫星进行空袭，他们就是回应的海军陆战队员。</don>
<don>他们正好赶上了我们，希望能得到一些医疗上的帮助还有补给。</don>
<don>各位，这是泰勒。泰勒，这是……大家。</don>
呃……大家，好。
这三个新来的都穿着军装，上面有名牌：
克鲁齐格、基奥，还有个叫德∙雷。
不过目前为止，我对他们的了解，也就仅限于此了。
<don>哦，对了……他们带了点东西，想交给你。</don>
唐纳德，我觉得我不太对劲啊。
<don>哦，没关系，我不想让你跑掉，给你稍微用了点镇静剂。</don>
<don>不过别担心……你收下礼物之后，腿很快就恢复原样了。</don>
我有点害怕。你们兄弟几个吓到我了。
<don>哦哟。瞧我们，太失礼了。</don>
<don>来吧，哥儿几个，摘下头盔吧。</don>
[[泰勒？我感觉有诈。|dont_like]] | [[出了什么事？|whats_going_on]]


:: nav_code
<<set $nav_code_visited = true>>
重点是……到现在为止，好像什么都没问题。
<<if $mentionedtunguskite is true>>我之前有提到过，这是艘采矿船……
……但是说实话，我也说不上来。
<<else>>这简直是太让人郁闷了。<<endif>>
航线已经用最精密的计算，一而再，再而三地重新规划过了。
但问题是，白星号的商载，把一切都搞没了。
[[因为超重，要把你也扔没了吗？|weight_problem]] | [[什么商载？|what_payload]]


:: no_lights
<<set $triedlights = true>>
简直……没办法了。
这不是那种不小心烧坏的电路板什么的。
这是流氓软件，有人恶意攻击电脑，导致照明系统失灵。
幸好照明系统和船上的其他能源系统是各自独立的……
……不过这“幸好”也没“好”到哪里去就是了。
我的意思是，考虑到这明显是一起蓄意破坏。
还不是那种嬉皮乐队“野兽男孩”类型的装酷搞破坏……
……而是那种“让你们在太空里，没有灯光，没有通讯，没有导航”的颠覆活动。
[[没人写过那种饶舌。|no_rap]] | [[那么……你修不好了吗？|no_fix]]


:: no_mari_miner
是啊，别故弄玄虚吓人。
尤其是当我明！显！不清楚来龙去脉的时候。
哎……要是我能帮上忙就好了，玛瑞。
[[no_navs_two]]


:: mari_miner_fight
其实，呃……我来驾驶舱时，我看到几件怪事。
<mari>哦？“怪”？什么意思？</mari>
我看到那几个矿工打架。
<mari>你开玩笑吧。他们可是铁杆哥们，怎么可能打起来？</mari>
我也不知道……
<<if $don_aries_visited is true>>但我亲眼瞧见唐纳德把阿里思打得鼻水直流。
直接揍在脸上，好几拳。
<<else>>但我看见唐纳德和阿里思联手放倒了博斯。
我都不知道还有谁能放到博斯。<<endif>>
我……你看，说真的，我其实有点担心……
……担心其实不是那几个人在互相打架。
而是有些东西，让他们打架。
像是我曾见过的玩意儿，从前在那颗卫星上的时候。
然后这种想法——觉得是来访的海军陆战队员们，把那些玩意儿带给我们的想法——
真让我心惊胆战，简直无法用语言形容，玛瑞。
<mari>哦，我竟然还在这里，奢望咱俩中起码有一个没被吓坏。</mari>
[[勇敢点。|brave_face]] | [[害怕也是正常的。|be_scared]]


:: mari_confessional
<mari>对了，泰勒。我能告诉你一件事吗？</mari>
行啊，没问题。
<mari>但是你不能告诉其他任何人。</mari>
行……啊。我还能告诉谁呢？
<mari>我是认真的。我必须……我必须确定我能完全相信你。</mari>
玛瑞，你有点吓到我了，你……你是在哭吗？
<mari>只是，我可以完全相信你吗？</mari>
[[告诉她，可以。|trust_me]] | [[还是礼貌拒绝吧。^如果你觉得很尴尬，你可以选择不听。|no_trust]]


:: solid_jokes
谢了。我还没表演我的拿手绝活呢。
你看，天晓得医生要几时才能回来啊。
要是我要保持清醒的话，最好还是继续查探这艘船吧。
我可以待会儿再折回医疗舱，等他在的时候。
[[好吧，继续查看吧。|keep_exploring]] | [[你应该呆在那里。|stay_med]]


:: stay_med
呃，好吧。
不过我讲不动段子了。我累成狗了。
就稍微打个盹不要紧的。
大概过个十分钟我再联系你。别担心。
[[take_nap]]


:: dont_know_word
<doc>这个词一度用来描述两个有机体之间的一种关系……</doc>
<doc>……在这种关系里，一方得到益处，但是不会对另一方造成伤害。</doc>
[[defined_it]]


:: run_occupier
跑？
是啊……我看……我是得闪了。
他随时可以把那玩意儿塞进我的喉咙，然后我就会无力……
……哦，糟糕！“无力”！
他要对阿雅船长下手。
[[说真的，快！跑！^你得快点离开。|run_for_real]] | [[和他拼了。|fight_doc]]


:: get_occupier
啊哟，我不想拿手摸那玩意儿。
但是你说得对，我得把那东西抢走，不能让他把它塞进了我肚子，不然的话……
……不对，这不是他的计划。可恶！
他要把它放进阿雅船长的身体。
混蛋——
[[doc_speech]]


:: grab_crystals
<<set $grab_crystals_visited = true>>
是啊……有点道理。
<<if $backpack is true>>依我看，我拿的这个矿物标本背包，不就是拿来装矿物标本的嘛……
……所以我得让它物有所用！
背着小包包，我就是宇宙探险时代的爱探险的朵拉小姑娘！
<<else>>准备室里有一些内架型背包……
……衬了自适高分子聚合材料，用来装晶体很理想。
这些背包是设计来收集不明来源的矿石标本的……
……很结实耐用，而且超级能装。<<endif>>
[[告诉玛瑞你的打算。|tell_mari]] | [[快走，别提你的计划。|dont_tell_mari]]


:: crystals_sunk
是啊，好吧……
……我充分信任玛瑞，我相信她能帮我们脱困。
哪怕是要对抗通古斯石造成的不确定性。
不幸的是，玛瑞，我不觉得我能帮上多大的忙。
[[no_navs_two]]


:: no_fix
<<set $no_fix_visited = true>>
我没办法恢复照明系统。
看来我们还得忍受在黑暗里摸索一阵子了。
<mari>你知道吗，我们的宇航服头盔上有个“夜视”模式设置。</mari>
你说真的？
我的宇航服可没这种设置。
妈哟！我必须得搞一个最新款的高大上头盔了。
当然了，要找到去准备室的路……
……我都必须要有一个最新款的高大上头盔才行。
这是不是太讽刺了点？是吧？
[[有点太……讽刺了。|ironic]] | [[是啊，有道理。|ironic_2]]

:: ironic_2
[[ironic]]

:: no_rap
“不知道是谁切断了照明/只知道他们干这事就为了整我/
现在我们《迷失太空》/对抗弥天大祸/
登上黑星球/就像写了《异形》的那家伙/
太空恐怖经典系列/又多一个新人我。”
给你来段饶舌。
要是太出色了你别惊讶，要知道，我是！学！过！理科的。
这就是为什么我总掉理科书袋。
[[嘿，还挺押韵。|tight_rhymes]] | [[但是你修不好照明是吧？|no_fix]]
//Billy Mumy is an actor from the TV series Lost In Space. Dan O'Bannon is an actor in the film Dark Star.



:: brave_face
哦，你当我没说吧。
不管这里出了什么事，我们会挺过去的，没问题。
如果你害怕的话，玛瑞，和我聊聊。
如果你愿意的话。
<mari>是吗？</mari>
当然了。
<mari>好的，但是你不能告诉任何人。</mari>
我能告诉谁呢？
<mari>我是认真的。我必须……我必须确定能完全信任你。</mari>
玛瑞，你有点吓到我了，你……你是在哭吗？
<mari>只是，我可以完全相信你吗？</mari>
[[告诉她，可以。|trust_me]] | [[还是礼貌拒绝吧。^如果你觉得很尴尬，你可以选择不听。|no_trust]]


:: no_trust
我……不知道啊。
听上去她真的需要和人聊聊。
[[只要你没问题。|trust_me]] | [[还是礼貌地拒绝吧。|no_trust_two]]


:: trust_me
你可以完全相信我，我保证。
你想说什么，玛瑞？
<mari>只是……哦，天啊，我都不知道从哪里讲起。</mari>
<mari>我好害怕，泰勒。</mari>
<mari>来了艘军舰，对接到我们白星号上……</mari>
<mari>……把我们的系统搅得一塌糊涂，仪器全都不能正常工作了……</mari>
<mari>……我真的……很害怕。</mari>
[[告诉她你也是。|scared_too]] | [[告诉她别担心。|no_worries]]



:: corridor_after_med
<<set $maploc = "hall">>
回到走道了。
<<if $icepack is true>>我、我的冰袋，以及抛弃了我的船长的羞耻之心。
<<else>>我、一点点轻度止痛药反应，还有抛弃了我的船长的羞愧之心。<<endif>>
希望凭着点狗屎运，我能在这里找到人。
找到谁帮我制服阿特沙医生——那家伙一定是脑壳被门夹了——
也许还能想出办法来救阿雅船长。
啊呀，我觉得，刚才在那边，我真的太熊太丢脸了。
[[你是做了应该做的事。|did_fine]] | [[也许你做了错误的决定。|wrong_call]]


:: run_for_real
该死！也许你说的有点道理。
我讨厌想像他对阿雅船长可能会下什么手……
……但在这紧要关头，大概每个人都只能自保了。
好吧，我要离开这里。
原谅我吧，船长。
<doc>嘿！你要去哪里——</doc>
[[corridor_after_med]]


:: fight_doc
你到底想要干嘛，医生？
我亲眼见过那些……那些寄生怪们干的好事。
你不会想要和这玩意儿打交道的。你完全不！知！道！后果。
[[doc_speech]]


:: doc_speech
<doc>泰勒，你必须得明白……</doc>
<doc>……这是千载难逢的机会。</doc>
<doc>抓到这玩意儿……然后带回家，带回地球……</doc>
<doc>大学、城市，都会以我的名字命名。我会成为一个家喻户晓的名字！</doc>
<doc>我的荣誉雕像会遍布世界！</doc>
<doc>孩子们会用手指崇拜地摸雕像底座上的名字：“约瑟夫∙阿特沙”。</doc>
哇哦，医生。你这件白大褂（有吗？）下面的野心可真不小啊。
[[快抢寄生怪，马上！|get_green]] | [[让他讲下去。^他听上去自大到不行，分散他的注意，一边快点想办法。|keep_talking]]


:: dont_tell_mari
嘿，玛瑞……我在这里帮不上什么忙。
我还是走吧，瞧瞧在黑暗里头，还能撞出多少麻烦。
还能出什么幺蛾子呢，是不是？
[[mari_confessional]]


:: tell_mari
<<if $ievasuit is true>>[[hit_up_bay]]
<<else>>[[more_comfy]]<<endif>>
<mari>嘿，那你可以去造一座超人的北极基地了。</mari>
你看？这就是为什么我喜欢你，玛瑞。你最懂我了。
<mari>你要那些晶体干什么，泰勒？</mari>
我在想，万一……万一最坏的事情发生了……
……然后我们不得已，要抛弃白星号……
……要是手里有些这种超级珍稀的矿石，应该不错吧？
我不是说，我们一定会抛弃白星号。
不是说我们有必要那么害怕。
<mari>哇。</mari>
<mari>全银河系里，你这张扯淡脸最假了，你知道吧？</mari>
[[mari_confessional]]


:: hit_up_bay
嘿，玛瑞，我觉得我要去货舱转转……
……然后也许再抓上一大口袋通古斯石。


:: more_comfy
嘿，玛瑞，我觉得我得套上点舒适性有所欠缺的装备——
我是说我那件亲爱的宇航服——
<<if $no_fix_visited is true>>但是也许得配一个最新款的高大上头盔——
然后也许再抓上一大口袋通古斯石。
<<else>>然后也许再抓上一大口袋通古斯石。<<endif>>

:: ironic
就像是一场雨，在下雨天。
唉，算了。我果然不擅长讽刺。
<mari>嗯，要是你不能修复照明系统的话……</mari>
<mari>……也许你可以帮我看看怎么修复导航系统？</mari>
[[帮助玛瑞修复导航系统。|help_navs]] | [[别捣乱。^你不了解系统，也许只会弄得更糟。|no_navs]]


:: cockpit_crystals
不过，对，我说过，导航系统……
……受到通古斯石的影响，我们的航线都乱套了。
不把整舱货全丢掉，没有办法纠正的。
……但是，肯定不能这么办。那些晶体太稀有太贵重了……
……绝不是那种有点问题，你首先会想要丢的东西。
[[也许你该拿点儿。^万一是出了什么岔子呢？不如先带点吧。|grab_crystals]] | [[听着像你们没辙了。|crystals_sunk]]


:: tight_rhymes
是啊，可不是？
我是诚心诚意的呢，伙计。
除了，呃……当真要修复我们的小小照明困难时。
[[no_fix]]


:: be_scared
好吧，那就好。因为我得说实话，这里一点都不好玩。
连好玩的边都沾不上。
[[mari_confessional]]


:: no_trust_two
我，唔……
你看，你现在像是有点被吓怕了。
我呢？我是相当被吓怕了。我不觉得咱们这种二人组，能煮出什么正能量。
肯定煮不出“巧克力和花生酱”绝配，顶多是“巧克力加辣椒酱”的黑暗料理。
所以，呃，也许我们暂时不深入讨论比较好。
<mari>哦。</mari>
<mari>好吧。</mari>
<mari>不过，嗯，我大概这一时半会儿还止不住哭。</mari>
<mari>所以，我要拜托你回避一下，行吗？</mari>
[[有道理，你应该离开。|leave_cockpit]] | [[别走。^那是她的问题，不是你的。如果你不想走的话，就别走。|stay_cockpit]]


:: did_fine
<<set $ayainfected = true>>
也许……也许是吧。
虽然，我觉得真的有点不对。
但是好吧，新的首要任务是，找到人帮我打败阿特沙。
我看……我要指望在漆黑一片的走道里游荡，……
……直到我正巧遇上个人为止了。
希望那个人不是阿特沙。
[[delay 1h^泰勒在走路|explore_fun]]


:: wrong_call
是啊。
是啊，确实是，对吧？
阿雅船长绝！不！会！这样抛弃我的。
瓦里亚号上的每一个人都不会在别人有难时，弃之不顾的。
好了，我该回去，对吧?
[[不要，别犯傻。^闪才是上策。没有援兵就回去，那是犯傻。|did_fine]] | [[对，回去阻止阿特沙。|back_to_bay]]


:: back_to_bay
<<set $maploc = "medbay">>
我决定了，我要回去。
[[fight_doc]]


:: get_green
对不住了，医生……但我不会让你这么干的。
<doc>住手，你这个小混球。你不能——啊啊啊啊！</doc>
好吧！
我一把把他推开。寄生怪掉在了地上。
没有灯光，很难看到……但是这玩意儿自己，动不了很快。
[[抓住外星怪物。|grab_alien]] | [[小心那个医生。|worry_doc]]


:: keep_talking
所以，怎么着，医生？
你打算把这玩意儿塞进阿雅船长的身体里？
我很确定，要是她醒着的话，她一定会说“谢了，不必了！”
<doc>她是最好的宿主身体，活着，但是昏迷中。</doc>
<doc>她不会感到任何痛苦——我知道，这过程会有点痛苦的。</doc>
<doc>但是我不知道这些玩意离开了宿主能存活多久。</doc>
<doc>如果我想要把它活着带回地球……</doc>
<doc>……彻彻底底地进行研究，当然……</doc>
<doc>……用你的船长当宿主就是我唯一的选择。</doc>
[[打他一拳！|punch_doc]] | [[拿东西打他。|find_something]]


:: wake_med_bay
什么
什么鬼
我动不了
出了什么事？
<doc>噢，泰勒。你醒了。</doc>
<doc>好极了。我不想在你没醒透时就处理这事。</doc>
你在说……什么？
<doc>你的阿雅船长也许是个不错的宿主人选……</doc>
<doc>……但她的状态还不算是完全稳定。</doc>
<doc>有可能还没到地球，她的身体就报废了……</doc>
<doc>……如果那样的话，那东西就有可能会在她体内衰竭了。</doc>
<doc>可是你，泰勒？你还年轻，身强力壮。你的身体前景好着呢。</doc>
<doc>你的想法，真可惜，并不那么跟得上。</doc>
哦，不。
哦，我的妈啊，不要。
别靠近我，你这个变态！
<doc>你会发现自己已经被麻醉得差不多了。你哪里都去不了。</doc>
<doc>现在，张开大嘴，泰勒。</doc>
<doc>你会让我一举成名的。</doc>
不——
不！！！！
要！！！！！
<<set $turnedgreen = true>>
[[goodbye]]


:: stay_cockpit
呃……你知道吧，一般来说你给的建议都不错……
……但是这回，我要听我自己的。
因为要是我呆在这里，既不想听她倾诉，还只看着她哭的话……
……我保证，肯定不止她一个人会觉得难受的。
所以……我还是走开吧。
玛瑞，也许我们……等会儿再聊？
<mari>好，行。</mari>
<mari>等会儿再说吧。</mari>
[[outside_cockpit]]


:: leave_cockpit
好吧，有道理。
所以……我还是走开吧。
玛瑞，也许我们……等会儿再聊？
<mari>好，行。</mari>
<mari>等会儿再说吧。</mari>
[[outside_cockpit]]


:: marvel_idea
是啊，也许是。要是我们能成功回地球的话……
……要是，你懂的，要是我当不成“科学家”的话……
……那我说不定可以画漫画赚钱。
这样我就不太会经常到太空里来，体验迷路啊，担惊啊，受怕啊。
（而是在动漫展里迷路啊，担惊啊，受怕啊，貌似也好不到哪去。）
[[alien_on_ice]]


:: not_fight_marvel
我自己吗？不，我肯定不会。
不过要是每个月都能读漫画书的话，那敢情不错。
[[alien_on_ice]]


:: grab_alien
<<if $ievasuit is true>>糟，糟了！泰勒，你这个二楞子，赶快想点办法！
等下，我知道了！我可以用我的头盔——这会儿用，起码没问题。
把那玩意儿控制住，同时争取一点时间……
<<else>>我……噢，天啊，我真的不想……
可恶！我要把我的上衣脱了。
把那变态小怪物包起来，还不必接触到它……<<endif>>
……只要先抓到了它，我就能想个办法，到底要怎么处置它。
给我点时间……
[[delay 2m^泰勒在抓捕寄生怪|got_alien]]


:: worry_doc
我挺！担！心！他的，我看他显然是脑壳被门夹坏了。
他还——哇哦——他刚打了我一拳！
[[一拳打回去！|punch_doc]] | [[拿东西打他。|find_something]]


:: punch_doc
医生，吃我一记！
啊哟！
我这一记流星拳，正中他的门牙，打痛我的指关节了！
不过他也伤得不轻。
[[再来一拳。|second_punch]] | [[找个武器。^你不想弄伤手的话，就找点别的来打他。|find_something]]


:: find_something
我在黑暗里瞎摸——同时还得躲开疯子医生——
不确定我能不能……哦，嘿！这个金属便盆好！
感觉能派上用场，精确地说，是大用场。
[[上吧！^拿这个来砸他，把他扁晕。|bedpan_smack]] | [[哇，感觉太凶猛了吧。^用这个的话，你可能会伤到他的。再考虑下。|bedpan_wait]]


:: bedpan_wait
好吧，有点道理。
我只是想制止他，没想弄断他的骨头啊啥的。
我还是把便盆放下，劝他放下屠刀，或者——
啊啊啊啊啊啊！
或者也许
他立马拿起那个便盆
砸我头上
噢噢噢噢
砸得好狠
他砸得太狠了
呃
[[delay 40m^泰勒失去了知觉|wake_med_bay]]


:: what_tortoise
你知道什么是乌龟吧？
[[废话。|course_turtle]] | [[不懂。|no_turtle]]


:: outside_cockpit
<<set $maploc = "hall">>
然后，嘭！……我回到外面走廊，她在我背后关上了门。
我不能怪她。我很确定整件事我处理得太！烂！了！
好吧。
这个晚上才刚开始呢。
我还有的是机会干点比这更烂的事情。
<<if $grab_crystals_visited is true>>[[head_for_ready]]
<<else>>[[where_to]]<<endif>>


:: scared_too
我也怕得要死，玛瑞。
我这辈子实在是看过太多科幻和恐怖电影了……
……我很清楚，你绝对不能出现在“太空里停电”的戏里。
但是我们会没事的，我们一定能挺过去的。
[[mari_more]]


:: no_worries
我不想瞎扯些什么……
……“比这糟糕得多的情形，我都遇到过，最后还不是没事嘛。”
但是……你知道的，的确如此。
停电也好，导航失灵也好，不速之客也好，随便什么……我们能挺过来的。
[[mari_more]]


:: good_fridge
谢谢，我希望降降温也会让它的代谢放慢。
让它变得比现在还要迟钝呆笨。这样更容易处置。
当然，我完全不了解这个外星怪的生理构造……
……我只知道，把它锁进冰箱会让它长大一千倍……
……可以赋予它绿巨人的力量、钢铁侠的智慧、雷神的头发。
[[听着像个厉害角色。|marvel_idea]] | [[你不会想和这种怪兽战斗的。|not_fight_marvel]]
//Hulk, Tony Stark, and Thor are all Marvel Comics characters.


:: got_alien
<<set $gotalien = true>>
好了！在黑暗里，我有一瞬间没看到那个恶心蠕动的小怪物，差点吓死我……
<<if $artesaout is false>>……更别提同时，我还要一直防着阿特沙……
……不过我已经把那个寄生怪包起来了。
现在，我只需要担心那个（不是个好人的）医生，然后相信自己——
[[worry_doc]]
<<else>>[[alien_under_wraps]]<<endif>>


:: alien_under_wraps
……不过我已经把寄生怪包起来了。
现在我只需要一个更加持久的方式……
<<if $ievasuit is true>>……既然我知道有寄生怪正在这里出没……
……我十分确定以及肯定，需要拿头盔挡在它们和我的嘴巴之间。
<<else>>……说真的，想想看在飞船里裸奔？
这可比大烂片《冰河急先锋》的太空激情戏还让人吐血啊。
（不过说真的，那部戏也够烂的啊。）<<endif>>
那我该怎么办呢？
[[附近有容器吗？^阿特沙肯定有些有盖子的容器你可以用一下。|container]] | [[也许可以用冰箱？^要是能把寄生怪放在冰上那可好极了。|freezer]]
//Ice Pirates is a bad 1984 movie which includes sexy times on a spaceship.


:: container
是啊，好主意。比方说，那种用来装压舌板的玻璃罐子什么的……
等我一下，等我摸黑找找看。
[[delay 3m^泰勒在搜寻|found_canister]]


:: capture_alien
抓住它？
然后呢？
我是说……要是我能把它完好无缺地运回地球……
……让科学家们好好研究下，那确实是美事。
尤其是可以研究出对抗这种怪物的办法。
它们最好永远别出现在我们的星球上……可万一呢，我们必须有所防备。
好吧，那还是抓住它。
你倒是站着说话不腰疼啊。
[[快把它关进什么里面。|grab_alien]] | [[周围有什么容器吗？^阿特沙肯定有什么密闭容器可以借用下。|container_store]]


:: second_punch
<<set $artesaout = true>>
这次是，上钩拳。
（我生平头一个上钩拳！）
然后……阿特沙医生立马不省人事。
简直是跟这里所有的人事一样，完全没了。
这可是我这辈子第一次把医生打昏。我很怀疑我的医保会不会报销这个？
<<if $gotalien is true>>[[把医生绑起来。|tie_doc]] | [[去处理寄生怪。|back_alien]]
<<else>>[[把医生绑起来。|tie_doc]] | [[抓住那个寄生怪。|capture_alien]]<<endif>>

:: bedpan_smack
<<set $artesaout = true>>
哇喔！
我，呃……我动手了。
正击中他的脑袋。
他就像是被切断了线的牵线木偶那样倒了下去。
真奇怪那些武打明星怎么没想到拿便盆当武器。
至少能拍300部令人耳目一新的电影了。
“今晚，送你下地狱拉屎去！”
哎哟，作为这个房间里唯一清醒的人，忍不住要胡言乱语一通……
……我现在是这里的少数派。
<<if $gotalien is true>>[[把医生绑起来。|tie_doc]] | [[去处理寄生怪。|back_alien]]
<<else>>[[把医生绑起来。|tie_doc]] | [[抓住那个寄生怪。|capture_alien]]<<endif>>

:: back_alien
我看这里的东西多半要烂光光了……
……也不知道这“光”亮不亮……
[[alien_under_wraps]]

:: course_turtle
吃了药的那种。
[[我没见过下水道里有乌龟。^不过我懂你的意思。|end_blade]] | [[别聊动漫了。^要跑题了。|end_blade_2]]

:: end_blade_2
[[end_blade]]

:: safer_tortoise
我想是吧，不过，我眼下还是宁可当只兔子。
不仅仅是跑得快点，兔子还有夜视能力呢。
虽然视线不是很清楚，但是夜视能力比我要强多了。
还有，我很确定，它们过复活节时，还会下巧克力蛋呢。
有科学依据的！
[[果然很科学啊。|chocolate_eggs]] | [[你就胡扯吧。|the_worst]]


:: take_time
好，谢谢你。缓慢、镇定、忍耐才能赢。
我会永远当乌龟的。
[[那样子更安全。|safer_tortoise]] | [[乌龟？什么意思？|what_tortoise]]
//The following run of dialogue (through several passages) is from the film Blade Runner: "Tortoise? What's that?" "You know what a turtle is?" "'Course." "Same thing." "I've never seen a turtle. But I understand what you mean."


:: arrive_ready_first
<<set $arrive_ready_first_visited = true>>
<<set $maploc = "ready">>
啊哟。
我刚登上白星号的时候，并不觉得它是艘大船。
我是说，它比瓦里亚号大，而且布局也毫不相同。
实用性更多，舒适性更少。
哦，还有个钻头占了好大一片地方。
但是我必须说：穿过我不太熟悉的狭窄走道……
……在一片几乎伸手不见五指的黑暗里……
……真是要花一！辈！子！
[[绝对的。|taking_too_long]] | [[慢慢来。|take_time]]


:: head_for_ready
嗯，我觉得我有个计划。或者算是接近一个计划吧。
<<if $grab_crystals_visited is true && $ievasuit is true>>[[rock_check]]
<<elseif $ievasuit is true>>虽说我的计划一般都不怎么见效，但总归是我自己的，只要是我自己的，我就爱。
[[where_to_next]]
<<else>> [[stumble_ready]] <<endif>>

:: rock_check
<<if $tunguskite is true>>[[find_my_way]]
<<else>>我打算去捡点石头。
谁说现在的年轻人没点远大志向？
我现在就要去勇闯货舱了！我到了那边再跟你联系。
[[delay 30m^泰勒在走路|right_to_bay]]<<endif>>


:: find_my_way
好吧……我也不确定该怎么办。
我要试试在黑灯瞎火的白星号里找路……
……还要希望我准备好了，能应付下一个遇到的人。
（说实话，我这个希望实在是太渺茫了。）
[[delay 20m^泰勒在走路|found_someone]]


:: right_to_bay
要是你在想，为什么我在哼《船歌》……
……那是因为我正坐在船（货）舱口。
现在我只需要想起来开门密码是什么。
我刚上船时，夏帕德船长跟我讲解过一遍这艘飞船……
……不过，你知道的，我当时满脑子就是外星人啊什么的乱七八糟的东西。
等我一下，我去试试乱按下密码。
[[delay 5m^泰勒在试密码|into_bay]]


:: stumble_ready
我要摸黑去准备室，好穿上宇航服——
<<if $no_fix_visited is true>>说不定还能搞到一个夜视头盔，那样一切就轻松多了——
再拿个岩石标本包，拿来装点矿物标本。
<<else>>再拿个岩石标本包，拿来装点矿物标本。<<endif>>
（就跟吹牛老爹在《哥斯拉》那首歌里干的一样。）
（我在飞船里乱转时，你可以去看看那首MTV。）
[[delay 30m^泰勒在走路|arrive_ready_first]]
//Taylor refers to the music video for "Come With Me" by Puff Daddy, from the 1998 Godzilla film, which samples a Led Zeppelin song.


:: mari_more
<mari>问题是，泰勒……</mari>
<mari>……当我离开地球……接受这个任务的时候……</mari>
<mari>……我只需要担心自己。</mari>
<mari>然而现在……</mari>
<mari>……现在我得担心两个人了。</mari>
等一下……你在说什么？
[[快想想，二货！|mari_pregnant]] | [[我也不懂啥意思。|lost_pregnant]]



:: found_fridge
爽！（字面意思上的！）我找到迷你冰箱了。
我拿所有能找到的绷带，把这个寄生怪捆起来了……
<<if $ievasuit is true>>……也就是说我能把我的头盔拿回来了（消毒过以后）……
<<else>>……也就是说我可以拿回我的上衣了，虽然有点不太能穿了……<<endif>>
……现在这个恶心货就吸点凉气吧。
悲催的是，我不知道怎么把这冰箱给锁上……
……不过我可以把它翻倒过去，让门被台面压着。
这样，运气好的话，寄生怪就没有办法推开门了……
……万一真要有人进来，哪怕我没能警告他们有外星怪物的话……
……他们也要想一下才打得开冰箱门。
[[想得真周到。|good_fridge]] | [[希望是万全之计。|enough_fridge]]


:: freezer
嘿，好主意！
对，博斯有糖尿病，所以这里一定有只冰箱，放他的胰岛素。
等我摸黑找找。
[[delay 3m^泰勒在搜寻|found_fridge]]


:: found_canister
<<set $aliencaught = true>>
好了，我把寄生怪放在了一个丢弃针尖的垃圾箱里。
（我甚至还把针尖都事先扔了，真不懂为毛我要对外星怪物这么友好。）
我拿找到的所有绷带把箱子捆起来了……
虽然没达到我的理想标准，但是聊胜于无嘛——
<<if $ievasuit is true>>……也就是说我能把我的头盔拿回来了（消过毒之后）……
<<else>>……也就是说我可以拿回我的上衣了，虽然有点不太能穿了……<<endif>>
……运气好的话，那个恶心货再也跑不掉了。
所以我想接下来——既然通讯系统还是不工作——
就是把这货藏在隐蔽的地方……
……接着把医疗舱里的情况，尽量通知到所有船员。
所以，我打算出去，执行这项任务了。
[[after_alien_caught]]


:: container_store
是啊，好主意。也许那种用来装压舌板的玻璃罐子什么的……
等我摸黑找找。
[[delay 3m^泰勒在搜寻|lost_alien]]


:: tie_doc
是啊，我兴许得想个办法……
……免得等他一醒过来，又重新开始他的变态计划。
悲催的是，我对医疗舱的环境太不熟悉了。
我，呃……我有一卷纱布，估计他随手就能扯断。
等下，等下……那张诊查台上有绑手脚的绑带。
应该能派上用场。
不过有鉴于我的膝盖受伤，要把他扛上诊查台还有点难度啊。
[[你就得这么做。|doc_onto_table]] | [[先把他拖近那张台子。^你不需要把他整个人扛上去……只要捆住他一只手腕就好了。|one_wrist]]


:: doc_onto_table
对，我也这么想。
这得花点儿时间。等一下。
[[delay 10m^泰勒正在抬医生|doc_drop]]


:: doc_drop
啊！
作死啊……他重得跟头猪一样！
我的肌肉疼死了……膝盖都要爆裂了……
然然然然后，我没拿住，他掉下地了。
我看把他扛上去，算是没戏了。
[[你能把他拖近一点吗？^你不需要把他扛上去……只要绑住他的一个手腕就行了。|one_wrist]] | [[算了，别管他了。^别逼自己了，让他去吧。|let_him_be]]


:: no_turtle
唉，真郁闷。
我们本可以讨论下《忍者神龟》的。
[[suit_time]]


:: good_plan
要倾情出演一场自残手脚的大戏，给你带来欢乐，我真是发自内心地激动啊。
我嘛，毕竟在这里，就是个纯粹逗你乐的小丑。
说不定在准备室里，还能找到超大号的鞋子和橡皮红鼻子，让我借来一用。
[[suit_time]]


:: taking_too_long
哎，不好意思啊，你是不是觉得有点无聊了？
我要来点训练呼吸的冲刺，对，在这黑灯瞎火的时候。
我只要撞到东西，就通知你。
你大概每隔一两秒，就能收到我的消息。
直到我累死或者失血过多晕死为止。
[[好计划！|good_plan]] | [[好吧，明白了。|take_time]]


:: lost_pregnant
玛瑞，我……我没明白。你在说什么？
<mari>泰勒，我……</mari>
<mari>……我怀孕了。</mari>
[[preggers]]


:: mari_pregnant
你……
……你怀孕了？
<mari>……是的。</mari>
[[preggers]]


:: enough_fridge
是啊，我也希望。
[[alien_on_ice]]


:: alien_on_ice
<<set $aliencaught = true>>
我把博斯的药给弄乱了，心里挺过意不去的……
……所以我决定最先去找他，解释一下。
对啊，我那很长，而且还在不断变长的急务清单上，又要加一项了。
得有多少“急务”，才能急不过来呢？
我看，今晚就会答案揭晓的。
好了，我要出去开创点小事业了。
[[after_alien_caught]]


:: lost_alien
嘿，我觉得我……
噢，死菜了！
我就一下没在意——顶多半秒钟。半秒的半秒。
那只寄生怪去哪里了？
[[看看医疗舱里面。|still_room]] | [[检查下外面的走道。|check_hall]]


:: one_wrist
哦，对啊！好主意！
这能办到，没问题。
我果然是个白痴，竟然没想到。
等一下。
[[delay 2m^泰勒正在把医生绑起来|doc_done]]


:: let_him_be
对，他没事。我想他一时半会儿醒不来。
（好像我真的有把握似的。）
也许最好还是把注意力放在寄生怪身上。
[[lost_alien]]


:: end_blade
我肯定，你跟我是一条道上混的。
多半还像我一样是个《忍者神龟》粉。
不管是哪个，这么久以来，我还是头一回笑呢，谢啦。
[[suit_time]]


:: chocolate_eggs
你知不知道，这艘破船上，居然连块巧克力都没有？！
我上船来，点的第一样东西就是巧克力。
要是我能生点巧克力兔子蛋出来……
……那我怎么看，都是白星号上的头牌了。
也许等回到地球，我都能领张奖状什么的。
[[suit_time]]


:: the_worst
我有点生疏了，行吧？
我都好久没时间看《科技新时代》的最新刊了。
所以有可能它们下的是棉花糖蛋。
对不起啦。
[[suit_time]]


:: check_hall
<<set $maploc = "hall">>
我正在查看走道的两头……
说实话，这么黑，不管朝哪头看，我都只能看到几步路那么远。
现在，白星号上有一只寄生怪乱跑了。
[[至！少！一只。|at_least]] | [[你打算怎么办？|what_next_alien]]


:: still_room
惨，惨了！
这么黑，根本看不出它还在不在这里。
所以……我只能这么办了。
这些小妖怪只能通过嘴巴爬进宿主的身体。
阿雅船长带着呼吸面罩，所以要进到她的嘴巴里没那么容易。
阿特沙医生……我可以拿纱布堵住他的嘴巴。
听着挺残忍的——也许还真是——不过我在救他一命。
当然……我也有可能误杀了他。
万一他吐了，他多半会吸气，然后把自己噎死。
你觉得呢？
[[把他的嘴巴塞住。|stuff_him]] | [[别塞住他的嘴。|no_stuff]]


:: doc_done
没错！不管阿特沙医生了。
阿雅船长能轻松呼吸——或者说是仪器辅助下的轻松。
现在我的任务，就是去抓寄生怪了。
[[lost_alien]]


:: preggers
<mari>你不会跟人说的吧？你保证过的。</mari>
不会，不会的，当然不会！只是……
……哇！这……有点突然。
<mari>是的，真不好意思。</mari>
[[问问父亲是谁。|ask_father]] | [[别追问细节了。|no_details]]


:: willy_nilly
……对啊。我们是不是该怎么好玩怎么来计划？
所以我要在船上乱跑，慌里又慌张。
忽东又忽西，上窜又下跳。
或者正经点，我还是保持正常的步伐，尽量不要再撞膝盖了。
等我找到了寄生怪，我会再联系你的……
……要是我碰到哪个能给我点情报的船员，我也会告诉你的。
[[delay 1h^泰勒在走路|explore_fun]]
//"All nimbly-bimbly from tree to tree" is a line from the movie Super Troopers.


:: what_next_alien
<<if $arrive_ready_first_visited is true>>所以我看，现在只有找遍整艘船，东翻西刨……
……不然的话，就在这里坐等，等它自己回来，就像走丢的宠物狗一样。
一只恶心巴拉的外星绿怪狗。
[[东翻西刨吧。^狗也喜欢这样。|willy_nilly]] | [[守株待狗吧。|puppy_waiting]]
<<else>>所以我看，现在我只有找遍整艘船，东翻西刨了……
……或者直行（相对而言）去准备室。
……在那里我能套上宇航服，要是寄生怪来了，也能有点防范。
[[前往准备室。|go_for_ready]] | [[东翻西刨吧。^“狗也喜欢这样。|willy_nilly]]<<endif>>


:: suit_time
好吧，说笑过了，我来可是办正事的。
我的宇航服叠好放在一个筒里——放在别人的衣服正对面，就在——
啊哟，这闻着——真是整整三天的汗臭啊……
……不过这可是我的宝贝，我爱死它了，我现在就要换上。
稍等我一下。
[[delay 5m^泰勒在换衣服|suited_up]]


:: ask_father
我能问一下……孩子的父亲是？
<mari>我……</mari>
<mari>泰勒，你要明白……在这么漫长的任务中……</mari>
<mari>……人会非常情绪化，非常感情用事。</mari>
<mari>你会开始觉得，除了那些船员，也许，你再也见不到别人了。</mari>
<mari>飞船好像变成个高压锅，压乱你的正常思维。</mari>
<mari>搅乱你的心。</mari>
<mari>然后你会下坠，下坠，坠入爱河……</mari>
<mari>……而这广袤的太空里又有什么力量能阻止人下坠呢。</mari>
[[那究竟谁是父亲？|who_dad]] | [[她不会说的。|no_dad]]




:: no_details
你知道吗，我有一万个问题想问……
……但是，说实话，我可不想那么长舌。
[[no_one_knows]]


:: explore_fun
<<if $ievasuit is false>>那么，鉴于我已经快被外星怪物恶心到死……
……看来最明智的选择就是回去准备室……
……套上我那既破旧又亲切的，没外星怪物那么恶心巴拉（就差一点点）的宇航服。
[[go_for_ready]]
<<else>>[[trip_advisor]]<<endif>>


:: go_for_ready
好吧，我要去船的尾部了。
在这伸手不见五指的黑暗和死寂里。
我就用一句“能出什么事呢？”来调侃下命运。
一会儿再和你联系，但愿吧。
[[delay 40m^泰勒在走路|arrive_ready_first]]


:: at_least
你太过份啦啦啦！
为什么你要说这！个！？
[[what_next_alien]]


:: no_stuff
是啊，说不定那样最保险。
（再说了，要是那个怪物爬进他的身体，那算是他罪有应得。）
好吧，我要走了，还有很多地方要找呢。
[[check_hall]]


:: stuff_him
是啊，这是为他好。
（我会不断给自己这么洗脑的。）
……好了，一卷纱布，布满嘴，看他能说话不。哈！把这句话说快十倍看看。
我要走了，还有很多地方要找呢。
[[check_hall]]


:: suited_up
<<set $ievasuit = true>>
太！好！了！ ——为探索太空，我已经整装待发了。
我简直就是巨星大卫∙鲍伊歌里的宇航员，帮忙把音乐台的小旗插到月球上……
……这玩意儿太百搭了，真是厉害。
<<if $no_fix_visited is true>>现在，有个问题……
……我本来对那种夜视功能的头盔激动不已的。
不过好像全都被人捷足先登了。超！不！爽。
尤其是，这意味着，假如船上有家伙想对我不轨的话……
……在技术上他们太占先机啦。
因为等我看到他们来的时候，就已经太晚了。
我打算拿上我的旧头盔——聊胜于无嘛，可是也胜不到哪里去——
我就指望别惹上麻烦了。
<<else>>好了，拿上了我的旧头盔，戴着刚刚好。
或者说，杠杠好？
我这头盔质量过硬的，明白我的意思？<<endif>>
现在我武装到脚趾头了，瞬间觉得成大力水手了。
[[好了，准备就绪。|all_set]] | [[看看还有啥能装备上的。|what_else]]


:: trip_advisor
<<if $cockpit_mission_visited is true || $cockpit_no_mission_visited is true>>[[found_someone]]
<<else>>[[cockpit_time_cargo]]<<endif>>


:: puppy_waiting
嗯。
是啊，行。我可以稍微放松一下了，我想。
也许莱西——对，我打算把那条名狗的名字赏赐给那只寄生怪，我已经决定了——
也许莱西会跳来跳去到这里告诉我，阿里思掉井里去了。
身后还拖着一条泥巴轨迹，就像边境牧羊犬那样。
呃。
[[delay 15m^泰勒在等待|no_lassie]]


:: no_dad
嗯，好了。我要阻止你接着说了。
因为“谁是父亲”这个问题的答案，很明显是“关我屁事。”
你有自由爱任何人，玛瑞，你……很有个性。
[[no_one_knows]]


:: who_dad
<mari>我还没有……准备好说出来。</mari>
<mari>我想在我们抵达之前……我都不可能准备好了。</mari>
啊，好吧。好……吧。
我哪有资格评头品足。情绪起起伏伏嘛。理解。
[[no_one_knows]]


:: make_fun
你也太客气了。
假如我有任何机会，能够嘲笑你音乐品味来报答你的话……
……相信我，我一定不会留情的。
[[explore_fun]]


:: all_set
对，我觉得是。
<<if $grab_crystals_visited is true>>怎么感觉我回来是要拿点别的东西的。
[[我不记得啊。|not_remember]] | [[哦对啊……你说得没错。|yes_grab]]
<<else>>你有没有觉得，我既然人都来了，不如再拿点别的东西？
[[当然啦，看看还有些啥。|what_else]] | [[不用了，赶紧走吧。|no_grab]]<<endif>>


:: what_else
我来瞧瞧。这里的柜子里，有……
<<if $grab_crystals_visited is true>><<set $backpack = true>>……哦，太好了，这里有矿物标本背包！
等我回来时，我一定要带一个走！
你就当没听见啊：这肯定不是宇航员的优秀品质。
这是一个人的一小步，嗯……是什么的……一大步呢……堕落？
这是背在矿工服的外面而设计的——
我的宇航服可没有这么厚重——
所以我得把带子拉紧点，才能背上。哈，能用了！
好了，我看我差不多好了。
[[前往货舱。|go_bay]] | [[继续搜索准备室。|explore_ready]]
<<else>>……哦，嘿，有些背包！衬有自适高分子聚合物的内架型背包！
这是设计来装来源不明的矿物的。
……所以很结实耐用，而且超级能装。
这些包有点笨重……不过，说不定啥时候就能派上用场了。
[[对，拿一只吧。|get_a_pack]] | [[算了。^听着像是平白无故增加负重。别麻烦了。|no_pack]]<<endif>>




:: no_pack
好吧……你说的多半没错。
你知道吧，穿着宇航服，还要再添点别的装备，实在是太不容易了。
好吧，依你看，我该继续在这里转呢，还是换个地方了？
[[离开这里。|where_to_next]] | [[继续搜索准备室。|explore_ready]]


:: after_alien_caught
<<set $maploc = "hall">>
好吧，要在这艘飞船里面行走还真是需要点技巧啊——
我对这里不怎么熟，而且走廊好像比我之前待的那艘船要窄小——
既要迅速地找到每个人，还要注意不把自己绊倒。
<<if $icepack is true>>冰袋对镇痛倒是有点帮助……
<<else>>氢可酮还算有点止痛的效果……<<endif>>
……不过，我还是尽量不要撞到墙啊或是什么莫名堂的东西为好。
所以，我要跟B-52乐队一起，来场《漫游》啦……
……除非找到人嘲笑我拿老人家的歌说段子。
（这可是《宇宙之事》专辑里的名曲啊，你简直不懂现在有多应景。）
[[我会嘲笑你的。^我马上就开笑了，一点也不耽搁。|make_fun]] | [[你是痛糊涂了吧？|pain_weird]]


:: no_lassie
好了，尽管我如此热情地呼唤，莱西也没回来。
我觉得我该主动点……我要冲入夜色之中。
（感觉像是蝙蝠侠对战灵犬莱西的经典桥段混搭啊。）
[[after_alien_caught]]



:: pain_weird
是啊，谁知道我脑子里想的要先到膝盖那里过滤一下才从嘴里出来？
感觉像是个严重的设计失误嘛。
[[explore_fun]]


:: no_one_knows
<<set $no_one_knows_visited = true>>
既然你要我保证过一亿回，让我不吐露一个字……
……我猜只有你知、我知、还有这个小家伙自己知道了。
（也就是说，我是排名第三的重要知情人。）
总之……不论今晚会发生什么，我都要确保……
……确保你们俩毫发无伤。
[[你太高尚了。|noble_speech]] | [[你不能保证。^你不知道出了什么事，也不知道为什么出事。别乱下保证。|screw_up_colby]]


:: not_remember
嗯。
哦，好吧，如果咱俩谁都不记得了，那多半就不是什么要紧事。
行，那我就离开这里了。
[[where_to_next]]


:: yes_grab
哦，对……矿物标本背包！
你就当没听见啊：这肯定不是宇航员的优秀品质。
这是一个人的一小步，嗯……是什么的……一大步呢……堕落？
等我看看，这些柜子里面怎么都该有个背包吧。
[[delay 3m^泰勒在搜寻|found_pack]]


:: no_grab
行，那我就走了。
[[where_to_next]]


:: get_a_pack
<<set $backpack = true>>
这是为背在矿工服的外面而设计的——
我的宇航服可没有那么厚——
我得把带子拉紧点，才背得上。哈，能用了！
好了，我看我差不多好了。
[[离开这里。|where_to_next]] | [[继续搜索准备室。|explore_ready]]


:: shut_mouth
哦，哈哈。
我不会跟你说我刚找到个什么东西。
……哎，不行，这么好的玩意儿，我不说出来憋得慌。
[[what_find]]


:: noble_speech
说真的，玛瑞让我想起了瓦里亚号上的科尔比。
科尔比总是为他人着想，关照好我们大家。
我登上白星号的那一刻起，玛瑞也这样对待我。
不过现在，是！她！需要有人来关照。
如果我承担下照料他人的角色，至少我可以缅怀一下科尔比……
……我希望我能做得有她们的一半好。
[[我对你有信心。|believe_colby]] | [[别搞砸了啊。|screw_up_colby]]


:: screw_up_colby
哇！这就是你的信任票啊？
用达斯∙维达的话来说：“我发现你缺乏信仰，让人很不安。”
（不过他也说过一次“好哇！”所以很难说该多严肃认真地来看他。）
[[mari_response]]


:: mari_response
<mari>泰勒，我……我这一辈子都没有想过我会成“落难少女”。</mari>
<mari>也没想过我需要被人保护。</mari>
<mari>不过，现在我肚子里有这个小家伙，我只是……</mari>
<mari>……一切都变了。我也说不上来，我突然觉得我——不堪一击。</mari>
<mari>我从没想过我会这么说，但是……</mari>
<mari>……谢谢你。谢谢你照顾我，照顾我们大家。</mari>
<mari>这对我来说就像整个世界一样重要。</mari>
哪个世界？
<mari>哈！你自己选吧。这外头多得很呢。</mari>
是吧？
[[好了，你该继续前进了。|get_moving]] | [[要不要试试修灯？|try_lights_again]]


:: get_moving
对，没错。
好了，玛瑞，我要回那外边去了。
也许等我走了以后，你可以给灯来上一拳，把灯点亮……
……就像《欢乐时光》里演的一样。
[[pop_culture]]


:: where_to
<<set $maploc = "hall">>
<<if $arrive_ready_first_visited is true>>[[already_ready]]
<<else>>[[ready_time]]<<endif>>


:: already_ready
<<if $grab_crystals_visited is true>>[[rock_check]]
<<else>>[[find_my_way]]<<endif>>


:: found_pack
<<set $backpack = true>>
太棒了！我找到了一个矿物标本包。
这是为穿在矿工服外面而设计的——
我的宇航服可没有这么厚重——
所以我得把带子拉紧点，才能背上。哈，能用了！
好了，我看我差不多好了。
[[前往货舱。|go_bay]] | [[继续搜索准备室。|explore_ready]]


:: what_find
这里有个储物柜里头，在一件旧连体衣下面……
……有一把老式脉冲步枪。
我还从来没有拿过一把这种真枪呢。
嗯……比我想像的要轻嘛。
我来看看能不能……哈，可以！还可以用！显示不是很灵，但是启动了。
好像只够发射一次脉冲。
唔……不知道值不值得把这玩意儿随身带着到处走啊？
[[当然要拿上啦。^有备无患。你不是说不重的嘛。|get_rifle]] | [[算了，别麻烦啦。^只能发射一次，没什么用。|no_rifle]]


:: get_rifle
<<set $pulsegun = true>>
对，这玩意儿不会增加我多少负重。
而且，我突然觉得所有烂科幻小说的封皮上都有我这样的傻蛋。
（啊呀，这会儿再来个小斗篷和肩章的话，就完美了。哎，算了。）
好了，我看我差不多好了。
我可以相当有把握地说，准备室里没什么有意思的东西了……
……除非你把阿里思的破毛线袜子算作“有意思”。
要真是这样的话，我们真得严肃认真地谈谈了。
<<if $grab_crystals_visited is true>>好了，我要去货舱拿点通古斯石了。
[[go_bay]]
<<else>>我看该继续前进了。
[[where_to_next]]<<endif>>


:: believe_colby
谢谢你。
说真心话，我真的需要你这么说。
[[mari_response]]


:: try_lights_again
嘿，玛瑞，唔……你希望我修灯吗？
倒不是说我觉得我真的能帮上什么忙，不过，如果你只想我留在这里别走的话……
<mari>不，没关系。你已经尽力了。</mari>
就像寻求部落乐队的歌里唱的：
“我因为努力拿了个E，因为不自量力得了个T。”
[[pop_culture]]


:: pop_culture
<mari>我真搞不懂像你这样大的小孩怎么会成天拿这些老掉牙的流行说段子。</mari>
<mari>一半你说的话，像是出自比你大一倍的人之口。</mari>
我怎么说呢？
有囊括数百年文化的电视重播、BT下载、在线广播伴着我长大。
而且背诵《飞出个未来》里面的台词可比长大成人有意思多了。
<mari>好吧，这点我同意。</mari>
<mari>那句是怎么说来说：“感觉像我嘴里在开派对，而且大家都在吐！”</mari>
对，确实是。
真的是。
[[where_to]]


:: where_to_next
<<set $maploc = "hall">>
<<if $cockpit_mission_visited is true || $cockpit_no_mission_visited is true>>我要试试在黑灯瞎火的白星号里找路……
……还要希望我准备好了，能应付下一个遇到的人。
（说实话，我这个希望实在是太渺茫了。）
[[delay 20m^泰勒在走路|found_someone]]
<<else>>[[cockpit_time]]<<endif>>


:: explore_ready
好吧，我可以在这里再翻翻……
……不过这里充其量也只是矿工们的预备区域，你知道吧？
还有这后面的各个气闸舱口，也不知道有用没有。
右舷那边是顶舱口——
海军陆战队员就是从这里进来的，因为他们的飞船对接在我们的船的上方——
准备室的左舷那边是机腹舱口。
通向白星号的机腹，这样矿工们可以出去到地面。
他们进行舱外活动之前，在这里穿戴和准备好设备。
我不知道这里还有啥，会为我满飞船瞎跑，做出点贡献——
好吧。
我闭嘴。
[[要是闭得上的话。|shut_mouth]] | [[你找到了什么？|what_find]]


:: go_bay
好消息是，准备室连着货舱。
坏消息是，我想不起来开门密码了。
我刚来这里时，夏帕德船长跟我讲过……
……不过，你懂的，我满脑子都是外星人啊什么的乱七八糟的东西。
等我一下，我得试试密码。
[[delay 5m^泰勒在试密码|into_bay]]


:: no_rifle
好吧……你说的多半没错。
带着这货到处跑，实在是太麻烦了，多半不值得。
<<if $backpack is true>>尤其是如果我已！经！背了一个巨重的包了。
我还是把它藏回储物柜里吧。
<<else>>我还是把它塞回储物柜里吧。<<endif>>
总之……也没必要搞得那么显眼，让谁随手就拿得到。
<<if $grab_crystals_visited is true>>好了，我要去货舱拿点通古斯石了。
[[go_bay]]
<<else>>我看该继续前进了。
[[where_to_next]]<<endif>>


:: right_back
不着急，慢慢来。
[[delay 2m^泰勒在等待|describe_bay]]


:: ready_time
通盘考虑（我真的全都考虑过了）……
……上上策应该是去准备室，在那里我可以穿上我的宇航服……
……这样等我在暗夜里遭遇到什么玩意儿的话，可以多一层保护。
<<if $no_fix_visited is true>>说不定还能搞到一个夜视头盔，那样一切就轻松多了——
再拿个岩石标本包，拿来装点矿物标本。
<<else>>再拿个岩石标本包，拿来装点矿物标本。<<endif>>
（就跟吹牛老爹在《哥斯拉》那首歌里干的一样。）
（我在飞船里乱转时，你可以去看看那首MTV。非常搞笑！）
[[delay 30m^泰勒在走路|arrive_ready_first]]
//Taylor refers to the music video for "Come With Me" by Puff Daddy, from the 1998 Godzilla film, which samples a Led Zeppelin song.


:: dont_shoot_don
不行，我做不到。
也许还有时间……
衰爆了！
这一发就没了。克鲁齐格来抢枪时，射到天花板上去了。
现在我没了子弹，也就没了步枪，而且士兵们正在围上来……
……看来唐纳德把我们全都锁在这里面了。
不，不是唐纳德。
那家伙已经不再是唐纳德了。
一旦寄生怪进入他的身体……他就已经不再是本尊了。
就像是……
哦，天
就像是我也要身不由己了
啊啊——
啊呃呃呃呃
<green>来吧，泰勒。</green>
<green>反抗是毫无意义的。</green>
<green>张大嘴巴。这会让你痛一下下。</green>
<green>很久，很久的一下下。</green>
啊啊——
啊
<<set $turnedgreen = true>>
[[goodbye]]


:: cockpit_clueless
那是当然的。我上路了。
可能要花一会儿，我一到那边就通知你。
不过，要是我的头撞到管子什么的上头的话……
……你也免不了知道的。
撞痛的脚趾头？我肯定告诉你。
受伤的心灵？你会听说的。
疑心病？我们说话这！会！儿！我已经病入膏肓了。
[[delay 1h^泰勒在走路|cockpit_no_mission]]


:: cockpit_time
眼下，我觉得上策是去驾驶舱。
哎——长长长长地哎一声——驾驶舱是在飞船的另一头。
当然了。
<<if $shepherd_talk_visited is true>>但是夏帕德船长让我想办法把灯弄亮，让通信恢复运作……
……而且明显这会儿除了我，也没别人在处理这个问题了。
（要是你想知道为什么的话：因为现在既没有灯也没法进行通信。）
（我可是相当有洞察力的哦。）
[[你当你是宇宙福尔摩斯啊？|space_holmes]] | [[好吧，去驾驶舱吧。|cockpit_prompt]]
<<else>>不过我希望夏帕德船长和玛瑞——或者至少他们中的一个——
在掌舵，能够给我一！点！情报，到底是出了什么事。
[[希望如此。|hoping_clues]] | [[好吧，去驾驶舱吧。|cockpit_clueless]]<<endif>>



:: airlock_holmes
啊呀啊呀！
我还没走到驾驶舱。但是我突然灵感来了，我一定要跟你说说这个灵感。
好了，你准备好听了吗？
下落客∙福尔摩斯。
这个名字你拿去用，我不收版权费。只是你去领奥斯卡小金人时，致谢词里别忘了提我就行。
[[delay 40m^泰勒在走路|cockpit_mission]]
//The Oscar, or Academy Award, is the statue awarded for excellence in film.



:: found_someone
<<if visited() gte 2>>[[found_someone_again]]
<<else>>哦，嘿！我不想吓你，不过……
……有脚步声，缓慢、沉着，越来越响了。
在一片死寂里呆了这么久……突然出现这么个声音，这简直是世界上最响的声音了。
（仅次于我蹦到嗓子眼的心跳声。）
[[你能躲到哪里去吗？|hide_somewhere]] | [[你不能闪吗？|run_from_them]]<<endif>>

:: found_someone_again
<<if visited() gte 2>>[[found_someone_last]]
<<else>>死菜了，死菜了！一颗死翘翘的大白（痴）菜！
我只顾想自己的事情，没有注意到……
……现在脚步声就在我背后！
真真正正地！就！在！我背后！我只要一转身，背后这个人……
……如果不是会跟我打招呼，那么就是要一口吞了我。
死菜了。
[[whos_there_artesa]]<<endif>>

:: found_someone_last
……有脚步声，缓慢、沉着，越来越响了。
在一片死寂里呆了这么久……突然出现这么个声音，这简直是世界上最响的声音了。
（仅次于我蹦到嗓子眼的心跳声。）
[[whos_there_artesa]]

:: into_bay
<<set $maploc = "cargobay">>
终！于！
要在十个数字里面找到那个六位数的密码……
……也就是说，有一！百！万！个可能的组合。
数学！
好在，我只试了五十万个组合，就想起来那个对的密码了。
好了，现在我进到货舱里来了，而且……哇。
不是说我想你也困到太空中一艘黑咕隆咚的飞船里来……
……不过我真的希望你能亲眼看看这个。
[[我也希望啊。|wish_there]] | [[你可以描述给我听嘛。|describe_bay]]


:: wish_there
可以这么说，不过其实根本没那么了不起。白星号肯定不是什么《爱之船》。
我是说，我们的酒保水平还不错，不过他可不是那个最爱露两排大白牙的角色艾萨克。
到了，你先去给你自己调杯鸡尾酒吧，然后我就跟你描述一下货舱的情况。
[[好，我马上回来！|right_back]] | [[我不喝酒。|dont_drink]]


:: dont_drink
对，”不喝酒“（眨下眼）。
我也“不喝酒”（眨下眼）。
我还没到法定喝酒的岁数呢，而且我最近都没衰到死，要杜康来解忧。
*眨眼眨眼眨眼*
[[describe_bay]]


:: shoot_cruciger
好了……只需要把步枪放好，然后……
砰！帅呆了！
呃……
没有砰的一声，泪奔……
只擦到了他的肩膀
我看连他的衣服都没打穿
而且——死菜了
好像我真把他们惹得火冒三丈了
我被摁倒在地
通讯器也呼叫不到任何人
哦，不
哦，天
完蛋了
不能相信我在那颗卫星上打败了它们
但它们竟然追我到了这里。
……该死。
<green>来吧，泰勒。</green>
<green>反抗是毫无意义的。</green>
<green>张大嘴巴。这会让你痛一下下。</green>
<green>很久，很久的一下下。</green>
啊啊——
啊
<<set $turnedgreen = true>>
[[goodbye]]


:: shoot_donald
哦，妈呀，这实在太疯狂了。
我认！识！唐纳德。我真的能对一个朋友开火吗？
[[当然！开火！马上！|really_shoot_don]] | [[不行，别这样做。|dont_shoot_don]]


:: shoot_cruciger_clear
好了……只需要把步枪放好，然后……
衰爆了！
这一发就没了。克鲁齐格来抢枪时，射到天花板上去了。
现在我没了子弹，也就没了步枪，而且士兵们正在围上来……
……看来唐纳德把我们全都锁在这里面了。
不，不是唐纳德。
那家伙已经不再是唐纳德了。
一旦寄生怪进入他的身体……他就已经不再是本尊了。
就像是……
哦，天
就像是我也要身不由己了
啊啊——
啊呃呃呃呃
<green>来吧，泰勒。</green>
<green>反抗是毫无意义的。</green>
<green>张大嘴巴。这会让你痛一下下。</green>
<green>很久，很久的一下下。</green>
啊啊——
啊
<<set $turnedgreen = true>>
[[goodbye]]


:: describe_bay
货舱非常大，这倒不是没有道理。
……白星号不就是来拖矿的嘛。
所以才会有这么个庞大的房间，基本上占满了整个右舷一边……
……这个房间只有一个功能，就是离开地球时空荡荡，回到地球时满当当。
这里只注重实用性。根本不考虑美观不美观，也不是个让你想停下来待待的地方。
这里没有一个观察口，也没有一扇能看到外面的窗户。
通常情况下，这里会有纳光灯，发出古怪的橙光……
……不过当然啦，这会儿灯不亮了。
所以，你应该觉得这整个巨大房间现在应该是黑灯瞎火的。
不过，不是滴。
[[为什么？有什么在发光吗？|what_light]] | [[哦，因为你的头盔上有灯嘛。|helmet_light]]


:: what_light
是通古斯石在发光。
这种晶体……内部有光。
我以前见过“夜明珠”的石头——方解石、方纳石、萤石——
但是那些石头也就是失去光源之后再亮个几秒钟罢了。
即使是最有潜力的硫化锌，也只能坚持一两分钟。
不过，这种通古斯石……简直是长明灯啊。
[[这也真是诡异。|weird_crystals]] | [[有危险吗？|dangerous_crystals]]


:: weird_crystals
我同意。我还从没听说过这样的玩意儿呢。
（不过，当然啦，我在这外太空里遇到的东西里有一！半！我都闻所未闻。）
不过……这里有种谜样的美丽，站在一间巨大的房间里……
……被发光的神奇岩石所环绕，极目之处，都是这种石头。
这感觉像是《指环王》三部曲里被删掉的场景。
（他们真的删了哪个场景吗？我觉得他们在那三部曲里是物尽其用啊。）
[[next_crystals]]


:: hoping_clues
对吧？要是没人的话，我希望他们好歹有个高级点的自动驾驶仪。
比方说像是《逢凶化吉满天飞》里那个充气飞行员。
你知道吧？那个可怜的家伙最后在制片人杰里∙朱克的车库里烂掉了。
……等等，我想不起是那个自动驾驶，还是那个男主角罗伯特∙海斯了？
总之，他们中有一个最后烂死在车库了。你在等我去驾驶舱这会儿，可以去查查。
[[delay 1h^泰勒在走路|cockpit_no_mission]]



:: cockpit_prompt
我全身的感觉器官都使上了地走！
（我预计我要走上好一阵子呢。）
[[delay 1h^泰勒在走路（摸索着走）|cockpit_mission]]


:: space_holmes
好了，瞧，不是我想要你抛弃我还是怎么的……
……不过，“福尔摩斯在宇宙”是个值百万美元的点子。
你得马！上！去申请注册专利。
去！快去！别担心我。
等你申请了专利回来，我还在这艘坑爹的飞船里东游西转，东撞西碰的呢。
[[delay 20m^泰勒在磕磕碰碰|airlock_holmes]]


:: next_crystals
好了，下一步了。
<<if $backpack is true>>我觉得该用背包装点晶体，能装多少就装多少。
<<else>>我这件宇航服上没什么口袋……
……不过我觉得我应该拿点晶体，能拿多少就拿多少，你觉得呢？<<endif>>
[[快拿！|cram_crystals]] | [[你确定你带得动？|weigh_crystals]]


:: gunfight_sluggish
这把步枪里有一发子弹，要是我能发射的话……
嘿！你这头死猪放手
那个叫克鲁齐格的货，在跟我抢脉冲步枪
唐纳德在那边，什么？！更改门锁密码，不让人进来？
衰衰衰，我应该朝谁开枪？
[[打克鲁齐格。|shoot_cruciger]] | [[打唐纳德。|shoot_donald]]


:: really_shoot_don
<<set $shotdon = true>>
我……
我击中了唐纳德。
他倒下了。
我正中他的胸口。
我不知道这把脉冲步枪里还有多少能量……
……不过我调到了最大值，朝他开了一枪。
我看不出他是死是活，但他躺在那里一动不动……
……那几个士兵全都停下来，朝我围过来了。他们好像乱了阵脚。
[[趁乱快跑。|break_for_door]] | [[看看唐纳德是不是死了。|check_dead]]


:: gunfight_clear
……这把步枪里有一发子弹，要是我能发射的话……
……嘿！你这头死猪放手——
那个胸卡上写着克鲁齐格的货，在跟我抢枪……
……谁会觉得一个被附了身的海军陆战队员能把我打倒？
这会儿，唐纳德在那边，什么？！他在更改门锁密码，不让人进来？
衰衰衰，我应该朝谁开枪？
[[打克鲁齐格。|shoot_cruciger_clear]] | [[打唐纳德。|shoot_donald]]


:: run_from_them
我……我可以试试……
死菜了，回声全都好怪。走廊在前面五十英尺左右的位置分岔……
……完全听不出脚步声是从哪条岔道上来的……
……也分辨不出哪条岔道是安全的逃生路线。
[[随便选一条，快跑！|pick_and_run]] | [[算了吧，你能躲起来吗？|hide_somewhere]]


:: hide_somewhere
不行……我在一条长走廊里……
……我好一会儿没路过什么门了，也看不到前面有门。
（也不是说我能把前面看得一！清！二！楚！不过你懂我的意思。）
我最多只能紧贴在墙壁上……
……同时念念有词：“我是堵墙。”直到我搞清楚来的是敌是友为止。
[[你这么说也有道理。|good_wall]] | [[祝你好运了。|luck_wall]]


:: helmet_light
不好意思地说，我头盔上的灯在之前那颗卫星上就已经罢工了。
我都没想过要修，我都没想过还会用到。
不是灯，我说的是……完全更有意思的东西。
[[what_light]]


:: dangerous_crystals
我们……不这么认为？
虽然这些晶体存储了霍金辐射产生的能量……
……它们不像是在释放任何能量。
它们的晶格是效率极高的防护矩阵。
这艘船上堆满了这种玩意儿，但是盖格计数器动都没动过一下。
虽然听起来太匪夷所思了，但是通古斯石似乎完全安全。
哪怕是它里面充满的负能量，比后朋克摇滚乐队欢乐分队的粉丝网站上还多。
[[next_crystals]]


:: check_dead
瞧瞧，要是随便换个情况环境，我会……
……不过，我只要这么想，要是他身体里面有个寄生怪……
……他不就跟死了一样了吗？
而且，即使真！有！什么治好他的机会……
……我也得先逃出去，活到把大家弄到安全地方去才行啊！
所以我要为唐纳德∙凯想点开心的……
……那样就够了。
现在，我是不是该闪了？
[[break_for_door]]


:: break_for_door
克鲁齐格和另外那两个海军陆战队员——德∙雷和基奥，我觉得是叫这两个名字吧——
看上去失神落魄的，所以我趁机冲了出去。
嘿，唐纳德不是刚才想要重新设置门锁密码，不让人出！去！吗……
……我不如继续他未尽的事业，把这帮士兵通通锁在里面吧？
[[delay 2m^泰勒在修改程序|door_sealed]]


:: weigh_crystals
我是说，当然会啦。至少一点点。
不过，如果出了什么差错——不是说一定会出差错，但是如！果！——
而且只有我拿的这堆晶体逃过一劫的话？
那么，我这么做就意义重大了。
[[delay 5m^泰勒在拿晶体|packed_up]]


:: cram_crystals
正在拿。
我浑身塞满了通古斯石晶体，就跟一个史基斯将军想要打败国王管家一样。
……要是你连我说的这个段子的出处都知道，那我真要给你发个奖杯了。
[[你掉的这书袋，我听懂了！|dark_crystal]] | [[不懂，完全不知所云。|no_dark_crystal]]
//The Skeksis general and chamberlain are characters in the film The Dark Crystal.


:: who_it_is
嗯……我在尽量躲稳妥了，而且还要把来人看清楚。
不过我觉得……
<<if $describeminers is false>>……呵，是唐纳德，矿工工头。
<<else>>……啊，是唐纳德。<<endif>>
<<if $break_up_bos_visited is true>>全副武装地穿着他的宇航服。阿里思也在这里。
他们背后还有三个人。
<<else>>全副武装地穿着他的宇航服，背后还站着三个人。<<endif>>
[[别让他们看见你。|hide_ready]] | [[朝他们走过去。|approach_them]]


:: approach_them
我，唔，我觉得有点不对劲。
不过我多半是在瞎猜。依我看，通信系统失灵。
他们唯一能与我交流的方法就只剩下面对面了。
他们说不定是来找我，跟我说……说什么呢？
……我们要聚到一起开个会，研究一下怎么把灯搞亮。
或者我们要全部转移到军舰上去，因为那边的导航系统工作正常。
还是我们一起去厨房里享用蛋糕和冰激凌。
好吧，那我就上去跟他们打个招呼吧。
[[greet_them]]


:: greet_them
唔，嗨，伙计们。还好吧？
我是说，飞船还好吧？
<<if $key_talk_visited is true>><don>嗨，泰勒。你怎么没来准备室见见这些家伙。</don>
<don>所以我决定还是带他们来见你吧。</don>
<<else>><don>嗨，泰勒。我在想你没准希望见见这些家伙。</don>
<don>我们请求对你的那颗卫星进行空袭，他们就是回应的海军陆战队员。</don>
<don>他们正好赶上了我们，希望得到一些医疗上的帮助还有拿些补给。</don><<endif>>
<don>各位，这是泰勒。泰勒，这是……大家。</don>
呃……大家，好。
这三个新来的都穿着军装，上面有名牌：
克鲁齐格、基奥，还有个叫德∙雷。
不过目前为止，我对他们的了解，也就仅限于此了。
<don>哦，瞧我们，太失礼了。</don>
<don>来吧，哥儿几个，摘下头盔吧。</don>
[[泰勒？我感觉有诈。|dont_like]] | [[出了什么事？|whats_going_on]]


:: pick_and_run
知道！知道！我在跑！我在——
……噢！
四步。
矬！死！了！的！四！步！
我只跑了这么远就撞到东西了。
这里太黑了，我都不知道撞到的是什么。
这里……
……这里黑灯瞎火的……
……我都不知道是谁的手，把我拉住了。
[[whos_there_artesa]]


:: good_wall
读书的时候，我一直是贴墙坐冷板凳的，现在看来还是有点好处嘛。
我要保持安静，直到弄清来者是何方神圣。
[[delay 1m^泰勒在等待|whos_there_artesa]]


:: luck_wall
谢谢。既要贴平了又要不出声，两项都不是我的专长，不过我会尽力的。
至少我可以闭上嘴，直到弄清来者是何方神圣。
[[delay 1m^泰勒在等待|whos_there_artesa]]


:: door_sealed
<<set $marinestrapped = true>>
成功！我更改了门锁的密码，现在要用一组全新的六位数才能打开啦。
海军陆战队员们，祝你们解码好运！
一百万种组合。在你们撞大运撞到对的那组数字之前，够你们忙活一阵子了。
（不然的话，你们可以试试上蛮力，把门砸开。）
（不过，我真！心！讨！厌！你们居然还有这个选项。）
与此同时，我也不知道接下来我该干个啥了。
噢！
[[快离开。^快走，离那里越远越好。|leave_bay]] | [[还能干点什么呢？|whats_left]]


:: no_dark_crystal
《黑水晶》
等你不用帮学生兵宇航员勇闯宇宙无尽虚空的时候，你可以去看看那片儿。
[[delay 5m^泰勒在拿晶体|packed_up]]


:: dark_crystal
我看你也是那种拿《黑水晶》给自家猫起名的人。
要是你还没这么干，也快了。
太棒了！你快去动物收容所吧。我这边可以等。
[[delay 5m^泰勒在拿晶体|packed_up]]
//Fizzgig is a character from the film The Dark Crystal.


:: cargo_door
嘿！
那是什么鬼？
听着像……哦，妈呀，我觉得就是。
货舱的门在响。我觉得这里除了我还有别人。
本来这里还是死寂，突然有了脚步声，呼吸声……
……不，不！止！一个人。
有很多人。
[[你能看到是谁吗？|who_it_is]] | [[快离开！|get_out_bay]]


:: get_out_bay
啊，我，唔……我倒是想呢。
唯一的问题是，不管是谁在那边，都挡住了我的出口……
……而且，我这一路，还不知道要在这一大堆水晶里摔多少跤。
[[who_it_is]]


:: hide_ready
是啊，我是躲着在……
……不过他们好像直接朝我走过来了。
我在尽力不要吓尿了……
……不过说实话，所有你想得到的关于“吓”的词，现在都可以安在我头上了。
[[冷静！继续躲着。|stay_hidden]] | [[快跑。|break_for_it]]


:: no_path
有个问题哈……
……这帮家伙是受过训练的军人（从我这边看不清是男是女）。
他们已经成扇形散开来，尽可能大范围地控制住这坑爹的房间了……
……而且其中一个护住了门。
我简直就是死到临头了啊。
[[快跑！|run_for_it]] | [[躲好了。^也许他们不会找到你。|stay_hidden]]
//Charlie Foxtrot is military jargon for C.F., or "clusterf**k."


:: run_for_it
好，我在跑。
我在跑！
嘿，去死吧！我觉得有戏！
我只要闯过
糟糟糟糟糕糕
被狠狠地锤了一拳。
我没闯得过。
哦，妈哟，好痛。
唔，嗨，兄弟们。
我刚才……只是……出来在货舱里跑跑步锻炼一下身体。
晚上这个点出来转转挺好，是吧？
我在说什么啊？当！然！你会这么想啦。明显你也是为了这个上这儿来的嘛。
要是你想活动下筋骨，我就不来添乱了。
你要先！热个身，注意别拉伤了肌肉。
<<if $key_talk_visited is true>><don>嗨，泰勒。你怎么没来准备室见见这些家伙。</don>
<don>所以我决定还是带他们来见你吧。</don>
<<else>><don>嗨，泰勒。我在想你没准希望见见这些家伙。</don>
<don>我们请求对你的那颗卫星进行空袭，他们就是回应的海军陆战队员。</don>
<don>他们正好赶上了我们，希望得到一些医疗上的帮助还有拿些补给。</don><<endif>>
<don>各位，这是泰勒。泰勒，这是……大家。</don>
呃……大家，好。
这三个新来的都穿着军装，上面有名牌：
克鲁齐格、基奥，还有个叫德∙雷。
不过目前为止，我对他们的了解，也就仅限于此了。
<don>哦，瞧我们，太失礼了。</don>
<don>来吧，哥儿几个，摘下头盔吧。</don>
[[泰勒？我感觉有诈。|dont_like]] | [[出了什么事？|whats_going_on]]


:: whos_there_artesa
<<if $doctalk is true>>[[whos_there_shepherd]]
<<else>>[[doctor_doctor]]<<endif>>


:: leave_bay
<<set $maploc = "hall">>
好！我要走了！
顺便一说：白星号还是黑灯瞎火。
白星号还是一片死寂。
华盛顿总统还在棺材里躺得好好的。
接下来……我该干嘛？
[[whats_left]]
//"Generalissimo Francisco Franco is still dead" is a joke from early seasons of Saturday Night Live.


:: packed_up
<<set $tunguskite = true>>
<<if $backpack is true>>好了，使劲塞了满满一袋子通古斯石。
<<else>>好了，我装了几把通古斯石。
真希望之前有机会能拿个背包什么的，不过也就只能将就了。<<endif>>
既然货舱里也就只有这些东西了……
……我看我在这里的任务也完成了。
[[好，离开这里。|leave_bay]] | [[继续搜索货舱。|explore_bay]]


:: explore_bay
我是说……我当然可！以！……但是这里除了石头，真的没有别的东西了。
他们从U33J6号星球上，挖了好大一堆这玩意儿。
我知道那些晶体会生长——长得很慢，但确实会长——
所以他们应该没把整颗星球挖得片甲不留。
而且他们算好了应该在货舱里预留多少空间……
……这样回到地球之前，多长出来的部分不会占据了自由空间。
（不过，既然导航系统都坏了，鬼知道这些计划有多精确？）
所以说真的，我真不懂我在这里再逛逛有什么意思。
感觉这里在开新时代音乐会：极目所至，全是水晶。
就差大喇叭里放橘梦乐队的电子音乐了。
[[好吧，那就走吧。|leave_bay]] | [[再仔细搜索一下。|deeper_bay]]


:: deeper_bay
好吧，等我……小心翼翼地跨过这堆晶簇……
啊哟！
更正：我没跨得过那堆晶簇，而且脸朝下摔了个狗啃屎。
好吧，反正周围也没人。
我也不知道为什么我要跟你说。我那样子熊死了。
等我一下，我要去远处那个角落里刨一刨。
[[delay 10m^泰勒在搜寻|cargo_door]]


:: stay_hidden
没错，我还躲着呢。
这整艘飞船上，只有这！一！间！房间里有光……
……我正努力躲到暗处。
我屏住了呼吸，一分钟只出两次气。
（要是我能逃回地球，我要开家瑜伽馆。）
我不说话了。
[[delay 5m^泰勒在保持安静|they_left]]



:: break_for_it
好好好。
我要等到没人拦我时才出去……
……然后再想想要不要拖宇航员。
（我紧张时就会胡说八道些烂段子。）
[[delay 2m^泰勒在等待|no_path]]


:: not_smart_move
是啊，好吧。
那我们就说，我只是凑巧跟着博斯，返回我的卧舱的吧。
这又不犯法，对吧？
（除了有个问题：他起码比我要快十倍。）
等等……等等……我觉得我听到他在前面了。
还有……别的矿工的声音？就在下个转角处。
是的，他们就在那里。而且——
我滴神啊！
我看到了什么啊？
[[怎么了？|don_aries_bos]] | [[你到底看到了什么？^你可得记住，咱们在纯文本交流。麻烦给点解释好嘛！|don_aries_bos_2]]


:: whos_there_miners
<<if $minerfight is false>>
哦，是矿工博斯。
<<if $footsteps_approaching_visited is true>>你可以给他贴上这样的标签：“强壮沉默型”。
<<else>>你可以给他贴上这样的标签：“强壮沉默型”。
我松了一口气。<<endif>>
<bos>泰勒，现在这样儿，我不知道是不是该让你呆在这外头。</bos>
<bos>你可能不如回船员卧舱去躲起来。</bos>
<bos>妈的，你最好把门的密码也改了。</bos>
等一下……真的？你真觉得我应该——
糟糕。他已经走了，去下一个厅了。
一个这么大只的人怎么可以移动得那么迅速？简直是一架人肉隐形战斗机。
就算停电也不会让他慢下来一步。
我觉得我应该跟上他。
[[好，要是你跟得上的话。|follow_bos_again]] | [[你确定？^万一这是个馊主意怎么办？他明！确！让你回去卧舱里的啊。|not_smart_move]]
<<else>>唔……来的是那些海军陆战队员。
[[marine_check]]<<endif>>


:: whos_there_shepherd
<<if $sheptalk is true || $cockpit_mission_visited is true || $cockpit_no_mission_visited is true>>[[whos_there_miners]]
<<else>>[[captain_shepherd]]<<endif>>


:: doctor_doctor
<<set $doctalk = true>>
哦，嘿，是阿特沙医生！
没事了，太棒了，我能搞定的。
（挺奇怪的，以前在地球上时，我从没有见过医生穿短裤T恤。）
（不过我看到的阿特沙医生，从来只穿短裤T恤。）
<<if $ievasuit is true>><doc>是谁啊？太黑了，我看不清你身上的名字。</doc>
哦，对了，等我把头盔摘下来。
<doc>哈，是泰勒！你这到底是打算要去哪里？</doc>
<<else>>泰勒！你这是打算要去哪里？<<endif>>
“到底”这个词太过于强调了，我觉得我只是在兜圈子。
<doc>听着……我也完全搞不懂到底出了啥事。</doc>
<doc>而且我最恨被蒙在鼓里了。</doc>
是啊，百爪挠心的感觉是吧？
<doc>……说得再贴切不过了。</doc>
<doc>不过，看看你。就算在这么昏暗的光线下，我都能看到你在流血。</doc>
<doc>你一定是到处走时擦伤了头。</doc>
<doc>你不如先掉头去医疗舱吧？</doc>
<doc>可以先在伤口涂点碘酒，我一会就来，帮你包扎下。</doc>
嗯，我并不是真的……
……呃，好吧。现在他已经走了。
哎，要是他不走的话，我还至少可以跟他说说我知！道！的情况。
哎，好吧……你觉得我该怎么办？
[[去医疗舱。|go_med_bay]] | [[别管他了。^你受的伤应该没那么重。继续前进吧。|stay_on_move]]


:: solid_red
不要啊
是稳定红光。
[[delay 3m|goodbyepod]]


:: they_left
哦呀，偶滴神啊。简直不敢相信我居然成功了。
他们扫荡了半个房间——不知道是在找什么——
然后终于走了。
我要在这里喘口气，等他们走远点，走得越远越好。
要是可能的话，我要尽量把心跳恢复到“正常”值。
……深呼吸。
[[delay 15m^泰勒在等待|leave_bay]]


:: follow_bos_again
对，我能……跟上。肯定能。
我虽然没隐形战斗机那么厉害……
……也比塞斯纳单螺旋桨飞机强点儿……
……我虽然有点上气不接下气，但还撑得住。我觉得前面那声音就是他发出来的。
还有……别的矿工的声音？就在下个转角处。
是的，他们就在那里。而且——
我滴神啊！
我看到了什么啊？
[[怎么了？|don_aries_bos]] | [[你到底看到了什么？^你可得记住，咱们在纯文本交流，麻烦给点解释好嘛！|don_aries_bos_2]]


:: captain_shepherd
<<set $sheptalk = true>>
哦，嘿，是夏帕德船长！
满面愁容……这种表情我可从没在她脸上见过。
<shep>泰勒！你这是要去驾驶舱吗？</shep>
<<if $cockpit_no_mission_visited is true>>我……没这么打算。我已经上去过那里了，去找你们。
结果跟玛瑞待了一小会儿，我们聊了聊……唔……点东西。
<shep>什么东西？</shep>
哦，你懂的，生命、宇宙以及一切。四十二。
<shep>你在满嘴跑什么火车——你知道吗？哎，算了，不要紧。</shep>
<<else>>唔……我是可以去。怎么了？出了什么事情吗？<<endif>>
<shep>你好像蛮擅长电脑的，对吗？你搞定了之前卫星上的那台对吧？</shep>
当然，算不上是专家，但是够用了。
<shep>够用这会儿就够了。</shep>
<shep>快上去驾驶舱，看看你能不能让备用照明启动起来。</shep>
<shep>这是目前最要紧的事。然后是恢复通讯，假如你能搞定的话。</shep>
<<if $help_navs_visited is true>>船长，我……我真希望我能说包在我身上……
……不过我已经试过让导航系统听话……
……结果出局了，惨败。
<shep>泰勒，我不会假装我在高中里当过拉拉队员。</shep>
<shep>我没有别的姑娘那样显眼的花球——生活嘛，总有点不如意的。</shep>
<shep>不过，我要给你打气，“泰勒加油！泰勒加油！我对你有信心！”……</shep>
<shep>……好了，现在就上去那里，别让我失望。好吧？</shep>
收到，船长。我马上就去。
<<else>>收到，船长。我马上就去。<<endif>>
……好吧，她走了。我不觉得我得到了什么新信息。
你觉得我应该到驾驶舱去对吗？
[[好了，你有任务了。|cockpit_mission]] | [[别理她，继续前进吧。|stay_on_move]]
//"Life, The Universe, And Everything" and "forty-two" are references to Douglas Adams's classic Hitchhikers' Guide To The Galaxy.


:: stay_on_move
<<if visited() gte 2>>[[footsteps_approaching_2]]
<<else>>是啊……这恐怕才是上上策。
我随便进哪个房间，都有被困在里面的危险……
……所以，现在不如“打一拳就闪！打一拳就闪！”
我可是从游戏《麦克∙泰森拳击》里学来这一招的。
我还学会了要等到那个叫老虎的印度家伙的珠宝闪一下之后才出拳打他……
……也就是说，要是今晚出场的是他，把他搞定，还不是小意思啊。
[[你还真会让人放一万个心啊。|tiger_relief]] | [[咱们这不是在打游戏！|life_not_game]]<<endif>>
//Mike Tyson's Punch-Out!! (video game) is indeed stylized with two exclamation points.


:: footsteps_approaching_2
是啊，勇往直前，绝不止步。
简直是《愤怒的葡萄》里对所有人生问题的解决方案。
记得提醒下我，在那部书里，这种方案到底有效不？
……啊呀，又来了。我知道你简直是耳朵要听出茧来了，而且我自己也都要说得烦死了……
……不过，走廊那头回荡着脚步声。
踩在金属地面的脚步声，又响又吵，让人又烦又乱。
（依我看，要是我们真生活在《愤怒的葡萄》那个时代，至少不会为这种事情恼火。）
[[whos_there_miners]]


:: tiger_relief
我本来以为告诉你这个，你会睡得踏实点呢。
[[footsteps_approaching]]


:: whats_left
<<set $maploc = "hall">>
<<if $cockpit_mission_visited is true || $cockpit_no_mission_visited is true>>我要试试在黑灯瞎火的白星号里找路……
……还要希望我准备好了，能应付下一个遇到的人。
（说实话，我这个希望实在是太渺茫了。）
[[delay 20m^泰勒在走路|found_someone]]
<<else>>[[cockpit_time_cargo]]<<endif>>


:: cockpit_time_cargo
眼下，我觉得上策是去驾驶舱。
<<if $shepherd_talk_visited is true>>夏帕德船长让我想办法把灯弄亮，让通信恢复运作……
……而且明显这会儿除了我，也没别人在处理这个问题了。
（要是你想知道为什么的话：因为现在既没有灯也没法进行通信。）
（我可是相当有洞察力的哦。）
[[你当你是宇宙福尔摩斯啊？|space_holmes_cargo]] | [[好吧，去驾驶舱吧。|cockpit_prompt_cargo]]
<<else>>不过我希望夏帕德船长和玛瑞——或者至少她们中的一个——
在掌舵，能够给我一！点！情报，倒底是出了什么事。
[[希望如此。|hoping_clues_cargo]] | [[好吧，去驾驶舱吧。|cockpit_clueless_cargo]]<<endif>>



:: space_holmes_cargo
好了，瞧，不是我想要你抛弃我还是怎么的……
……不过，“福尔摩斯在宇宙”是个值百万美元的点子。
你得马！上！去申请注册专利。
去！快去！别担心我。
等你申请了专利回来，我还在这艘坑爹的飞船里东游西转、东撞西碰的呢。
[[delay 10m^泰勒在磕磕碰碰|airlock_holmes_cargo]]


:: sorry_buddy
我知道。
你只是束手无策。
我看，我们只有几秒钟时间了。挂锁正在打开。
我只想说……
……谢谢你与我聊天，陪我度过这一切。
这一切是如此恐怖。
即使你中途退缩，我也不会怪你。
但是你倾尽所能。
你为我出谋划策，帮我走得尽可能远。
我希望我们能够走得更远，但是——
哦！天！啊！逃生舱正在发！射！哦！天！啊！
谢谢你
所做的一切
我衷心感谢你
我保证，我将永远不会忘记你，我将——
失事信标是不是刚刚在闪？
它！是！不！是！闪！——？
[[delay 30s|solid_red]]


:: footsteps_approaching
<<set $footsteps_approaching_visited = true>>
哦，脚步声更密了，好响。死菜了。
被吓了这么多回，我都累死了。现在，管它有多恐怖，我都无所谓了……
……我是说，说不怕是假的，不过我真没那精气神去怕了。
[[whos_there_miners]]


:: life_not_game
我知道，我知道……
……不过，有时候，我确实有这种感觉。
[[footsteps_approaching]]


:: cockpit_prompt_cargo
我把全身的感觉器官都使上了，加油在走！
（我看我不用花多久时间。）
[[delay 20m^泰勒在走路（摸索着走）|cockpit_mission]]


:: cockpit_clueless_cargo
那是当然的，我上路了。
不会花多久，我一到那边就通知你。
不过，要是我的头撞到管子什么的上头的话……
……你也免不了知道的。
撞痛的脚趾头？我肯定告诉你。
受伤的心灵？你会听说的。
疑心病？我们说话这！会！儿！我已经病入膏肓了。
[[delay 20m^泰勒在走路|cockpit_no_mission]]


:: airlock_holmes_cargo
啊呀啊呀！
我还没走到驾驶舱。但是我突然灵感来了，我一定要跟你说说这个灵感。
好了，你准备好听了吗？
下落客∙福尔摩斯。
这个名字你拿去用，我不收版权费。只是你去领奥斯卡小金人时，致谢词里别忘了提我就行。
[[delay 10m^泰勒在走路|cockpit_mission]]
//The Oscar, or Academy Award, is the statue awarded for excellence in film.



:: stop_pod
他们已经开始发射序列了。我打不开门。
信标还亮着稳定的红光。
它会带着我冲到太空中……
……没人知道上哪里去找我。
逃生舱里既没有食物也没有饮水。
过不了多久，它就要脱离白星号……
……我也要断了与你的联系了。
[[泰勒，我很难过。|sorry_buddy]] | [[真希望我能阻止这一切。|sorry_buddy_2]]

:: sorry_buddy_2
[[sorry_buddy]]

:: marine_check
<<if $marinestrapped is true>>问题是：
要是你还记得，我不是把这些家伙困在了房间里的吗？
……那里的钢门有四英寸厚，开门密码有一百万种可能。
而且，哦，对的，我可没！有！跟他们说真正的密码是什么。
也就是说，他们要么乱瞎乱试，试对了……
……要么按顺序试000000、000001……一直试到了开门……
……要么撞开了四英寸厚的大钢门。
我真心不知道，到底是哪种可能性最吓人。
只有他们三个，没有白星号人员陪同。
<<else>>只有他们三个，没有白星号人员陪同。<<endif>>
他们没戴头盔，而且……
……而且他们的眼睛闪着绿光。
他们被那颗卫星上的外星怪物附身了，根本就不是人。
他们在走廊里招摇而过，好像这里是他们的地盘一样。
哦……有鉴于我已经好久没见过我的白星号上的兄弟们了……
……依我看，这里还真！是！这几个家伙的地盘了。
等下……他们有什么东西……我看不清楚。
他们在拖着什么东西……
[[尽量看清楚。|better_look]] | [[保持距离。|keep_distance]]


:: hoping_clues_cargo
对吧？或者要是没人的话，我希望他们好歹有个高级点的自动驾驶仪。
比方说像是《逢凶化吉满天飞》里那个充气飞行员。
你知道吧？那个可怜的家伙最后在制片人杰里∙朱克的车库里烂掉了。
……等等，我想不起是那个自动驾驶，还是那个男主角罗伯特∙海斯了？
总之，他们中有一个最后烂死在车库了。你在等我去驾驶舱这会儿，可以去查查。
[[delay 20m^泰勒在走路|cockpit_no_mission]]



:: what_pod
我刚刚意识到……他们的阴谋。
而且，我意识到，我对此屁都放不了一个。
哦，我的妈啊，死菜了，死菜了。
他们屁股坐在那里，就可以发射我在的分离舱。
而且他们……
……他们不用点燃信标，就可以发射。
[[哦，泰勒，不要啊。|stop_pod]] | [[你能阻止他们吗？|stop_pod_2]]

:: stop_pod_2
[[stop_pod]]

:: into_pod
不对。
他们不是非这么做不可。
他们刚刚意识到，他们可以更穷凶极恶。
哦，偶滴神啊，死菜了，死菜了。
他们屁股坐在那里，就可以发射我在的分离舱。
而且他们……
……他们不用点燃信标，就可以发射。
[[哦，泰勒，不要啊。|stop_pod]] | [[你能阻止他们吗？|stop_pod_2]]


:: keep_distance
是啊，相信我，我肯定不想靠过去——
哦！
哦，偶滴神啊！
[[delay 2m^泰勒在干呕|its_bos]]


:: better_look
我在尽力靠近点，但是实在很难啊。
这几个家伙警觉得很，有点风吹草动都知道。
很难在受过训练的军人眼皮底下出没还不被注意到……
……尤其这里还安静得一根针掉在地上都听得到。
不过如果我想要在这么黑的地方看到点什么，我就！得！凑近点——
哦，
哦，偶滴神啊！
[[delay 2m^泰勒在干呕|its_bos]]


:: leave_bos
我……不行。
我得搞清楚他们在打什么鬼主意。
这些禽兽！……他们杀了人，杀了一个敏捷强壮的人……
……要是他都打不过，我还有几分胜算？
[[take_your_time]]


:: back_into_pod
当然啦！我没有别的地方可以去了！
我已经……已经把门闩死了。
他们进不来的……但是他们可以就坐在那外头候着，等、等、等。
要是船上还有谁想要用逃生舱……
……这几个海军陆战队员也会在这里伏击他们。
要僵持不下了。
要……
哦，糟糕。
糟！糕！
[[出什么事了？|what_pod]] | [[他们要进逃生舱里来了吗？|into_pod]]



:: exit_pod
对，好吧，我做得到，我只要——
保持冷静，泰勒，正常呼吸，别大口喘气——
一只脚踏出逃生舱，再另一只——
哦，偶的神
[[怎么了？|greens_here]] | [[你还好吧？|greens_here_2]]


:: its_bos
<<set $its_bos_visited = true>>
哦，天！他们……他们正拖着博斯在走。
哦，我是说……博斯的大！半！边！
他肚子下面一截全都不见了，而且，而且他的内脏——
哦，对不起，对不起，等我一下——
[[慢慢来。|take_your_time]] | [[快跑！|leave_bos]]


:: take_your_time
嗯——好吧。
以前上生物课进行解剖时，我们得学会控制情绪。
超然于个体之外，保持冷静，客观分析。不介入个人感情，进行观察报告。
博斯被拽着在走，他的……内脏器官……就拖在他身后。
有些器官似乎……已经掉了。
距离不够，我很难看清，但是，啊……
……他的身体不！像！是被外科手术切断的。
而，他好像是遭受了……重伤……像是被爪子扯断的？
很多……爪子撕扯出来的？
哦，天……老天……让他闭眼，你们这群变态！
他死不瞑目。就……就给他最后一点人的尊严吧！
[[安静！他们会听见你的！|quiet_please]] | [[他们要把他带到哪里去？|where_taking_bos]]


:: forgot_code
好吧，那么我们要现学现用了，因为我也忘了。
我觉得应该是“mima”，听起来挺像的。
不然就是我孙子的生日了。
要是我真！的！死在这里……
……麻烦告诉大家，我英勇战死在一场努力回忆密码的战役中。
言归正传，少说话，多干事。
多拿石头。
[[start_mixing]]


:: fight_marines
你没听我说过他们浑身是血吗？
白星号上最大块头最强壮的家伙的血？
跟他们打简直是自杀式行动。
（当然啦，不！跟！他们打多半也是自杀式行动。）
好吧，你有事做了，帮我想个答案：
我倒底应该选哪种自杀式行动？
[[还是干上一架吧。|go_down_fighting]] | [[去逃生舱里。|back_into_pod]]


:: switch_beacon
我说了！——我不记得怎么弄！
这些跟瓦里亚号上的不一样……
……而且不像现成摆着什么坑爹的说明书！
也许我可以
哦，偶的神
[[怎么了？|greens_here]] | [[你还好吧？|greens_here_2]]

:: greens_here_2
[[greens_here]]

:: hide_pod
好！好！
妈哟，我真希望夏帕德之前说的时候，我稍微上了点心……
……她提到过要先把这玩意儿上头的信标启动之类的话。
她说有个红灯——对了，在这里——
当信标启动的时候，会从稳定红光变成闪烁绿光。
没有信标的话，逃生舱就不会发射信号……
……也就不会有人来寻找和营救。
[[启动信标！|switch_beacon]] | [[离开逃生舱。|exit_pod]]


:: where_taking_bos
我真是一点头绪都没有。
他们就这么……拖着他，像拖着一袋子土豆。
我真想朝他们咆哮！
朝允许他们存在的变态宇宙咆哮！
我有满腔的怒火……沸腾的憎恨……
……但是我不知道博斯是不是希望我这样。
（我是说，我也只认识了他几个星期而已，但是还是……）
我觉得他会希望我将所有这些负面的情绪……
……转化锻造，为我所用。
<<if $icepack is true>>比方说，想出计划，制作武器，或者来一声战斗的呐喊。
自从这些海军陆战队员到来后，白星号像坟墓一般死寂。
我要结束这死寂。
我要制造点噪音。
我要让这些噪音成为这帮怪物们最后听到的声音。
[[你是有什么打算吗？|what_noise]] | [[别干傻事。|no_stupid]]
<<else>>比方说，逃出这里……
……还要比这些绿色的怪物活得长、活得久，把他们从这个星系的旮旮旯旯里搜出来杀得精光。
[[way_out]]<<endif>>


:: bake_cookies
什么？！不可能，那样实在太荒谬了！
我只擅长做柠檬糕。
[[how_science]]


:: quiet_please
我根本就无所谓了，我已经出离愤怒了！
这都是些什么货色，来袭击我们的飞船，切断我们的电源，抢劫我们的补给？
别说这些了，就瞧瞧他们干下的好事！
<<if $no_one_knows_visited is true>>他们还杀！了！谁？
我发过誓我要保护好玛瑞……和她未出世的孩子。
这些怪物是不是已经让我食言了？
<<else>>他们还杀！了！谁？<<endif>>
<<if $icepack is true>>自从他们到来后，白星号像坟墓一般死寂。
我要结束这死寂。
我要制造点噪音。
我要让这些噪音成为这帮怪物们最后听到的声音。
[[你是有什么打算吗？|what_noise]] | [[别干傻事。|no_stupid]]
<<else>>我要逃出这里……
……这样我才能比这些绿色的怪物活得长、活得久，把他们从这个星系的旮旮旯旯里搜出来杀得精光。
[[way_out]]<<endif>>


:: what_noise
我有个计划。
<<if $icepack is true>>我有个硝酸铵冰袋……我想过了。
<<else>>这需要用到我的电脑能力——这整个晚上除了辜负我，一点用场都没有派上的能力……
……不过，不管怎么说，还是个计划。<<endif>>
而且——至少在我想来——应该会有个还算让人称心如意的结果。
<<if $icepack is true>>现在，跟我来……我要去厨房……
……而且看来我还要绕条远路。
[[delay 45m^泰勒在走路|go_to_galley]]
<<else>>[[way_out]]<<endif>>


:: go_to_galley
<<set $maploc = "galley">>
好了，我到了白星号的厨房了。
居然还专门有个高级航海术语来指代厨房。
就跟明明是右边，非要用航海术语“右舷”一样。
依我看，这就是为什么那多船会撞上冰山的原因：
他们光忙着关心给各种东西想点奇怪的名字，都不关心在走的路了。
总之，白星号上食品柜里的储备比瓦里亚号最好的时候都要强得多。
在这个厨房里，我受的理科教育就要大显身手了。
[[哦？真的吗？|how_science]] | [[你难道要烤饼干？|bake_cookies]]


:: blow_up
对，我要炸飞点东西。
我说的“点东西”，就是那艘军舰……
……就在我把它引航到黑洞里的时候。
不过首先，我得把这些被外星怪物附身的家伙赶回他们的飞船上去……
……也就是说，要把他们引到准备室里，然后把他们困在里头。
但是，第一步，我要不被干扰……
……好调配点炸药。
对，这是万里长征第一步。
确定无疑。
[[开始配炸药吧。|start_mixing]] | [[先把门锁密码换了。|change_door]]


:: change_door
哦，妈哟，谢天谢地，你提醒我了。我把这码子事完全忘了。
等我一下，我去把门锁密码改了。
[[delay 3m^泰勒在修改密码|galley_door]]


:: galley_door
<<set $galley_door_visited = true>>
好了！换过密码了！
谁也进不来这里了。我随机选了个数字。
哦，我……死菜了……是927042，快帮我记一下，啊？
也不是我说过就忘。不过，你懂的，我们就指望着这个数字了。
不怕一万，就怕万一嘛。
[[行！记好了。|remember_code]] | [[根本记不住！|forgot_code]]


:: remember_code
好极了。谢谢。
要是我想出去的话，这个数字就有用了。
（说实话，就我们说话这两分钟，那个“要是”上的引号都变得越来越大了。）
[[start_mixing]]


:: go_down_fighting
唔，虽败犹荣是吧？太崇高了，也同时蠢爆了。
不知咋搞的，我一直觉得我的墓碑上会同时出现这两个词。
好了，你这个从前叫巴塔萨∙德∙雷的怪物……
……准备好下巴上吃我这不见效的一拳！
[[delay 1m^泰勒在打斗|green_fight]]


:: greens_here
那些海军陆战队员到了！齐整整三个！
没戴头盔，绿荧荧的眼睛……
……啊，我的天，他们浑！身！沾满了博斯的血！
我不行……没办法绕过他们。
我绕不过他们！
[[回到逃身舱！|back_into_pod]] | [[跟那些士兵打！|fight_marines]]


:: stand_pod
好！豁出去了。我要坚守原地。
脚步声近在咫尺了。不过我心咚咚跳得更响……
……哦，哈！
是玛瑞！
根本不用担心了！
玛瑞，我简直要拥抱你一下了！
<mari>没时间抱来抱去的。我们遇到麻烦了！</mari>
[[哎，真！够！扫兴的呀。|bummer_mari]] | [[出什么问题了？|mari_situation]]


:: run_pods
啊呀，我的……妈呀，根本就没路可逃……
……除开那条脚步声正在逼近的走廊！
也没处可藏，除开那些逃生舱！
[[躲进逃生舱。|hide_pod]] | [[坚守阵地。|stand_pod]]


:: no_stupid
……是啊，至于那个？
恐怕我要做点啥二到家的事了。
不过，唔，麻烦你不要生气啊。
除非我刚！刚！好！成功了……这会是我最后一件二的事。
更精确地说，是一张超！长！清单中的最后一项。
这样，你以后可以说：“我说了吧。”
[[哈哈，有！意！思！|thats_fun]] | [[我宁可你活下来。|live_through]]


:: live_through
哇，谢了。
我也希望能活下来。
我还希望你！能活着读完我活下来的情节。
要是你不能，那我就真的要伤心欲绝了。
<<if $icepack is true>>现在，跟我来……我要去厨房……
……而且看来我还要绕条远路。
[[delay 45m^泰勒在走路|go_to_galley]]
<<else>>[[way_out]]<<endif>>


:: how_science
是这样子的：之前在医疗舱时……感觉是上辈子的事了……
……我拿了这个折一下晃晃就能用的冰袋。
这种冰袋里面通常含有的成份：
不是尿素，就是硝酸铵结晶。
我恰好拿到了后者，也就是说——
只要加点厨房里常见的东西……
……哦，换个专用术语：烹饪必备要素……
……我可以制造点相当有威力的炸药。
[[你要把什么东西炸掉吗？|blow_up]] | [[听起来不太安全啊。|not_safe]]


:: not_safe
不，肯定不安全。
太空里的大爆炸通常都不会安全。
不过，不管怎么样我们都要这么干。
我要偷偷上那些海军陆战队员的军舰上去……
……然后驾驶军舰，到达一个黑洞……
……同时，让它“火烧火燎”。
（哦，万一你没听明白，我这里用的是科学术语啊。）
不过首先，我得把这些被外星怪物附身的家伙赶回他们的飞船上去……
……也就是说，要把他们引到准备室里，然后把他们困在里头。
但是，第一步，我要不被干扰……
……好调配点炸药。
对，这是万里长征第一步。
确定无疑。
[[马上着手调配炸药吧。|start_mixing]] | [[先采取点预防措施。|change_door]]


:: start_mixing
好了，那我就要趁着夜黑风高整点好东西了。
水，有了。盐代用品，有了。糖粉，太神奇了，居然也有了。
咖啡滤纸，因为夏帕德船长咖啡因上瘾？总之，也有了。
是称一下、加个热、过个滤、再晾晾凉的时间了吧？
哦，对了，我偏偏最！缺！的就是时间这玩意儿。
[[那你先造个时间机器嘛。^你肯定行的。你都能拿剩菜剩饭造炸弹！|time_machine]] | [[耐心点，好好干！^造炸药时可别偷工减料哦。|cut_corners]]


:: waiting_game
荷马∙辛普森怎么说来着？
“啊呀，要等的游戏太烦了！我们还是玩《饥饿的河马》吧！”
<<if $galley_door_visited is true>>[[delay 45m^泰勒在等待|safe_galley]]
<<else>>[[delay 45m^泰勒在等待|marines_enter]]<<endif>>


:: marines_enter
等一下，有……
……有人走进厨房了。
啊呀！
我的妈呀！
是那帮海军陆战队员。
衰死了，我该先改好门锁密码的！我该采取点预防措施的！
[[快跑！|run_from_galley]] | [[坚守你的阵地。|stand_in_galley]]


:: awake_captured_galley
<<set $maploc = "galley">>
嗯，怎么回事？我在哪里？
哦，还是厨房。
感觉……好怪。就像是，我有一部分……没完全回来似的。
我不能……
……奇怪。我可以看到我的腿，还长着，和以前一样。
可是我却不能移动，甚至都感觉不到我的腿。
这……实在太诡异了。
海军陆战队员跟我都在这里。
克鲁齐格、基奥、德∙雷。
这些怪名怪姓的家伙。
这些绿眼睛的……力量超强的……怪物……
朝我走过来，拿着小小的……寄生怪……
……我不想尝那味道，我不喜欢他们那样
否
哦，不
哦，天
完蛋了
不能相信我在那颗卫星上打败了它们
但它们竟然追我到了这里。
……该死。
<green>来吧，泰勒。</green>
<green>反抗是毫无意义的。</green>
<green>张大嘴巴。这会让你痛一下下。</green>
<green>很久，很久的一下下。</green>
啊啊——
啊
<<set $turnedgreen = true>>
[[goodbye]]



:: pod_steps
我勒个去！
死菜了，死！菜！了！
有脚步声！越来越响了。
我还没有搞清楚这些逃生舱怎么用呢！
怎么办？
[[快跑！|run_pods]] | [[等着，看看究竟是谁。|stand_pod]]


:: green_fight
哦，不
哦，天
完蛋了
不敢相信，我在那颗卫星上，打败了成千上万只这种玩意儿
但它们中的三个竟然追我到了这里。
……该死。
<green>来吧，泰勒。</green>
<green>反抗是毫无意义的。</green>
<green>张大嘴巴。这会让你痛一下下。</green>
<green>很久，很久的一下下。</green>
啊啊——
啊
<<set $turnedgreen = true>>
[[goodbye]]


:: bummer_mari
是啊，在这艘飞船上，样样事情都坑爹得很。
我上船时，想搭的可是艘假日邮轮啊。
玛瑞，情况如何？
[[mari_situation]]


:: taylor_mari_pods
<<set $maploc = "pods">>
好了，我们到了。
我觉得我挺英勇，一路上担了所有的撞伤……
……使玛瑞少吃点苦。
总之，玛瑞，快进个逃生舱逃走吧！
<mari>你也要进逃生舱吗？还是你要去找夏帕德船长？</mari>
哦，对……这个问题问得好。
[[找夏帕德船长。|shep_find]] | [[快进逃生舱逃走！|go_in_pod]]


:: pods_escape
<<set $maploc = "pods">>
好了！黑灯瞎火里脚下一滑，我摔了一个仰八叉之后——
我只打算承认我只摔了这一个——
我在逃生舱发射区了。
我刚上船时，夏帕德船长跟我讲解过一遍这艘飞船……
……不过我当时真心希望我不需要回这里来。
我估计我跟你差不多……
……空姐进行安全解说时，我从来不会上心。
对我来说，就是：“哦，对，就是！我旁边坐的那个小屁孩可以当漂浮物使，吧啦吧啦。”
总之，我得花几分钟，才能把这些玩意儿，研究出个一二三了。
[[delay 5m^泰勒在研究|pod_steps]]



:: thats_fun
对啊，我就觉得你会喜欢的。
<<if $icepack is true>>现在，跟我来……我要去厨房……
……而且看来我还要绕条远路。
[[delay 45m^泰勒在走路|go_to_galley]]
<<else>>[[way_out]]<<endif>>


:: way_out
现在，就这样吧……要是顺利的话，这整件事很快就要了结啦，就在逃生舱里……
<<if $no_one_knows_visited is true>>……不过我们得先去趟驾驶舱……
……要是你爱祈祷的话，那就祈祷玛瑞在那上头还安然无恙吧。
还要祈祷我一路遇到所有人（所有没被外星怪物附身的人）……
……要是运气好的话，我们可以一起西天取经了。
（我要当悟空。明显嘛。）
好了，我要朝那个方向去了（我觉得是那个方向吧）。
[[delay 45m^泰勒在走路|cockpit_escape]]
<<else>>……要是运气好的话，我们可以一起西天取经了。
（我要当悟空。明显嘛。）
好了，我要去逃生舱了。
或者是我觉！得！是逃生舱的位置。
[[delay 45m^泰勒在走路|pods_escape]]<<endif>>
//Montgomery Moose is a character from The Get Along Gang, a 1980s children's cartoon.


:: time_machine
呃……就凭我这点科技知识，还没有造得出时间机器的能耐。
我觉得我还差0.21千兆瓦。
不过我们这个社会，早晚都会做出来的。
哪怕是不像《回到未来》一样用30年那么久，就能造出来一个来的话，我也不会惊掉下巴。
[[你这想法也真是让人醉了。|hoping_time]] | [[希望如此吧！|hoping_time_2]]

:: hoping_time_2
[[hoping_time]]

:: cut_corners
对，那是。
<<if $hoping_time_visited is true>>我是皮巴弟。
或者是薛曼。
不记得哪个是那条造时光机器的天才眼镜狗的名字了，总之，那就是我。
好了，全都混合好了。我只需要把玩意儿放到冰箱里去晾凉。
<<else>>好了，全都混合好了。我只需要把玩意儿放到冰箱里去晾凉。<<endif>>
等硝石晶体形成……
……再稍微磨磨细混合起来，怎么感觉我把自己描述成了个瘾君子……
……然后，就等着引爆了！
不过，现在我只能先躲好，见机行事。
[[delay 1h^泰勒在等待|waiting_game]]


:: run_from_galley
不行……没路可逃。
他们成扇形散开，堵住了我的所有去路。
我一蹲下，他们就蹲下……
……我看了一眼桌上方的天花板，他们就把那里给堵上了。
我甚至没法去冰箱拿我混好的炸药……
……不过，倒也不是说炸药已经可以用来炸他们了。
要是，唔，非要用点专业术语的话……
……那我看我眼下的状态是“死菜了”。
这些绿眼睛的……力量超强的……怪物……
<<if $pulsegun is true && $shotdon is false>>[[gunfight_galley]]
<<else>>不<<endif>>
哦，不
哦，天
完蛋了
不能相信我在那颗卫星上打败了它们
但它们竟然追我到了这里。
……该死。
<green>来吧，泰勒。</green>
<green>反抗是毫无意义的。</green>
<green>张大嘴巴。这会让你痛一下下。</green>
<green>很久，很久的一下下。</green>
啊啊——
啊
<<set $turnedgreen = true>>
[[goodbye]]


:: stand_in_galley
“坚守阵地”是那些胜券在握的人才干的事。
然而我，却是——
啊啊啊
[[delay 1h^泰勒失去了知觉|awake_captured_galley]]

:: doc_situation
<<set $docknocked = true>>
<<if $artesaout is true>><mari>……阿特沙在医务室里，好几个小时没有动静了……</mari>
<mari>……所以我猜他也完了。</mari>
<<else>><mari>……阿特沙冲进了驾驶舱，想往我嘴里塞个绿玩意儿……</mari>
<mari>……被我敲晕了。我再也不用给他拜年了。</mari><<endif>>


:: mari_situation
<mari>泰勒，就只剩下我们了。</mari>
<mari>你、我、船长。</mari>
<mari>博斯死了，剩下的矿工都被绿怪物附身了……</mari>
[[doc_situation]]
<mari>我们得逃出这艘飞船，马！上！</mari>
<mari>钻进逃生舱，逃！</mari>
<mari>那些海军陆战队员在找我们，而且他们还拿着那些绿色的怪物……</mari>
<mari>……还有，我看他们可不会善罢甘休的。</mari>
[[送她进逃生舱。|mari_pod]] | [[你快钻进逃生舱。|taylor_pod]]


:: go_to_pods
好的，我有责任保证玛瑞的安全。
那么首先，我要把她送到逃生舱发射区去。
[[delay 20m^泰勒在走路|taylor_mari_pods]]


:: hoping_time
<<set $hoping_time_visited = true>>
恐怕是吧。
听我说，我之前——不久前——在时间里穿越过。
可不像你想的那么有意思。
想像一下你在坐翻滚列车，在无穷无尽的翻转环里狂奔。
列车还架在活火山里。
到处是尖叫的婴儿，在你的四周、你的膝盖上。
甚至你的脑袋里。
[[一点不像《回到未来》的时光穿梭车那么酷嘛。|not_delorean]] | [[不管怎么说，你也算是时光旅行者了！|cut_corners]]



:: gunfight_galley
……这把步枪里有一发子弹，要是我能发射的话……
……嘿！你这头死猪放手——
那个名牌上写着克鲁齐格的货，在跟我抢枪……
……谁会觉得一个被附了身的海军陆战队员能把我打倒？
把步枪架好，然后……
衰爆了！
这一发就没了。克鲁齐格来抢枪时，射到天花板上去了。
现在我没了子弹，也就没了步枪，而且士兵们正在拥上来……
不


:: mari_pod
好吧，酷毙了。
（好吧，哪一样都跟酷沾不上边。简直是让人心惊胆战。不过你懂的。）
玛瑞，快进去逃生舱，逃出这艘飞船。
<mari>你也要进逃生舱吗？还是你要去找夏帕德船长？</mari>
哦，对……这个问题问得好。
[[找夏帕德船长。|shep_find]] | [[快进逃生舱逃走！|go_in_pod]]


:: taylor_pod
你听我说，我连做的梦都是这些玩意儿来抓我……
……他们还想爬到我身体里，那味道可不！好！受……
……我只是……我只是没办法再经历一次。
我必须逃出去。
马！上。
<mari>好吧，但是……那夏帕德船长怎么办？</mari>
[[对，快停下来，再想想。|stop_shep]] | [[她自己能逃出来的。|shep_alone]]


:: knock_again
好吧，我接着敲。
我尽量不敲得太响了，免得引人注意……
……哦，我是说，引怪！物！注意。
[[delay 1m^泰勒在等待|knock_steps]]


:: knockpit
正在敲。
[[delay 1m^泰勒在等待|knock_again]]


:: overheated
感觉……像是在蒸桑拿。
我不知道是不是我在胡思乱想……
……还是真是空调失灵了，那么这里的酷热和死寂才说得通。
也许只是走廊这里的坏了。等我去驾驶舱看——
我勒个去！门的密码变了！
[[敲门。|knockpit]] | [[算了吧，继续朝前走。|no_knockpit]]


:: nervous_sweat
是啊……我是说……我当然紧张啦。
（在宇宙里，你说“切”，别人都能听到。）
不过感觉，在正常情况下，这艘飞船应该要凉快得多才对。
[[overheated]]



:: hot_sweat
我好热，快热死了。
说不上来，感觉白星号……在正常情况下，应该要凉快得多才对。
[[overheated]]


:: cockpit_escape
好了，我到驾驶舱门口了。
好怪……到这里来的一路上，安静得诡异。
就像，对，我知道，这整艘飞船已经诡异地安静了几个钟头了……
……感觉像是白星号屏住了呼吸。
天啊……我真的是汗流浃背。
[[你很紧张吗?|nervous_sweat]] | [[是因为太热吗?|hot_sweat]]


:: safe_galley
嘿！门后面有人！
不幸的是，（我也说不好，说不定幸运的是），门上没有窗户。
所以我也不知道对方是敌是友……
……而且他们多半都不知道我在这里。
他们只知道，门的旧密码不能用了。
我该怎么办？
[[问问对方是谁。|ask_who]] | [[别出声。|keep_quiet]]


:: not_delorean
确实如此。没什么东西比得上时光穿梭车的。
好了，全都混合好了。我只需要把玩意儿放到冰箱里去晾凉。
等硝石晶体形成……
……再稍微磨磨细混合起来，怎么感觉我把自己描述成了个瘾君子……
……然后，就等着引爆了！
不过，现在我只能先在这里躲好，见机行事。
[[delay 1h^泰勒在等待|waiting_game]]


:: shep_find
我要回飞船里面去，去找夏帕德船长。你知道她在哪里不？
<mari>我在驾驶舱里时，动态地图已经快失灵了……</mari>
<mari>……不过我觉得地图捕捉到她的背景，出现在钻机控制室。</mari>
晕死，简直是绝了，那边离这里“只有”一百万里远。
好吧，等我先把你安全发射出去……
……然后我再去找她。
[[delay 2m^泰勒在准备|launching_mari]]


:: go_in_pod
我要进到逃生舱里去。我不得不。
我已经在鬼门关前面走了一趟又一趟了……
……现在我一定要做正确的决定，保险的决定。
<mari>我完全理解。你这么说完全有道理。</mari>
<mari>你快上逃生舱走吧。我要回去找夏帕德船长。</mari>
<mari>运气好的话，我们说话这当儿，她已经朝我们这边来了……</mari>
<mari>……我们会紧跟着你的逃生舱发射的。</mari>
再见，玛瑞，祝你好运。
<mari>谢谢你，泰勒，也祝你好运。</mari>
[[delay 2m^泰勒在准备|launching_taylor]]


:: knock_steps
终于！驾驶舱的门开了！
<mari>泰勒！快点！快进来！</mari>
[[cockpit_end]]


:: no_knockpit
要是门锁着，说明里面多半有人——
聪明人，知道怎么保护自己的人。
玛瑞和/或夏帕德船长……应该去逃生舱的人。
[[好吧，快敲门。|knockpit]] | [[该去逃生舱的是你！|get_pod]]


:: enough_talk
是的，相信我，我在跑！
不过，我根本看不清楚我在朝哪个坑爹的方向跑，而且那些家伙——
我肯定他们是两男一女——
跟我比，块头更大、速度更快，而且更训练有素。
所以，万一他们抓到了我，麻烦先帮我记这一笔：
我跟你赌，他们随便哪一个拿根小指头就能把我戳倒。
我还跟你赌，我肯定没！法！以牙还牙。
[[delay 5m^泰勒在跑|ready_grabbed]]


:: door_open
门开了，是……
……是那些海军陆战队员！
哦！衰死了！衰死了！衰死了！
我需要引他们跟我走，不过，感觉还是衰死了！
我要从左边突围，朝准备室的方向狂奔——希望我找对了方向啊！
圣诞老人，要是你听得见……我只有一个圣诞愿望，就是我这个计划能奏效！
[[别废话了！快！跑！|enough_talk]] | [[别回头看！|no_behind]]


:: got_code
<<set $maploc = "hall">>
我搞定了！
[[door_open]]



:: got_code_two
谢谢你重复了一次。我一开始都不确定是不是听对了。
[[door_open]]


:: keep_quiet
是啊，我也这么想的。
我觉得有点内疚……万一是在逃命的白星号船员怎么办？
要是他们想躲到这里头来怎么办？
不过……我不能冒这个险，我正在筹备大事呢。
[[finish_mix]]


:: ask_who
是啊……好吧，我可以这么干。
主要原因是我讨厌有这个想法：“万一是白星号的船员呢？”
困在外头，想要逃开什么人……或者什么东！西！
好吧……我可以问问是谁。
要是答案不合我意，那我就不用开门了。
[[我看有道理！|ask_who_plan]] | [[现在我还真不是很确定呀。|not_sure_ask]]



:: launching_mari
<<set $marilaunched = true>>
啊呀，真高兴玛瑞知道怎么用逃生舱……
……因为我把夏帕德教我的完全忘到脑后去了。
而且，我也真二啊，刚刚玛瑞操纵时我居然没上心……
……看来我只！有！去找夏帕德，把她完好无缺地带过来……
……这样咱俩才能一起逃出去。
总之，玛瑞的逃生舱已经成功发射了……
……闪着小绿灯，沿着弧形轨迹在迅速远离白星号……
……现在我又要再向虎山行了。
（我好恨我好恨我好恨）
[[delay 30m^泰勒在走路|drill_shep]]


:: stop_shep
<mari>听着，泰勒，夏帕德船长比谁都清楚这艘飞船……</mari>
<mari>她知道逃生舱在哪里，也知道怎么用。</mari>
<mari>所以，要是你想走，你相信她能逃出来的话……</mari>
<mari>……你多半是赌对了，做了正确的决定。</mari>
[[现在就坐逃生舱走！|go_in_pod]] | [[去找夏帕德。|shep_find]]


:: cockpit_end
<<set $maploc = "cockpit">>
玛瑞！
妈哟，这里亮着的设备比之前还少了。
圣诞老人永！远！都别想找到来这里的路了。
<mari>别傻了，泰勒。</mari>
不好意思。
<mari>圣诞老人为什么要让鲁道夫带头拖雪橇？不就是因为它的红鼻头会照亮路嘛！</mari>
哈！
不过，说正事……玛瑞，情况如何？
<mari>泰勒，我们就是技术人员了。</mari>
<mari>你、我、船长。</mari>
<mari>博斯死了，剩下的矿工都被绿怪物附身了……</mari>
<<if $artesaout is true>><mari>……阿特沙在实验室里，好几个小时没有动静了……</mari>
<mari>……所以我猜他也完了。</mari>
<<else>><mari>……阿特沙想冲进驾驶舱，往我嘴里塞个绿玩意儿……</mari>
<mari>……被我敲晕了。我再也不用给他拜年了。</mari>
哈，你还给他拜年啊？他现在像个终于安静下来的疯子科学家。<<endif>>
<mari>我们得逃出这艘飞船，马！上！</mari>
<mari>钻进逃生舱，逃！</mari>
<mari>那些海军陆战队员在找我们，而且他们还拿着那些绿色的怪物……</mari>
<mari>……还有，我看他们可不会善罢甘休的。</mari>
好吧，虽然听起来真是太疯狂了，不过你说的完全有道理。
[[前往逃生舱。|go_to_pods]] | [[难道你还有更好的计划吗？|better_plan]]


:: get_pod
好吧，好吧，那我去了。
也许我半路上会遇到玛瑞或者夏帕德。
或者我就挂了
[[delay 30m^泰勒在走路|pods_escape]]


:: no_behind
你简直是做梦啊。我连面前五英尺的地方都看不清。
我背后除了发光的绿眼睛，就是一堆麻烦。
[[delay 5m^泰勒在跑|ready_grabbed]]



:: safe_galley_two
门外面又来人了！
我听得见他们在那边输入密码，我在这边也在干同样的事儿！
这实在是太蠢了，我要离开这里，马！上！
[[等一下，我有密码。|recall_code]] | [[准备好跑。^要是他们打开了门，你就跑！别管来的是谁，跑了再说。|run_check]]


:: wake_up_solve
好，我会的。
[[delay 90m^泰勒在尝试|safe_galley_two]]


:: recall_code
太棒了！我准备好了，门一开我就撒丫子跑，你说吧。
[[密码是927042。|got_code]] | [[就这个数字了：927042|got_code_two]]


:: forgot_door
唔，是有点事。
我只是……
（啊哟，我的妈啊，真是囧死了。）
我居然忘记了出去要用到的新密码。
[[啊？别指望我！|dont_look]] | [[等一下，我记得。|recall_code]]


:: no_jillion
绝对没夸张，宇宙里的星星比这个数字还多呢。
要是我小心点儿的话，这艘船不会在这里，在它周围一亿颗星星间，炸成碎片。
[[whats_after_mix]]



:: not_sure_ask
比方说……可能是那些海军陆战队员？
<<if $don_aries_bos_visited is true>>或者是唐纳德、阿里思，开启了残暴野兽模式？
那就不！妙！了！
<<elseif $don_aries_visited is true>>或者是唐纳德，开启了残暴野兽模式？
那就不！妙！了！
<<else>>那就不！妙！了！<<endif>>
<<if $artesaout is true>>或者会是阿特沙医生，醒过来了，而且暴跳如雷？
<<else>>或者会是阿特沙医生，在满世界玩疯子跑酷/裤？（哦，他只穿短裤，那是跑短裤？）<<endif>>
因为我没有每天吃个苹果，所以他这个医生不远离我？
啊哟，基本上就是，不管门外头是谁，我都不！想！见！
[[好吧，那你就别问是谁了。|keep_quiet]] | [[哎，我真！的！想知道是谁。|ask_who_plan]]


:: ask_who_plan
好吧，我正施展轻功去门口。
我听得外面那个人一直在输密码。
嘿！是谁？
然后……
……一片安静。
死寂。
我想过可能得到的答复里……这可真是我最不想要的那种啊啊啊。
[[继续去干你的正事吧。^别被这吓得失魂落魄的，你还有要紧事呢。|back_to_project]] | [[跑出去时用上速度与激情。^等你要出去时，你一开门就冲，别回头看。|fast_exit]]


:: awake_captured_drill
<<set $maploc = "galley">>
呃，发生了什么事？我在哪里？
哦，还是厨房。
感觉……真的很怪异。就像是我有部分……没完全回来似的。
我不能……
……奇怪。我可以看到我的腿，好好长着，和以前一样。
可是我却不能移动，甚至都感觉不到我的腿。
这……太诡异了。
海军陆战队员也在这里。
克鲁齐格、基奥、德∙雷。
这些怪名怪姓的家伙。
这些绿眼睛的……力量超强的……怪物……
朝我走过来，拿着小小的……寄生怪……
……我不想尝那味道，我不喜欢他们那样
不
哦，不
哦，天
完蛋了
不能相信我在那颗卫星上打败了它们
但它们竟然追我到了这里。
……该死。
<green>来吧，泰勒。</green>
<green>反抗是毫无意义的。</green>
<green>张大嘴巴。这会让你痛一下下。</green>
<green>很久，很久的一下下。</green>
啊啊——
啊
<<set $turnedgreen = true>>
[[goodbye]]



:: plan_ready
呃……
我肋骨好痛，心在狂跳。
感觉要吐出来了。
除了，我好久没吃东西了……所以也什么都吐不出来。
我觉得我的肚子里塞满了反物质。
我有个新创意！我要吐出虚无，然后让白星号因为自身重力向内塌陷。
哇，科学！
[[什么鬼计划！|terrible_plan]] | [[你现在人在哪里？|where_right_now]]


:: ready_grabbed
<<set $maploc = "drill">>
哇啊！
偶滴神啊！偶滴神啊！偶滴神啊！
他们中有一个……抓到了我的手肘……以为把我拿下了……
我差点就跑不脱了……我不行了……
……我跑不到准备室。
我没办法把他们弄回他们的飞船上，还不被他们抓住。
他们实在是太太太太快了。
[[你能行的！^我相信你！你一定要实施你的计划！|plan_ready]] | [[你现在人在哪里？|where_right_now]]


:: run_check
他们……说真的，他们根本就是乱输密码。
一遍一遍，不屈不挠。
他们按得越来越快了……我要被吓出翔了。
他们还要这么按多久，才——
哦，见鬼！不会吧。
[[怎么了？|what_door]] | [[一切还好吧？|what_door_2]]

:: what_door_2
[[what_door]]

:: launching_taylor
好了，我进逃生舱来了。锁死舱门，发射次序已经开始了……
……啊哟，我真希望夏帕德之前讲解的时候， 我哪怕上了一！点！点！心……
……她提到过要先把这玩意儿上头的信标启动……
……有个红灯——对了，在这里——
当信标启动的时候，会从稳定红光变成闪烁绿光。
究竟怎么才能把你货……等等，是不是我需要在那外面先做点什么？
哦，晕死，玛瑞走之前我应该问她的。
因为，要是……等下……
……没有信标的话，逃生舱就不会发射信号……
……也就不会有人来寻找和营救。
逃生舱里既没有食物也没有饮水。
过不了多久，它就要脱离白星号……
……我也没有办法……
……与你再联系了。
[[泰勒，我很难过。|sorry_buddy]] | [[如果有办法的话，我一定要阻止这一切。|sorry_buddy_2]]


:: shep_alone
她要是不！能！照顾她自己的话，怎么可能做到船长的级别？
我……我只能寄希望于她比谁都更了解这艘飞船……
……也就是说，她知道逃生舱的位置……
……必要时，她会上来这里，使用逃生舱。
同时……
[[go_in_pod]]


:: dumb_code
是啊，算是吧。
唔……我看我得随便乱按数字了。
我基本上肯定，第一个数字是9……
……也就是说数字的组合减少到10万个了。
不需要几个月，只需要在这里呆个几周就可以了！
我还有这么多吃的……太绝了。看来我算是准备好了。
[[等等，我记得密码。|recall_code]] | [[你打开门的话，记得把我喊醒啊。|wake_up_solve]]


:: dont_look
我以为你会帮我记下来的！
（我是说，我想当然以为，哎，我不也没记下来嘛……）
有个……9……难道是个眨眼睛小人儿……坑爹啊……
[[等一下，我记得。|recall_code]] | [[哎，咱俩都二到家了。|dumb_code]]


:: whats_after_mix
下一步是离开厨房——
不知道门外头的是谁，他们还在不在——
<<if $minerfight is true>>然后找到那些海军陆战队员，还有所有被附身的船员……
……让他们追我，一直追到准备室里（我要小心别让他们抓！到！我）。
<<else>>然后让那些海军陆战队员追我，一直追到准备室里……
……我要小心别让他们抓！到！我。这还真是要点技巧啊。<<endif>>
<<if $backpack is true>>好了，炸药已经稳稳当当地装在我的背包里了……
<<else>>好了，我要努力把炸药攥紧了（一定要拿稳当了）……<<endif>>
……现在，我要出——
我勒个去。
[[出什么事了？|forgot_door]] | [[你还好吧？|forgot_door_2]]

:: forgot_door_2
[[forgot_door]]

:: mix_done
<<set $explosive = true>>
哈，哈，太强了！我有四小罐自制土炸药！
希望我不会被炸瞎了眼。
好了，第一步大功告成。只剩下一亿步要走了。
[[接下来干什么？|whats_after_mix]] | [[一亿步，你也太夸张了吧。|no_jillion]]


:: finish_mix
回来干手头的工作了。
把多余的液体倒掉，收集硝石结晶……
……把结晶弄干碾碎，混上糖。
这又要花好久——科学确实酷死了，也可以慢得让人气死了。
简直是让重金属摇滚粉丝坐《罗马假日》里奥黛丽∙赫本开的小摩托车。
[[delay 30m^泰勒在工作|mix_done]]


:: back_to_project
好吧，好吧，你的建议不错。
我先笑纳了，要是我的手止住不抖的话，我就用。
[[finish_mix]]


:: fast_exit
好主意。
我要把全副心力注入四分之一个秒差距那么长上。
[[finish_mix]]


:: better_plan
更好的计划？
<<if $icepack is true>>……是啊，你知道吧？
我说不定还真有。
我只需要到厨房去……
……而且看来我还要绕条远路。
[[delay 45m^泰勒在走路|go_to_galley]]
<<else>>……没了，我可想不出招儿了。
也许下回吧。
你懂的，等下回，我困在飞船上，跟被外星怪物附了身的海军陆战队员在一起。
咱俩都知道，像我这么倒霉的人，一！定！还有下回的。
我就是这个星系西旋臂里的布鲁斯∙威利斯。
虎胆龙威，逆天了！
[[go_to_pods]]<<endif>>


:: back_to_ready
<<set $maploc = "hall">>
好的，收到。
我要回到外头走廊里，在我
啊啊啊
被
偷袭了
士兵们
从后面
攻击了我
[[delay 1h^泰勒失去了知觉|awake_captured_drill]]


:: rest_or_move
我懂我懂。
但是，就一分钟，行不行？
我两眼发黑，完全扛不住了。
我知道有大事要办，但是我真的需要休息一两分钟！正好这里有地方……
[[别休息。“去拼搏才能胜利。”^“相信自己你将超越极限，超越自己。”|back_to_ready]] | [[好吧，你歇一下吧。你这个胆小鬼。|rest_wuss]]


:: terrible_plan
你只是因为没有先想到，在眼红我。
[[好，好，你快走行不行。^言归正传，快把他们引去准备室，快点！|rest_or_move]] | [[你现在人在哪里？|where_right_now]]


:: where_right_now
我在……钻机控制室。
这里有巨大的钻机——当然有啦；还有控制钻机的电脑设备——明显的事嘛。
这是个房间——我尽说废话。
所以这里叫“钻机控制室”。
我进来了，用全宇宙最快速度把门锁密码给改了……
……但是那些怪物海军陆战队员们就在门外。
他们知道我在这里头，我看他们一时半会儿不会挪窝了。
<<if $explosive is true>>[[你不就是这么计划的吗？^你要把他们领进准备室。你不正需要他们追赶你吗？|ready_mission]] | [[能躲多久就躲多久。^你有这么件大事儿要办，你要保证有时间，尽量准备好。|ready_mission_2]]
<<else>>[[no_explosives_plan]]<<endif>>

:: nonfirewall
我不知道……怎么办。
我不知道把门锁死的密码……
……既使我锁死了门——万一那些士兵们，被附了身，但还保留有足够的记忆……
……他们会马上就把门打开的
好吧，泰勒，虽然眼下的情况简直是前所未有地逆天了，你都要保持镇定
坚持住
手持哈龙灭火器——只是需要拿点什么来——制造点冲击力
死了死了——来了一个——他们马上都到了
把灭火器对准她——在椅子上敲掉灭火喷头
简直神了
居然有用
哈！哈！哈！果然是神器
简直完美
逼她向后退了半条走道
现在驾驶舱——归我了
我要解开磁锁
给我一分钟
[[太好了！科学又胜了一回！|mag_locks]] | [[祝你成功……快点！|mag_locks_2]]

:: mag_locks_2
[[mag_locks]]

:: no_explosives_plan
好吧。
我需要个计划。
我得把我这空空荡荡的锦囊里头的东西都倒出来，看看能不能就拿锦囊当妙计使。
[[能躲多久就躲多久。^别着急，仔细想个好主意。|bad_plan]] | [[我看你这下麻烦了。|kinda_screwed]]

:: kinda_screwed
是啊。
我对你的妙计进行了深思熟虑……
……决定全盘接收了。
太感谢你对我的了解与信任了。
[[bad_plan]]

:: bad_plan
哎，等我几分钟。
我要使劲儿想想。
[[delay 5m^泰勒在使劲想|bad_plan_two]]

:: bad_plan_two
是这样的：钻机控制室有一个好处——
我是说，除了这里有钻机、有控制器、还是个宽敞房间之外——
就是这里有各种电脑系统和显示设备。
甚至有一个动态地图，也就是说，我可以看见飞船上每个人所在的位置……
……只要他们穿戴好了标准宇航服或防护手套……
……看来这里人人——包括那三个不速之客——都在地图上
要是你懂怎么黑进系统——这点我对自己还有点信心——
你就可以控制门的主控系统，在钻机控制室里开锁关锁。
这一点，在我看来，就要大显身手啦！
[[你就这么点……计划了？^感觉不像你想清楚透彻了嘛。|whole_plan_two]] | [[我有点迷糊了。|little_lost]]

:: whole_plan_two
嗯……这可！不！是！一点点。
也不仅仅是“开锁关锁”那么简单。
你听我给你细细道来。
[[plan_detailed]]

:: what_door
那气阀轻声发出的“嘶—哒”的声音。
我对那种声音非常熟悉，瓦里亚号上有，这艘飞船上也有。
那说明门快要滑开了。
也说明，不管外头的是谁……他们猜！到！密码了。
一百万分之一的机会。
……该死。
[[door_open]]


:: drill_shep
早知道应该在厨房停一下，拿袋面包的……
……这样的话，我走迷宫时，还能留点面包屑当线索。
对，对！我知道！我把格林童话和希腊神话混为一谈了。
……可是，我说啊，如果现在不是长篇大论……
……坎贝尔“元神话”和小说里真相探求者的高度这些话题的最佳时间，那么
啊，我滴神啊
脚步声！很多脚步声！
[[躲起来！|hide_drill]] | [[对他们演讲吧！|discourse_drill]]


:: rest_wuss
嘿，除非你现在也是被三个寄生怪附身的当兵的追杀……
……不然就少对我指手划脚，就少一点点行吧？
好在你总算让我停下来喘了口气，谢了。
我需要几分钟来定位，也许要重新分析下形势。
[[delay 2m^泰勒正在休息（像个胆小鬼）|where_right_now]]

:: ready_mission_2
[[ready_mission]]

:: ready_mission
是啊，我是说，确实是，我得先引诱他们去准备室……
……引他们穿过机顶舱口，回到他们的船上去……
……然后在我打开磁锁的时候，不能被他们抓住……
……接着把他们的船和白星号成功分离……
……再开着他们的飞船，去U33J6号行星轨道附近的黑洞……
……然后在刚刚通过事件视界时，引爆炸药……
……这样，我就可以彻底摧毁这三个被附身的海军陆战队员了……
……同时彻底摧毁他们回到地球的机会，然后……然后……
……我滴神啊，这简直是不可完成的任务。
他们比我高大得多，敏捷得多，他们人多势众，而我单枪匹马。
这绝！对！没戏的。
[[可你别无选择。|that_or_nothing]] | [[我对你有信心。^你之前也成就过疯狂的事业，我知道你这次也行的。|crazy_stunts]]


:: crazy_stunts
不过说真的，你帮我打气真的很有用。
狂人往往需要疯子在一边当拉拉队。
现在我们既然是一条绳上的蚂蚱了……
……所有对我的加油鼓励我都会照单全收的。
[[加油！加油！|cheers]] | [[再和我说说你的计划。|cheers_2]]

:: cheers_2
[[cheers]]

:: cheers
好的，好的，我会加油！
让我想想，我还能跟你再讲点什么呢？
关于我的土炸药，我之前没说——
主要是因为我不想你太操心——
事实是，当然了，一旦我登上那艘军舰……
……我就得找个机会点燃它。
你肯定是想尽量减少飞船上的明火。
（除非你是在飞船上做明火实验……
……要是那样的话，你敞开了干！）
[[哈哈，明火当然要敞开啦。|fire_away]] | [[那你的计划是怎样？|fire_plan]]


:: fire_plan
我知道，阿里思的私人用品里有一个旧的芝宝打火机。
他爸从一期《传道士》的旧漫画里得的灵感，传给他的。
上面刻着一句话，读出来可不雅。
总之，灵感来源一点都不重要。
重要的是，希望我足！够！幸运……
……那里面还有足够打火的打火机油。
[[前提是“足够”幸运。|lucky_dummy]] | [[既崇高又漏洞颇多的计划。|noble_flawed]]


:: lucky_dummy
我已经说了，这可是个铤而走险的计划。
我要先用一罐子炸药，挡住那些士兵们……
……让他们一时半会儿进不了驾驶舱，这样我能规划一条去黑洞的航线。
然后在飞船快到达事件视界之时，我把剩下的炸药点燃……
……也就是说，把那艘船炸得个灰飞烟灭。
[[不太……行得通嘛。|unlikely_plan]] | [[你确定能行？|event_time]]


:: unlikely_plan
是啊，当然了，当我大！声！说！出来的时候。
很多计划，在掺和进第二个人时，就告吹了。
[[good_news]]


:: no_fire
拜托，哪部好片儿，不带硝烟的呢？
但是为毛我还要找火啊，火还不是手到擒来？
就在这里，在这间钻机控制室里……
……手边就有各种钢材，嘿，你不会真不懂吧？
这里有钻出来的一堆堆岩石矿石。
包括这个可爱的，光滑的，褐色沉淀质隐晶质石英！
[[讲人话，好吧？|what_rock]] | [[你真是岩石呆子。|what_rock_2]]

:: what_rock_2
[[what_rock]]

:: no_doc_joke
你有空就看点动画片吧。
能让你重新审视人生。
[[continue_plan]]


:: discourse_drill
哦，哈哈。
我还是打算躲起来。
不过事后再聊，我们得讨论下你的态度。
[[hide_drill]]


:: hide_drill
一扇门，门！我需要一扇门而不是这么多墙！
拜托！拜托！
我看得到他们的眼睛，绿荧荧的，向我逼近！
再快点，泰勒，快点快点！
[[drill_chased]]


:: drill_chased
<<set $maploc = "drill">>
哇！
偶滴神啊！偶滴神啊！偶滴神啊！
他们中有一个……抓到了我的手肘……以为把我拿下了……
我差点就跑不脱了……我不行了……
我再也找不到夏帕德船长了。
我不该来找的。
我再也找不到她，也再也回不去逃生舱了。
[[保持镇定。集中注意。|code_door]] | [[别现在放弃！|youre_fine]]


:: awake_captured_drill_two
<<set $maploc = "drill">>
呃，出了什么事？我在哪里？
哦，还在钻机室里。
感觉……真的很古怪。就像我有部分……没完全回来似的。
我不能……
……奇怪。我可以看到我的腿，好好长着，和以前一样。
可是我却不能移动，甚至都感觉不到我的腿。
这……太诡异了。
海军陆战队员也在这里。
克鲁齐格、基奥、德∙雷。
这些怪名怪姓的家伙。
这些绿眼睛的……力量超强的……怪物……
朝我走过来，拿着小小的……寄生怪……
……我不想尝那味道，我不喜欢他们那样
不要
啊，不！要！
哦，天
完蛋了
不能相信我在那颗卫星上打败了它们
但它们竟然追我到了这里。
该死。
<green>来吧，泰勒。</green>
<green>反抗是毫无意义的。</green>
<green>张大嘴巴。这会让你痛一下下。</green>
<green>很久，很久的一下下。</green>
啊啊——
啊
<<set $turnedgreen = true>>
[[goodbye]]



:: fire_away
谢谢你，衷心感谢。这个笑话我想了好几个月呢。
记住一定要等到看大结局啊，剧透：
飞船里的明火是蓝调幽郁，大结局也同样是蓝调忧郁。
[[fire_plan]]


:: that_or_nothing
是啊。
……要是不这么干？
如果说我就从准备室最远的那头，直接逃跑……
……转道回去逃生舱，然后逃出这艘船？
[[太自私了点吧。|selfish_escape]] | [[至少你还能保命。|alive_escape]]


:: noble_flawed
“崇高，不过漏洞百出”算是我的特色哎。
[[lucky_dummy]]


:: event_time
对于我们的目的……？差不离吧。
[[good_news]]


:: good_news
但好消息是，计划有所修改：
我不必再冒风险去船员卧舱……
……去找阿里思的打火机，那玩意儿多半不能用了。
[[你不需要火了吗？|no_fire]] | [[你不打算引爆了？|no_fire_2]]

:: no_fire_2
[[no_fire]]

:: what_rock
这可是燧石，兄弟。
鉴于这东西能救我们所有人的命，请允许我在这里卖弄下。
我不觉得燧石能对人产生那么深刻的影响……
……自从《疯狂原始人》上映之后。
[[哈！笑话不错！|doc_joke]] | [[不懂。|no_doc_joke]]


:: doc_joke
那当然，那片儿反映了我们人类的进程啊。
[[continue_plan]]


:: code_door
好吧，好吧。
我要重置下门锁密码，赶紧了，免得他们进来。
谢谢提醒。
这也许就是几分钟的休息……
……和吞下一个绿色寄生怪而万劫不复的差别。
[[很高兴我能帮上忙。|glad_help]] | [[那你现在人在哪里？|where_right_now]]


:: youre_fine
我只是……
妈哟，要保持乐观，真心太难了啊。
我都吓得魂飞魄散了……我都有点想要放弃了。
而且，要追随这个念头走，可容易多了。
[[千万不要。|dont_listen]] | [[你忘记了什么东西吗？|forget_recode]]


:: wrong_door
他们让你忘记进入钻机控制室后，要重置门锁。
他们来了！
两边的门都开了！
我已经无路可逃
啊啊啊
当兵的抓住我了
从我
背后
[[delay 1h^泰勒失去了知觉|awake_captured_drill_two]]


:: reindeer_games
<<set $maploc = "hall">>
我只希望我的鼻子能亮。
这样的话，我在这要命的陷阱里面走，就轻松多了。
不管了。我要回到走廊去——
啊啊啊
一不——
小心——
当兵的抓住了我
从
背后
[[delay 1h^泰勒失去了知觉|awake_captured_drill]]


:: save_the_day
好家伙。
我真的只转危为安过一次，还弄得狼狈不堪。
而你现在竟然期望我能持之以恒。
那次只是侥幸，我告诉你，侥幸而已！
[[crazy_stunts]]


:: whole_plan
哎，被你这么一说，听着好不咋地哦。
不过是的，基本上这就是我全部的计划啦。
[[plan_detailed]]


:: brain_brawn
呃……是的，当然。
（我都懒得问你，咱俩哪个是哪个了。）
[[嗯，聪明的想法。|more_brains]] | [[所以那些系统是用来干嘛的？|systems_do]]


:: continue_plan
这就是钻机控制室的另一个好处啦——
我是说，除了正好到处是矿石之外——
这里有各种电脑和监控器。
嘿嘿，这就好玩了。
不是那种让船正常飞行的高端仪器……
……那些全都在驾驶舱，只有一！部！分！在工作。
驾驶舱系统如果是“大脑”的话，这些就是“肌肉”了。
[[有点像我们俩的关系嘛。|brain_brawn]] | [[所以这些系统是用来干嘛的？|systems_do]]


:: no_idea
不好意思，又在拿流行乱吐槽了。
动画片不是你的菜，是吧？
可以理解。
好吧，我要开飞船进入黑洞，所以……
等下——嘘！等一下。
看看监控器。
[[shep_hall]]


:: brave_toaster
我想，连喜羊羊都可以勇敢，我也没问题的。
（当然了，灰太狼其实也不是真坏，所以……）
[[你真是个呆瓜啊。|super_dork]] | [[不知道你在说什么。|no_idea]]


:: plan_detailed
如果那些当兵的真回地球，他们会把寄生怪传播回地球的。
而且如果他们待在白星号上的话……
……他们也会传染所有人……
……最后他们就会有两艘飞船，去实现他们的任务了。
所以我不能让他们掌握两艘飞船……
……唯一、也是万无一失的方法就是……
……驾驶其中一艘，把它摧毁到渣都不剩。
[[这……很英勇。|brave_toaster]] | [[没别的办法了吗？|no_other_way]]


:: glad_help
我比你还要高兴一倍。
说实话，我的脑袋就好像有重如泰山的信息量……
……塞进一个轻如鹅毛的袋子里。
你刚为我争取了时间，来喘口气，找准方位。
我要想想我这是在哪里，接下来要干什么。
[[where_right_now]]


:: forget_recode
忘记什……？
我不知道，有可能吧。
我翔都吓出来了，哪还能正常思考啊。
我会忘记什——
哦，不会吧！
我忘记修改钻机控制室的门锁密码了！
他们来了！
从两边的门进来了！
我已经无路可逃
啊啊啊
当兵的抓住了我
从
背后
[[delay 1h^泰勒失去了知觉|awake_captured_drill_two]]


:: dont_listen
是啊……我知道。
是那些眼睛里，有什么东西。
让你……绝望，让你想要缴械投降。
让你……
哦，不会吧！
[[怎么啦？|wrong_door]] | [[他们让你做了什么？|wrong_door_2]]

:: wrong_door_2
[[wrong_door]]

:: alive_escape
<<set $maploc = "hall">>
我还是挺很珍惜能“活着”的……
……希望我完成这项任务时，还拥有着这个状态。
好吧，我要去逃生舱了。
[[delay 20m^泰勒在走路|ambushed]]


:: selfish_escape
也许是吧，也许你没错。
不过，我申请入伙时……
……没有在“大无畏太空英豪”的那一项后面打勾啊。
没有人指望我来扭转乾坤。
[[我指望。|save_the_day]] | [[好吧，我看你说得对。^那就原路返回逃生舱吧，你已经尽力了。|alive_escape]]


:: little_lost
我不怪你。我刚才描述这里，这所有监控器……
……八成让你联想到了莎朗∙斯通的电影《偷窥》。
不过，在那部电影的场景里，实施我的计划不太理想。
不过，应该是最不理想。
肯定也绝对不能在那里给小屁孩们庆生。
好吧……不说土鳖段子了，我的计划是这样滴:
[[plan_detailed]]



:: systems_do
这里的系统是控制钻机的（废话），但是还有一个动态地图……
……所以我能看到船上的每一个人在哪里……
……只要他们穿着标准的宇航服或者防护手套……
……看来每一个人——包括那三个新来的——都穿戴好了。
然后，要是你知道怎么黑进这系统——这点我对自己倒是有点信心——
你就可以从这里，进入门的主控系统，开关一切。
我直觉，这肯定会派上大用场。
[[你有地图和火了。^眼下，你就这点计划了？|whole_plan]] | [[我不是很明白。|little_lost]]


:: more_brains
所以……我八成算是……大脑了？
我就打算接收这个头衔了。
我跟你说说我这“八成大脑”计划，然后你就可以出来卖点体力了。
[[systems_do]]


:: super_dork
谢谢恭维。
你这只美羊羊，我会救你的！
等下——嘘！等一下。
看看这些监控器。
[[shep_hall]]


:: no_other_way
<<set $no_other_way_visited = true>>
我考虑过各种办法。
我想过把白星号上各个房间锁起来……
……把海军陆战队员们和阿特沙严格地隔离起来……
……不过他们要是坚持不懈地解锁的话，他们也许能胜过系统……
……原因很简单：我不可能无时不刻地保持清醒。
<<if $marilaunched is true>>就算有夏帕德船长帮忙……
……两个人轮流保持警觉……
……同时还要操纵整艘船，这绝对没可能。
<<else>>就算有夏帕德船长和玛瑞帮忙……
……三个人轮流保持时刻警觉……
……同时还要操纵整艘船，这绝对没可能。<<endif>>
<<if $explosive is true>>我也想过，炸掉钻头的固定装置，将钻头调转方向朝上…
<<else>>我也想过，弄点炸药什么的……
……把钻头的固定装置炸掉，将钻头调转方向朝上……<<endif>>
……然后让它穿过白星号的船顶舱门……
……然后一直穿透进军舰。
但是时间不够，而且，钻头可比我的命宝贵多了。
（说实话，比我整个人包上金子还值钱一千倍。）
所以，这是唯一一个有机会救阿雅船长的计划……
<<if $marilaunched is true>>……也能让夏帕德把白星号转向回去……
……趁玛瑞的逃生舱没走远，找到她。
<<else>>……还能保证夏帕德和玛瑞有一架功能齐全的船开回家……
……同时不用担心她们身后的怪物们。<<endif>>
等下——嘘！等一下。
看看这些监控器。
[[shep_hall]]


:: awake_captured_med
<<set $maploc = "medbay">>
呃，怎么回事？我在哪里？
哦！医疗舱，又来了。
感觉……真的很怪异。就像是我……有一部分没完全回来似的。
我不能……
……奇怪。我可以看到我的腿，好好长着，和以前一样。
可是我却不能移动，甚至都感觉不到我的腿。
这……太诡异了。
海军陆战队员也在这里。
克鲁齐格、基奥、德∙雷。
这些怪名怪姓的家伙。
这些绿眼睛的……力量超强的……怪物……
朝我走过来，拿着小小的……寄生怪……
……我不想尝那味道，我不喜欢他们那样
不要
啊，不！要！
哦，天
完蛋了
不能相信我在那颗卫星上打败了它们
但它们竟然追我到了这里
该死
<green>来吧，泰勒。</green>
<green>反抗是毫无意义的。</green>
<green>张大嘴巴。这会让你痛一下下。</green>
<green>很久，很久的一下下。</green>
啊啊——
啊
<<set $turnedgreen = true>>
[[goodbye]]



:: ambushed
<<set $maploc = "hall">>
啊啊啊
一不——
小心——
那些当兵的，就等在医疗舱——
伏击——我
当兵的抓到我了——
从
背后
要——逃走——
快——通知
其他人
[[delay 1h^泰勒失去了知觉|awake_captured_med]]


:: shep_hall
士兵们已经包围了钻机控制室的后门。
他们正在按密码要闯进来，一百万分之一的机率。
但是在前门附近……夏帕德船长正在走廊里。
要是我能靠近她……
……稍等下。
[[delay 1m^泰勒在跑|taylor_shep]]


:: taylor_shep
夏帕德船长？
快点，快进来！
<shep>泰勒！哦，哦，谢谢老天，你还活着！</shep>
……是啊，还活着。
<shep>你的眼睛，你的眼睛……</shep>
……熬夜都熬出血丝了。不过不是绿色的，要是你是在说这个的话。
<shep>谢谢老天。</shep>
<shep>还有，还有谁和你在一起吗？</shep>
没了，就我。
<<if $its_bos_visited is true>>我，呃……我知道他们杀了博斯。
简直惨不忍睹。
<shep>是啊，我……我看到了他的腿。</shep>
<shep>我都不确定还有谁活着。</shep>
<<else>><shep>我都不确定还有谁活着。</shep><<endif>>
<<if $don_aries_bos_visited is true>>唐纳德被感染了。
阿里思也是。
<<else>>唐纳德被感染了。<<endif>>
<<if $artesaout is true>>我在医疗舱把阿特沙医生打晕了……
……他想把寄生怪——绿怪物——塞进阿雅船长的喉咙。
<<else>>阿特沙医生……他就算没被感染的话，也差不多了。
他竟然想把寄生怪——那种外星绿怪——塞进人的喉咙。<<endif>>
<shep>只剩下玛瑞了。</shep>
<<if $marilaunched>>是的，玛瑞已经走了。
她的逃生舱发射了，不过没问题，把她找回来应该不难。
<shep>还有一个逃生舱上标了你的名字。</shep>
<<else>><shep>她没事，她正关在驾驶舱里，努力让系统恢复运作。</shep>
<shep>有个逃生舱上标了她的名字，还有个是你的。</shep><<endif>>
<shep>我也会使用一个……然后把其余的都抛弃掉。</shep>
<shep>变态阿特沙嘛，他就滚下地狱吧。居然想害人……</shep>
<shep>哦。</shep>
是啊，“哦。”
[[什么“哦”？|pod_problem]] | [[她刚意识到……^她不是船上唯一的船长。|pod_problem_2]]

:: pod_problem_2
[[pod_problem]]

:: pod_problem
阿雅船长得醒过来——得有意识——才能使用逃生舱。
逃生舱里放不下她身上那些医疗设备。
<shep>泰勒，我……我不知道该怎么表达。</shep>
<shep>在那颗卫星上，为了让她活下来，你出生入死……</shep>
<shep>……让你再经历这样的噩梦实在是不公平。</shep>
<shep>没有人应该被迫做这种选择……</shep>
<shep>……尤其这还涉及到你的长官。这太残忍了。</shep>
是啊。
是啊，千真万确。
[[泰勒，我真为你难过。|sorry_taylor]] | [[你已经尽力了。|done_it_all]]


:: sorry_taylor
我……
我明白你想安慰我……
……不过我不需要怜悯。
没关系，在这些玩命逃生，跌跌撞撞，命悬一线中……
……我有足够时间理清思绪。
我知道我们该怎么做。
[[delay 3m^泰勒正强忍不哭|letting_go]]


:: done_it_all
如果她最后死了……
……那我会永！远！不！认可自己“尽力”了。
<shep>泰勒……我明白。真的。</shep>
<shep>飞行日志会记录下来这是我的决定。</shep>
<shep>你不必用余生来背负这沉重的十字架。</shep>
[[sorry_taylor]]


:: good_friend
我简直是最铁！胆！忠！心的哥们儿！
麻烦给我发个奖状吧。
好吧，不说了，开始行动！
[[plan_in_motion]]

:: bos_rules
没事。
你可以给我造一座几百英尺高的塑像……
……记住用整块大理石啊？
放在博斯的纪念小铭牌旁边。
[[你还真是忠义呢。|good_friend]] | [[好了，快行动吧。|plan_in_motion]]


:: ego
我正在说博斯呢！
不是我！是博斯！
见鬼。
[[哦，对，博斯。|bos_rules]] | [[真不好意思。|bos_rules_2]]

:: bos_rules_2
[[bos_rules]]

:: fire_marine
那些当兵的刚刚
跨过了火——在门那里
哦，天
克鲁齐格。
全身是火
向我冲过来了
阻止——
他
不要！滚！开！
啊啊啊啊
烧起来了
他在——
烧我
停——
停——手——
停——
[[goodbyefire]]


:: letting_go
好吧，我有个计划。不算完美。
说实话，跟一大块瑞士奶酪比，漏洞只多不少。
但不管怎么说，我们就靠它了。
咱们打个商量？
<shep>通常情况下，我一般不会……</shep>
<shep>……就有关我的船和队员们的福利，跟人打商量。</shep>
<shep>不过咱俩都明白：现在可不是“通常”情况。</shep>
<shep>好吧，那你说说，你在打什么主意，泰勒。</shep>
<<if $no_other_way_visited is true>>好吧，那么，你已经都知道了。
现在我要跟她说了，这大约要花几分钟才解释得清。
我待会儿再和你联系……
……等我确保她会热情拥抱我的计划时。
[[delay 2m^泰勒在等待|hell_no]]
<<else>>[[nitty_gritty]]<<endif>>

:: hell_no
<shep>不行。</shep>
<shep>绝！对！没门儿！</shep>
<shep>除非我死了。</shep>
[[我还以为她会欣赏！|likes_plan]] | [[我就知道她不同意。|sense_conflict]]


:: nitty_gritty
好吧，是这样的，我打算征用那艘军舰……
……把三个士兵全赶回军舰上，仅仅用炸药牵制他们……
哎，我还是和盘托出吧。
我考虑过各种方法。
我想过把白星号上各个房间锁起来……
……把海军陆战队员们和阿特沙严格地隔离起来……
……不过他们要是坚持不懈地尝试解锁的话，他们也许能胜过系统……
……原因很简单：我不可能无时不刻地保持清醒。
<<if $marilaunched is true>>就算是有你的帮助，夏帕德船长……
……我们两个人轮流保持时刻警觉……
……与此同时，还要操纵整艘船，这绝对没可能。
<<else>>就算是有你和玛瑞的帮助，夏帕德船长……
……我们三个人轮流保持时刻警觉……
……还要运作整艘船，这绝对没可能。<<endif>>
<<if $explosive is true>>我想过炸掉钻头的固定装置，把钻头调转方向往上……
<<else>>我想过弄点炸药什么的……
炸掉钻头的固定装置，把钻头调转方向往上……<<endif>>
……然后让它穿过白星号的船顶舱门……
……接着一直穿透进军舰里。
但是时间不够，而且，钻头可比我的命宝贵多了。
（说实话，比我整个人包上金子还值钱一千倍。）
所以，只有这个计划，有希望救下阿雅船长……
<<if $marilaunched is true>>……也能让你把白星号转向回去……
……趁玛瑞的逃生舱没有走远，把她找回来。
<<else>>……保证你和玛瑞有一架功能齐全的船，能开回家……
……同时不用担心你们身后的怪物们。<<endif>>
[[hell_no]]

:: dont_do_this
什——
你没拿我开涮吧？
要是你觉得我现在会放弃的话……
……那你也太不了解我了。
你让我逃生，我感激不尽，但是我不会走的。
我要撑到最后一刻。
[[那么，祝你好运。|good_luck]] | [[别摔断了腿。|break_leg]]


:: plan_in_motion
<<if $ievasuit is true>>整装待发。头盔戴好。
（万一他们带着寄生怪冲上来的话，头盔应该能帮我争取一点时间。）
<<else>>准备好跑了。真希望我穿着宇航服戴着头盔呀。
（要是我和寄生怪之间还有一道保护的话就好了，你懂吧？）<<endif>>
<<if $pulsegun is true>>我有把脉冲枪，应该还有能量发射……
……不过我最好别用。
我担心万一上了枪，他们群殴我……那我就直接死翘翘了。
<<else>>手无寸铁，只仰仗我爆表的智商和嘴炮……
……不过说真的，我不知道那些绿眼睛怪物，领会得了不。
我看这些外星怪物都看不懂《博物馆惊魂夜》。<<endif>>
<<if $explosive is true>>我确！实！有炸药……
……我还有燧石和钢，要是炸药是大反派的话，这两个玩意儿就是爪牙。
要是要再往清单上加东西，我还可以加上爵士乐和摇滚乐。
<<else>>我的自制炸药的宏伟计划失败了……
……只不过是巨大挫败的冰山一角。<<endif>>
<<if $tunguskite>>我尽量拿了些通古斯石随身带着。
此时此刻——鉴于我正在飞蛾扑火——我也不懂为什么——
不过带着这些晶体，感觉有点像是带着幸运符。
（囧死了，我自从拿了它们运气就没好过。）
那么……差不多了。
<<else>>那么……差不多了。<<endif>>
[[祝你好运，泰勒。|good_luck]] | [[你不需要这么做。|dont_do_this]]
//Bebop and Rocksteady are bad guys from Teenage Mutant Ninja Turtles.


:: plan_agreed
<shep>好吧。</shep>
<shep>我反反复复地考虑了这个计划……</shep>
<shep>……实在没有更加合理的方案了。</shep>
我同意，船长。我能把军舰开好，冲向黑洞——
尤其还有黑洞巨大的引力配合——
可是，我可没有本事，把白星号返航，去接玛瑞……
……或者即使我能把白星号开回地球，我也搞不定安全着陆。
你必须留在这里。确保好人们都平安……
……坏人们都得到惩罚……
……牺牲的人得到缅怀。
[[自恋啊。|ego]] | [[低调点更高尚。|ego_2]]

:: ego_2
[[ego]]

:: be_honest
我很怕
怕
进入——黑洞
我——也曾经恐惧过
但是这种——未知的
存在——这样的恐惧
笼罩着我的——灵魂
我不能
等下！什么？！
[[fire_marine]]


:: keep_self
哦，好吧。
感觉这是——
最佳时机了
也许你不想——
但——良心——
等下！什么？！
[[fire_marine]]


:: sense_conflict
我料到你会反对的。但是请这么想，船长。
几个星期前，我的飞船四分五裂。
我撞到了一颗荒凉的卫星上，那里不管是环境，还是温度都能杀死我……
……结果，居然还有，能搅乱时空的外星怪物……
……也想要杀死我。
我没让它们得逞。
因为我就是头倔牛。
现在，事情到了这个地步……
……你真觉得，你能说服我放弃吗？
<shep>可恶。</shep>
<shep>可恶，泰勒。我真讨厌这点，可是你说的有道理。</shep>
<shep>这也忒疯狂了，忒复杂了，不过最终……</shep>
<shep>……这确实能解决我们所有的问题。</shep>
<shep>就像是鲁比∙戈德堡画的机械装置一样，怪诞复杂，还偏偏说得通。</shep>
哈！
船长，你这么一说，让我确信……
……我正在为值得的人冒生命危险。
[[delay 2m^泰勒正在密切关注夏帕德|plan_agreed]]


:: likes_plan
嘿，你很擅长读心术嘛。
你要不要猜猜看，我要竖哪根手指头？
<shep>泰勒，别冒傻气了。我不会让你这么做的。</shep>
[[sense_conflict]]


:: break_leg
我也许会的，鉴于我马上就要在黑暗里全速狂奔了。
你真是哪壶不开提哪壶啊。你真是残忍啊，而且——
哦，你不会是拐着弯子，祝我成功吧？
[[good_luck]]


:: good_luck
真心谢了。
好吧，夏帕德船长要潜回驾驶舱了……
……同时，我也要出发去准备室了……
……以拳捶墙，放声高歌……
……就像贾德∙尼尔森在《早餐俱乐部》那样吼几嗓子：
“我要当空中游侠！我要出生入死！”
在内心深处，我想我们都怀疑那些外星绿怪……
……只不过是一群漫画反派罢了。
那么……
……豁出去了。
[[delay 10m^泰勒在边跑边唱(又吵又走调)|ready_last]]


:: big_bang
是啊——有道理
应该——很快能
到U33J6号，然后
到黑洞
我能——坦白吗？现在——就咱俩之间？
[[当然了。|be_honest]] | [[别，别说出来。|keep_self]]


:: all_good
驾驶舱门——
正在燃烧——那些士兵们死到临头
战得更狂暴了——我挡不住了
应该再点燃一些炸药
还是留着——别用？
[[再点燃一些。^最好击退他们，防止他们搞破坏。|explode_another]] | [[节约炸药。^保存火力，保证最强效果。|big_bang]]


:: hurry_hatch
对！我知道要快点打开舱门！不必你说！
我可不是电视剧《迷失》的制片人！
[[open_hatch]]



:: open_hatch
<<set $maploc = "hall">>
呃呃呃呃啊啊啊啊
好了！终于！
好了，我上到了气阀室。
留下背后的门打开着，好引诱他们轻易跟上来。
等我到了白星号外面，我们之间的通讯可能会有点断断续续。
当然了，我很抱歉……但是我也没办法。
[[快打开军舰的门！|marine_door]] | [[你能看到那些士兵吗？|see_marines]]


:: ready_last
<<set $maploc = "ready">>
我到了。最后一次到准备室。
<<if $explosive is true>>膝盖快撞飞了。
真希望我还有冰袋，但是我用它来做火药了。
不听老人言，对吧？
<<else>>膝盖快撞飞了……也不是新鲜事了。<<endif>>
我能听到海军陆战队员在后面跟着。
听着都不像是人在走路。
简直像一群听到肉罐头打开的饿狗。
真是人的话，不会有这么快，这么灵活。恐怖至极。
我只……需要……打开船顶舱门……
[[快！|hurry_hatch]] | [[他们有多接近？|how_close]]


:: explode_another
哎。
我——有点——紧张——
是不是用了太多
但是我肯定——不想要——当兵的
接近
驾驶舱
等我一下
[[delay 2m^泰勒在点火|second_fire]]


:: liftoff
好了！
好！了！
我们起飞了！
再见了，白星号
谢谢你救了我
现在是我——报答你的时候
好——只需要重新制定航线
导航设备——前往U33J6号星球
再往前——飞一点点
带着这堆破烂——玩意儿飞往
黑洞的——中心
[[delay 3m^泰勒在修改程序|all_good]]


:: fire_works
难以置信啊！
居然成功了！
哈！哈！哈！我滴——神啊
真是完美无缺
火烧了半条——走道
驾驶舱里——只剩我
给连接两艘飞船的磁锁消磁——然后
等我一下
[[delay 2m^泰勒正在工作|liftoff]]


:: firewall
好主意
拿一点点炸药——放在门外面
拿燧石击钢条
来吧
来！吧！
哦哟，死菜了。
那些当兵的来了，他们来！了！
快点燃——要死了——快点燃
基奥——就在这里
完蛋了
真——抱歉——
我失败了
我
哇喔！
[[delay 30s|fire_works]]


:: how_close
比我希望的近得多。
我没法说确切的距离，因为那样的话我还得去找卷尺……
……然后还要过去，喊他们帮忙揪住卷尺的一头……
……然后他们会攻击我，把那寄生怪塞进我嘴巴里。
所以我不能给你确切的数据。
（是啊，打从四年级开始我就用这同样的借口了。）
[[open_hatch]]


:: second_fire
再来点——烈焰！
走廊那头的士兵们——正在舔伤口
离冲进黑洞——
只剩下一点点时间了——
所以我想——该说再见了
[[我不想和你再见。|no_goodbye]] | [[我不想你离开。|no_leave]]


:: mag_locks
好的。找一下
开始了。多重程序——四道锁——必须逐步操作
开始——解开第一道锁——
快啊，我滴神啊——得等多久，这玩意儿才能消磁啊？
可恶的磁铁——到底怎么弄的？
好了！
一个搞定——还有三个
啊啊啊啊啊啊
士兵们
抓住我了
从背后
感觉……真的很怪异。就像是我有部分……没完全回来似的。
能看见我的腿——但是不能移动——也不能感觉到
<<if $explosive is false>>可恶！早知道——该带点炸药
造！点！炸药！
弄点什么东西阻！挡！他们
那些海军陆战队员——在这里
<<else>>那些海军陆战队员——在这里<<endif>>
朝我走来
——拿着寄生怪
不想要——吃——恶心
不要
哦，不
哦，天
完蛋了
不能相信——我在那颗卫星上打败了它们
但它们竟然追我到了——这里
该死
<green>来吧，泰勒。</green>
<green>反抗是毫无意义的。</green>
<green>张大嘴巴。这会让你痛一下下。</green>
<green>很久，很久的一下下。</green>
啊啊——
啊
<<set $turnedgreen = true>>
[[goodbye]]



:: inside_cockpit
进驾驶舱！好的——首先该——做什么
<<if $explosive is true>>
[[解开磁锁。^先把军舰跟白星号分离。|mag_locks]] | [[设置火墙。^点燃些火药，防止那些士兵靠近驾驶舱。|firewall]]
<<else>>[[解开磁锁。^先把军舰跟白星号分离。|mag_locks]] | [[锁好驾驶舱。^想办法不让那些士兵接近你。|nonfirewall]]<<endif>>


:: cockpit_hall
好事是——这里有灯——事实上我还花了点时间——才适应了
不过我也发现，我们之间的通讯——受干扰了
那些海军陆战队员，他们——也来了
[[delay 2m^泰勒在跑|inside_cockpit]]


:: their_cockpit
……对，我……我的活。
还是交给我来吧。
[[delay 3m^泰勒在跑|cockpit_hall]]


:: marine_door
对，你太擅长给我下指令了……
……还尽指示些我知道要做的事情。
我很理解，在飞船上当后座驾驶员的滋味不好受。
往往离主驾驶的位置……几百万光年远。
好了……我把军舰的船舱门打开了。
现在我只要去他们的驾驶舱了。
[[前往驾驶舱。|their_cockpit]] | [[想清楚了！|their_cockpit_2]]

:: their_cockpit_2
[[their_cockpit]]

:: see_marines
我没看见他们，还没有。但是我听到他们的声音了。
我觉得我刚听到脉冲步枪的保险栓打开了。
他们发出尖锐、高昂的哀嚎声……
……算了，别废话了。
我只需要通过这扇门进入军舰。
然后……
成功啦！我把军舰的船舱门打开了。
该去他们的驾驶舱了。
[[前往驾驶舱。|their_cockpit]] | [[想清楚了！|their_cockpit_2]]


:: no_leave
我也——不想——离开
很想——活下去——
真！的！很喜欢——和你说话——
但我——不能当——狗熊
[[tell_me]]


:: no_goodbye
我明白。
就好像忍住——不说
就不会——发生——
然而这就是结局
没有别的——出路——
我只是做了我应该做的
因为
（根本不该——提起这个）
[[告诉我什么？|tell_me]] | [[你还是告诉我吧。|tell_me_2]]

:: tell_me_2
[[tell_me]]

:: still_choice
不行！
军舰上——没有逃生舱
我已经检查过了
我不会给他们——机会来
改变航线
我会和——
这艘船——一起灭亡
和他们一起
不管他们想——
还是不想——
[[hole_looms]]


:: hole_looms
这就是结局。
警铃大作
嘿——这个结局——就像开始一样
这噪音——
正把士兵们推向走道尽头
朝我过来
他们看上去
怕得要命！
很好——看见他们发光的——绿眼睛里
出现害怕恐惧
我们正在靠近事件视界
马上就要——上演大戏了
<<if $tunguskite is true>>只是需要——把火药倒出来
全部洒在背包里的通古斯石上
应该可以点场——大火
<<else>>只需要把——剩下的火药——全倒出来<<endif>>
用燧石击钢铁
士兵们正朝我冲来
时间
紧
迫
[[delay 1m|brightest_white]]


:: brightest_white
<<if $tunguskite is true>>这是我所见过的最耀眼的白光。
就像是一切停止了动作，永远都静止了。
每一簇火苗都完美定格。每一个士兵都暂停在跳跃中途。
宇宙里的每一颗星辰都在闪耀的瞬间凝固了。
还有这艘船，本该炸开，拉伸，扭曲……
……却保持着完美的静止。
但是它包围着我，像在给我一个拥抱。
时空自我折叠起来，给我一个欢迎的拥抱。每一个我失去的人都在那里……
……过去的，现在的，将来的，一直在那里。
当我向下看的时候，通古斯石正在发光。
跳动着。
闪耀着，它的晶体在我的掌心展开，溢出了我的手掌。
它们是如此不可思议的美丽。
我从它们的折射里看到自己，看到了宇宙，看到了宇宙之外。
然后，我感到有人拍了下我的肩膀……
……一个陌生的声音说，“嘿，泰勒……你想离开这里吗？”
[[goodbye_best]]
<<else>>[[other_ending]]<<endif>>


:: tell_me
驾驶舱里——有个监控器显示着——实况录像
船上的货舱里
装满了寄生怪
百万——千万——
假如这艘船有——任何机会靠近——地球
将是我们世界的——末日
我本来指望——
杀掉几个绿怪物
可是要杀光这么多
不可能
永不可能——有机会
[[你是个英雄。|you_hero]] | [[你在说胡话了。^当然你有机会，你现在也许还有。|still_choice]]


:: you_hero
别说了
我不是什么——英雄
我只是在做——
应该做的——事
你也会这么做的
这是为什么
我们成了哥们儿
[[hole_looms]]


:: other_ending
火，到处都是火。
一切都着了火。
我的身体在燃烧，我的思想、我的心都在燃烧。
时间在燃烧，空间在燃烧。
烈火漫天漫地地铺开，直至永远。
我制造了一场爆炸，轰！轰！烈！烈！
所有过去的，现在的，未来的爆炸。
我在最中心。
我点燃了烈火，我就是烈火，我让一切燃烧。
跟我一起，燃烧。
没有什么晶体还能阻止我们，没有什么通古斯石能改变我们的航道。
没有什么结构能把这个黑洞变成白光。
只有无穷无尽的地狱之火。
我就是地狱。
我们全都是！
[[delay 30s|more_alive]]

:: more_alive
真怪……
……我还以为我已经死了呢。
结果……我感觉比我这辈子啥时候都还要活蹦乱跳。
燃烧着勃勃生气，爆发着旺盛精力。
在黑洞的边缘，前往无限无穷的中途，在火海的最深处，欢跳。
我不怕死……
……因为我已经死过了。
[[goodbye_hell]]

:: goodbye_hell
<<set $end = "goodbye_hell">>
<<if $ievasuit is true>>[[ieva_fire]]
<<else>>[通讯中断]<<endif>>
你和泰勒之间的通讯中断。
外星绿怪的侵略力量已经被摧毁……
……它，和泰勒一起，将在黑洞的边缘爆炸，直至永恒的尽头。
另一个时间……另一个人生……也许事情会有所不同。
只是时间不对。
只是人生不对。
但是，泰勒不该有这样的结局……是吗？
[[delay 10s|legalese]]


:: goodbye_best
<<set $end = "goodbye_best">>
[通讯丧失]
你和泰勒之间的通讯已经丧失。
外星绿怪的侵略力量已经被摧毁……
……泰勒用通古斯石在混乱中制造了美景。
你指引着泰勒走向了最美好的结局……
……在所有宇宙中最美好的可能。
祝贺你，也谢谢你。
泰勒的冒险之旅才刚刚开始。
[[delay 10s|legalese]]

:: legalese
[SOS协议已启动]

[准备回放预录消息]

嘿！打个招呼……我是泰勒。
以防我中途出了什么差错，我先录了这段话……
你读到它，是因为我的宇航服以为我出事了。
我跟它说，你比谁都更清楚情况。
咱俩并肩作战这么久，我无比感谢你为救我所做的一切。
你是我身境困境时需要的人……哪怕我被困在里面，你进不来！

我肯定，总有一天，我会摆脱这个黑洞的——比这更糟糕的情况，我都能搞定，还怕这个？到时候，我会跟你一一道来的。
更何况，我知道，在这个庞大疯狂的宇宙里，还有人需要你伸出援手。
