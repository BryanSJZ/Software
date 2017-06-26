/*
Navicat MySQL Data Transfer

Source Server         : 啊哈哈
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_news

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-06-24 19:46:55
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
  `title` varchar(30) DEFAULT NULL COMMENT '新闻标题',
  `content` text COMMENT '新闻内容',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发表时间',
  `type` int(20) DEFAULT NULL COMMENT '新闻种类',
  `author` varchar(10) DEFAULT NULL COMMENT '作者名',
  PRIMARY KEY (`id`),
  KEY `author-news` (`author`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('12', '123', '<p><b><u><i>123123</i></u></b></p>', '2017-06-20 15:09:12', '6', 'admin');
INSERT INTO `t_news` VALUES ('13', '习近平致电祝贺特朗普当选美国总统了', null, '2017-06-24 16:25:26', '6', 'admin');
INSERT INTO `t_news` VALUES ('14', '外观小改变 现代新款ix25海外版首发', '新车的内饰和现款车型基本保持一致，但在配置上有所提升，苹果CarPlay和Android Auto智能互联功能在该车上都有配备。\r\n\r\n　　动力方面，新车将提供1.6L和2.0L两款发动机可选，其中1.6L发动机最大功率为132马力，峰值扭矩为162牛·米，2.0L发动机最大功率为168马力，峰值扭矩为201牛·米。此外，北京现代生产的ix25车型是否会参考该车进行改款，请我们持续关注。（文/汽车之家 李长宁）', '2016-11-10 09:14:46', '6', 'admin');
INSERT INTO `t_news` VALUES ('15', '马丽：开心麻花收春晚邀请上不上看作品', '新浪娱乐讯 到了年底，谁将上春晚，总是一个不缺热度的全民议题。这不，11月9日现身抗战片《战金岭》发布会的喜剧演员马丽[微博]就被问及，收到春晚邀请了吗？马丽透露：“开心麻花倒是有收到春晚的邀请，但是我们还在坚持有好的作品一定会上，如果没有好的话，宁缺毋滥。”她表示，自己最近也在做准备。当天，该剧总监制、北京电影学院院长张会军，总制片人隋兰，主演曹炳琨[微博]、马丽、武强、张淞等现身。\r\n《战金岭》的一大看点，是剧中马丽和曹炳琨的爱情对手戏。马丽饰演的花七姐是大山沟里唯一的一个风情万种的漂亮少妇，无数男人拜倒在她的石榴裙下，她则对具有儒雅气质的白面书生夏风情有独钟。花七姐不断周旋于野菊坡的各路来客之中，只为保护心上人夏风。随着她慢慢了解夏风的任务，也慢慢受到他信仰上的感化，化“小爱”为“大爱”，在烽火传奇中上演着痴情女倒追记。\r\n\r\n　　演喜剧深入人心，如今演正剧，会不会令搭档有种跳戏的感觉呢？被问及于此的马丽耿直称：“这个问题不好啊，我觉得不管是演喜剧还是演正剧，作为演员应该多学习。因为对于演员来说，听到‘搭档跟你对戏会不会笑场’这话挺难受的，因为大家都是专业的演员，不希望大家把喜剧女演员给定型了，说‘我见到你就想笑’。我还是希望自己能更强大一些吧。有更多的东西带给大家。”她也透露，自己想继续进修。\r\n\r\n　　多次上春晚的马丽也难免被问及，是否会继续上春晚演小品呢？马丽透露：“开心麻花倒是有收到春晚的邀请，但是我们还在坚持有好的作品一定会上，如果没有好的话，宁缺毋滥。”她表示，自己最近也在做准备。（叶子/文 刘嘉奇/摄像）', '2017-06-20 15:09:13', '6', 'admin');
INSERT INTO `t_news` VALUES ('16', '微软、谷歌等国际领袖聚首CSS互联网大会', '日前，主题为“合作赋能，为车联网安全保驾护航”的车联网产业安全沙龙在上海落下帷幕。包含腾讯副总裁马斌、同济大学汽车安全技术研究所所长朱西产、汽车城创新港营销总监金轶峰、中汽(上海)汽车技术转移中心副总经理张永斌在内的数十位互联网、车企、学者，对车联网安全行业标准建设进行了深入探讨，并确认了CSS2016 中国互联网安全领袖峰会 “智能汽车安全分论坛”主题及议程。', '2017-06-20 15:09:14', '6', 'admin');
INSERT INTO `t_news` VALUES ('20', '金正恩视察西南前线 又见官兵跳海迎接', '朝鲜最高领导人金正恩视察了位于朝鲜西南前线水域最南端的葛里岛前哨基地和长在岛防御队。图为金正恩视察前哨基地和防御队。官兵们又跳下海迎接。供图：国际在线', '2017-06-20 15:09:16', '6', '1');
INSERT INTO `t_news` VALUES ('21', '习近平出席中厄合作项目揭牌仪式', null, '2017-06-24 16:25:17', '2', '2');
INSERT INTO `t_news` VALUES ('22', '123', '123123123', '2016-11-19 19:09:06', '2', '阿鑫');
INSERT INTO `t_news` VALUES ('23', '震惊', null, '2017-06-20 15:13:41', '8', null);
INSERT INTO `t_news` VALUES ('24', '1231231111111', '<p>1111111111111111111111111111111111111111111111111111111111111111111111111111111111111</p>', '2017-06-24 16:34:54', '2', 'admin');
INSERT INTO `t_news` VALUES ('25', '123123', '<p>123123123123123123123</p>', '2017-06-24 16:28:49', '2', 'admin');
INSERT INTO `t_news` VALUES ('26', '123123', '<p>啊实打实大苏打撒旦</p>', '2017-06-24 16:29:39', '2', 'admin');

-- ----------------------------
-- Table structure for `t_news_module`
-- ----------------------------
DROP TABLE IF EXISTS `t_news_module`;
CREATE TABLE `t_news_module` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `module` varchar(15) DEFAULT NULL COMMENT '模块名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news_module
-- ----------------------------
INSERT INTO `t_news_module` VALUES ('2', '其乐旭');
INSERT INTO `t_news_module` VALUES ('6', '1234');
INSERT INTO `t_news_module` VALUES ('7', '1234');
INSERT INTO `t_news_module` VALUES ('8', '12');
INSERT INTO `t_news_module` VALUES ('10', '九日');
INSERT INTO `t_news_module` VALUES ('14', '单继重');

-- ----------------------------
-- Table structure for `t_users`
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(10) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '用户密码',
  `photo` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `status` tinyint(3) DEFAULT '0' COMMENT '0未审核 1审核通过 2审核未通过',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('18', '222', 'bcbe3365e6ac95ea2c0343a2395834dd', '81179-106.jpg', '2');
INSERT INTO `t_users` VALUES ('19', '单继重', '23c3992aed743c76cb167894a31f1c58', '76828-106.jpg', '1');
INSERT INTO `t_users` VALUES ('20', '123123', '3d186804534370c3c817db0563f0e461', '76828-106.jpg', '2');
INSERT INTO `t_users` VALUES ('22', '1', 'c4ca4238a0b923820dcc509a6f75849b', 'night.jpg', '0');
INSERT INTO `t_users` VALUES ('23', '2', 'c81e728d9d4c2f636f067f89cc14862c', 'night.jpg', '0');
INSERT INTO `t_users` VALUES ('25', '4', 'a87ff679a2f3e71d9181a67b7542122c', '21420-106.jpg', '0');
INSERT INTO `t_users` VALUES ('26', '5', 'e4da3b7fbbce2345d7772b0674a318d5', '239976-106.jpg', '0');
INSERT INTO `t_users` VALUES ('27', '6', '1679091c5a880faf6fb5e6087eb1b2dc', 'city.jpg', '0');
INSERT INTO `t_users` VALUES ('30', '阿鑫', 'caf1a3dfb505ffed0d024130f58c5cfa', 'butterfly.jpg', '0');
INSERT INTO `t_users` VALUES ('31', '其乐旭', 'c4ca4238a0b923820dcc509a6f75849b', '315694-0.jpg', '1');
INSERT INTO `t_users` VALUES ('32', '12', '12', '838ba61ea8d3fd1f8a6948c9394e251f94ca5fe5.jpg', '1');
INSERT INTO `t_users` VALUES ('33', '1111111111', '12', '面向对象实现.png', '2');
INSERT INTO `t_users` VALUES ('34', '123', 'shanjizhong', '7333-106.jpg', '1');
INSERT INTO `t_users` VALUES ('36', 'asd', 'asd', '7333-106.jpg', '0');
INSERT INTO `t_users` VALUES ('38', 'zzz', 'shanjizhong', '15765-106.jpg', '0');
