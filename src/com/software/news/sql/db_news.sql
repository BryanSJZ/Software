/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_news

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-06-07 23:24:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_comment`
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `comment` text NOT NULL COMMENT '评论',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '评论时间',
  `news_id` int(11) NOT NULL COMMENT '对应新闻ID',
  PRIMARY KEY (`id`),
  KEY `comment-news` (`news_id`),
  CONSTRAINT `comment-news` FOREIGN KEY (`news_id`) REFERENCES `t_news` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('4', '阿斯蒂芬', '2016-11-12 21:30:59', '12');
INSERT INTO `t_comment` VALUES ('5', '啊手动阀手动阀手动阀', '2016-11-12 21:33:17', '12');
INSERT INTO `t_comment` VALUES ('6', '啊实打实的', '2016-11-12 23:23:19', '13');
INSERT INTO `t_comment` VALUES ('12', '啊啊啊', '2016-11-19 08:45:13', '16');
INSERT INTO `t_comment` VALUES ('13', '阿斯顿', '2016-11-19 08:45:29', '14');
INSERT INTO `t_comment` VALUES ('16', '阿斯顿', '2017-05-05 22:17:43', '15');
INSERT INTO `t_comment` VALUES ('17', '阿斯顿', '2017-05-09 17:44:29', '21');

-- ----------------------------
-- Table structure for `t_news`
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻ID',
  `title` varchar(30) NOT NULL COMMENT '新闻标题',
  `content` text NOT NULL COMMENT '新闻内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发表时间',
  `type` int(20) NOT NULL COMMENT '新闻种类',
  `author` varchar(10) NOT NULL COMMENT '作者名',
  PRIMARY KEY (`id`),
  KEY `author-news` (`author`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('12', '科比就要退役了', '明明是已经退役了！！！', '2016-11-09 20:21:39', '3', 'admin');
INSERT INTO `t_news` VALUES ('13', '习近平致电祝贺特朗普当选美国总统了', '11月9日，国家主席习近平向美国当选总统唐纳德·特朗普致贺电。\r\n\r\n　　习近平在贺电中指出，作为最大的发展中国家、最大的发达国家、世界前两大经济体，中美两国在维护世界和平稳定、促进全球发展繁荣方面肩负着特殊的重要责任，拥有广泛的共同利益。发展长期健康稳定的中美关系，符合两国人民根本利益，也是国际社会普遍期待。我高度重视中美关系，期待着同你一道努力，秉持不冲突不对抗、相互尊重、合作共赢的原则，拓展两国在双边、地区、全球层面各领域合作，以建设性方式管控分歧，推动中美关系在新的起点上取得更大进展，更好造福两国人民和各国人民。\r\n\r\n　　国家副主席李源潮致电迈克·彭斯，祝贺他当选美国副总统。', '2016-11-09 21:19:33', '1', 'admin');
INSERT INTO `t_news` VALUES ('14', '外观小改变 现代新款ix25海外版首发', '新车的内饰和现款车型基本保持一致，但在配置上有所提升，苹果CarPlay和Android Auto智能互联功能在该车上都有配备。\r\n\r\n　　动力方面，新车将提供1.6L和2.0L两款发动机可选，其中1.6L发动机最大功率为132马力，峰值扭矩为162牛·米，2.0L发动机最大功率为168马力，峰值扭矩为201牛·米。此外，北京现代生产的ix25车型是否会参考该车进行改款，请我们持续关注。（文/汽车之家 李长宁）', '2016-11-10 09:14:46', '6', 'admin');
INSERT INTO `t_news` VALUES ('15', '马丽：开心麻花收春晚邀请上不上看作品', '新浪娱乐讯 到了年底，谁将上春晚，总是一个不缺热度的全民议题。这不，11月9日现身抗战片《战金岭》发布会的喜剧演员马丽[微博]就被问及，收到春晚邀请了吗？马丽透露：“开心麻花倒是有收到春晚的邀请，但是我们还在坚持有好的作品一定会上，如果没有好的话，宁缺毋滥。”她表示，自己最近也在做准备。当天，该剧总监制、北京电影学院院长张会军，总制片人隋兰，主演曹炳琨[微博]、马丽、武强、张淞等现身。\r\n《战金岭》的一大看点，是剧中马丽和曹炳琨的爱情对手戏。马丽饰演的花七姐是大山沟里唯一的一个风情万种的漂亮少妇，无数男人拜倒在她的石榴裙下，她则对具有儒雅气质的白面书生夏风情有独钟。花七姐不断周旋于野菊坡的各路来客之中，只为保护心上人夏风。随着她慢慢了解夏风的任务，也慢慢受到他信仰上的感化，化“小爱”为“大爱”，在烽火传奇中上演着痴情女倒追记。\r\n\r\n　　演喜剧深入人心，如今演正剧，会不会令搭档有种跳戏的感觉呢？被问及于此的马丽耿直称：“这个问题不好啊，我觉得不管是演喜剧还是演正剧，作为演员应该多学习。因为对于演员来说，听到‘搭档跟你对戏会不会笑场’这话挺难受的，因为大家都是专业的演员，不希望大家把喜剧女演员给定型了，说‘我见到你就想笑’。我还是希望自己能更强大一些吧。有更多的东西带给大家。”她也透露，自己想继续进修。\r\n\r\n　　多次上春晚的马丽也难免被问及，是否会继续上春晚演小品呢？马丽透露：“开心麻花倒是有收到春晚的邀请，但是我们还在坚持有好的作品一定会上，如果没有好的话，宁缺毋滥。”她表示，自己最近也在做准备。（叶子/文 刘嘉奇/摄像）', '2016-11-10 09:15:37', '2', 'admin');
INSERT INTO `t_news` VALUES ('16', '微软、谷歌等国际领袖聚首CSS互联网大会', '日前，主题为“合作赋能，为车联网安全保驾护航”的车联网产业安全沙龙在上海落下帷幕。包含腾讯副总裁马斌、同济大学汽车安全技术研究所所长朱西产、汽车城创新港营销总监金轶峰、中汽(上海)汽车技术转移中心副总经理张永斌在内的数十位互联网、车企、学者，对车联网安全行业标准建设进行了深入探讨，并确认了CSS2016 中国互联网安全领袖峰会 “智能汽车安全分论坛”主题及议程。', '2016-11-10 09:17:00', '4', 'admin');
INSERT INTO `t_news` VALUES ('20', '金正恩视察西南前线 又见官兵跳海迎接', '朝鲜最高领导人金正恩视察了位于朝鲜西南前线水域最南端的葛里岛前哨基地和长在岛防御队。图为金正恩视察前哨基地和防御队。官兵们又跳下海迎接。供图：国际在线', '2016-11-19 08:56:58', '5', '1');
INSERT INTO `t_news` VALUES ('21', '习近平出席中厄合作项目揭牌仪式', '原标题：习近平同科雷亚共同出席中厄合作项目揭牌仪式和视频连线活动\r\n\r\n　　中新社基多11月18日电 （记者 蒋涛） 中国国家主席习近平18日在基多同厄瓜多尔总统科雷亚共同出席中方援建的厄瓜多尔公共安全应急指挥中心联合实验室揭牌仪式，乔内医院奠基、科卡科多—辛克雷水电站竣工发电视频连线活动。\r\n\r\n　　习近平抵达公共安全应急指挥中心时，科雷亚在门口迎接。两国元首共同参观中方支援厄瓜多尔抗震救灾图片展，并为厄瓜多尔公共安全应急指挥中心联合实验室揭牌。两国元首观看介绍乔内医院和辛克雷水电站的视频，并同项目现场人员连线互动。乔内医院现场中方负责人向两国元首报告医院工程正式开工。在辛克雷水电站，专程前往现场的厄瓜多尔副总统格拉斯介绍项目完成情况。两国元首共同按动按钮，辛克雷水电站正式竣工发电。\r\n\r\n　　习近平在致辞中指出，中厄友谊源远流长。近年来，双边友好关系实现了全面发展，并刚刚升级为全面战略伙伴关系。两国能够加强合作，得益于双方对发展前景的坚定信心，对互为发展机遇的清晰认知。当前，中国和厄瓜多尔深化互利共赢合作恰逢其时。中方愿同厄方深化合作、携手发展，共同谱写两国全面战略伙伴关系新篇章。\r\n\r\n　　习近平强调，厄瓜多尔公共安全应急指挥系统升级、乔内医院重建、辛克雷水电站落成，必将有效提升厄瓜多尔防灾抗灾能力和公共基础设施水平。“4·16”强震给厄瓜多尔灾区民众带来沉重灾难和痛苦，中国政府和人民心系灾区、感同身受，第一时间提供各类紧急援助。灾后重建工作是当务之急。中方将积极参与灾后重建工作，在住房、医疗、人力资源、防灾减灾软件和硬件等方面继续提供支持。相信厄瓜多尔人民一定能够战胜灾害、重建家园。', '2016-11-19 08:57:38', '1', '2');
INSERT INTO `t_news` VALUES ('22', '123', '123123123', '2016-11-19 19:09:06', '2', '阿鑫');

-- ----------------------------
-- Table structure for `t_news_module`
-- ----------------------------
DROP TABLE IF EXISTS `t_news_module`;
CREATE TABLE `t_news_module` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `module` varchar(15) DEFAULT NULL COMMENT '模块名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news_module
-- ----------------------------
INSERT INTO `t_news_module` VALUES ('2', '其乐旭');
INSERT INTO `t_news_module` VALUES ('6', '1234');
INSERT INTO `t_news_module` VALUES ('7', '1234');
INSERT INTO `t_news_module` VALUES ('8', '12');
INSERT INTO `t_news_module` VALUES ('10', '九日');
INSERT INTO `t_news_module` VALUES ('11', '123');
INSERT INTO `t_news_module` VALUES ('13', 'kkk');

-- ----------------------------
-- Table structure for `t_users`
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(10) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '用户密码',
  `photo` varchar(20) DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('16', '333', '310dcbbf4cce62f762a2aaa148d556bd', '104940-106.jpg');
INSERT INTO `t_users` VALUES ('17', '111', '698d51a19d8a121ce581499d7b701668', '76828-106.jpg');
INSERT INTO `t_users` VALUES ('18', '222', 'bcbe3365e6ac95ea2c0343a2395834dd', '81179-106.jpg');
INSERT INTO `t_users` VALUES ('19', '单继重', '23c3992aed743c76cb167894a31f1c58', '76828-106.jpg');
INSERT INTO `t_users` VALUES ('20', '123123', '3d186804534370c3c817db0563f0e461', '76828-106.jpg');
INSERT INTO `t_users` VALUES ('22', '1', 'c4ca4238a0b923820dcc509a6f75849b', 'night.jpg');
INSERT INTO `t_users` VALUES ('23', '2', 'c81e728d9d4c2f636f067f89cc14862c', 'night.jpg');
INSERT INTO `t_users` VALUES ('24', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'desert.jpg');
INSERT INTO `t_users` VALUES ('25', '4', 'a87ff679a2f3e71d9181a67b7542122c', '21420-106.jpg');
INSERT INTO `t_users` VALUES ('26', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '239976-106.jpg');
INSERT INTO `t_users` VALUES ('27', '6', '1679091c5a880faf6fb5e6087eb1b2dc', 'city.jpg');
INSERT INTO `t_users` VALUES ('30', '阿鑫', 'caf1a3dfb505ffed0d024130f58c5cfa', 'butterfly.jpg');
INSERT INTO `t_users` VALUES ('31', '其乐旭', 'c4ca4238a0b923820dcc509a6f75849b', '315694-0.jpg');
