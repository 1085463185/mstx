/*
MySQL Data Transfer
Source Host: localhost
Source Database: ck
Target Host: localhost
Target Database: ck
Date: 2020/9/1 14:48:02
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for step
-- ----------------------------
DROP TABLE IF EXISTS `step`;
CREATE TABLE `step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `src` char(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `menuId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user1
-- ----------------------------
DROP TABLE IF EXISTS `user1`;
CREATE TABLE `user1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usename` char(20) DEFAULT NULL,
  `pwd` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user2
-- ----------------------------
DROP TABLE IF EXISTS `user2`;
CREATE TABLE `user2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usename` char(20) DEFAULT NULL,
  `pwd` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
INSERT INTO `foodsort` VALUES ('1', '时令与热门', '鸡肉,鸡翅,鸡蛋,牛肉,猪肉,小龙虾,皮皮虾,螃蟹,虾,扇贝,生蚝,黄瓜,茄子,西红柿,土豆,黑木耳,秋葵');
INSERT INTO `foodsort` VALUES ('2', '肉禽类', '猪肉,排骨,里脊,猪蹄,五花肉,肋排,牛肉,牛排,肥牛,羊肉,猪肝,猪肘,火腿,香肠,培根,腊肉,肉松,整鸡,鸡肉,鸡翅,鸡腿,乌鸡,鸭肉,乳鸽,鸡蛋,鸭蛋,鸭脖,鹅肝,鹌鹑');
INSERT INTO `menu` VALUES ('1', '蒜蓉粉丝娃娃菜', 'https://i3.meishichina.com/attachment/recipe/2020/08/29/2020082915986952159378197577.jpg?x-oss-process=style/c320', '凉菜', '1', '1', '来自 美食天下 M江 的作品\r\n使用的厨具：炒锅\r\n所属分类： 热菜   家常菜   快手菜  ');
INSERT INTO `menu` VALUES ('2', '紫薯饼', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868712491989812419334.JPG?x-oss-process=style/p800', '小吃', '8', '2', '来自 美食天下 昊妈小厨房 的作品\r\n使用的厨具：不粘锅\r\n所属分类： 面食   家常菜   早餐 ');
INSERT INTO `menu` VALUES ('3', '加州里脊', 'https://i8.meishichina.com/attachment/recipe/2020/08/28/20200828159862139465818510157115.jpg?x-oss-process=style/p800', '主食', '2', '3', '来自 美食天下 噬血gg 的作品\r\n使用的厨具：煮锅\r\n所属分类： 热菜   家常菜   下饭菜  ');
INSERT INTO `menu` VALUES ('4', '土豆小丸子', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159868604360722212541160.png?x-oss-process=style/p800', '小吃', '4', '4', '来自 美食天下 轻饭！ 的作品\r\n使用的厨具：蒸锅\r\n所属分类： 小吃   家常菜  ');
INSERT INTO `menu` VALUES ('5', '桃子生日蛋糕', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/2020082915986778655834709425872.JPG?x-oss-process=style/p800', '西餐', '7', '5', '来自 美食天下 シンディ������ 的作品\r\n使用的厨具：打蛋器、烤箱\r\n所属分类： 烘焙   甜品   生日  ');
INSERT INTO `menu` VALUES ('6', '酸汤面', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159867515030578410737312.jpg?x-oss-process=style/p800', '热菜', '3', '6', '来自 美食天下 红•宏 的作品\r\n使用的厨具：煮锅\r\n所属分类： 面条   家常菜  ');
INSERT INTO `menu` VALUES ('7', '口水红烧肉', 'https://i8.meishichina.com/attachment/recipe/2020/08/27/20200827159859097136199910712932.jpg?x-oss-process=style/p800', '汤羹', '6', '7', '来自 美食天下 SheryWong������ 的作品\r\n使用的厨具：炒锅\r\n所属分类： 热菜   家常菜   中式宴请   宴客菜  ');
INSERT INTO `menu` VALUES ('8', '无油简单南瓜饼', 'https://i8.meishichina.com/attachment/recipe/2020/08/29/20200829159867421621171312562808.jpg?x-oss-process=style/p800', '小吃', '5', '8', '来自 美食天下 孟孟酱 的作品\r\n使用的厨具：不粘锅、平底锅\r\n所属分类： 面食   家常菜   早餐  ');
INSERT INTO `menu` VALUES ('9', '减肥南瓜饼', 'https://f11.baidu.com/it/u=212557663,1717595341&fm=76', '小吃,主食', '5', '9', '所属分类： 面食   家常菜  ');
INSERT INTO `menu` VALUES ('10', '素臊子酸汤面', 'https://i3.meishichina.com/attachment/recipe/2017/10/10/20171010150761414585113.jpg?x-oss-process=style/c320', 'abc', '3', '10', '好吃有营养');
INSERT INTO `menu` VALUES ('11', '五花肉炒莴笋', 'https://i3.meishichina.com/attachment/recipe/2020/09/01/2020090115989397491571958079.jpg?x-oss-process=style/c320', null, null, null, '梦桃缘');
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
INSERT INTO `user1` VALUES ('1', '123', '123');
INSERT INTO `zhongjian` VALUES ('1', '7', '6', '700');
INSERT INTO `zhongjian` VALUES ('2', '7', '8', '130');
