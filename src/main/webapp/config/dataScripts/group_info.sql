/*
 Navicat Premium Data Transfer

 Source Server         : sample
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : lims2019dbb

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 21/07/2019 16:30:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for group_info
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `leader_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKlqocc65dwednsnh5egrm2od62`(`leader_id`) USING BTREE,
  CONSTRAINT `FKlqocc65dwednsnh5egrm2od62` FOREIGN KEY (`leader_id`) REFERENCES `person` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES (1, 8, '多相流', 1);
INSERT INTO `group_info` VALUES (2, 3, '流变', 223);

SET FOREIGN_KEY_CHECKS = 1;
