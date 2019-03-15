--创建Nintendo数据库
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
(NULL,'kl1.jpg'),
(NULL,'kl2.jpg'),
(NULL,'kl3.jpg'),
(NULL,'kl4.jpg'),
(NULL,'kl5.jpg');

-- 创建标题导航栏表
CREATE TABLE nin_tabbar(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  tname VARCHAR(500),
  publishTime VARCHAR(128),
  imgUrl VARCHAR(64)
);
INSERT INTO nin_tabbar VALUES
(NULL,'Nintendo Switch','','kl1.jpg'),
(NULL,'Nintendo 3Ds','','kl2.jpg'),
(NULL,'Nintendo ammiibo','','kl3.jpg'),
(NULL,'Nintendo Switch游戏软件','','kl4.jpg'),
(NULL,'Nintendo 3Ds游戏软件','','kl5.jpg'),
(NULL,
'通过Nintendo Labo来体验制作、简易VR〝Nintendo Labo Toy-Con 04: VR套装”中文版即将发售',
'Nintendo Switch2019.3.7','kl6.jpg'),
(NULL,'『進め！キノピオ隊長』发布免费更新，全部关卡支持2人冒险！付费新增内容预定公开下载！','NintendoSwitch2019.2.22','kl7.jpg'),
(NULL,'Nintendo Account之Nintendo Switch Online服务预定于今年春天开始',
'Nintendo Switch2019.2.20','kl8.jpg'),
(NULL,'《FIRE EMBLEM 风花雪月》介紹视频',
'Nintendo Switch2019.2.19','kl9.jpg'),
(NULL,'《Super Mario Maker 2 (超级马力欧创作家 2)》介紹视频',
'Nintendo Switch2019.2.18','kl10.jpg'),
(NULL,'《ASTRAL CHAIN™》(暂定名称)介绍视频',
'Nintendo Switch2019.2.15','kl10.jpg'),
(NULL,'《勇者斗恶龙XI S 寻觅逝去的时光 – Definitive Edition》介绍视频',
'Nintendo Switch2019.2.15','kl10.jpg'),
(NULL,'《塞尔达传说 织梦岛》介绍视频　',
'Nintendo Switch2019.2.15','kl10.jpg'),
(NULL,'连接到提供Nintendo eShop下载软件购买服务的外部网页。','','kl11.jpg'),
(NULL,'Nintendo Switch支持','','kl12.jpg'),
(NULL,'Nintendo 3DS支持','','kl13.jpg'),
(NULL,'维修相关信息','','kl14.jpg'),
(NULL,'Nintendo Switch','','kl15.jpg');

-- 创建轮播下方广告图
CREATE TABLE nin_adv(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  aname VARCHAR(128),
  imgUrl VARCHAR(64)
);
INSERT INTO nin_adv VALUES
(NULL,'Pokémon Direct','kl1.jpg'),
(NULL,'耀西的手工世界','kl2.jpg'),
(NULL,'New 超级马力欧兄弟U 豪华版','kl3.jpg'),
(NULL,'任天堂明星大乱斗 特别版','kl4.jpg'),
(NULL,'精灵宝可梦 Let''s Go!皮卡丘╱Lets Go！伊布','kl5.jpg');


-- 创建工具图标 图片
CREATE TABLE nin_tool(
  toolId INT PRIMARY KEY AUTO_INCREMENT,
  toolName VARCHAR(128),
  imgUrl VARCHAR(64)
);
INSERT INTO nin_tool VALUES
(NULL,'商店','kl1.jpg'),
(NULL,'中文','kl2.jpg'),
(NULL,'标志','kl3.jpg'),
(NULL,'微信','kl4.jpg'),
(NULL,'FB','kl4.jpg'),
(NULL,'YT','kl4.jpg'),
(NULL,'微博','kl5.jpg');