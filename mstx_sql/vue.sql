/*
MySQL Data Transfer
Source Host: localhost
Source Database: vue
Target Host: localhost
Target Database: vue
Date: 2020/9/5 13:04:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cbsort
-- ----------------------------
DROP TABLE IF EXISTS `cbsort`;
CREATE TABLE `cbsort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `className` char(255) NOT NULL,
  `has` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) DEFAULT NULL,
  `src` char(255) DEFAULT NULL,
  `kind` char(30) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for foodsort
-- ----------------------------
DROP TABLE IF EXISTS `foodsort`;
CREATE TABLE `foodsort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` char(255) DEFAULT NULL,
  `has` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) DEFAULT NULL,
  `src` char(255) DEFAULT NULL,
  `kind` char(30) DEFAULT NULL,
  `foodId` int(11) DEFAULT NULL,
  `stepId` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pinglun
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `des` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `img` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for step
-- ----------------------------
DROP TABLE IF EXISTS `step`;
CREATE TABLE `step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `src` char(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `menuId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user1
-- ----------------------------
DROP TABLE IF EXISTS `user1`;
CREATE TABLE `user1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usename` char(20) DEFAULT NULL,
  `pwd` char(20) DEFAULT NULL,
  `headimg` char(255) DEFAULT NULL,
  `label` char(255) DEFAULT NULL,
  `name` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usename` (`usename`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user2
-- ----------------------------
DROP TABLE IF EXISTS `user2`;
CREATE TABLE `user2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usename` char(20) DEFAULT NULL,
  `pwd` char(20) DEFAULT NULL,
  `headimg` char(255) DEFAULT NULL,
  `lable` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zhongjian
-- ----------------------------
DROP TABLE IF EXISTS `zhongjian`;
CREATE TABLE `zhongjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` int(11) DEFAULT NULL,
  `foodid` int(11) DEFAULT NULL,
  `large` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `cbsort` VALUES ('1', '常见菜式', '热菜,凉菜,汤羹,主食,小吃,家常菜,泡酱,腌菜,西餐,烘焙,烤箱菜,饮品,零食,火锅,自制食材,海鲜,宴客菜');
INSERT INTO `cbsort` VALUES ('2', '主食/小吃', '米饭,炒饭,面食,包子,饺子,馒头花卷,面条,饼,粥,馄饨,五谷杂粮,北京小吃,陕西小吃,广东小吃,四川小吃,重庆小吃,天津小吃,上海小吃,福建小吃,湖南小吃,湖北小吃,江西小吃,山东小吃,山西小吃,河南小吃,台湾小吃,江浙小吃,云贵小吃,东北小吃,西北小吃');
INSERT INTO `cbsort` VALUES ('3', '甜品/饮品', '甜品,冰品,果汁,糖水,布丁,果酱,果冻,酸奶,鸡尾酒,咖啡,豆浆,奶昔,冰淇淋');
INSERT INTO `cbsort` VALUES ('4', '适宜人群', '孕妇,产妇,婴儿,儿童,老人,幼儿,哺乳期,青少年');
INSERT INTO `cbsort` VALUES ('5', '食疗食补', '健康食谱,减肥瘦身,贫血痛经,清热祛火,滋阴壮阳,便秘排毒,养颜,滋润补水,健脾养胃,护肝明目,清肺止咳,下奶,补钙,醒酒,抗过敏,防辐射,提高免疫力,流感,驱寒暖身,秋冬进补,消暑解渴');
INSERT INTO `cbsort` VALUES ('6', '场景', '早餐,下午茶,二人世界,野餐,开胃菜,私房菜,快餐,快手菜,宿舍时代,中式宴请,西式宴请');
INSERT INTO `cbsort` VALUES ('7', '饮食方式', '素食,素菜,清真菜,春季食谱,夏季食谱,秋季食谱,冬季食谱,小清新,高颜值');
INSERT INTO `food` VALUES ('1', '西瓜', 'https://static.meishichina.com/img/shicai/xigua.jpg', '水果', '吃瓜群众的最爱');
INSERT INTO `food` VALUES ('2', '猪里脊', 'https://static.meishichina.com/img/shicai/zhuliji.jpg', '肉禽类', '猪肉又名豚肉，是主要家畜之一。属猪科动物。其性味甘咸平，含有丰富的蛋白质及脂肪、碳水化合物、钙、磷、铁等成分。 猪肉是日常生活的主要副食品，具有补虚强身，滋阴润燥、丰肌泽肤的作用。凡病后体弱、产后血虚、面黄赢瘦者，皆可用之作营养滋补之品。');
INSERT INTO `food` VALUES ('3', '面条', 'https://i3.meishichina.com/attachment/recipe/2019/09/17/2019091715687072385589702111.jpg?x-oss-process=style/c320', '面、粉', '好吃');
INSERT INTO `food` VALUES ('4', '土豆', 'https://i3.meishichina.com/attachment/ingredient/2012/03/22/20120322152933694042577.jpg', '蔬菜', '马铃薯（学名：Solanum tuberosum L.），属茄科一年生草本植物，块茎可供食用，是全球第四大重要的粮食作物');
INSERT INTO `food` VALUES ('5', '南瓜', 'https://i3.meishichina.com/attachment/ingredient/2012/03/22/20120322162722766812184.jpg', '蔬菜', '又名麦瓜、番瓜、倭瓜、金瓜、伏瓜、饭瓜、窝瓜、中国南瓜。南瓜属于葫芦科一年生蔓生草本植物的一种，其野生祖先原产于墨西哥、危地马拉一带，很早就传入我国，广泛栽种、食用，因而有“中国南瓜”之说。南瓜的果肉和种子均可食用，花也可以食用。');
INSERT INTO `food` VALUES ('6', '猪肉', 'https://i3.meishichina.com/attachment/ingredient/2012/03/22/20120322142225412671609.jpg', '肉禽类', '猪肉又名豚肉，是主要家畜之一。属猪科动物。其性味甘咸平，含有丰富的蛋白质及脂肪、碳水化合物、钙、磷、铁等成分。 猪肉是日常生活的主要副食品，具有补虚强身，滋阴润燥、丰肌泽肤的作用。凡病后体弱、产后血虚、面黄赢瘦者，皆可用之作营养滋补之品。');
INSERT INTO `food` VALUES ('7', '高筋面粉', ' https://i3.meishichina.com/attachment/ingredient/2013/09/24/20130924155539332814716.jpg', '面、粉', '高筋面粉的蛋白质含量平均为13.5%，通常蛋白质含量在11.5%以上就可叫做高筋面粉。蛋白质含量高，因此筋度强，常用来制作具有弹性与嚼感的面包、面条等。在西饼中多用于在松饼（千层酥）和奶油空心饼（泡芙）中。在蛋糕方面仅限于高成分的水果蛋糕中使用');
INSERT INTO `food` VALUES ('8', '紫薯', 'http://i3.meishichina.com/attachment/ingredient/2016/10/19/20161019147687248684913.jpg', '蔬菜', '紫薯，又叫黑薯，薯肉呈紫色至深紫色。它除了具有普通红薯的营养成分外，还富含硒元素和花青素。');
INSERT INTO `food` VALUES ('9', '米线', ' https://i3.meishichina.com/attachment/ingredient/2012/03/23/201203231743454529411.jpg', '面、粉', '米线，为一种食物，古烹饪书《食次》之中，记米线为“粲”。人们习惯叫米线“酸浆米线”、“酸粉”、“干米线”、“米粉”。其含有丰富的碳水化合物、维生素、矿物质及酵素等，具有熟透迅速、均匀，耐煮不烂，爽口滑嫩，煮后汤水不浊，易于消化的特点，特别适合火锅和休闲快餐食用。');
INSERT INTO `food` VALUES ('19', '小龙虾', 'http://localhost:8000/public/upload/159904317534620120323163445832907554.jpg', ' 水产品', '小龙虾学名克氏原螯虾，也叫红螯虾或者淡水小龙虾。虾营养丰富，且其肉质松软，易消化，对身体虚弱以及病后需要调养的人是极好的食物；虾中含有丰富的镁，镁对心脏活动具有重要的调节作用。');
INSERT INTO `food` VALUES ('20', '排骨', 'http://localhost:8000/public/upload/159904324655920120322143633777716619.jpg', ' 肉禽类', '排骨，指猪、牛、羊等动物剔肉后剩下的肋骨和脊椎骨，上面还附有少量肉类，可以食用，如：红烧排骨，是一道中国家常菜。');
INSERT INTO `food` VALUES ('21', '牛肉', 'http://localhost:8000/public/upload/159904329564520150319140021719234906.jpg', ' 肉禽类', '牛肉是全世界人都爱吃的食品，中国人消费的肉类食品之一，仅次于猪肉，牛肉蛋白质含量高，而脂肪含量低，所以味道鲜美，受人喜爱，享有“肉中骄子”的美称。');
INSERT INTO `food` VALUES ('22', '鸡翅·', 'http://localhost:8000/public/upload/159904334278020120322110206475151264.jpg', ' 肉禽类', '又名鸡翼、大转弯。\n\n鸡翅也称“鸡翼”“大转弯”。鸡的翅膀。肉少，皮富胶质。又分“鸡膀”“膀尖”两种。鸡膀，连接鸡体至鸡翅的第一关节处，肉质较多；膀尖，鸡翅第一关节处至膀尖，骨多肉少。');
INSERT INTO `food` VALUES ('23', '猪蹄', 'http://localhost:8000/public/upload/159904337515020120322143804634147681.jpg', ' 肉禽类', '猪蹄又叫猪脚、猪手，含有丰富的胶原蛋白质，脂肪含量也比肥肉低，并且不含胆固醇，近年在对老年人衰老原因的研究中发现，人体中胶原蛋白质缺乏，是人衰老的一个重要因素。它能防治皮肤干瘪起皱、增强皮肤弹性和韧性，对延缓衰老和促进儿童生长发育都具有特殊意义。为此，人们把猪蹄称为“美容食品”和“类似于熊掌的美味佳肴”。');
INSERT INTO `food` VALUES ('24', '螃蟹·', 'http://localhost:8000/public/upload/159904340744020120322161717315509547.jpg', ' 水产品·', '蟹，动物界，节肢动物门，甲壳纲、十足目、爬行亚目。螃蟹是甲壳类动物(crustacean)，它们的身体被硬壳保护着。螃蟹靠鳃呼吸。在生物分类学上，螃蟹与虾子、龙虾、寄居蟹算是同类的动物。绝大多数种类的螃蟹生活在海里或靠近海洋，当然也有一些的螃蟹栖于淡水或住在陆地。它们靠母蟹来生小螃蟹，每次母蟹都会产很多的卵，数量可达数百万粒以上。螃蟹是依靠地磁场来判断方向的。中国食蟹的历史悠久，《逸周书.五会解》、《周礼.天官.疱人》中均有记载。');
INSERT INTO `food` VALUES ('25', '茄子', 'http://localhost:8000/public/upload/15990434395132012032215350836466124.jpg', ' 蔬菜', '茄子，江浙人称为六蔬，广东人称为矮瓜，是茄科茄属一年生草本植物，热带为多年生。其结出的果实可食用，颜色多为紫色或紫黑色，也有淡绿色或白色品种，形状上也有圆形，椭圆，梨形等各种。茄子是一种典型的蔬菜，根据品种的不同，用法多样。根据营养专家黎黍匀分析，茄子的预防疾病指数为26.29，生命力指数为9.7142，证明对疾病的康复具有相当高的价值，而对生命力的提高属于有效范围。');
INSERT INTO `food` VALUES ('26', '西红柿', 'http://localhost:8000/public/upload/159904346871820120322153159603578329.jpg', ' 蔬菜', '番茄(tomato)别名西红柿、洋柿子，古名六月柿、喜报三元。果实营养丰富，具特殊风味。可以生食、煮食、加工制成番茄酱、汁或整果罐藏。番茄是全世界栽培最为普遍的果菜之一。 美国、苏联、意大利和中国为主要生产国。在欧、美洲的国家、中国和日本有大面积温室、塑料大棚及其他保护地设施栽培。中国各地普遍种植。栽培面积仍在继续扩大。');
INSERT INTO `food` VALUES ('27', '扇贝·', 'http://localhost:8000/public/upload/159904349721120120322162322593269498.jpg', ' 水产品·', '扇贝为双壳纲翼形亚纲珍珠贝目中的一科。广泛分布于世界各海域，以热带海的种类最为丰富。中国已发现约45种,其中北方的栉孔扇贝和南方的华贵栉孔扇贝及长肋日月贝是重要的经济种。扇贝又名海扇，其肉质鲜美，营养丰富，它的闭壳肌干制后即是“干贝”，被列入八珍之一。');
INSERT INTO `food` VALUES ('28', '加州里脊', 'http://localhost:8000/public/upload/159904632437120150319140021719234906.jpg', ' 热菜', 'qqqqq');
INSERT INTO `foodsort` VALUES ('1', '时令与热门', '鸡肉,鸡翅,鸡蛋,牛肉,猪肉,小龙虾,皮皮虾,螃蟹,虾,扇贝,生蚝,黄瓜,茄子,西红柿,土豆,黑木耳,秋葵');
INSERT INTO `foodsort` VALUES ('2', '肉禽类', '猪肉,排骨,里脊,猪蹄,五花肉,肋排,牛肉,牛排,肥牛,羊肉,猪肝,猪肘,火腿,香肠,培根,腊肉,肉松,整鸡,鸡肉,鸡翅,鸡腿,乌鸡,鸭肉,乳鸽,鸡蛋,鸭蛋,鸭脖,鹅肝,鹌鹑');
INSERT INTO `menu` VALUES ('3', '加州里脊', 'https://i8.meishichina.com/attachment/recipe/2020/08/28/20200828159862139465818510157115.jpg?x-oss-process=style/p800', '主食', '2', '3', '来自 美食天下 噬血gg 的作品\r\n使用的厨具：煮锅\r\n所属分类： 热菜   家常菜   下饭菜  ');
INSERT INTO `menu` VALUES ('4', '土豆小丸子', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868604360722212541160.png?x-oss-process=style/p800', '小吃', '4', '4', '来自 美食天下 轻饭！ 的作品\r\n使用的厨具：蒸锅\r\n所属分类： 小吃   家常菜  ');
INSERT INTO `menu` VALUES ('5', '桃子生日蛋糕', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/2020082915986778655834709425872.JPG?x-oss-process=style/p800', '西餐', '7', '5', '来自 美食天下 シンディ������ 的作品\r\n使用的厨具：打蛋器、烤箱\r\n所属分类： 烘焙   甜品   生日  ');
INSERT INTO `menu` VALUES ('6', '酸汤面', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159867515030578410737312.jpg?x-oss-process=style/p800', '热菜', '3', '6', '来自 美食天下 红•宏 的作品\r\n使用的厨具：煮锅\r\n所属分类： 面条   家常菜  ');
INSERT INTO `menu` VALUES ('7', '口水红烧肉', 'https://i8.meishichina.com/attachment/recipe/2020/08/27/20200827159859097136199910712932.jpg?x-oss-process=style/p800', '汤羹', '6', '7', '来自 美食天下 SheryWong������ 的作品\r\n使用的厨具：炒锅\r\n所属分类： 热菜   家常菜   中式宴请   宴客菜  ');
INSERT INTO `menu` VALUES ('8', '无油简单南瓜饼', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159867421621171312562808.jpg?x-oss-process=style/p800', '小吃', '5', '8', '来自 美食天下 孟孟酱 的作品\r\n使用的厨具：不粘锅、平底锅\r\n所属分类： 面食   家常菜   早餐  ');
INSERT INTO `menu` VALUES ('9', '减肥南瓜饼', 'https://f11.baidu.com/it/u=212557663,1717595341&fm=76', '小吃,主食', '5', '9', '所属分类： 面食   家常菜  ');
INSERT INTO `menu` VALUES ('10', '素臊子酸汤面', 'https://i3.meishichina.com/attachment/recipe/2017/10/10/20171010150761414585113.jpg?x-oss-process=style/c320', 'abc', '3', '10', '好吃有营养');
INSERT INTO `menu` VALUES ('11', '五花肉炒莴笋', 'https://i3.meishichina.com/attachment/recipe/2020/09/01/2020090115989397491571958079.jpg?x-oss-process=style/c320', '热菜 午餐', '6', null, '梦桃缘');
INSERT INTO `menu` VALUES ('12', '土豆回锅', 'http://192.168.6.36:8000/public/upload/1599022103228u=2025121965,1524428413&fm=85&app=92&f=JPEG.jpg', '热菜', null, null, '好吃');
INSERT INTO `menu` VALUES ('13', '土豆回锅', 'http://localhost:8000/public/upload/1599022181437u=2025121965,1524428413&fm=85&app=92&f=JPEG.jpg', '热菜', null, null, '好吃');
INSERT INTO `menu` VALUES ('14', '腊肠炒莴笋', 'http://localhost:8000/public/upload/15990225899452020090115989655343331958079.jpg', '热菜', null, null, '有种说不出的清香脆滑');
INSERT INTO `menu` VALUES ('15', '剁椒蒸山药排骨', 'http://localhost:8000/public/upload/15990226621392020090115989656987081958079.jpg', '热菜', null, null, '有种说不出的清香脆滑巨好吃');
INSERT INTO `menu` VALUES ('16', '青椒洋葱炒猪肝', 'http://localhost:8000/public/upload/15990228395052020090115989657605611958079.jpg', '热菜', null, null, '有种说不出的清香脆滑巨好吃');
INSERT INTO `menu` VALUES ('17', '莴笋胡萝卜炒鸡蛋', 'http://localhost:8000/public/upload/15990228741782020090115989656987081958079.jpg', '热菜', null, null, '有种说不出的清香脆滑巨好吃');
INSERT INTO `menu` VALUES ('18', '香辣孜然排骨', 'http://localhost:8000/public/upload/15990229029032020090115989664433041958079.jpg', '热菜', null, null, '有种说不出的清香脆滑巨好吃');
INSERT INTO `menu` VALUES ('19', '芹菜炒猪肝', 'http://localhost:8000/public/upload/15990229306812020090115989671867881958079.jpg', '热菜', null, null, '有种说不出的清香脆滑巨好吃');
INSERT INTO `menu` VALUES ('20', '牛肉炖双色萝卜', 'http://localhost:8000/public/upload/15990229646952020090115989672943711958079.jpg', '热菜', null, null, '有种说不出的清香脆滑巨好吃');
INSERT INTO `menu` VALUES ('21', '腐竹焖海参', 'http://localhost:8000/public/upload/15990230402512020090115989675639981958079.jpg', '热菜', null, null, '有种说不出的清香脆滑巨好吃');
INSERT INTO `menu` VALUES ('22', '凉拌蒜蓉秋葵丨脆嫩多汁，滑润不腻', 'http://localhost:8000/public/upload/15990234360472020090115989462837018197577.jpg', '凉菜', null, null, '清爽可口 入口柔滑 十分舒服');
INSERT INTO `menu` VALUES ('23', '肉丝拌海鲜菇', 'http://localhost:8000/public/upload/15990234838552020090115989248321148197577.jpg', '凉菜', null, null, '清爽可口 入口柔滑 十分舒服');
INSERT INTO `menu` VALUES ('24', '猪头肉拌豆皮', 'http://localhost:8000/public/upload/15990235212332020090115989248321148197577.jpg', '凉菜', null, null, '清爽可口 入口柔滑 十分舒服');
INSERT INTO `menu` VALUES ('25', '凉拌手撕包菜', 'http://localhost:8000/public/upload/15990235494002020090115989241353091958079.jpg', '凉菜', null, null, '清爽可口 入口柔滑 十分舒服');
INSERT INTO `menu` VALUES ('26', '肉丝拌黄瓜', 'http://localhost:8000/public/upload/15990235962102020083015987762204501958079.jpg', '凉菜', null, null, '清爽可口 入口柔滑 十分舒服');
INSERT INTO `menu` VALUES ('27', '凉拌茄子金针菇', 'http://localhost:8000/public/upload/15990236357072020090115989239235421958079.jpg', '凉菜', null, null, '清爽可口 入口柔滑 十分舒服');
INSERT INTO `menu` VALUES ('28', '拌黄瓜', 'http://localhost:8000/public/upload/15990236646452020083015987703509281958079.jpg', '凉菜', null, null, '清爽可口 入口柔滑 十分舒服');
INSERT INTO `menu` VALUES ('29', '蛋黄叉烧肉', 'http://localhost:8000/public/upload/15990237111392020083015987673529591958079.jpg', '凉菜', null, null, '清爽可口 入口柔滑 十分舒服');
INSERT INTO `menu` VALUES ('30', '自制开胃凉粉', 'http://localhost:8000/public/upload/15990237444742020082915987107094598197577.jpg', '凉菜', null, null, '清爽可口 入口柔滑 十分舒服');
INSERT INTO `menu` VALUES ('31', '虾仁菌汤', 'http://localhost:8000/public/upload/15990240518502020011015786662808961.jpg', '汤羹', null, null, '此菜采用原始的材料烹饪出精彩的美味');
INSERT INTO `menu` VALUES ('32', '鸭骨架煲山药', 'http://localhost:8000/public/upload/15990240794502020011015786579545391.jpg', '汤羹', null, null, '此菜采用原始的材料烹饪出精彩的美味');
INSERT INTO `menu` VALUES ('33', '鲫鱼萝卜汤', 'http://localhost:8000/public/upload/15990241062672020011015786370319299702111.jpg', '汤羹', null, null, '此菜采用原始的材料烹饪出精彩的美味');
INSERT INTO `menu` VALUES ('34', '咸猪骨山药菜干汤', 'http://localhost:8000/public/upload/15990241326102020011015786202605739732003.jpg', '汤羹', null, null, '此菜采用原始的材料烹饪出精彩的美味');
INSERT INTO `menu` VALUES ('35', '虾仁南糕炖蛋', 'http://localhost:8000/public/upload/15990241853672020010915785552347049702111.jpg', '汤羹', null, null, '此菜采用原始的材料烹饪出精彩的美味');
INSERT INTO `menu` VALUES ('36', '暖胃羊肉汤', 'http://localhost:8000/public/upload/15990242087602020010915785480475299702111.jpg', '汤羹', null, null, '此菜采用原始的材料烹饪出精彩的美味');
INSERT INTO `menu` VALUES ('37', '萝卜粉丝汤', 'http://localhost:8000/public/upload/15990242450572020010915785469721929702111.jpg', '汤羹', null, null, '此菜采用原始的材料烹饪出精彩的美味');
INSERT INTO `menu` VALUES ('38', '红枣莲子银耳羹', 'http://localhost:8000/public/upload/15990242714502020010915785360445699702111.jpg', '汤羹', null, null, '此菜采用原始的材料烹饪出精彩的美味');
INSERT INTO `menu` VALUES ('39', '醪糟苹果年糕汤', 'http://localhost:8000/public/upload/15990242953822020010915785357662049702111.jpg', '汤羹', null, null, '此菜采用原始的材料烹饪出精彩的美味');
INSERT INTO `menu` VALUES ('40', '黑蒜番茄牛肉汤', 'http://localhost:8000/public/upload/15990243182422020010915785348724789702111.jpg', '汤羹', null, null, '此菜采用原始的材料烹饪出精彩的美味');
INSERT INTO `menu` VALUES ('41', '芹菜猪肉蒸饺', 'http://localhost:8000/public/upload/15990245215492020090115989673925241958079.jpg', '主食', null, null, '此菜采用原始的材料烹饪出精彩的美味');
INSERT INTO `menu` VALUES ('42', '鸡腿茄子焖面', 'http://localhost:8000/public/upload/15990245671102020090115989663576551958079.jpg', '主食', null, null, '此菜采用原始的材料烹饪出精彩的美味 管饱而健康');
INSERT INTO `menu` VALUES ('43', '番茄鸡蛋排骨面', 'http://localhost:8000/public/upload/15990245981482020090115989652285221958079.jpg', '主食', null, null, '此菜采用原始的材料烹饪出精彩的美味 管饱而健康');
INSERT INTO `menu` VALUES ('44', '番茄面片', 'http://localhost:8000/public/upload/15990246221642020090115989436127201958079.jpg', '主食', null, null, '此菜采用原始的材料烹饪出精彩的美味 管饱而健康');
INSERT INTO `menu` VALUES ('45', '麻辣小面', 'http://localhost:8000/public/upload/15990246557132020090115989383401331958079.jpg', '主食', null, null, '此菜采用原始的材料烹饪出精彩的美味 管饱而健康');
INSERT INTO `menu` VALUES ('46', '韭菜香干麦饼卷', 'http://localhost:8000/public/upload/15990246776892020090115989384003021958079.jpg', '主食', null, null, '此菜采用原始的材料烹饪出精彩的美味 管饱而健康');
INSERT INTO `menu` VALUES ('47', '美味海苔寿司', 'http://localhost:8000/public/upload/15990246989892020090115989293408748197577.jpg', '主食', null, null, '此菜采用原始的材料烹饪出精彩的美味 管饱而健康');
INSERT INTO `menu` VALUES ('48', '香菇披萨', 'http://localhost:8000/public/upload/15990247199362020090115989249131558197577.jpg', '主食', null, null, '此菜采用原始的材料烹饪出精彩的美味 管饱而健康');
INSERT INTO `menu` VALUES ('49', '紫薯糯米饼', 'http://localhost:8000/public/upload/15990247424682020090115989249112841958079.jpg', '主食', null, null, '此菜采用原始的材料烹饪出精彩的美味 管饱而健康');
INSERT INTO `menu` VALUES ('50', '茄子肉卤拌面', 'http://localhost:8000/public/upload/15990247635312020090115989242502551958079.jpg', '主食', null, null, '此菜采用原始的材料烹饪出精彩的美味 管饱而健康');
INSERT INTO `menu` VALUES ('51', '淮盐黄金鸡棒槌', 'http://localhost:8000/public/upload/15990252727772020090215990105506108197577.jpg', '小吃', null, null, '美味香脆');
INSERT INTO `menu` VALUES ('52', '炒栗子', 'http://localhost:8000/public/upload/15990252935782020090215990104187098197577.jpg', '小吃', null, null, '美味香脆');
INSERT INTO `menu` VALUES ('53', '麻辣烫', 'http://localhost:8000/public/upload/15990253212892020090115989305027601958079.jpg', '小吃', null, null, '美味香脆');
INSERT INTO `menu` VALUES ('54', '钵钵鸡（家庭版）', 'http://localhost:8000/public/upload/15990253710722020090115989240535238197577.jpg', '小吃', null, null, '美味香脆');
INSERT INTO `menu` VALUES ('55', '芒果糯米糍', 'http://localhost:8000/public/upload/15990253898332020090115989242412208197577.jpg', '小吃', null, null, '美味香脆');
INSERT INTO `menu` VALUES ('56', '肉松', 'http://localhost:8000/public/upload/15990254110832020083115988683049978197577.jpg', '小吃', null, null, '美味香脆');
INSERT INTO `menu` VALUES ('57', '龟苓膏', 'http://localhost:8000/public/upload/15990254349482020083115988614988841958079.jpg', '小吃', null, null, '美味香脆');
INSERT INTO `menu` VALUES ('58', '韩国辣年糕', 'http://localhost:8000/public/upload/15990254680502020083115988518784448197577.jpg', '小吃', null, null, '美味香脆');
INSERT INTO `menu` VALUES ('59', '香蕉鱼松卷', 'http://localhost:8000/public/upload/15990254881152020083115988402266308197577.jpg', '小吃', null, null, '美味香脆');
INSERT INTO `menu` VALUES ('60', '牛肝菌鸡汤米线', 'http://localhost:8000/public/upload/15990255084302020083015987952267908197577.jpg', '小吃', null, null, '美味香脆');
INSERT INTO `menu` VALUES ('61', '香菇披萨', 'http://localhost:8000/public/upload/15990257027512020090115989249131558197577.jpg', '西餐', null, null, '对于西餐界来说这就是最好吃的没有之一');
INSERT INTO `menu` VALUES ('62', '番茄牛排虾仁意面', 'http://localhost:8000/public/upload/15990257292282020083115988577117731958079.jpg', '西餐', null, null, '对于西餐界来说这就是最好吃的没有之一');
INSERT INTO `menu` VALUES ('63', '爆款芝士薯条', 'http://localhost:8000/public/upload/15990257536792020083015987926855128197577.jpg', '西餐', null, null, '对于西餐界来说这就是最好吃的没有之一');
INSERT INTO `menu` VALUES ('64', '火腿披萨', 'http://localhost:8000/public/upload/15990257812782020082915987107973378197577.jpg', '西餐', null, null, '对于西餐界来说这就是最好吃的没有之一');
INSERT INTO `menu` VALUES ('65', '可丽饼', 'http://localhost:8000/public/upload/15990258071472020082915986759952008197577.jpg', '西餐', null, null, '对于西餐界来说这就是最好吃的没有之一');
INSERT INTO `menu` VALUES ('66', '美味的牛奶蓝莓麦片', 'http://localhost:8000/public/upload/15990259056272020082715985008435228197577.jpg', '西餐', null, null, '此西餐世上独有的美味佳肴');
INSERT INTO `menu` VALUES ('67', '黑胡椒牛排丨浓郁黑椒汁香到流口水！！！！', 'http://localhost:8000/public/upload/15990259315492020082615984321471458197577.jpg', '西餐', null, null, '此西餐世上独有的美味佳肴');
INSERT INTO `menu` VALUES ('68', '香酥脆黑胡椒薯片鸡翅根', 'http://localhost:8000/public/upload/15990259525512020082515983265011438197577.jpg', '西餐', null, null, '此西餐世上独有的美味佳肴');
INSERT INTO `menu` VALUES ('71', '猪饲料', '', '肉禽类', null, null, '很好吃的啊');
INSERT INTO `pinglun` VALUES ('1', '早餐', 'https://i3.meishichina.com/attachment/pai/2020/09/03/20200903159909126317456711350663.jpg?x-oss-process=style/c180', '早上好', '1', '2');
INSERT INTO `pinglun` VALUES ('2', '2020-9-3早餐。早上好！美友们', 'https://i3.meishichina.com/attachment/pai/2020/09/03/20200903159909302938530010602029.jpg?x-oss-process=style/c180', '#早餐#白粥，番薯芋头，冬枣', '2', '2');
INSERT INTO `pinglun` VALUES ('3', '早安', 'https://i3.meishichina.com/attachment/pai/2020/09/03/20200903159909605642660911075235.jpg?x-oss-process=style/c180', '#早餐#油条+豆浆', '1', '4');
INSERT INTO `pinglun` VALUES ('4', '回家暗杀看就看', 'http://192.168.6.36:8000/public/upload/1599121504580wallhaven-96qe2d.jpg', '啊暗黑世界很大空间', null, '10');
INSERT INTO `pinglun` VALUES ('5', '啊实打实的啊', 'http://192.168.6.36:8000/public/upload/1599122016230wallhaven-96qe2d.jpg', '啊撒旦撒', null, '10');
INSERT INTO `pinglun` VALUES ('6', 'asdfgf', 'http://localhost:8000/public/upload/1599133899689340F103C38D051DBE168C74FA30E94D5.png', '早餐', null, '2');
INSERT INTO `pinglun` VALUES ('7', '啦啦啦啦啦啦', 'http://localhost:8000/public/upload/15991344249272020-6-16_ 13-18-25.png', '这个超级好看', null, '12');
INSERT INTO `pinglun` VALUES ('8', 'asdasdsd', 'http://localhost:8000/public/upload/15991350174002020-6-16_ 13-12-51.png', '11', null, '11');
INSERT INTO `pinglun` VALUES ('9', 'asdasd', 'http://localhost:8000/public/upload/15991350670012020-6-16_ 13-05-16.png', 'asd', null, '11');
INSERT INTO `step` VALUES ('1', '1', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159869384315766512329829.jpg?x-oss-process=style/p320', '娃娃菜洗净上锅里焯一下水捞出，粉丝用热水泡软捞出铺在盘底，蒜蓉和葱剁碎备用，调料都放进碗里备用。', '1');
INSERT INTO `step` VALUES ('2', '2', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159869406259963512329829.jpg?x-oss-process=style/p320', '泡好的粉丝铺盘底。', '1');
INSERT INTO `step` VALUES ('3', '3', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159869410498925712329829.jpg?x-oss-process=style/p320', '把焯过水的白菜放到粉丝上，再撒上蒜蓉，辣椒碎，把调料淋在上面。', '1');
INSERT INTO `step` VALUES ('4', '4', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159869421238719012329829.jpg?x-oss-process=style/p320', '热水上锅蒸5分钟浇上热油，香喷喷的蒜蓉粉丝就好啦。', '1');
INSERT INTO `step` VALUES ('5', '1', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868742489227712419334.JPG?x-oss-process=style/p320', '蒸紫薯。多蒸两个红薯当早餐。蒸好的紫薯去皮，取220克紫薯捣烂成泥，趁热加入炼奶拌匀，放在盘子里加盖保鲜膜防止干裂。面团材料里的面粉、紫薯粉（没有可不加，就做白色饼皮）、糖倒进盆子里，酵母粉加少许温水化开，倒进面粉里揉成光滑面团，盖保鲜膜发酵半小时。', '2');
INSERT INTO `step` VALUES ('6', '2', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868760717287812419334.JPG?x-oss-process=style/p320', '取出面团排气，分成12份，紫薯泥也分12份。取一个小剂子擀开，包入紫薯馅，收口搓圆，用绿豆糕/月饼模具压出花型，或者直接用手按扁成圆形。随意。', '2');
INSERT INTO `step` VALUES ('7', '3', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868762291186912419334.JPG?x-oss-process=style/p320', '全部做好饼胚，松弛五分钟。不粘锅倒多一点食用油，油热后把紫薯饼放进去煎两面金黄即可。', '2');
INSERT INTO `step` VALUES ('8', '4', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868744282254612419334.JPG?x-oss-process=style/p320', '皮酥脆，馅香甜。', '2');
INSERT INTO `step` VALUES ('9', '5', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868744961176612419334.JPG?x-oss-process=style/p320', '最爱这抹紫。', '2');
INSERT INTO `step` VALUES ('10', '1', 'https://i8.meishichina.com/attachment/recipe/2020/08/27/20200827159859119530340710712932.jpg?x-oss-process=style/p320', '准备需要的材料', '7');
INSERT INTO `step` VALUES ('11', '2', 'https://i8.meishichina.com/attachment/recipe/2020/08/27/20200827159859121273971310712932.jpg?x-oss-process=style/p320', '五花肉切块，我用的瘦五花。按自己喜好选择。姜切片，葱切段备用。', '7');
INSERT INTO `step` VALUES ('12', '3', 'https://i8.meishichina.com/attachment/recipe/2020/08/27/20200827159859123013917410712932.jpg?x-oss-process=style/p320', '热锅冷油，小火将八角炸出香味，下白砂糖炒到棕色下五花肉。', '7');
INSERT INTO `step` VALUES ('13', '4', 'https://i8.meishichina.com/attachment/recipe/2020/08/27/20200827159859123962910410712932.jpg?x-oss-process=style/p320', '肉均匀上色后加入葱姜，香叶，辣椒，老抽，料酒。', '7');
INSERT INTO `step` VALUES ('14', '5', 'https://i8.meishichina.com/attachment/recipe/2020/08/27/20200827159859125818946110712932.jpg?x-oss-process=style/p320', '炒制开始出油，加入刚好没过肉的开水，下冰糖，盐，盖锅盖中火烧40分钟。', '7');
INSERT INTO `step` VALUES ('15', '6', 'https://i8.meishichina.com/attachment/recipe/2020/08/27/20200827159859126749558310712932.jpg?x-oss-process=style/p320', '烧好如果觉得汤汁还太多改大火收汁即可。颜色已经很漂亮了。', '7');
INSERT INTO `step` VALUES ('16', '7', 'https://i8.meishichina.com/attachment/recipe/2020/08/27/20200827159859128284062210712932.jpg?x-oss-process=style/p320', '摆盘点缀片芹菜叶。汤汁拌饭面条更美味。口水流一地。', '7');
INSERT INTO `step` VALUES ('17', '8', 'https://i8.meishichina.com/attachment/recipe/2020/08/27/20200827159859129727523210712932.jpg?x-oss-process=style/p320', '成品图。', '7');
INSERT INTO `step` VALUES ('18', '1', 'https://i8.meishichina.com/attachment/recipe/201202/201202141305591329938106.jpg?x-oss-process=style/p320', '准备原料', '3');
INSERT INTO `step` VALUES ('19', '2', 'https://i8.meishichina.com/attachment/recipe/201202/201202141306211329679000.jpg?x-oss-process=style/p320', '里脊肉切成条加料酒胡椒粉，盐腌制', '3');
INSERT INTO `step` VALUES ('20', '3', 'https://i8.meishichina.com/attachment/recipe/201202/201202141306511330075561.jpg?x-oss-process=style/p320', '面粉和淀粉一比一加一个鸡蛋，盐适量调成糊糊', '3');
INSERT INTO `step` VALUES ('21', '4', 'https://i8.meishichina.com/attachment/recipe/201202/201202141307491330061113.jpg?x-oss-process=style/p320', '里脊肉过上面糊', '3');
INSERT INTO `step` VALUES ('22', '5', 'https://i8.meishichina.com/attachment/recipe/201202/201202141308471329527852.jpg?x-oss-process=style/p320', '油温5成热炸制金黄色', '3');
INSERT INTO `step` VALUES ('23', '6', 'https://i8.meishichina.com/attachment/recipe/201202/201202141309291329982773.jpg?x-oss-process=style/p320', '捞出等油温8成热倒入30秒钟左右复炸‚', '3');
INSERT INTO `step` VALUES ('24', '7', 'https://i8.meishichina.com/attachment/recipe/201202/201202141310321329887369.jpg?x-oss-process=style/p320', '倒入番茄酱适量，白醋和白糖一比一适量水淀粉的汁子，锅中一点点油即可炒到粘稠', '3');
INSERT INTO `step` VALUES ('25', '8', 'https://i8.meishichina.com/attachment/recipe/201202/201202141311031329844620.jpg?x-oss-process=style/p320', '倒入炸好的里脊和芝麻即可‚', '3');
INSERT INTO `step` VALUES ('26', '9', 'https://i8.meishichina.com/attachment/recipe/201202/201202141311331329945497.jpg?x-oss-process=style/p320', 'ç‚¸åˆ¶æ·¡é‡‘é»„è‰²å‡ºé”…å¤‡ç”¨ã€‚', '3');
INSERT INTO `step` VALUES ('27', '10', 'https://i8.meishichina.com/attachment/recipe/201202/201202141312451330088370.jpg?x-oss-process=style/p320', 'ç«ä¸è¦åœï¼Œç»§ç»­åŠ çƒ­ï¼Œæ²¹çƒ§åˆ°çº¢ï¼Œå¼€å°ç«æŠŠåˆšæ‰ç‚¸çš„æ·¡é»„è‰²çš„é‡Œè„Šæ¡å†æ¬¡è¿›é”…ç‚¸è‡³é‡‘é»„å‡ºé”…ã€‚', '3');
INSERT INTO `step` VALUES ('28', '11', 'https://i8.meishichina.com/attachment/recipe/201202/201202141314241329532971.jpg?x-oss-process=style/p320', 'é…è°ƒæ–™ï¼šç•ªèŒ„é…±ï¼Œç™½é†‹ï¼Œé¸¡ç²¾ï¼Œå’¸ç›ï¼Œè€—æ²¹ï¼Œç™½ç ‚ç³–ï¼Œè¿™ä¸ªæ ¹æ®ä¸ªäººå£å‘³ï¼Œå–œæ¬¢é…¸çš„å°±å¤šå®¶å•ç™½é†‹ï¼Œå–œæ¬¢ç”œçš„å°±å¤šåŠ ç‚¹ç™½ç ‚ç³–ã€‚è¿™ä¸ªæ ¹æ®è‡ªå·±å°±å¥½ã€‚', '3');
INSERT INTO `step` VALUES ('29', '12', 'https://i8.meishichina.com/attachment/recipe/201202/201202141318201330175077.jpg?x-oss-process=style/p320', 'ç››ç›˜ï¼Œè¿™æ ·ç¾Žå‘³çš„ç³–é†‹é‡Œè„Šä½ èƒ½æŠµæŒ¡å—ï¼Ÿ', '3');
INSERT INTO `step` VALUES ('30', '1', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868618316697612541160.png?x-oss-process=style/p320', 'å‡†å¤‡å¥½æ‰€éœ€è¦çš„é£Ÿæï¼ï¼ï¼ï¼ï¼', '4');
INSERT INTO `step` VALUES ('31', '2', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868618606642012541160.png?x-oss-process=style/p320', 'å°†åœŸè±†æ´—å‡€åŽ»çš®ï¼Œåˆ‡æˆç‰‡ã€‚è’¸é”…ä¸­åŠ æ°´ï¼Œæ°´çƒ§å¼€åŽæ”¾å…¥åœŸè±†ç‰‡ï¼Œè’¸15åˆ†é’ŸåŽç¢¾æˆæ³¥', '4');
INSERT INTO `step` VALUES ('32', '3', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868618891435412541160.png?x-oss-process=style/p320', 'åŠ å…¥é€‚é‡çš„åœŸè±†æ·€ç²‰æ‰æˆé¢å›¢ã€‚', '4');
INSERT INTO `step` VALUES ('33', '4', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868619118238312541160.png?x-oss-process=style/p320', 'å†å°†é¢å›¢æ‰æˆå¤§å°å‡åŒ€çš„å°ä¸¸å­ã€‚æˆ‘ä»¬åŒæ‰‹ç²˜ä¸Šå°‘é‡æ²¹ï¼Œè¿™æ ·æå°ä¸¸å­æ—¶åœŸè±†ä¸é»æ‰‹ã€‚', '4');
INSERT INTO `step` VALUES ('34', '5', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868619300329612541160.png?x-oss-process=style/p320', 'é”…ä¸­å€’å…¥é€‚é‡çš„æ¸…æ°´ï¼Œæ°´çƒ§å¼€åŽï¼Œå°†è’¸å±‰ä¸Šåˆ·ä¸€å±‚æ²¹ï¼Œæ”¾ä¸Šæ‰å¥½çš„å°ä¸¸å­ï¼Œä¸­ç«è’¸10åˆ†é’Ÿã€‚', '4');
INSERT INTO `step` VALUES ('35', '6', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868619620092212541160.png?x-oss-process=style/p320', 'å‡†å¤‡ä¸‡èƒ½è˜¸æ–™ï¼Œç¢—ä¸­æ”¾é€‚é‡çš„é™ˆé†‹ã€é¦™æ²¹ã€ç”ŸæŠ½ã€å°ç±³è¾£ã€è‘±èŠ±ã€èŠéº»ã€ç›æ…æ‹Œå‡åŒ€ã€‚', '4');
INSERT INTO `step` VALUES ('36', '7', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868619982880812541160.png?x-oss-process=style/p320', 'å°ä¸¸å­è’¸ç†ŸåŽï¼Œå†é…ä¸Šé…±æ±å³å¯ã€‚', '4');
INSERT INTO `step` VALUES ('37', '8', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868620156999912541160.png?x-oss-process=style/p320', 'ç”¨åœŸè±†åšçš„åœŸè±†å°ä¸¸å­ï¼Œå½¢çŠ¶å°å·§å¯çˆ±ï¼Œå‘³é“è½¯ç³¯å¯å£ï¼Œå†é…ä¸Šè¿™ä¸ªä¸‡èƒ½è˜¸æ–™ï¼Œä¸€å£ä¸€ä¸ªæ ¹æœ¬åœä¸ä¸‹æ¥ï¼ä½ ä¹Ÿèµ¶ç´§è¯•è¯•å§ã€‚', '4');
INSERT INTO `step` VALUES ('39', '1', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/2020082915986786469919829425872.JPG?x-oss-process=style/p320', '分蛋3个，蛋清放一旁备用（无图）', '5');
INSERT INTO `step` VALUES ('40', '2', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/2020082915986786724034569425872.JPG?x-oss-process=style/p320', '烤箱放烤盘加水，预热300F（150C）', '5');
INSERT INTO `step` VALUES ('41', '3', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/2020082915986787583031439425872.JPG?x-oss-process=style/p320', '三个蛋黄 + 40g(1/4杯)玉米油 + 67g(1/3杯)牛奶 + 60g(1/2杯)低筋面粉。搅拌到顺滑', '5');
INSERT INTO `step` VALUES ('42', '4', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/2020082915986787796539269425872.JPG?x-oss-process=style/p320', '蛋清中加数滴柠檬汁，高速打发至出大泡，分两次加入40g糖粉。', '5');
INSERT INTO `step` VALUES ('43', '5', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/2020082915986787972794619425872.JPG?x-oss-process=style/p320', '打发至这种小弯尖的状态。', '5');
INSERT INTO `step` VALUES ('44', '6', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/2020082915986788329881059425872.JPG?x-oss-process=style/p320', '将1/3打发的蛋清倒入蛋黄糊，按一个方向轻! 轻! 慢慢搅匀，再放1/3轻轻搅匀，再全部混合轻轻搅匀。', '5');
INSERT INTO `step` VALUES ('45', '7', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/2020082915986788524793989425872.JPG?x-oss-process=style/p320', '用锡箔纸做一个帽子盖在蛋糕模上，放入水浴，300F(150C)烤60分钟。', '5');
INSERT INTO `step` VALUES ('46', '8', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/2020082915986788919489379425872.JPG?x-oss-process=style/p320', '抹上打发好的奶油，再放上片好片的喜爱的水果(此处推荐黄桃罐头)。', '5');
INSERT INTO `step` VALUES ('47', '9', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/2020082915986789279707019425872.JPG?x-oss-process=style/p320', '成品！', '5');
INSERT INTO `step` VALUES ('48', '1', 'https://i8.meishichina.com/attachment/recipe/2019/12/31/20191231157775595022611984358.jpg?x-oss-process=style/p320', '准备好以上食材待用（蔬菜可以选择自己喜欢的哈）', '6');
INSERT INTO `step` VALUES ('49', '2', 'https://i8.meishichina.com/attachment/recipe/2019/12/31/20191231157775586645611984358.jpg?x-oss-process=style/p320', '锅烧热倒入适量食用油放入花椒慢火炸', '6');
INSERT INTO `step` VALUES ('50', '3', 'https://i8.meishichina.com/attachment/recipe/2019/12/31/20191231157775586809211984358.jpg?x-oss-process=style/p320', '再倒入胡椒面和白芝麻里面', '6');
INSERT INTO `step` VALUES ('51', '4', 'https://i8.meishichina.com/attachment/recipe/2019/12/31/20191231157775586969911984358.jpg?x-oss-process=style/p320', '然后再倒入事先调和好的醋汁里面一起混合（醋汁是以上的陈醋、生抽、白糖的', '6');
INSERT INTO `step` VALUES ('52', '5', 'https://i8.meishichina.com/attachment/recipe/2019/12/31/20191231157775587254311984358.jpg?x-oss-process=style/p320', '下入面条', '6');
INSERT INTO `step` VALUES ('53', '6', 'https://i8.meishichina.com/attachment/recipe/2019/12/31/20191231157775587407811984358.jpg?x-oss-process=style/p320', '待面条煮软后加入茼蒿煮熟即可', '6');
INSERT INTO `step` VALUES ('54', '7', 'https://i8.meishichina.com/attachment/recipe/2019/12/31/20191231157775587538711984358.jpg?x-oss-process=style/p320', '面条捞入调和好的醋汁里面，摆上茼蒿、鸡蛋，加入适量白开水即可', '6');
INSERT INTO `step` VALUES ('55', '1', 'https://i8.meishichina.com/attachment/recipe/201109/201109221232150.jpg?x-oss-process=style/p320', '准备好食材：南瓜、鸡蛋、葱花。', '8');
INSERT INTO `step` VALUES ('56', '2', 'https://i8.meishichina.com/attachment/recipe/201109/201109221232544.jpg?x-oss-process=style/p320', '葱切成葱花，打入鸡蛋和南瓜丝搅拌均', '8');
INSERT INTO `step` VALUES ('57', '3', 'https://i8.meishichina.com/attachment/recipe/201109/201109221233251.jpg?x-oss-process=style/p320', '加入面粉，盐、胡椒、鸡精、少许色拉油搅拌成面糊', '8');
INSERT INTO `step` VALUES ('58', '4', 'https://i8.meishichina.com/attachment/recipe/201109/201109221234281.jpg?x-oss-process=style/p320', '平底锅放少许油，取面糊，煎成圆形小', '8');
INSERT INTO `step` VALUES ('59', '5', 'https://i8.meishichina.com/attachment/recipe/201109/201109221234504.jpg?x-oss-process=style/p320', '煎至两面金黄即可出锅。', '8');
INSERT INTO `step` VALUES ('60', '6', 'https://i8.meishichina.com/attachment/recipe/201109/201109221236178.jpg?x-oss-process=style/p320', ' 软软的南瓜鸡蛋饼就大功告成啦，是不是很简单呢。', '8');
INSERT INTO `step` VALUES ('61', '7', 'https://i8.meishichina.com/attachment/recipe/201109/201109221236517.jpg?x-oss-process=style/p320', '再搭配碗美味的豆浆，绝对的营养早餐', '8');
INSERT INTO `user1` VALUES ('2', '13228159069', 'chenkun123456@', 'https://i5.meishichina.com/data/avatar/001/90/09/92_avatar_big.jpg?x-oss-process=style/c180&v=2020090219', '成功才是一切', '陈坤');
INSERT INTO `user1` VALUES ('4', '18728673347', 'abc123_@', 'https://i5.meishichina.com/data/avatar/008/45/19/54_avatar_big.jpg?x-oss-process=style/c180&v=2020090219', '失败不可怕', '周鹏');
INSERT INTO `user1` VALUES ('6', '13549840036', 'abc123_@', 'https://i5.meishichina.com/data/avatar/001/49/96/80_avatar_big.jpg?x-oss-process=style/c180&v=2020090219', '可怕的是害怕失败', '周鹏');
INSERT INTO `user1` VALUES ('8', '15524375547', 'chenkun123_@', 'https://i5.meishichina.com/data/avatar/012/52/61/31_avatar_big.jpg?x-oss-process=style/c180&v=2020090219', 'we are team', '俞正理');
INSERT INTO `user1` VALUES ('9', '15532693368', 'a123_#222', 'https://i5.meishichina.com/data/avatar/006/10/08/32_avatar_big.jpg?x-oss-process=style/c180&v=2020090219', '相信自己', '夏阳');
INSERT INTO `user1` VALUES ('10', '13550802713', 'dzh123456@_', null, null, '邓智涵');
INSERT INTO `user1` VALUES ('11', '15680260863', '123abc_@', 'http://localhost:8000/public/upload/1599132226783340F103C38D051DBE168C74FA30E94D5.png', '我是不一样的精彩asdsds', '111');
INSERT INTO `user1` VALUES ('12', '18990782060', '123a@_', 'http://localhost:8000/public/upload/15991343909122020-6-16_ 13-12-51.png', '我想吃遍所有美食哈哈哈哈', 'dfdfdfdhyyhy');
INSERT INTO `user2` VALUES ('1', 'www', 'eee', null, null);
INSERT INTO `user2` VALUES ('2', '321', '321', null, null);
INSERT INTO `user2` VALUES ('3', '123', '321', 'http://192.168.6.36:8000/public/upload/159911599329120120322162322593269498.jpg', '322');
INSERT INTO `user2` VALUES ('4', '陈坤', '12133', 'http://localhost:8000/public/upload/159912992622320120322143804634147681.jpg', 'aaaa');
INSERT INTO `zhongjian` VALUES ('1', '7', '6', '700');
INSERT INTO `zhongjian` VALUES ('2', '7', '8', '130');
INSERT INTO `zhongjian` VALUES ('3', '1', '9', '135');
INSERT INTO `zhongjian` VALUES ('4', '2', '7', '500');
INSERT INTO `zhongjian` VALUES ('5', '3', '7', '185');
INSERT INTO `zhongjian` VALUES ('6', '4', '7', '165');
INSERT INTO `zhongjian` VALUES ('7', '5', '7', '225');
INSERT INTO `zhongjian` VALUES ('8', '6', '3', '500');
INSERT INTO `zhongjian` VALUES ('9', '1', '6', '75');
INSERT INTO `zhongjian` VALUES ('10', '2', '8', '125');
INSERT INTO `zhongjian` VALUES ('11', '3', '2', '300');
INSERT INTO `zhongjian` VALUES ('12', '4', '6', '200');
INSERT INTO `zhongjian` VALUES ('13', '4', '4', '255');
INSERT INTO `zhongjian` VALUES ('14', '5', '8', '165');
INSERT INTO `zhongjian` VALUES ('15', '8', '5', '225');
INSERT INTO `zhongjian` VALUES ('16', '8', '6', '85');
INSERT INTO `zhongjian` VALUES ('17', '8', '7', '115');
INSERT INTO `zhongjian` VALUES ('18', '9', '5', '55');
INSERT INTO `zhongjian` VALUES ('19', '9', '7', '45');
INSERT INTO `zhongjian` VALUES ('20', '10', '3', '600');
INSERT INTO `zhongjian` VALUES ('21', '10', '6', '215');
