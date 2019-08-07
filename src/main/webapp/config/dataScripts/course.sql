/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : lims2019dbc

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-08-07 22:16:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '0', '0', '油气管道SCADA系统与过程控制');
INSERT INTO `course` VALUES ('2', '0', '1', '软件实训');
INSERT INTO `course` VALUES ('3', '0', '2', '软件概论');
INSERT INTO `course` VALUES ('4', '0', '3', '成品油管道设计');
