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
  lid INT,
  tname VARCHAR(500),
  Gamer VARCHAR(128),
  imgUrl VARCHAR(64),
  publishTime VARCHAR(128)
);
INSERT INTO nin_tabbar VALUES
(NULL,1,'Nintendo Switch','','http://127.0.0.1:6605/images/5.jpg',''),
(NULL,2,'Nintendo 3Ds','','http://127.0.0.1:6605/images/4.jpg',''),
(NULL,3,'Nintendo ammiibo','','http://127.0.0.1:6605/images/3.jpg',''),
(NULL,4,'Nintendo Switch游戏软件','','http://127.0.0.1:6605/images/2.jpg',''),
(NULL,5,'Nintendo 3Ds游戏软件','','http://127.0.0.1:6605/images/1.jpg',''),
(NULL,6,
'通过Nintendo Labo来体验制作、简易VR〝Nintendo Labo Toy-Con 04: VR套装”中文版即将发售',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_01.jpg','2019.3.7'),
(NULL,7,'『進め！キノピオ隊長』发布免费更新，全部关卡支持2人冒险！付费新增内容预定公开下载！','NintendoSwitch','http://127.0.0.1:6605/images/190307_02.jpg','2019.2.22'),
(NULL,8,'Nintendo Account之Nintendo Switch Online服务预定于今年春天开始',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_03.jpg','2019.2.20'),
(NULL,9,'《FIRE EMBLEM 风花雪月》介紹视频',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_04.jpg','2019.2.19'),
(NULL,10,'《Super Mario Maker 2 (超级马力欧创作家 2)》介紹视频',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_05.jpg','2019.2.18'),
(NULL,11,'《ASTRAL CHAIN™》(暂定名称)介绍视频',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_06.jpg','2019.2.15'),
(NULL,12,'《勇者斗恶龙XI S 寻觅逝去的时光 – Definitive Edition》介绍视频',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_07.jpg','2019.2.15'),
(NULL,13,'《塞尔达传说 织梦岛》介绍视频　',
'Nintendo Switch','http://127.0.0.1:6605/images/190307_08.jpg','2019.2.15'),
(NULL,14,'连接到提供Nintendo eShop下载软件购买服务的外部网页。','','kl11.jpg',''),
(NULL,15,'Nintendo Switch支持','','http://127.0.0.1:6605/images/3.gif',''),
(NULL,16,'Nintendo 3DS支持','','http://127.0.0.1:6605/images/2.gif',''),
(NULL,17,'维修相关信息','','http://127.0.0.1:6605/images/1.gif','');

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

-- 蓝色封面游戏轮播图
CREATE TABLE nin_games(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  gameUrl VARCHAR(256)
);
INSERT INTO nin_games VALUES
(NULL,'http://127.0.0.1:6605/images/Astral.jpg'),
(NULL,'http://127.0.0.1:6605/images/Astral01.jpg'),
(NULL,'http://127.0.0.1:6605/images/Astral02.jpg'),
(NULL,'http://127.0.0.1:6605/images/Astral03.jpg'),
(NULL,'http://127.0.0.1:6605/images/Astral04.jpg'),
(NULL,'http://127.0.0.1:6605/images/Astral05.jpg');

-- VR游戏轮播图
CREATE TABLE nin_games_vr(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  gameUrl VARCHAR(256)
);
INSERT INTO nin_games_vr VALUES
(NULL,'http://127.0.0.1:6605/images/toycon01.jpg'),
(NULL,'http://127.0.0.1:6605/images/toycon02.jpg'),
(NULL,'http://127.0.0.1:6605/images/toycon03.jpg'),
(NULL,'http://127.0.0.1:6605/images/toycon04.jpg'),
(NULL,'http://127.0.0.1:6605/images/toycon05.jpg'),
(NULL,'http://127.0.0.1:6605/images/toycon06.jpg');


CREATE TABLE nin_games_msg(
  gameId INT PRIMARY KEY AUTO_INCREMENT,
  findId INT,
  gameTitle VARCHAR(256),
  gameMoney VARCHAR(50),
  g_msg1  VARCHAR(500),
  g_msg2  VARCHAR(500),
  g_msg3  VARCHAR(500),
  g_msg4  VARCHAR(500),
  g_msg5  VARCHAR(500),
  g_msg6  VARCHAR(500),
  g_msg7  VARCHAR(500),
  g_msg8  VARCHAR(500),
  g_platform  VARCHAR(500),
  g_date VARCHAR(500),
  g_style VARCHAR(500)
);
INSERT INTO nin_games_msg VALUES
(NULL,1,'ASTRAL CHAIN下载版（带包）','525.00','白金游戏全新！','Nintendo Switch上出现了一款充分利用双方双重战斗的全新感知动作游戏。','作为警察的一个特殊单位，面对外来物种。许多伤害人类的事件。','舞台是不久的将来的一个城市。突然出现在地球上的外来物种污染了地球，造成了许多伤害人类的事件。为了对抗普通警察中不寻常的生物，主人用人类创造的特殊武器“军团”将开始作为特种部队成员解决案件。','与特种武器“军团”合作打击敌人。','“双重行动”是这项工作的主要特色。主角和军团巧妙地配合各种风格，如“主角与军团同时攻击同一敌人”，“攻击不同的敌人”，“对军团进行攻击并以主角支持物品”等。我会战斗。','发展是白金游戏。一个强大的制作团队，在角色设计中欢迎“Kasakazu Katsura”。','最初的计划是Takahisa Taura，他被称为“NieR：Automata”的游戏设计师，监督的是Hideki Kamiya，他参与了“Beyonetta系列”，并且游戏的角色设计熟悉漫画“ZETMAN”和“博士”的创作者。 Masakazu Katsura负责。这是一款具有全新游戏感的动作游戏，因为它是“触摸是最好的感觉”操作的白金游戏风格。','Nintendo Switch','2019年8月30日','双重行动');


CREATE TABLE xz_news(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title  VARCHAR(255),
  img_url  VARCHAR(255),
  ctime  DATETIME,
  point   INT,
  content VARCHAR(2000)
);

INSERT INTO xz_news VALUES
(null,'Asterix & Oblix XXL2','http://127.0.0.1:6605/images/bottom01.jpg',now(),0,'H2 INTERACTIVE'),
(null,'战斗公主玛德琳','http://127.0.0.1:6605/images/bottom02.jpg',now(),0,'3goo'),
(null,'BLADE ARCUS Rebellion from Shining','http://127.0.0.1:6605/images/bottom03.jpg',now(),0,'Sega'),
(null,'苍翼默示录 神观之梦 特别版','http://127.0.0.1:6605/images/bottom04.jpg',now(),0,'Arc System Works'),
(null,'卡里古拉·过量强化','http://127.0.0.1:6605/images/bottom05.jpg',now(),0,'H2 INTERACTIVE'),
(null,'Dragon''s Dogma:Dark Arisen','http://127.0.0.1:6605/images/bottom06.jpg',now(),0,'CAPCOM'),
(null,'真三国无双7 猛将传DX','http://127.0.0.1:6605/images/bottom07.jpg',now(),0,'Koei Tecmo'),
(null,'Fate/EXTELLA LINK','http://127.0.0.1:6605/images/bottom08.jpg',now(),0,'SEGA'),
(null,'Gear.Club Unlimited 2','http://127.0.0.1:6605/images/bottom09.jpg',now(),0,'H2 Interactive'),
(null,'少女与战车 战车梦幻大会战 DX','http://127.0.0.1:6605/images/bottom10.jpg',now(),0,'Bandai Namco'),
(null,'Lapis x Labyrinth 深渊狂猎','http://127.0.0.1:6605/images/bottom11.jpg',now(),0,'Sega'),
(null,'青梅竹马是人鱼姬!?My Girldriend is a Mermaid!?','http://127.0.0.1:6605/images/bottom12.jpg',now(),0,'Cosen'),
(null,'Mulaka','http://127.0.0.1:6605/images/bottom13.jpg',now(),0,'Lienzo'),
(null,'New超级马里奥兄弟U 豪华版','http://127.0.0.1:6605/images/bottom14.jpg',now(),0,'Nintendo'),
(null,'Onimusha:Warlords','http://127.0.0.1:6605/images/bottom15.jpg',now(),0,'CAPCOM'),
(null,'逆转裁判123成步堂精选集','http://127.0.0.1:6605/images/bottom16.jpg',now(),0,'CAPCOM'),
(null,'生化危机1','http://127.0.0.1:6605/images/bottom17.jpg',now(),0,'CAPCOM'),
(null,'生化危机4','http://127.0.0.1:6605/images/bottom18.jpg',now(),0,'CAPCOM'),
(null,'英雄不再','http://127.0.0.1:6605/images/bottom19.jpg',now(),0,'Grasshopper Manufacture Inc'),
(null,'机兽战记 狂野爆发 王者爆发','http://127.0.0.1:6605/images/bottom20.jpg',now(),0,'TAKARA TOMY');







#功能二:创建评论表
#内容;时间;那条新闻;编号
CREATE TABLE xz_comment(
  id INT PRIMARY KEY AUTO_INCREMENT,
  content VARCHAR(50),
  ctime DATETIME,
  nid   INT
);
INSERT INTO xz_comment VALUES
(null,'赞一个1',now(),5),
(null,'赞一个2',now(),5),
(null,'赞一个3',now(),5),
(null,'赞一个4',now(),5),
(null,'赞一个5',now(),5),
(null,'赞一个6',now(),5),
(null,'赞一个7',now(),5),
(null,'赞一个8',now(),5),
(null,'赞一个9',now(),5),
(null,'赞一个10',now(),5),
(null,'赞一个11',now(),5);


CREATE TABLE xz_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(25),
  upwd  VARCHAR(32)
);
INSERT INTO xz_login VALUES(null,'admin',md5('6669996969669'));
#SELECT id FROM xz_login
#WHERE uname = ? AND upwd = md5(?)

#创建购物车表
CREATE TABLE xz_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  count INT,
  price DECIMAL(10,2),
  pid INT,
  uid INT
);


CREATE TABLE xz_laptop(
lid int(20) NOT NULL,
family_id int DEFAULT NULL,
title varchar(128) DEFAULT NULL,
subtitle varchar(128) DEFAULT NULL,
price decimal(10,2) DEFAULT NULL,
promise varchar(64) DEFAULT NULL,
spec varchar(64) DEFAULT NULL,
lname varchar(32) DEFAULT NULL
);
INSERT INTO xz_laptop VALUES
(1, 1, 'Asterix & Oblix XXL2', 'H2 INTERACTIVE', '265.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/128GB闪存', 'Asterix & Oblix XXL2'),
(2, 2, '战斗公主玛德琳', '5月焕新季，领券买新机！神券满8000减800！一体成型金属机身，纤薄轻巧，长达12小时续航', '255.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/256GB闪存', '战斗公主玛德琳'),
(3, 3, 'BLADE ARCUS Rebellion from Shining', 'i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！', '345.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '定制款：双核i7/8G内存/128G闪存', 'BLADE ARCUS Rebellion from Shining'),
(4, 4, '苍翼默示录 神观之梦 特别版', 'i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！', '356.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '定制款：双核i7/8G内存/256G闪存', '苍翼默示录 神观之梦 特别版'),
(5, 5, '卡里古拉·过量强化', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '499.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '卡里古拉·过量强化'),
(6, 6, 'Dragon''s Dogma:Dark Arisen', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '398.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', 'Dragon''s Dogma:Dark Arisen'),
(7, 7, '真三国无双7 猛将传DX', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '560.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '真三国无双7 猛将传DX'),
(8, 8, 'Fate/EXTELLA LINK', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '98.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', 'Fate/EXTELLA LINK'),
(9, 9, 'Gear.Club Unlimited 2', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '129.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', 'Gear.Club Unlimited 2'),
(10,10, '少女与战车 战车梦幻大会战 DX', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '89.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '少女与战车 战车梦幻大会战 DX'),
(11,11, 'Lapis x Labyrinth 深渊狂猎', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '99.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', 'Lapis x Labyrinth 深渊狂猎'),
(12,12, '青梅竹马是人鱼姬!?My Girldriend is a Mermaid!?', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '190.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '卡里古拉·过量强化'),(5, 2, '卡里古拉·过量强化', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '4999.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '卡里古青梅竹马是人鱼姬!?My Girldriend is a Mermaid!?拉·过量强化'),
(13,2, 'Mulaka', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '219.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', 'Mulaka'),
(14,12, 'New超级马里奥兄弟U 豪华版', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '199.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', 'New超级马里奥兄弟U 豪华版'),
(15,3, 'Onimusha:Warlords', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '199.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', 'Onimusha:Warlords'),
(16,2, '逆转裁判123成步堂精选集', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '4999.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '逆转裁判123成步堂精选集'),
(17,1, '生化危机1', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '99.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '生化危机1'),
(18,5, '生化危机4', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '199.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '生化危机4'),
(19,6, '英雄不再', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '299.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '英雄不再'),
(20,8, '机兽战记 狂野爆发 王者爆发', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '499.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '机兽战记 狂野爆发 王者爆发');

CREATE TABLE xz_laptop_pic(
pid int(20) NOT NULL,
laptop_id int DEFAULT NULL,
md varchar(128) DEFAULT NULL
);
INSERT INTO xz_laptop_pic VALUES
(1, 1,'http://127.0.0.1:6605/images/bottom01.jpg'),
(2, 2,'http://127.0.0.1:6605/images/bottom02.jpg'),
(3, 3,'http://127.0.0.1:6605/images/bottom03.jpg'),
(4, 4,'http://127.0.0.1:6605/images/bottom04.jpg'),
(5, 5,'http://127.0.0.1:6605/images/bottom05.jpg'),
(6, 6,'http://127.0.0.1:6605/images/bottom06.jpg'),
(7, 7,'http://127.0.0.1:6605/images/bottom07.jpg'),
(8, 8,'http://127.0.0.1:6605/images/bottom08.jpg'),
(9, 9,'http://127.0.0.1:6605/images/bottom09.jpg'),
(10,10,'http://127.0.0.1:6605/images/bottom10.jpg'),
(11,11,'http://127.0.0.1:6605/images/bottom11.jpg'),
(12,12,'http://127.0.0.1:6605/images/bottom12.jpg'),
(13,13,'http://127.0.0.1:6605/images/bottom13.jpg'),
(14,14,'http://127.0.0.1:6605/images/bottom14.jpg'),
(15,15,'http://127.0.0.1:6605/images/bottom15.jpg'),
(16,16,'http://127.0.0.1:6605/images/bottom16.jpg'),
(17,17,'http://127.0.0.1:6605/images/bottom17.jpg'),
(18,18,'http://127.0.0.1:6605/images/bottom18.jpg'),
(19,19,'http://127.0.0.1:6605/images/bottom19.jpg'),
(20,20,'http://127.0.0.1:6605/images/bottom20.jpg');


CREATE TABLE xz_laptop_family(
  fid int NOT NULL,
  fname varchar(32) DEFAULT NULL
);
INSERT INTO xz_laptop_family VALUES
(1,'H2 INTERACTIVE'),
(2,'3goo'),
(3,'Sega'),
(4,'Arc System Works'),
(5,'CAPCOM'),
(6,'Koei Tecmo'),
(7,'Bandai Namco'),
(8,'Cosen'),
(9,'Lienzo'),
(10,'Nintendo'),
(11,'TAKARA TOMY'),
(12,'Grasshopper Manufacture Inc');
