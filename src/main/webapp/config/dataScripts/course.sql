/*
 Navicat Premium Data Transfer

 Source Server         : 10.1.16.50
 Source Server Type    : MySQL
 Source Server Version : 50627
 Source Host           : 10.1.16.50:3306
 Source Schema         : lims2019dbc

 Target Server Type    : MySQL
 Target Server Version : 50627
 File Encoding         : 65001

 Date: 03/09/2019 18:11:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 1, '1304042', '油气管道SCADA系统与过程控制');
INSERT INTO `course` VALUES (2, 0, '1', '软件实训');
INSERT INTO `course` VALUES (3, 1, '1304073', '油气储运工程应用软件概要');
INSERT INTO `course` VALUES (4, 0, '3', '成品油管道设计');
INSERT INTO `course` VALUES (5, 0, '100409T023-01', '油气储运工程最优化');
INSERT INTO `course` VALUES (6, 0, '1304062', '多相流动');

SET FOREIGN_KEY_CHECKS = 1;
