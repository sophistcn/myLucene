select * from my_news;

begin
  for i in 1 .. 1000000 loop
    if i > 500000 then
      insert into my_news
      values
        (i,
         '近日，武汉持续高温突破40度，高温天气将一名大学生的被子甚至都烤糊了，可见气温之高。武汉高温烤糊被子连日高温突破40度公交自燃被子遭烤糊。武汉一名女大学生把被子拿出去晒，收被子时发现被子被烤糊了。近日武汉连续高温，最高都突破了40度。连日高温令人大呼受不了，武汉高温烤糊被子引热议，而前几天，武汉公交自燃事件也引起关注。');
    else
      insert into my_news
      values
        (i,
         '游侠网为单机游戏玩家提供最新单机游戏业界动态、国内外单机游戏下载、单机游戏补丁、单机游戏攻略秘籍、单机游戏专题等内容。坚守单机阵地,弘扬单机文化!');
    end if;
  end loop;
end;

select * from my_news t where t.news like '%国内%';
