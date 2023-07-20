-- MySQL dump 10.13  Distrib 5.7.39, for Linux (x86_64)
--
-- Host: localhost    Database: gamespy
-- ------------------------------------------------------
-- Server version	5.7.39-0ubuntu0.18.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_cart_cartitem`
--

DROP TABLE IF EXISTS `app_cart_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_cart_cartitem` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_is_del` smallint(6) NOT NULL,
  `cart_count` int(11) NOT NULL,
  `user_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `app_cart_cartitem_user_id_id_0742e4f4_fk_app_user_user_id` (`user_id_id`),
  CONSTRAINT `app_cart_cartitem_user_id_id_0742e4f4_fk_app_user_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `app_user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_cart_cartitem`
--

LOCK TABLES `app_cart_cartitem` WRITE;
/*!40000 ALTER TABLE `app_cart_cartitem` DISABLE KEYS */;
INSERT INTO `app_cart_cartitem` VALUES (1,1,5,1);
/*!40000 ALTER TABLE `app_cart_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_commidity_commditypicture`
--

DROP TABLE IF EXISTS `app_commidity_commditypicture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_commidity_commditypicture` (
  `comm_id` int(11) NOT NULL AUTO_INCREMENT,
  `comm_picture` varchar(100) NOT NULL,
  `comm_video` varchar(100) DEFAULT NULL,
  `sku_id_id` int(11) NOT NULL,
  PRIMARY KEY (`comm_id`),
  KEY `app_commidity_commdi_sku_id_id_443c83cf_fk_app_commi` (`sku_id_id`),
  CONSTRAINT `app_commidity_commdi_sku_id_id_443c83cf_fk_app_commi` FOREIGN KEY (`sku_id_id`) REFERENCES `app_commidity_commoditysku` (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_commidity_commditypicture`
--

LOCK TABLES `app_commidity_commditypicture` WRITE;
/*!40000 ALTER TABLE `app_commidity_commditypicture` DISABLE KEYS */;
INSERT INTO `app_commidity_commditypicture` VALUES (1,'image/dtl_1.jpg','viedo/dtl_1.mp4',1),(2,'image/dtl_3.jpg','viedo/dtl_3.jpg',1),(3,'image/dtl_2_hJTCh0A.jpg','viedo/dtl_1_7KpvW2H.webm',1),(4,'image/dtl_4.jpg','viedo/dtl_3.mp4',1),(5,'image/dtl_5.jpg','viedo/dtl_4.mp4',1),(6,'image/dtl_6.jpg','viedo/dtl_5.mp4',1),(7,'image/dtl_7_jfNzyLE.jpg','viedo/dtl_7.mp4',1),(8,'image/dtl_8.jpg','viedo/dtl_8.mp4',1),(9,'image/dtl_9.jpg','viedo/dtl_9.mp4',1),(11,'image/微信图片_20221017143620.jpg','viedo/gta_2.mp4',2),(12,'image/gta_3.jpg','viedo/gta_3.mp4',2),(13,'image/gta_4.jpg','viedo/gta_4.mp4',2),(14,'image/gta_5.jpg','viedo/gta_5.mp4',2),(15,'image/gta_6.jpg','viedo/gta_6.mp4',2),(16,'image/gta_7.jpg','viedo/gta_7.mp4',2),(17,'image/FIFA_1.jpg','viedo/FIFA_1.mp4',3),(18,'image/FIFA_20.jpg','viedo/FIFA_2.mp4',3),(19,'image/FIFA_21.jpg','viedo/FIFA_3.mp4',3),(20,'image/tjx_2.jpg','viedo/TJX.webm',4),(21,'image/tjx_8.jpg','viedo/TJX_ugxzDiB.webm',4),(22,'image/tjx_5_OWqoMsp.jpg','viedo/TJX_4PUdJ9N.webm',4),(23,'image/tjx_6.jpg','viedo/TJX_aeto36M.webm',4),(24,'image/xt_1.jpg','viedo/xt_1.mp4',5),(25,'image/xt_2.jpg','viedo/xt_1.webm',5),(26,'image/xt_3_5JGPCAc.jpg','viedo/xt_2.mp4',5),(27,'image/xt_6.jpg','viedo/xt_3.webm',5),(28,'image/xt_7.jpg','viedo/xt_7.mp4',5),(29,'image/hs_1.jpg','viedo/hs_1.webm',6),(30,'image/hs_2.jpg','viedo/hs_2.webm',6),(31,'image/hs_3.jpg','viedo/hs_1_TB93e5G.webm',6),(32,'image/dbk_1.jpg','viedo/dbg_1.webm',7),(33,'image/dbk_2.jpg','viedo/dbg_2.webm',7),(34,'image/dbk_3.jpg','viedo/dbg_1_EwgRBGc.webm',7),(35,'image/dbk_4.jpg','viedo/dbg_1_DYPcFDr.webm',7),(36,'image/srcx_1.jpg','viedo/srcx_1.webm',8),(37,'image/srcx_2.jpg','viedo/srcx_2.webm',8),(38,'image/srcx_3.jpg','viedo/srcx_3.webm',8),(39,'image/srcx_5.jpg','viedo/srcx_4.webm',8),(40,'image/srcx_6_S1wOazJ.jpg','viedo/srcx_4_AXdC6m6.webm',8),(41,'image/yjwj_6.jpg','viedo/yjwj_2.mp4',9),(42,'image/yjwj_5.jpg','viedo/yjwj_2_LaqjTed.mp4',9),(43,'image/yjwj_3.jpg','viedo/yjwj_3.mp4',9),(44,'image/yjwj_9.jpg','viedo/yjwj_6.mp4',9),(45,'image/yjwj_4.jpg','viedo/yjwj_5.mp4',9),(46,'image/zqjl_1.jpg','viedo/zqjl_1.webm',10),(47,'image/zqjl_2.jpg','viedo/zqjl_2.webm',10),(48,'image/zqjl_4.jpg','viedo/zqjl_3.webm',10),(49,'image/ss_c2363536d11cdf617857ae4683558ff91480e4bb.1920x1080.jpg','viedo/无.txt',11),(50,'image/终极版DLC.jpg','viedo/无_tOLGXr8.txt',12),(51,'image/0000006360.1920x1080.jpg','viedo/无_4cqIDHc.txt',13),(52,'image/0000006361.1920x1080.jpg','viedo/无_oiDAw0P.txt',13),(53,'image/0000006363.1920x1080.jpg','viedo/无_YcedsY9.txt',13),(54,'image/ss_627e52a3466b4932ca3d331db6922d165002edaa.600x338.jpg','viedo/无_RsuYRSg.txt',16),(55,'image/ss_cd8d91454014900f3360f2818d94e3aa0c22ffd3.600x338.jpg','viedo/无_emjVu9H.txt',16),(56,'image/ss_d3967a58038cc5e59332bb0043ab1ca343112bc6.600x338.jpg','viedo/无_eVJX2qF.txt',16),(57,'image/ss_dd6a4d319cda32c24a4e16a0a62908e82673f458.600x338.jpg','viedo/无_KdEYXOi.txt',16),(58,'image/ss_ef44b9f703f71acfdeb728a497390d397084ee35.600x338.jpg','viedo/无_o15K3vG.txt',16),(59,'image/ss_3c0ef60ea9a2f72df176af41811dde6c5867c6c6.1920x1080.jpg','viedo/无_m0Nz7xk.txt',15),(60,'image/ss_3f01c813974db7c45fc58d755ed97b4ee62d267f.1920x1080.jpg','viedo/无_KmRHLYL.txt',15),(61,'image/ss_63cd3caea8cbe8881aadd73a98a334a77d320f3a.1920x1080.jpg','viedo/无_JWdjwUj.txt',15),(62,'image/ss_377fecbea5be7a09ba9b5de5f1914c03eb2ad72d.1920x1080.jpg','viedo/无_J4nmcD0.txt',15),(63,'image/ss_ab1d62e4bcf7123f5797b16cd7c7e2984a470cb2.1920x1080.jpg','viedo/无_APYPT6X.txt',15),(64,'image/ss_19c1c8d52d714fe8d0a0277c36832b4e0ad5def3.600x338.jpg','viedo/movie480.webm',14),(65,'image/ss_42c6e1765549541d5576ec5bdb01cbc45f376444.600x338.jpg','viedo/无_M3L8Ili.txt',14),(66,'image/ss_d825c8fd7c5472d17732bf3480760dd88924e551.600x338.jpg','viedo/ss_d825c8fd7c5472d17732bf3480760dd88924e551.600x338.jpg',14),(67,'image/ChMkJ1xRE6uILqnhAAZFric5cpMAAuphQHaKdkABkXG502.jpg','viedo/无_SZGTu6q.txt',2);
/*!40000 ALTER TABLE `app_commidity_commditypicture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_commidity_commoditykind`
--

DROP TABLE IF EXISTS `app_commidity_commoditykind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_commidity_commoditykind` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_name` varchar(20) NOT NULL,
  `com_picture` varchar(100) NOT NULL,
  PRIMARY KEY (`com_id`),
  UNIQUE KEY `com_name` (`com_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_commidity_commoditykind`
--

LOCK TABLES `app_commidity_commoditykind` WRITE;
/*!40000 ALTER TABLE `app_commidity_commoditykind` DISABLE KEYS */;
INSERT INTO `app_commidity_commoditykind` VALUES (1,'动作','image/dtl_2.jpg'),(2,'冒险','image/dtl_7.jpg'),(3,'修仙','image/xt_3.jpg'),(4,'单人','image/tjx_7.jpg'),(5,'策略','image/tjx_5.jpg'),(6,'多人','image/srcx_6.jpg'),(7,'射击','image/gta_2.jpg'),(8,'剧情','image/gta_9.jpg'),(9,'体育','image/FIFA_28.jpg'),(10,'心理恐怖','image/hs_8.jpg');
/*!40000 ALTER TABLE `app_commidity_commoditykind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_commidity_commoditysku`
--

DROP TABLE IF EXISTS `app_commidity_commoditysku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_commidity_commoditysku` (
  `sku_id` int(11) NOT NULL AUTO_INCREMENT,
  `sku_name` varchar(20) NOT NULL,
  `sku_brief_introduction` longtext NOT NULL,
  `sku_price` double NOT NULL,
  `sku_unit` varchar(10) NOT NULL,
  `sku_stock` int(11) NOT NULL,
  `sku_slaes` int(11) NOT NULL,
  `sku_state` tinyint(1) NOT NULL,
  `com_id_id` int(11) NOT NULL,
  `spu_id_id` int(11) NOT NULL,
  `sku_discount` double NOT NULL,
  PRIMARY KEY (`sku_id`),
  UNIQUE KEY `sku_name` (`sku_name`),
  KEY `app_commidity_commod_spu_id_id_2dcd68c1_fk_app_commi` (`spu_id_id`),
  KEY `app_commidity_commod_com_id_id_33032049_fk_app_commi` (`com_id_id`),
  CONSTRAINT `app_commidity_commod_com_id_id_33032049_fk_app_commi` FOREIGN KEY (`com_id_id`) REFERENCES `app_commidity_commoditykind` (`com_id`),
  CONSTRAINT `app_commidity_commod_spu_id_id_2dcd68c1_fk_app_commi` FOREIGN KEY (`spu_id_id`) REFERENCES `app_commidity_commodityspu` (`spu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_commidity_commoditysku`
--

LOCK TABLES `app_commidity_commoditysku` WRITE;
/*!40000 ALTER TABLE `app_commidity_commoditysku` DISABLE KEYS */;
INSERT INTO `app_commidity_commoditysku` VALUES (1,'底特律：化身为人','底特律，2038年。科技已高度发展，到处都是人形仿生机器人。他们能像人一样交流、移动并做出与人类一样的行为。但它们却只是一些服务于人类的机器。\r\n扮演三名不同的机器人，透过他们的眼睛见证一个处于混乱边缘的世界——这或许就是我们的未来。您的每个决定都将直接影响到游戏那紧张、错综复杂的故事结局。\r\n您将面对道德困境，做出谁生谁死的艰难抉择。面对数千种选择和多种结局，您将如何影响底特律的未来，以及人类的命运呢？',128,'个',70,30,1,1,1,0.8),(2,'GTA5','侠盗猎车手5》（Grand Theft Auto V，GTA5）是由Rockstar Games制作的一款开放世界动作冒险游戏，并于2013年9月17日发行。\r\n\r\n该游戏背景设定在虚构的美国圣安地列斯州（San Andreas，以南加州为范本），玩家以第三人称、第一人称游玩，可自由的与游戏世界互动，随意地在荒漠间和虚构的城市洛圣都（Los Santos，以洛杉矶为范本）中漫游。该游戏内容存在暴力血腥、教唆犯罪等违法内容，不适合未成年接触。\r\n\r\n2021年8月3日，《GTA5》开发商Rockstar Games（R星）母公司Take-Two发布2022财年第一季度财报。《GTA5》的总销量已超过1.5亿份，达到新的里程碑。',158,'个',777,733,1,1,2,0.8),(3,'FIFA 23','《FIFA 23》将这项世界级运动推向球场，采用 HyperMotion2 技术，为游戏带来更多的真实体验，在赛季期间推出男子和女子 FIFA World Cup™、女子俱乐部球队、跨平台游戏功能*等',248,'个',200,66,1,9,3,0.8),(4,'城市：天际线','《都市：天际线》是Colossal Order Ltd.开发，Paradox Interactive发行的一款城市经营模拟游戏，于2015年3月10日发行并登陆PC平台，2017年4月21日发行XBOX版本  ，2017年12月19日发行PS4版本。\r\n该游戏引入了全新的游戏玩法元素，让玩家切身体会到创造和维持一座真正城市的兴奋和艰辛，同时扩展了城市建设体验中的一些主题。',108,'个',300,162,1,4,4,0.8),(5,'刺客信条：奥德赛','游戏设定于距《刺客信条：起源》故事发生前四百年的公元前431年，讲述了古希腊城邦之间的伯罗奔尼撒战争的秘密虚构历史。玩家扮演一名雇佣兵，可加入以雅典为首的提洛同盟或以斯巴达为首的伯罗奔尼撒同盟。 \r\n故事现代剧情承接《刺客信条：起源》，在寻找伊述文物的过程中，蕾拉·哈桑发现了由最早的希腊历史学家希罗多德所著的一本名为《失落的历史》的古书，其中提到了一位使用伊述的武器“列奥尼达斯之矛”的斯巴达雇佣兵。蕾拉找到了列奥尼达斯之矛，并在维多利亚·毕博博士的帮助下追寻这份不为人知的历史。\r\n时间回溯到公元前432年，故事从凯法隆尼亚的小岛上展开，主角是岛上小有名气的驯鹰人雇佣兵，他的朋友马库斯为了兴办葡萄园从绰号“独眼人”的地头蛇借了一大笔钱，主角帮助马库斯还清债务，为此踏上了讨债的道路，也因此卷入了伯罗奔尼撒战争的纷争，探寻过往的身世谜团。',298,'个',2,199,1,1,5,0.8),(6,'深入后室','深入后室是一款最多 4 名玩家的合作在线恐怖游戏，您和您的朋友将在其中战斗以逃离不同级别的后室，解决每个谜题中不同的机制。\r\n该游戏基于著名的creepypasta，实现了许多真实参考，例如标志性实体和重要元素。您将不得不探索每个房间，寻找可以帮助您在整个游戏中继续前进并解锁新区域的元素，但是您越走越危险，您必须密切关注该区域，识别每个实体并如果你想生存，知道如何避免它们。',22,'个',80,16,1,10,6,0.8),(7,'荒野大镖客2','美国，1899年。当警察开始打击残余亡命之徒的帮派时，蛮荒的西部时代迎来了最后的黄昏。不愿投降或是屈服的人，只有死路一条。亚瑟·摩根和范德林德帮众在黑水镇的一次抢劫行动遭遇了始料不及的意外，他们不得不逃离这个西部小镇。联邦侦探和全国顶尖的赏金猎人在他们的身后穷追不舍，亚瑟一行人必须在广袤蛮荒的美国腹地上四处劫掠、挣扎求生。而帮派内部的矛盾分化日渐加深，摆在亚瑟面前的将是他无法避免的抉择：究竟是选择自己的理想，还是选择效忠于抚养了自己的帮派',249,'个',800,656,1,1,7,0.8),(8,'双人成行','游玩《双人成行》，踏上生命中最疯狂的旅程，这是一款别开生面的平台冒险游戏，完全为合作模式而设计。利用好友通行证*邀请一位好友免费游玩，共同体验多种多样的乐趣，享受颠覆性的玩法挑战。扮演相互看不顺眼的科迪和小梅夫妇，这两个人被魔咒变成了玩偶。他们一起被困在一个奇幻世界里，每个角落都隐藏着意想不到的东西，他们不得不一起克服挑战，同时挽救他们破裂的关系。\r\n\r\n在每个新关卡中，掌握角色独特且与对方息息相关的能力。一定要互相帮助，克服大量出乎意料的障碍，共度搞笑欢乐的时刻。用力踢流氓松鼠毛茸茸的尾巴，绕过一条内裤，在热闹的夜店里开舞会，坐雪橇穿过神奇的雪花玻璃球。一个真挚又搞笑的故事在游戏中徐徐展开，交织成独特的隐喻体验。\r\n\r\n《双人成行》由业界合作游戏领导者且屡获殊荣的工作室 Hazelight 开发。他们即将带您踏上狂野而奇妙的旅程，只有一件事是确定的：二人同心，其利断金。',199,'个',200,130,1,6,8,0.8),(9,'永劫无间','挥舞利刃，斩杀！端起火枪，爆头！享受远近结合的华丽战斗！ 在房顶跑酷，在树林中飞索穿梭，广大的地图任君高速前行！ 活用英雄能力，用风沙、隐身，甚至化身金刚大佛碾碎敌人！ 独一无二的60人生存竞技，成为最后的赢家！',98,'个',200,3000,1,1,9,0.8),(10,'足球经理2022','共有123个顶级足球联赛可供选择。你有能耐明智地花费大（或小）预算，带领你最喜爱的俱乐部登顶足坛吗？\r\n打造世界一流的幕后团队，协助你完成从招募到球员发展等各种大小事务。依靠团队的专业知识，应对足球管理过程中面临的日常挑战。\r\n在全球领先的《足球经理》数据库中，拥有超过50万名真实球员的数据。快来发掘明日之星，或者着眼于团队内部阵容，训练那些未来可期的球员，充分释放他们的无限潜力。\r\n以你的方式畅玩这款美丽的游戏，在战术板上打造适合球员们的球队风格。亲手创造一个能反复带来成功的系统。\r\n沉浸在史上最美观的比赛日体验中，观看你的足球愿景在球场上成真。做出关键决定，带你的球队走向辉煌。',249,'个',50,100,1,9,10,0.8),(11,'足球经理2023','《足球经理（Football Manager）2023》的新功能让您能更接近这款精美游戏的各个层面。准备好来趟的足球荣耀之旅吧。 预购可享 20% 折扣并抢先体验*',268,'个',40,20,1,9,10,0.8),(12,'永劫无间终极版升级包','**终极版DLC包含：**\r\n限定迦南时装 绝代风华\r\n\r\n限定飞索皮肤 暗香\r\n\r\n电子典藏音乐集\r\n\r\n电子典藏原画集\r\n\r\n*您可以在SteamLibrary/steamapps/common/NARAKA BLADEPOINT/ArtworksAndSoundtrack获取您的专属电子音乐集及原画集。',205,'个',200,10,1,1,9,0.8),(13,'GTA4','尼可．贝利（Niko Bellic）、钱宁．克雷比兹（Johnny Klebitz） 以及刘易斯．罗培兹（Luis Lopez）都有一个共通点，那就是他们都住在美国最糟糕的城市里。在利伯维尔这个金钱和地位至上的城市里，现实与梦想的差距甚远。',104,'个',23,44,1,1,2,0.8),(14,'刺客信条：大革命','《刺客信条：大革命》是一款动作冒险游戏，游戏的故事发生在法国的城市巴黎，它正处于历史上最黑暗的时刻，也就是法国大革命时期。这一次，你将可以用你自己的英雄来游玩。通过自定义装备，你可以彻底掌控Arno的外观和操作性能。除了史诗般的单人游戏体验外，《刺客信条：大革命》还将带来梦幻般的多人游戏模式，在一些特别的任务中，你将可以通过在线合作，和最多三个朋友一起游玩。在整个游戏中，通过引人入胜的故事线，以及让人激动得喘不过气来的游戏场景，你将会在这个今日的灯城花都中，参加到法国历史上最关键的时刻中去。',142,'个',300,344,1,1,4,0.8),(15,'刺客信条III','再次体验美国独立战争。此外，该版本亦包含《刺客信条：解放》高清重制版和所有独立DLC内容。\r\n\r\n为自由而战\r\n1775年，美洲殖民地即将揭竿而起。扮演一名美国原住民刺客康纳，为人民和国家保护自由的成果。从熙熙攘攘的街道到混乱的海战，利用众多致命方法和大量不同的武器来刺杀你的敌人。\r\n\r\n全新的视觉与游戏体验\r\n在增强的画面环境游玩《刺客信条III》这款系列代表作品。游戏支持4K分辨率，重塑了角色模型并改进了环境渲染场景等等多个方面。游戏机制同样也有更新，以此进一步增强你的沉浸感。\r\n\r\n额外内容\r\n作品包含所有独立DLC，即“暴君华盛顿”的内容以及整个《刺客信条：解放》高清重制版',242,'个',300,400,1,1,4,0.8),(16,'刺客信条II','备受期待的刺客信条的续作塑造了一个全新英雄，艾吉奥·奥迪托雷——一个年轻的意大利贵族，同时塑造了全新的时代背景：文艺复兴时期。《刺客信条2》讲述了一个以古时野蛮的文艺复兴时期的意大利为背景，有关家族，复仇以及阴谋的史诗故事。艾吉奥以朋友方式帮助李奥纳多·达·芬奇，接纳了佛罗伦萨最有实力的家族并且他冒险的足迹贯穿了整条威尼斯运河，而威尼斯也正是他学着成为一个刺客大师的地方。\r\n\r\n艾吉奥，一个新时代下的新刺客：艾吉奥·奥迪托雷是一个年轻的意大利贵族。在他的家族遭到背叛后他开始学习刺客的技巧并且寻求复仇。他是一个风流潇洒的人但他的人格中有着极富人性的一面。通过他，你将逐渐成为一个刺客大师。\r\n\r\n游戏特色\r\n\r\n文艺复兴时期的意大利：15世纪的意大利与其说是一个国家，不如说是城邦的集合，在那时的意大利，拥有政治和经济实力的家族开始统治像佛罗伦萨和威尼斯这样的城市。这次的游戏历程发生在一个文化和艺术的产生都伴随着一些最精彩的关于腐败，贪婪和谋杀的故事的历史背景下，它将历经一些全世界最美丽的城市。\r\n\r\n全新自由度：你能够自由地决定什么时候以什么样的方式进行任务。在这个开放的世界中，你不仅可以自由行走同时也加入了全新的元素，像是游泳，或是飞去冒险地点。游戏体验的多样化使你可以真正的按照你选择的方式进行游戏。\r\n\r\n动态人群：探索一个栩栩如生的世界，这个世界中的每一位角色对于玩家来说都是个机会。混入人群中将变得更加容易，和游戏内的角色一同工作将会给你提供丰富的奖励，同时也会带来令人惊喜的结果。\r\n\r\n成为刺客大师：完善你的技能成为一位刺客大师。你可以挥舞着新的武器，学着解除敌人的武装并使用他们的武器来对抗他们，或是使用双手的袖剑暗杀敌人。',50,'个',78,199,1,1,4,0.8);
/*!40000 ALTER TABLE `app_commidity_commoditysku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_commidity_commodityspu`
--

DROP TABLE IF EXISTS `app_commidity_commodityspu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_commidity_commodityspu` (
  `spu_id` int(11) NOT NULL AUTO_INCREMENT,
  `spu_name` varchar(20) NOT NULL,
  `spu_details` longtext NOT NULL,
  PRIMARY KEY (`spu_id`),
  UNIQUE KEY `spu_name` (`spu_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_commidity_commodityspu`
--

LOCK TABLES `app_commidity_commodityspu` WRITE;
/*!40000 ALTER TABLE `app_commidity_commodityspu` DISABLE KEYS */;
INSERT INTO `app_commidity_commodityspu` VALUES (1,'底特律','底特律：化身为人，这款由Quantic Dream出品的屡获殊荣的游戏产品，终于登陆Steam！这款游戏汇集了多名世界级演员——Jesse Williams（Grey’s Anatomy）、Clancy Brown (Carnivale）、Lance Henriksen（Aliens）、Bryan Dechart（True Blood）以及Valorie Curry(Twilight）。'),(2,'GTA','《侠盗猎车手》是由Rockstar Games开发的以犯罪为主题的世界著名游戏，别名有《侠盗飞车》、《横行霸道》等，于1997年发行第一部作品。 [1] \r\n《侠盗猎车手》在黑帮的背景下混合了驾驶、枪战、格斗、养成乃至经营的元素。这款游戏自《侠盗猎车手：罪恶都市》发行以后便迅速占领玩家们的视野，大多数中国玩家从这里开始认识《侠盗猎车手》。'),(3,'FIFA','EA SPORTS™ FIFA 23 将这项世界级运动推向*,采用 HyperMotion2 技术，为游戏带来更多的真实体验，发布更新后还会加入男子和女子 FIFA World Cup™，新增女子俱乐部球队、跨平台游戏功能等。19,000 多名球员、700+ 支球队、100 座球场和 30 多个联赛让您在 FIFA 23 中体验无与伦比的真实感。'),(4,'城市：天际线','《城市：天际线》是对经典城市模拟类游戏的现代演绎。该游戏引入了全新的游戏玩法元素，让玩家切身体会到创造和维持一座真正城市的兴奋和艰辛，同时扩展了城市建设体验中的一些经久不衰的主题。\r\n\r\n这款游戏由《都市运输》系列游戏的制作者们推出，拥有一个不折不扣的交通系统。它还赋予玩家根据自身游戏风格改造游戏的能力，出色地与多层级且极具挑战性的模拟功能相制衡。您只受您的想像力的限制，放手掌控一切，打造城市天际吧！'),(5,'刺客信条','《刺客信条》是由育碧蒙特利尔工作室研发的动作冒险类游戏系列，于2007年发行第一部，游戏平台为PS3、PC和PSP等。\r\n该游戏系列是以超高的自由度和精美的画面作为最大卖点的动作类游戏。玩家将在每部游戏中控制一名刺客，通过在任务中巧妙穿插重要的历史人物及历史事件带给玩家深沉的代入感。'),(6,'后室','深入后室是一款最多 4 名玩家的合作在线恐怖游戏，您和您的朋友将在其中战斗以逃离不同级别的后室，解决每个谜题中不同的机制。\r\n该游戏基于著名的creepypasta，实现了许多真实参考，例如标志性实体和重要元素。您将不得不探索每个房间，寻找可以帮助您在整个游戏中继续前进并解锁新区域的元素，但是您越走越危险，您必须密切关注该区域，识别每个实体并如果你想生存，知道如何避免它们。'),(7,'荒野大镖客2','《Red Dead Redemption 2》，简称RDR2，是Rockstar San Diego工作室制作，Rockstar Games公司发行的一款动作冒险类开放世界游戏，为2010年该公司发行的《Red Dead Redemption》的正统续作。\r\n游戏中述说亚瑟·摩根和声名狼藉的范德林德帮派的传奇故事，让玩家体验在19世纪的最后岁月里横跨美国的亡命之旅'),(8,'双人成行','游玩《双人成行》，踏上生命中最疯狂的旅程。利用好友通行证*邀请一位好友免费游玩，共同体验多种多样的乐趣，享受颠覆性的玩法挑战。'),(9,'永劫无间','《永劫无间[1]》是由网易旗下“24 Entertainment工作室”开发的一款多人动作竞技游戏[2]，于2021年7月8日开启不删档测试，《永劫无间》Steam全球公测于2021年8月12日10：00正式开服[3][4]。同年12月9日，《永劫无间》正式登陆EPIC商城[52]。2022年6月23日《永劫无间》正式登陆Xbox主机，首发加入XGP[50]。\r\n游戏讲述了以虚构的幻想世界为背景，阴阳二神互相杀伐，导致世界处于永劫之中。玩家需扮演一名英雄，在地图中收集各种资源，与其他玩家对抗，生存到最后。\r\n2021年11月10日，该游戏宣布全球销量突破600万，创下国产买断制游戏销量新纪录[43]。2022年6月13日，游戏全球销量突破1000万份。'),(10,'足球经理','Football Manager(以下简称FM)系列作为足球经理游戏界的龙头老大（虽然此界中也没有几款作品），当得起“艺术”二字。通过与大量足球经纪人合作，加入实时合约谈判，玩家可以在任何时候进行球员签约管理；重塑的训练系统，新增比赛准备区域，以及更基本的训练进度、14种不同的技巧区域；新的球员交互模块，玩家既可以和其他俱乐部进行公开会议，也可以私下和球员进行会谈。');
/*!40000 ALTER TABLE `app_commidity_commodityspu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_commidity_homecarousel`
--

DROP TABLE IF EXISTS `app_commidity_homecarousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_commidity_homecarousel` (
  `home_car_id` int(11) NOT NULL AUTO_INCREMENT,
  `home_car_picture` varchar(100) NOT NULL,
  `home_car_index` int(11) NOT NULL,
  `sku_id_id` int(11) NOT NULL,
  PRIMARY KEY (`home_car_id`),
  KEY `app_commidity_homeca_sku_id_id_183f824f_fk_app_commi` (`sku_id_id`),
  CONSTRAINT `app_commidity_homeca_sku_id_id_183f824f_fk_app_commi` FOREIGN KEY (`sku_id_id`) REFERENCES `app_commidity_commoditysku` (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_commidity_homecarousel`
--

LOCK TABLES `app_commidity_homecarousel` WRITE;
/*!40000 ALTER TABLE `app_commidity_homecarousel` DISABLE KEYS */;
INSERT INTO `app_commidity_homecarousel` VALUES (1,'image/yjwj_4_WloHEYO.jpg',1,9),(2,'image/srcx_2_7wUiHge.jpg',2,8),(3,'image/dbk_4_DmekSVl.jpg',3,7);
/*!40000 ALTER TABLE `app_commidity_homecarousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_commidity_homedisplay`
--

DROP TABLE IF EXISTS `app_commidity_homedisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_commidity_homedisplay` (
  `home_dis_id` int(11) NOT NULL AUTO_INCREMENT,
  `home_dis_identification` tinyint(1) NOT NULL,
  `home_dis_index` int(11) NOT NULL,
  `com_id_id` int(11) NOT NULL,
  `sku_id_id` int(11) NOT NULL,
  PRIMARY KEY (`home_dis_id`),
  KEY `app_commidity_homedi_com_id_id_3e9f233a_fk_app_commi` (`com_id_id`),
  KEY `app_commidity_homedi_sku_id_id_74fa7591_fk_app_commi` (`sku_id_id`),
  CONSTRAINT `app_commidity_homedi_com_id_id_3e9f233a_fk_app_commi` FOREIGN KEY (`com_id_id`) REFERENCES `app_commidity_commoditykind` (`com_id`),
  CONSTRAINT `app_commidity_homedi_sku_id_id_74fa7591_fk_app_commi` FOREIGN KEY (`sku_id_id`) REFERENCES `app_commidity_commoditysku` (`sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_commidity_homedisplay`
--

LOCK TABLES `app_commidity_homedisplay` WRITE;
/*!40000 ALTER TABLE `app_commidity_homedisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_commidity_homedisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_commidity_homepromotion`
--

DROP TABLE IF EXISTS `app_commidity_homepromotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_commidity_homepromotion` (
  `home_pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `home_pro_picture` varchar(100) NOT NULL,
  `home_pro_index` int(11) NOT NULL,
  `home_pro_url` varchar(100) NOT NULL,
  `sku_id_id` int(11) NOT NULL,
  PRIMARY KEY (`home_pro_id`),
  KEY `app_commidity_homepr_sku_id_id_496639b3_fk_app_commi` (`sku_id_id`),
  CONSTRAINT `app_commidity_homepr_sku_id_id_496639b3_fk_app_commi` FOREIGN KEY (`sku_id_id`) REFERENCES `app_commidity_commoditysku` (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_commidity_homepromotion`
--

LOCK TABLES `app_commidity_homepromotion` WRITE;
/*!40000 ALTER TABLE `app_commidity_homepromotion` DISABLE KEYS */;
INSERT INTO `app_commidity_homepromotion` VALUES (1,'image/gta_9_IbyhTGB.jpg',1,'image/gta_10.jpg',2),(2,'image/dtl_2_CJkSqnX.jpg',2,'image/dtl_5_zQVh4Pk.jpg',1),(3,'image/1616981719_909934.jpg',3,'image/1616981719_909934_xY2Pyqc.jpg',9),(4,'image/1556521572_679187.jpg',4,'image/1556521572_679187_lPOO9Go.jpg',5);
/*!40000 ALTER TABLE `app_commidity_homepromotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_commidity_review`
--

DROP TABLE IF EXISTS `app_commidity_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_commidity_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `rev_content` longtext NOT NULL,
  `sku_id_id` int(11) NOT NULL,
  `user_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `app_commidity_review_sku_id_id_b1525de8_fk_app_commi` (`sku_id_id`),
  KEY `app_commidity_review_user_id_id_811e3af4_fk_app_user_user_id` (`user_id_id`),
  CONSTRAINT `app_commidity_review_sku_id_id_b1525de8_fk_app_commi` FOREIGN KEY (`sku_id_id`) REFERENCES `app_commidity_commoditysku` (`sku_id`),
  CONSTRAINT `app_commidity_review_user_id_id_811e3af4_fk_app_user_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `app_user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_commidity_review`
--

LOCK TABLES `app_commidity_review` WRITE;
/*!40000 ALTER TABLE `app_commidity_review` DISABLE KEYS */;
INSERT INTO `app_commidity_review` VALUES (1,'真的很好玩 真的',7,1),(2,'真的很好玩 真的',7,1),(3,'真的很好玩 真的',7,1),(4,'帅啊',1,1),(5,'建议大家玩一把',1,1),(6,'推荐',7,2),(7,'我的天哪',7,3);
/*!40000 ALTER TABLE `app_commidity_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_order_ordercommodity`
--

DROP TABLE IF EXISTS `app_order_ordercommodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_order_ordercommodity` (
  `oc_id` int(11) NOT NULL AUTO_INCREMENT,
  `oc_number` int(11) NOT NULL,
  `oc_price` double NOT NULL,
  `oc_comment` longtext,
  `order_id_id` int(11) NOT NULL,
  `sku_id_id` int(11) NOT NULL,
  PRIMARY KEY (`oc_id`),
  KEY `app_order_ordercommo_order_id_id_834fea9d_fk_app_order` (`order_id_id`),
  KEY `app_order_ordercommo_sku_id_id_e6347bd2_fk_app_commi` (`sku_id_id`),
  CONSTRAINT `app_order_ordercommo_order_id_id_834fea9d_fk_app_order` FOREIGN KEY (`order_id_id`) REFERENCES `app_order_ordermessage` (`order_id`),
  CONSTRAINT `app_order_ordercommo_sku_id_id_e6347bd2_fk_app_commi` FOREIGN KEY (`sku_id_id`) REFERENCES `app_commidity_commoditysku` (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_order_ordercommodity`
--

LOCK TABLES `app_order_ordercommodity` WRITE;
/*!40000 ALTER TABLE `app_order_ordercommodity` DISABLE KEYS */;
INSERT INTO `app_order_ordercommodity` VALUES (1,2,82,'不做评价，默认好评。',1,9),(2,1,102,'不做评价，默认好评',1,1),(4,3,102,'不做评价，默认好评',2,1);
/*!40000 ALTER TABLE `app_order_ordercommodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_order_ordermessage`
--

DROP TABLE IF EXISTS `app_order_ordermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_order_ordermessage` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_pay_methods` varchar(20) NOT NULL,
  `order_all_money` double NOT NULL,
  `order_all_number` int(11) NOT NULL,
  `order_pay_state` tinyint(1) NOT NULL,
  `order_create_time` datetime(6) NOT NULL,
  `user_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_pay_methods` (`order_pay_methods`),
  KEY `app_order_ordermessage_user_id_id_208b035d_fk_app_user_user_id` (`user_id_id`),
  CONSTRAINT `app_order_ordermessage_user_id_id_208b035d_fk_app_user_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `app_user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_order_ordermessage`
--

LOCK TABLES `app_order_ordermessage` WRITE;
/*!40000 ALTER TABLE `app_order_ordermessage` DISABLE KEYS */;
INSERT INTO `app_order_ordermessage` VALUES (1,'微信支付',258,3,1,'2022-10-06 17:00:00.000000',2),(2,'支付宝支付',306,3,1,'2022-10-16 17:00:00.000000',1);
/*!40000 ALTER TABLE `app_order_ordermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user_address`
--

DROP TABLE IF EXISTS `app_user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user_address` (
  `add_id` int(11) NOT NULL AUTO_INCREMENT,
  `add_addressee` varchar(20) NOT NULL,
  `add_receive` varchar(32) NOT NULL,
  `add_iphone` varchar(32) NOT NULL,
  `add_default` tinyint(1) NOT NULL,
  `user_id_id` bigint(20) NOT NULL,
  PRIMARY KEY (`add_id`),
  UNIQUE KEY `add_addressee` (`add_addressee`),
  KEY `app_user_address_user_id_id_d637e6eb_fk_app_user_user_id` (`user_id_id`),
  CONSTRAINT `app_user_address_user_id_id_d637e6eb_fk_app_user_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `app_user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user_address`
--

LOCK TABLES `app_user_address` WRITE;
/*!40000 ALTER TABLE `app_user_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user_user`
--

DROP TABLE IF EXISTS `app_user_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user_user`
--

LOCK TABLES `app_user_user` WRITE;
/*!40000 ALTER TABLE `app_user_user` DISABLE KEYS */;
INSERT INTO `app_user_user` VALUES (1,'pbkdf2_sha256$260000$0zsGIkZS4jNbfnzki0a1E5$112UXGvaXVEK5ia8S8eXIhCSPcNTQkDQdKbUV9xOWtw=','2022-10-17 12:08:46.767732',1,'123','','','',1,1,'2022-10-15 09:18:17.472332',''),(2,'123',NULL,0,'cjx','','','940484969@qq.com',0,1,'2022-10-17 02:39:00.000000','17536011774'),(3,'123',NULL,0,'dqj','','','123@qq.com',0,1,'2022-10-17 05:39:00.000000','13834484402'),(4,'pbkdf2_sha256$260000$JhCszv9MKfNVbnk4jwWzYQ$rlBRTehYWcd9vKr5CiDXLeY7DfEluvjJRjFu0YyxUMA=','2022-10-17 12:03:34.915855',0,'lhd','lhd','lhd','940484969@qq.com',1,1,'2022-10-17 12:03:11.239561','15364964245');
/*!40000 ALTER TABLE `app_user_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user_user_groups`
--

DROP TABLE IF EXISTS `app_user_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_user_user_groups_user_id_group_id_388f2ef0_uniq` (`user_id`,`group_id`),
  KEY `app_user_user_groups_group_id_8dcca2f2_fk_auth_group_id` (`group_id`),
  CONSTRAINT `app_user_user_groups_group_id_8dcca2f2_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `app_user_user_groups_user_id_d117580e_fk_app_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user_user_groups`
--

LOCK TABLES `app_user_user_groups` WRITE;
/*!40000 ALTER TABLE `app_user_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_user_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user_user_user_permissions`
--

DROP TABLE IF EXISTS `app_user_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_user_user_user_permi_user_id_permission_id_fb4c25eb_uniq` (`user_id`,`permission_id`),
  KEY `app_user_user_user_p_permission_id_6ce37997_fk_auth_perm` (`permission_id`),
  CONSTRAINT `app_user_user_user_p_permission_id_6ce37997_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `app_user_user_user_p_user_id_ec2823c7_fk_app_user_` FOREIGN KEY (`user_id`) REFERENCES `app_user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user_user_user_permissions`
--

LOCK TABLES `app_user_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `app_user_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_user_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add address',7,'add_address'),(26,'Can change address',7,'change_address'),(27,'Can delete address',7,'delete_address'),(28,'Can view address',7,'view_address'),(29,'Can add order commodity',8,'add_ordercommodity'),(30,'Can change order commodity',8,'change_ordercommodity'),(31,'Can delete order commodity',8,'delete_ordercommodity'),(32,'Can view order commodity',8,'view_ordercommodity'),(33,'Can add order message',9,'add_ordermessage'),(34,'Can change order message',9,'change_ordermessage'),(35,'Can delete order message',9,'delete_ordermessage'),(36,'Can view order message',9,'view_ordermessage'),(37,'Can add commodity kind',10,'add_commoditykind'),(38,'Can change commodity kind',10,'change_commoditykind'),(39,'Can delete commodity kind',10,'delete_commoditykind'),(40,'Can view commodity kind',10,'view_commoditykind'),(41,'Can add commodity sku',11,'add_commoditysku'),(42,'Can change commodity sku',11,'change_commoditysku'),(43,'Can delete commodity sku',11,'delete_commoditysku'),(44,'Can view commodity sku',11,'view_commoditysku'),(45,'Can add commodity spu',12,'add_commodityspu'),(46,'Can change commodity spu',12,'change_commodityspu'),(47,'Can delete commodity spu',12,'delete_commodityspu'),(48,'Can view commodity spu',12,'view_commodityspu'),(49,'Can add home promotion',13,'add_homepromotion'),(50,'Can change home promotion',13,'change_homepromotion'),(51,'Can delete home promotion',13,'delete_homepromotion'),(52,'Can view home promotion',13,'view_homepromotion'),(53,'Can add home display',14,'add_homedisplay'),(54,'Can change home display',14,'change_homedisplay'),(55,'Can delete home display',14,'delete_homedisplay'),(56,'Can view home display',14,'view_homedisplay'),(57,'Can add home carousel',15,'add_homecarousel'),(58,'Can change home carousel',15,'change_homecarousel'),(59,'Can delete home carousel',15,'delete_homecarousel'),(60,'Can view home carousel',15,'view_homecarousel'),(61,'Can add commdity picture',16,'add_commditypicture'),(62,'Can change commdity picture',16,'change_commditypicture'),(63,'Can delete commdity picture',16,'delete_commditypicture'),(64,'Can view commdity picture',16,'view_commditypicture'),(65,'Can add review',17,'add_review'),(66,'Can change review',17,'change_review'),(67,'Can delete review',17,'delete_review'),(68,'Can view review',17,'view_review'),(69,'Can add cart item',18,'add_cartitem'),(70,'Can change cart item',18,'change_cartitem'),(71,'Can delete cart item',18,'delete_cartitem'),(72,'Can view cart item',18,'view_cartitem'),(73,'Can add sku num',19,'add_skunum'),(74,'Can change sku num',19,'change_skunum'),(75,'Can delete sku num',19,'delete_skunum'),(76,'Can view sku num',19,'view_skunum');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_app_user_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-10-15 09:21:44.380884','1','CommodityKind object (1)',1,'[{\"added\": {}}]',10,1),(2,'2022-10-15 09:21:52.442701','2','CommodityKind object (2)',1,'[{\"added\": {}}]',10,1),(3,'2022-10-15 09:22:14.991655','3','CommodityKind object (3)',1,'[{\"added\": {}}]',10,1),(4,'2022-10-15 09:22:28.572629','4','CommodityKind object (4)',1,'[{\"added\": {}}]',10,1),(5,'2022-10-15 09:23:43.774471','5','CommodityKind object (5)',1,'[{\"added\": {}}]',10,1),(6,'2022-10-15 09:24:13.786522','6','CommodityKind object (6)',1,'[{\"added\": {}}]',10,1),(7,'2022-10-15 09:24:54.044636','7','CommodityKind object (7)',1,'[{\"added\": {}}]',10,1),(8,'2022-10-15 09:25:31.716217','8','CommodityKind object (8)',1,'[{\"added\": {}}]',10,1),(9,'2022-10-15 09:26:46.131714','1','CommoditySpu object (1)',1,'[{\"added\": {}}]',12,1),(10,'2022-10-15 09:26:52.013066','1','CommoditySku object (1)',1,'[{\"added\": {}}]',11,1),(11,'2022-10-15 09:27:59.463586','2','CommoditySpu object (2)',1,'[{\"added\": {}}]',12,1),(12,'2022-10-15 09:30:46.730213','2','CommoditySku object (2)',1,'[{\"added\": {}}]',11,1),(13,'2022-10-15 11:26:05.322107','9','CommodityKind object (9)',1,'[{\"added\": {}}]',10,1),(14,'2022-10-15 11:26:42.423255','3','CommoditySpu object (3)',1,'[{\"added\": {}}]',12,1),(15,'2022-10-15 11:26:46.567234','3','CommoditySku object (3)',1,'[{\"added\": {}}]',11,1),(16,'2022-10-15 11:31:21.773114','3','CommodityKind object (3)',2,'[{\"changed\": {\"fields\": [\"\\u5546\\u54c1\\u79cd\\u7c7b\\u540d\\u79f0\"]}}]',10,1),(17,'2022-10-15 11:32:19.237685','4','CommoditySpu object (4)',1,'[{\"added\": {}}]',12,1),(18,'2022-10-15 11:32:23.017345','4','CommoditySku object (4)',1,'[{\"added\": {}}]',11,1),(19,'2022-10-15 11:38:11.846966','5','CommoditySpu object (5)',1,'[{\"added\": {}}]',12,1),(20,'2022-10-15 11:38:14.757728','5','CommoditySku object (5)',1,'[{\"added\": {}}]',11,1),(21,'2022-10-15 11:41:06.298150','10','CommodityKind object (10)',1,'[{\"added\": {}}]',10,1),(22,'2022-10-15 11:44:01.508472','6','CommoditySpu object (6)',1,'[{\"added\": {}}]',12,1),(23,'2022-10-15 11:44:56.167999','6','CommoditySku object (6)',1,'[{\"added\": {}}]',11,1),(24,'2022-10-15 11:45:29.473248','6','CommoditySku object (6)',2,'[{\"changed\": {\"fields\": [\"\\u5546\\u54c1\\u72b6\\u6001\"]}}]',11,1),(25,'2022-10-15 11:58:25.391298','7','CommoditySpu object (7)',1,'[{\"added\": {}}]',12,1),(26,'2022-10-15 11:58:28.397647','7','CommoditySku object (7)',1,'[{\"added\": {}}]',11,1),(27,'2022-10-15 12:00:11.159295','8','CommoditySpu object (8)',1,'[{\"added\": {}}]',12,1),(28,'2022-10-15 12:00:13.276709','8','CommoditySku object (8)',1,'[{\"added\": {}}]',11,1),(29,'2022-10-15 12:04:35.181455','9','CommoditySpu object (9)',1,'[{\"added\": {}}]',12,1),(30,'2022-10-15 12:04:37.116607','9','CommoditySku object (9)',1,'[{\"added\": {}}]',11,1),(31,'2022-10-15 12:07:09.963651','10','CommoditySpu object (10)',1,'[{\"added\": {}}]',12,1),(32,'2022-10-15 12:07:13.054193','10','CommoditySku object (10)',1,'[{\"added\": {}}]',11,1),(33,'2022-10-15 12:22:50.866214','1','CommdityPicture object (1)',1,'[{\"added\": {}}]',16,1),(34,'2022-10-15 12:23:05.894153','2','CommdityPicture object (2)',1,'[{\"added\": {}}]',16,1),(35,'2022-10-15 12:23:23.008635','2','CommdityPicture object (2)',2,'[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\", \"\\u89c6\\u9891\"]}}]',16,1),(36,'2022-10-15 12:23:28.378723','2','CommdityPicture object (2)',2,'[]',16,1),(37,'2022-10-15 12:23:38.544378','3','CommdityPicture object (3)',1,'[{\"added\": {}}]',16,1),(38,'2022-10-15 12:23:50.188598','4','CommdityPicture object (4)',1,'[{\"added\": {}}]',16,1),(39,'2022-10-15 12:24:01.285576','5','CommdityPicture object (5)',1,'[{\"added\": {}}]',16,1),(40,'2022-10-15 12:24:11.455493','6','CommdityPicture object (6)',1,'[{\"added\": {}}]',16,1),(41,'2022-10-15 12:24:22.372113','7','CommdityPicture object (7)',1,'[{\"added\": {}}]',16,1),(42,'2022-10-15 12:24:36.066585','8','CommdityPicture object (8)',1,'[{\"added\": {}}]',16,1),(43,'2022-10-15 12:24:52.649390','9','CommdityPicture object (9)',1,'[{\"added\": {}}]',16,1),(44,'2022-10-15 12:25:10.097197','10','CommdityPicture object (10)',1,'[{\"added\": {}}]',16,1),(45,'2022-10-15 12:25:22.522046','11','CommdityPicture object (11)',1,'[{\"added\": {}}]',16,1),(46,'2022-10-15 12:25:38.208559','12','CommdityPicture object (12)',1,'[{\"added\": {}}]',16,1),(47,'2022-10-15 12:25:57.058141','13','CommdityPicture object (13)',1,'[{\"added\": {}}]',16,1),(48,'2022-10-15 12:26:20.949391','14','CommdityPicture object (14)',1,'[{\"added\": {}}]',16,1),(49,'2022-10-15 12:31:28.214009','15','CommdityPicture object (15)',1,'[{\"added\": {}}]',16,1),(50,'2022-10-15 12:31:40.429793','16','CommdityPicture object (16)',1,'[{\"added\": {}}]',16,1),(51,'2022-10-15 12:32:00.262294','17','CommdityPicture object (17)',1,'[{\"added\": {}}]',16,1),(52,'2022-10-15 12:32:13.162613','18','CommdityPicture object (18)',1,'[{\"added\": {}}]',16,1),(53,'2022-10-15 12:32:25.840040','19','CommdityPicture object (19)',1,'[{\"added\": {}}]',16,1),(54,'2022-10-15 12:33:08.686212','20','CommdityPicture object (20)',1,'[{\"added\": {}}]',16,1),(55,'2022-10-15 12:33:31.349828','21','CommdityPicture object (21)',1,'[{\"added\": {}}]',16,1),(56,'2022-10-15 12:33:56.447038','22','CommdityPicture object (22)',1,'[{\"added\": {}}]',16,1),(57,'2022-10-15 12:34:08.569295','23','CommdityPicture object (23)',1,'[{\"added\": {}}]',16,1),(58,'2022-10-15 12:42:10.461322','24','CommdityPicture object (24)',1,'[{\"added\": {}}]',16,1),(59,'2022-10-15 12:42:24.957313','25','CommdityPicture object (25)',1,'[{\"added\": {}}]',16,1),(60,'2022-10-15 12:42:41.525598','26','CommdityPicture object (26)',1,'[{\"added\": {}}]',16,1),(61,'2022-10-15 12:42:54.500192','27','CommdityPicture object (27)',1,'[{\"added\": {}}]',16,1),(62,'2022-10-15 12:43:05.861072','28','CommdityPicture object (28)',1,'[{\"added\": {}}]',16,1),(63,'2022-10-15 12:43:27.506556','29','CommdityPicture object (29)',1,'[{\"added\": {}}]',16,1),(64,'2022-10-15 12:43:42.449462','30','CommdityPicture object (30)',1,'[{\"added\": {}}]',16,1),(65,'2022-10-15 12:43:53.757701','31','CommdityPicture object (31)',1,'[{\"added\": {}}]',16,1),(66,'2022-10-15 12:44:12.244786','32','CommdityPicture object (32)',1,'[{\"added\": {}}]',16,1),(67,'2022-10-15 12:44:23.389941','33','CommdityPicture object (33)',1,'[{\"added\": {}}]',16,1),(68,'2022-10-15 12:44:35.901198','34','CommdityPicture object (34)',1,'[{\"added\": {}}]',16,1),(69,'2022-10-15 12:44:50.199236','35','CommdityPicture object (35)',1,'[{\"added\": {}}]',16,1),(70,'2022-10-15 12:45:06.993186','36','CommdityPicture object (36)',1,'[{\"added\": {}}]',16,1),(71,'2022-10-15 12:45:18.446906','37','CommdityPicture object (37)',1,'[{\"added\": {}}]',16,1),(72,'2022-10-15 12:45:31.063751','38','CommdityPicture object (38)',1,'[{\"added\": {}}]',16,1),(73,'2022-10-15 12:45:43.606010','39','CommdityPicture object (39)',1,'[{\"added\": {}}]',16,1),(74,'2022-10-15 12:45:54.829460','40','CommdityPicture object (40)',1,'[{\"added\": {}}]',16,1),(75,'2022-10-15 12:46:15.299926','41','CommdityPicture object (41)',1,'[{\"added\": {}}]',16,1),(76,'2022-10-15 12:46:41.745399','42','CommdityPicture object (42)',1,'[{\"added\": {}}]',16,1),(77,'2022-10-15 12:47:04.187785','43','CommdityPicture object (43)',1,'[{\"added\": {}}]',16,1),(78,'2022-10-15 12:47:20.086281','44','CommdityPicture object (44)',1,'[{\"added\": {}}]',16,1),(79,'2022-10-15 12:47:40.177468','45','CommdityPicture object (45)',1,'[{\"added\": {}}]',16,1),(80,'2022-10-15 12:47:57.642690','46','CommdityPicture object (46)',1,'[{\"added\": {}}]',16,1),(81,'2022-10-15 12:48:19.423527','47','CommdityPicture object (47)',1,'[{\"added\": {}}]',16,1),(82,'2022-10-15 12:48:36.431406','48','CommdityPicture object (48)',1,'[{\"added\": {}}]',16,1),(83,'2022-10-15 13:57:53.001967','9','CommoditySku object (9)',2,'[{\"changed\": {\"fields\": [\"\\u5546\\u54c1\\u5e93\\u5b58\"]}}]',11,1),(84,'2022-10-15 13:58:13.077682','5','CommoditySku object (5)',2,'[{\"changed\": {\"fields\": [\"\\u5546\\u54c1\\u5e93\\u5b58\"]}}]',11,1),(85,'2022-10-15 14:02:39.162347','11','CommoditySku object (11)',1,'[{\"added\": {}}]',11,1),(86,'2022-10-15 14:05:24.654569','49','CommdityPicture object (49)',1,'[{\"added\": {}}]',16,1),(87,'2022-10-15 14:08:08.415390','12','CommoditySku object (12)',1,'[{\"added\": {}}]',11,1),(88,'2022-10-15 14:09:05.374231','50','CommdityPicture object (50)',1,'[{\"added\": {}}]',16,1),(89,'2022-10-15 14:12:34.206746','13','CommoditySku object (13)',1,'[{\"added\": {}}]',11,1),(90,'2022-10-15 14:12:57.886390','13','CommoditySku object (13)',2,'[{\"changed\": {\"fields\": [\"\\u79cd\\u7c7bid\"]}}]',11,1),(91,'2022-10-15 14:14:12.757612','51','CommdityPicture object (51)',1,'[{\"added\": {}}]',16,1),(92,'2022-10-15 14:14:20.990001','52','CommdityPicture object (52)',1,'[{\"added\": {}}]',16,1),(93,'2022-10-15 14:14:27.885938','53','CommdityPicture object (53)',1,'[{\"added\": {}}]',16,1),(94,'2022-10-15 14:16:53.270275','14','CommoditySku object (14)',1,'[{\"added\": {}}]',11,1),(95,'2022-10-15 14:17:04.284532','14','CommoditySku object (14)',2,'[{\"changed\": {\"fields\": [\"\\u79cd\\u7c7bid\"]}}]',11,1),(96,'2022-10-15 14:17:52.897622','15','CommoditySku object (15)',1,'[{\"added\": {}}]',11,1),(97,'2022-10-15 14:18:54.236337','16','CommoditySku object (16)',1,'[{\"added\": {}}]',11,1),(98,'2022-10-15 14:26:03.048252','54','CommdityPicture object (54)',1,'[{\"added\": {}}]',16,1),(99,'2022-10-15 14:26:12.314122','55','CommdityPicture object (55)',1,'[{\"added\": {}}]',16,1),(100,'2022-10-15 14:26:32.984814','56','CommdityPicture object (56)',1,'[{\"added\": {}}]',16,1),(101,'2022-10-15 14:26:42.017663','57','CommdityPicture object (57)',1,'[{\"added\": {}}]',16,1),(102,'2022-10-15 14:26:49.789310','58','CommdityPicture object (58)',1,'[{\"added\": {}}]',16,1),(103,'2022-10-15 14:27:50.681305','59','CommdityPicture object (59)',1,'[{\"added\": {}}]',16,1),(104,'2022-10-15 14:28:06.786447','60','CommdityPicture object (60)',1,'[{\"added\": {}}]',16,1),(105,'2022-10-15 14:28:15.852100','61','CommdityPicture object (61)',1,'[{\"added\": {}}]',16,1),(106,'2022-10-15 14:28:24.549909','62','CommdityPicture object (62)',1,'[{\"added\": {}}]',16,1),(107,'2022-10-15 14:28:31.572090','63','CommdityPicture object (63)',1,'[{\"added\": {}}]',16,1),(108,'2022-10-15 14:31:37.859234','64','CommdityPicture object (64)',1,'[{\"added\": {}}]',16,1),(109,'2022-10-15 14:31:47.178903','65','CommdityPicture object (65)',1,'[{\"added\": {}}]',16,1),(110,'2022-10-15 14:32:02.673374','66','CommdityPicture object (66)',1,'[{\"added\": {}}]',16,1),(111,'2022-10-15 14:54:29.523308','7','CommoditySku object (7)',2,'[{\"changed\": {\"fields\": [\"\\u79cd\\u7c7bid\"]}}]',11,1),(112,'2022-10-15 14:55:29.731634','4','CommoditySku object (4)',2,'[{\"changed\": {\"fields\": [\"\\u79cd\\u7c7bid\"]}}]',11,1),(113,'2022-10-15 14:57:02.936302','2','CommoditySku object (2)',2,'[{\"changed\": {\"fields\": [\"\\u79cd\\u7c7bid\"]}}]',11,1),(114,'2022-10-15 14:57:10.364658','13','CommoditySku object (13)',2,'[{\"changed\": {\"fields\": [\"\\u79cd\\u7c7bid\"]}}]',11,1),(115,'2022-10-16 15:45:11.538377','1','Review object (1)',1,'[{\"added\": {}}]',17,1),(116,'2022-10-16 15:45:21.187689','2','Review object (2)',1,'[{\"added\": {}}]',17,1),(117,'2022-10-16 15:45:35.472107','3','Review object (3)',1,'[{\"added\": {}}]',17,1),(118,'2022-10-16 15:46:25.960739','4','Review object (4)',1,'[{\"added\": {}}]',17,1),(119,'2022-10-16 15:46:50.813530','5','Review object (5)',1,'[{\"added\": {}}]',17,1),(120,'2022-10-16 15:49:32.280269','1','HomeCarousel object (1)',1,'[{\"added\": {}}]',15,1),(121,'2022-10-16 15:50:06.001892','2','HomeCarousel object (2)',1,'[{\"added\": {}}]',15,1),(122,'2022-10-16 15:51:06.846456','3','HomeCarousel object (3)',1,'[{\"added\": {}}]',15,1),(123,'2022-10-16 15:52:47.263823','1','HomePromotion object (1)',1,'[{\"added\": {}}]',13,1),(124,'2022-10-16 15:56:07.916077','2','HomePromotion object (2)',1,'[{\"added\": {}}]',13,1),(125,'2022-10-16 15:57:47.129771','3','HomePromotion object (3)',1,'[{\"added\": {}}]',13,1),(126,'2022-10-16 15:59:24.152042','4','HomePromotion object (4)',1,'[{\"added\": {}}]',13,1),(127,'2022-10-17 02:39:47.961260','2','cjx',1,'[{\"added\": {}}]',6,1),(128,'2022-10-17 02:54:23.337362','1','OrderMessage object (1)',1,'[{\"added\": {}}]',9,1),(129,'2022-10-17 02:56:06.492948','2','OrderMessage object (2)',1,'[{\"added\": {}}]',9,1),(130,'2022-10-17 02:59:03.871726','1','OrderCommodity object (1)',1,'[{\"added\": {}}]',8,1),(131,'2022-10-17 02:59:57.579292','2','OrderCommodity object (2)',1,'[{\"added\": {}}]',8,1),(132,'2022-10-17 03:00:02.417140','3','OrderCommodity object (3)',1,'[{\"added\": {}}]',8,1),(133,'2022-10-17 03:00:16.349491','3','OrderCommodity object (3)',3,'',8,1),(134,'2022-10-17 03:00:38.641174','4','OrderCommodity object (4)',1,'[{\"added\": {}}]',8,1),(135,'2022-10-17 05:31:10.813073','10','CommdityPicture object (10)',3,'',16,1),(136,'2022-10-17 05:36:18.228481','67','CommdityPicture object (67)',1,'[{\"added\": {}}]',16,1),(137,'2022-10-17 05:40:21.088758','3','dqj',1,'[{\"added\": {}}]',6,1),(138,'2022-10-17 05:42:00.967844','6','Review object (6)',1,'[{\"added\": {}}]',17,1),(139,'2022-10-17 05:42:56.642019','7','Review object (7)',1,'[{\"added\": {}}]',17,1),(140,'2022-10-17 05:45:15.372711','11','CommdityPicture object (11)',2,'[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\"]}}]',16,1),(141,'2022-10-17 06:37:05.097168','11','CommdityPicture object (11)',2,'[{\"changed\": {\"fields\": [\"\\u56fe\\u7247\"]}}]',16,1),(142,'2022-10-17 14:44:58.817892','1','CartItem object (1)',1,'[{\"added\": {}}]',18,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(18,'app_cart','cartitem'),(19,'app_cart','skunum'),(16,'app_commidity','commditypicture'),(10,'app_commidity','commoditykind'),(11,'app_commidity','commoditysku'),(12,'app_commidity','commodityspu'),(15,'app_commidity','homecarousel'),(14,'app_commidity','homedisplay'),(13,'app_commidity','homepromotion'),(17,'app_commidity','review'),(8,'app_order','ordercommodity'),(9,'app_order','ordermessage'),(7,'app_user','address'),(6,'app_user','user'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-10-15 09:17:42.164443'),(2,'contenttypes','0002_remove_content_type_name','2022-10-15 09:17:42.193780'),(3,'auth','0001_initial','2022-10-15 09:17:42.267786'),(4,'auth','0002_alter_permission_name_max_length','2022-10-15 09:17:42.281617'),(5,'auth','0003_alter_user_email_max_length','2022-10-15 09:17:42.288015'),(6,'auth','0004_alter_user_username_opts','2022-10-15 09:17:42.294076'),(7,'auth','0005_alter_user_last_login_null','2022-10-15 09:17:42.298670'),(8,'auth','0006_require_contenttypes_0002','2022-10-15 09:17:42.302028'),(9,'auth','0007_alter_validators_add_error_messages','2022-10-15 09:17:42.307924'),(10,'auth','0008_alter_user_username_max_length','2022-10-15 09:17:42.313176'),(11,'auth','0009_alter_user_last_name_max_length','2022-10-15 09:17:42.317872'),(12,'auth','0010_alter_group_name_max_length','2022-10-15 09:17:42.335212'),(13,'auth','0011_update_proxy_permissions','2022-10-15 09:17:42.340243'),(14,'auth','0012_alter_user_first_name_max_length','2022-10-15 09:17:42.347509'),(15,'app_user','0001_initial','2022-10-15 09:17:42.461487'),(16,'admin','0001_initial','2022-10-15 09:17:42.500140'),(17,'admin','0002_logentry_remove_auto_add','2022-10-15 09:17:42.506107'),(18,'admin','0003_logentry_add_action_flag_choices','2022-10-15 09:17:42.514889'),(19,'app_commidity','0001_initial','2022-10-15 09:17:42.684881'),(20,'app_order','0001_initial','2022-10-15 09:17:42.707222'),(21,'app_order','0002_initial','2022-10-15 09:17:42.808264'),(22,'sessions','0001_initial','2022-10-15 09:17:42.826324'),(23,'app_commidity','0002_auto_20221016_2341','2022-10-16 15:41:38.330511'),(24,'app_order','0003_auto_20221017_1026','2022-10-17 02:26:35.548580'),(25,'app_cart','0001_initial','2022-10-17 13:22:39.931247'),(26,'app_cart','0002_auto_20221017_2123','2022-10-17 13:23:57.803688');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2vjr9eymaobk081s1wc09zawosbs0p4d','.eJxVjDsOwjAQBe_iGln-gD-U9JzB2vWucQDZUpxUiLtDpBTQvpl5L5FgXWpaB89pInEWWhx-N4T84LYBukO7dZl7W-YJ5abInQ557cTPy-7-HVQY9VuHCGBBxRCtQUMOVQnHk7bFqOAwMhtwBV3xlrDECFS8J0DNzgXI2oj3B-WjOG8:1okOVX:L8RYoOtv_uASET225aDWJ5bH5oSpYEN_b_z_cV5KdlU','2022-10-31 11:42:11.530962'),('53ooiimxbzmhpkzm5k073iqhpj39jxn9','.eJxVjDsOwjAQBe_iGln-gD-U9JzB2vWucQDZUpxUiLtDpBTQvpl5L5FgXWpaB89pInEWWhx-N4T84LYBukO7dZl7W-YJ5abInQ557cTPy-7-HVQY9VuHCGBBxRCtQUMOVQnHk7bFqOAwMhtwBV3xlrDECFS8J0DNzgXI2oj3B-WjOG8:1ojufK:71XRHtY5tZMaXlHNsS_s2KzTw1NRrU487nUnXFIFU7E','2022-10-30 03:50:18.980513'),('7csgverav06awq6cm1tz61f8h87m08xd','.eJxVjDsOwjAQBe_iGln-gD-U9JzB2vWucQDZUpxUiLtDpBTQvpl5L5FgXWpaB89pInEWWhx-N4T84LYBukO7dZl7W-YJ5abInQ557cTPy-7-HVQY9VuHCGBBxRCtQUMOVQnHk7bFqOAwMhtwBV3xlrDECFS8J0DNzgXI2oj3B-WjOG8:1okOvG:QGddul9DlkHhJnj2TrQBj0Sx1YaVU2dEPo9K7QgFrD8','2022-10-31 12:08:46.770270'),('cir6i1gk492ypoqybhnqtybckkkergwg','.eJxVjDsOwjAQBe_iGln-gD-U9JzB2vWucQDZUpxUiLtDpBTQvpl5L5FgXWpaB89pInEWWhx-N4T84LYBukO7dZl7W-YJ5abInQ557cTPy-7-HVQY9VuHCGBBxRCtQUMOVQnHk7bFqOAwMhtwBV3xlrDECFS8J0DNzgXI2oj3B-WjOG8:1okOXs:5wnmfXzHbkbjHkjcM1EPWAdArS3RrUghEDZj84XdA_U','2022-10-31 11:44:36.223720'),('r641j1pc3uftempih509frl3s9pixqy6','.eJxVjDsOwjAQBe_iGln-gD-U9JzB2vWucQDZUpxUiLtDpBTQvpl5L5FgXWpaB89pInEWWhx-N4T84LYBukO7dZl7W-YJ5abInQ557cTPy-7-HVQY9VuHCGBBxRCtQUMOVQnHk7bFqOAwMhtwBV3xlrDECFS8J0DNzgXI2oj3B-WjOG8:1okOPL:R6TFNS-XyrecFJBjRCc78vOoPB1guqRISzAQ9Gi1CmU','2022-10-31 11:35:47.626483');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-27 22:45:43
