/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : lims2019dbc

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-08-08 07:47:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `thing`
-- ----------------------------
DROP TABLE IF EXISTS `thing`;
CREATE TABLE `thing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `sponsor_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thing_type_id` bigint(20) NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `append_values` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_9iletimkbhifny4mo0rgy1of0` (`name`),
  KEY `FKn2r9xbm8nh2geao105rduwp50` (`sponsor_id`),
  KEY `FK3jv5lg4546jticrnr46rl9i6f` (`thing_type_id`),
  CONSTRAINT `FK3jv5lg4546jticrnr46rl9i6f` FOREIGN KEY (`thing_type_id`) REFERENCES `thing_type` (`id`),
  CONSTRAINT `FKn2r9xbm8nh2geao105rduwp50` FOREIGN KEY (`sponsor_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thing
-- ----------------------------
INSERT INTO `thing` VALUES ('1', '0', '2019-06-06 21:20:46', '2', '本科毕设.2018-2019-2', '5', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('2', '0', '2019-06-06 21:20:46', '2', '软件概论.2018-2019-2', '7', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('3', '0', '2019-06-06 21:20:46', '2', '油气管道SCADA系统与过程控制.2018-2019-2', '7', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('4', '0', '2019-06-06 21:20:46', '2', '成品油管道设计.2018-2019-2', '7', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('5', '0', '2016-01-01 00:00:00', '2', '多气合采全开发周期集输及处理工艺', '12', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('6', '0', '2017-01-01 00:00:00', '2', '华南销售项目', '11', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('7', '0', '2018-01-01 00:00:00', '2', '冲蚀项目', '11', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('8', '0', '2018-01-01 00:00:00', '2', '单管水力模拟', '11', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('9', '0', null, '2', '管网水力模拟', '11', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('10', '0', null, '2', '集输管网积液', '11', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('11', '0', '2019-06-06 21:20:46', '2', '微型SCADA系统', '3', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('12', '0', '2019-06-06 21:20:46', '2', '2016.硕士论文.李愚', '6', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('13', '0', '2019-06-06 21:20:46', '2', '2016.硕士论文.周艳红', '6', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('14', '0', '2019-06-06 21:20:46', '2', '2016.硕士论文.韦宝成', '6', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('15', '0', '2019-06-06 21:20:46', '2', '2016.硕士论文.陈影', '6', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('16', '0', '2019-06-06 21:20:46', '2', '2016.硕士论文.万洋洋', '6', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('17', '0', '2019-06-06 21:20:46', '2', '2016.硕士论文.金浩', '6', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('18', '0', '2019-06-06 21:20:46', '2', '课堂教学.2018-2019-2', '4', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('19', '0', '2016-01-01 00:00:00', '2', '纳米微波', '11', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('20', '0', '2019-06-06 21:20:46', '2', '2016.硕士论文.苏越', '6', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('21', '0', '2019-06-06 21:20:46', '2', '2016.硕士论文.王茀玺', '6', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('22', '0', '2019-06-06 21:20:46', '2', '2016.硕士论文.崔可心', '6', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('23', '0', '2018-01-01 00:00:00', '2', '顺北项目', '11', '2019-06-06 21:20:46', null);
INSERT INTO `thing` VALUES ('24', '0', '2019-05-01 00:00:00', '2', '华北积液项目', '11', '2019-06-06 21:20:47', null);
INSERT INTO `thing` VALUES ('25', '0', '2019-05-01 00:00:00', '2', '机场水力模拟', '11', '2019-06-06 21:20:47', null);
INSERT INTO `thing` VALUES ('26', '0', null, '2', '匹配性计算', '12', '2019-06-06 21:20:47', null);
