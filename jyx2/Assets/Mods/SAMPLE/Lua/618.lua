Talk(180, "大人，您这招疾风烈焰掌杀伤力真是让在下大开眼界啊。");
Talk(61, "涂涂尔颂，你这招挑拨离间才玩得到位，这几个渡城的高手都被你弄废了，我今天还真是没打过瘾。");
Talk(180, "敌人已全部倒下，听大人指令。");
Talk(61, "屠城！");
jyx2_WalkFromTo(-1, 13);
Talk(0, "谁说全部倒下了？");
Talk(180, "哟哟，忘了还有一个。大人，这家伙你可以打过瘾。");
Talk(0, "想进渡城，除非从老子的尸体上跨过去！");
Talk(61, "这是个什么东西，我喜欢！");
if TryBattle(61) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    LightScence();
    Talk(61, "没想到渡城还有这种高手，下次再来。");
    Talk(180, "好的好的！");
    Talk(0, "滚！");
    jyx2_ReplaceSceneObject("", "NPC/岳不群", "");
    jyx2_ReplaceSceneObject("", "NPC/雪怪", "");
    jyx2_ReplaceSceneObject("", "NPC/四蛇儿", "1");
    Talk(101, "漂亮啊漂亮！");
    Talk(0, "你。。。你终于出现了。");
    Talk(101, "这次你不但找到了答案，还孤身抗敌守住了城门，真是让鬼都为你感动落泪啊。");
    Talk(0, "现在你是要带我去喝孟婆汤了是吧。");
    Talk(101, "他们都说我是冥界的幸运童子，还真是如此。");
    Talk(0, "什么幸运童子？");
    Talk(101, "冥间每年有一次重返人间的机会，今年这个机会给了我，准确的说应该是给了你。");
    Talk(0, "意思我可以不死了？");
    Talk(101, "也不知是你的行为感动了冥界，还是我这个使者给你带来的幸运，总而言之，我的鬼话随你信不信，你这次可以重返人间了。");
    Talk(0, "重返。。。人间？");
    Talk(101, "但是，不好意思，你要面临一个艰难的抉择。");
    Talk(0, "什么意思？");
    Talk(101, "重返人间有两种方式。第一种，就是保持你现在的状态，你的记忆不会消失，以陶六一的身躯继续活下去。");
    Talk(0, "那第二种呢？");
    Talk(101, "第二种，陶六一还是以前那个陶六一，灵魂和肉体都会活过来，但是莫穿林你的记忆会彻底消失。");
    Talk(0, "也就是说，陶六一会活过来，但我还是死了。");
    Talk(101, "没错，这已经是最幸运的了，因为莫穿林死了就是死了，陶六一可以活，你能选择的，就是以莫穿林的灵魂活下去，还是以陶六一的灵魂活下去。");
    Talk(0, "如果以莫穿林的灵魂活下去，那么陶六一这孩子就彻底死了，如果以陶六一的灵魂活下去，那么。。。我。。。现在就是我在人间最后的时间了。");
    Talk(101, "没错，你自己选择吧。");
    if ShowSelectPanel(0, "请选择以谁的灵魂活下去？", "莫穿林的灵魂", "陶六一的灵魂") == 1 then goto label1 end;
        Talk(0, "以莫穿林的灵魂活下去。");
        PlayMusic(1);
        jyx2_PlayTimelineSimple("[Timeline]6_选择莫穿林的灵魂", false);
        jyx2_Wait(40);
        ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
        BackToMainMenu();
        do return end;
::label1::
        Talk(0, "以陶六一的灵魂活下去。");
        PlayMusic(2);
        jyx2_PlayTimelineSimple("[Timeline]6_选择陶六一的灵魂", false);
        jyx2_Wait(40);
        ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
        BackToMainMenu();
do return end;
