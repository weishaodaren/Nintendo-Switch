#创建Nintendo数据库
SET NAMES UTF8;
DROP DATABASE IF EXISTS nintendo;
CREATE DATABASE nintendo CHARSET=UTF8;
USE nintendo;

-- 创建轮播图片表单
CREATE TABLE nin_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  imgUrl VARCHAR(64)
);
INSERT INTO nin_carousel VALUES
(NULL,'http://127.0.0.1:6605/images/carousel01.jpg'),
(NULL,'http://127.0.0.1:6605/images/carousel02.jpg'),
(NULL,'http://127.0.0.1:6605/images/carousel03.jpg'),
(NULL,'http://127.0.0.1:6605/images/carousel04.jpg'),
(NULL,'http://127.0.0.1:6605/images/carousel05.jpg');

-- 创建标题导航栏表
CREATE TABLE nin_tabbar(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  tname VARCHAR(500),
  Gamer VARCHAR(128),
  imgUrl VARCHAR(64),
  publishTime VARCHAR(128)
);
INSERT INTO nin_tabbar VALUES
(NULL,'Nintendo Switch','','http://127.0.0.1:6605/images/5.jpg',''),
(NULL,'Nintendo 3Ds','','http://127.0.0.1:6605/images/4.jpg',''),
(NULL,'Nintendo ammiibo','','http://127.0.0.1:6605/images/3.jpg',''),
(NULL,'Nintendo Switch游戏软件','','http://127.0.0.1:6605/images/2.jpg',''),
(NULL,'Nintendo 3Ds游戏软件','','http://127.0.0.1:6605/images/1.jpg',''),
(NULL,
'通过Nintendo Labo来体验制作、简易VR〝Nintendo Labo Toy-Con 04: VR套装”中文版即将发售',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_01.jpg','2019.3.7'),
(NULL,'『進め！キノピオ隊長』发布免费更新，全部关卡支持2人冒险！付费新增内容预定公开下载！','NintendoSwitch','http://127.0.0.1:6605/images/190307_02.jpg','2019.2.22'),
(NULL,'Nintendo Account之Nintendo Switch Online服务预定于今年春天开始',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_03.jpg','2019.2.20'),
(NULL,'《FIRE EMBLEM 风花雪月》介紹视频',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_04.jpg','2019.2.19'),
(NULL,'《Super Mario Maker 2 (超级马力欧创作家 2)》介紹视频',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_05.jpg','2019.2.18'),
(NULL,'《ASTRAL CHAIN™》(暂定名称)介绍视频',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_06.jpg','2019.2.15'),
(NULL,'《勇者斗恶龙XI S 寻觅逝去的时光 – Definitive Edition》介绍视频',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_07.jpg','2019.2.15'),
(NULL,'《塞尔达传说 织梦岛》介绍视频　',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_08.jpg','2019.2.15'),
(NULL,'连接到提供Nintendo eShop下载软件购买服务的外部网页。','','kl11.jpg',''),
(NULL,'Nintendo Switch支持','','http://127.0.0.1:6605/images/3.gif',''),
(NULL,'Nintendo 3DS支持','','http://127.0.0.1:6605/images/2.gif',''),
(NULL,'维修相关信息','','http://127.0.0.1:6605/images/1.gif','');

-- 创建轮播下方广告图
CREATE TABLE nin_adv(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  aname VARCHAR(128),
  imgUrl VARCHAR(64)
);
INSERT INTO nin_adv VALUES
(NULL,'Pokémon Direct','http://127.0.0.1:6605/images/title01.jpg'),
(NULL,'耀西的手工世界','http://127.0.0.1:6605/images/title02.jpg'),
(NULL,'New 超级马力欧兄弟U 豪华版','http://127.0.0.1:6605/images/title03.jpg'),
(NULL,'任天堂明星大乱斗 特别版','http://127.0.0.1:6605/images/title04.jpg'),
(NULL,'精灵宝可梦 Let''s Go!皮卡丘╱Lets Go！伊布','http://127.0.0.1:6605/images/title05.jpg');


-- 创建工具图标 图片
CREATE TABLE nin_tool(
  toolId INT PRIMARY KEY AUTO_INCREMENT,
  toolName VARCHAR(128),
  imgUrl VARCHAR(64)
);
INSERT INTO nin_tool VALUES
(NULL,'商店','http://127.0.0.1:6605/images/nineshop.svg'),
(NULL,'中文','http://127.0.0.1:6605/images/support_cn_tc.svg'),
(NULL,'标志','http://127.0.0.1:6605/images/logo-nintendo.svg'),
(NULL,'微信','http://127.0.0.1:6605/images/wx.png'),
(NULL,'Facebook','http://127.0.0.1:6605/images/fb.png'),
(NULL,'YouTube','http://127.0.0.1:6605/images/yt.png'),
(NULL,'微博','http://127.0.0.1:6605/images/sina.png');

-- 创建底部推荐游戏 图表
CREATE TABLE nin_recommand(
  recoId INT PRIMARY KEY AUTO_INCREMENT,
  recoName VARCHAR(128),
  imgUrl VARCHAR(256),
  title VARCHAR(128),
  recoTime VARCHAR(128),
  gameCoName VARCHAR(128),
  publish VARCHAR(32)
);
INSERT INTO nin_recommand VALUES
(NULL,'Asterix & Oblix XXL2','http://127.0.0.1:6605/images/bottom01.jpg','','2019.2.7','H2 INTERACTIVE','下载版'),
(NULL,'战斗公主玛德琳','http://127.0.0.1:6605/images/bottom02.jpg','','2018.12.20','3goo','下载版'),
(NULL,'BLADE ARCUS Rebellion from Shining','http://127.0.0.1:6605/images/bottom03.jpg','','2019.3.14','Sega','下载版'),
(NULL,'苍翼默示录 神观之梦 特别版','http://127.0.0.1:6605/images/bottom04.jpg','','2019.2.7','H2 INTERACTIVE','下载版'),
(NULL,'卡里古拉·过量强化','http://127.0.0.1:6605/images/bottom05.jpg','','2019.3.14','Arc System Works','下载版'),
(NULL,'Dragon''s Dogma:Dark Arisen','http://127.0.0.1:6605/images/bottom06.jpg','','2019.4.25','CAPCOM','下载版'),
(NULL,'真三国无双7 猛将传DX','http://127.0.0.1:6605/images/bottom07.jpg','','2018.12.27','Koei Tecmo','下载版'),
(NULL,'Fate/EXTELLA LINK','http://127.0.0.1:6605/images/bottom08.jpg','','2019.1.31','SEGA','下载版'),
(NULL,'Gear.Club Unlimited 2','http://127.0.0.1:6605/images/bottom09.jpg','','2019.1.16','H2 Interactive','下载版'),
(NULL,'少女与战车 战车梦幻大会战 DX','http://127.0.0.1:6605/images/bottom10.jpg','','2019.2.21','Bandai Namco','下载版'),
(NULL,'Lapis x Labyrinth 深渊狂猎','http://127.0.0.1:6605/images/bottom11.jpg','','2019.2.21','Sega','下载版'),
(NULL,'青梅竹马是人鱼姬!?My Girldriend is a Mermaid!?','http://127.0.0.1:6605/images/bottom12.jpg','','2019.2.28','Cosen','下载版'),
(NULL,'Mulaka','http://127.0.0.1:6605/images/bottom13.jpg','','2019.1.23','Lienzo','下载版'),
(NULL,'New超级马里奥兄弟U 豪华版','http://127.0.0.1:6605/images/bottom14.jpg','盒装版首批有机会或行李牌一个','Nintendo','2019.1.11','盒装版/下载版'),
(NULL,'Onimusha:Warlords','http://127.0.0.1:6605/images/bottom15.jpg','','2019.1.16','CAPCOM','下载版'),
(NULL,'逆转裁判123成步堂精选集','http://127.0.0.1:6605/images/bottom16.jpg','','2019.4.10','CAPCOM','下载版'),
(NULL,'生化危机1','http://127.0.0.1:6605/images/bottom17.jpg','','2019.5.21','CAPCOM','下载版'),
(NULL,'生化危机4','http://127.0.0.1:6605/images/bottom18.jpg','','2019.5.21','CAPCOM','下载版'),
(NULL,'英雄不再','http://127.0.0.1:6605/images/bottom19.jpg','','2019.1.18','Grasshopper Manufacture Inc','盒装版/下载版'),
(NULL,'机兽战记 狂野爆发 王者爆发','http://127.0.0.1:6605/images/bottom20.jpg','','2019.2.28','TAKARA TOMY','盒装版/下载版');
