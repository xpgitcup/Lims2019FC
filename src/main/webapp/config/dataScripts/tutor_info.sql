/*
 Navicat Premium Data Transfer

 Source Server         : sample
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : lims2019dbc

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 09/08/2019 15:18:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tutor_info
-- ----------------------------
DROP TABLE IF EXISTS `tutor_info`;
CREATE TABLE `tutor_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKrfrfdyugt460u1etlckl3r3ub`(`teacher_id`) USING BTREE,
  CONSTRAINT `FKrfrfdyugt460u1etlckl3r3ub` FOREIGN KEY (`teacher_id`) REFERENCES `person` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tutor_info
-- ----------------------------
INSERT INTO `tutor_info` VALUES (1, 32, 1);
INSERT INTO `tutor_info` VALUES (2, 0, 216);
INSERT INTO `tutor_info` VALUES (3, 0, 218);
INSERT INTO `tutor_info` VALUES (4, 0, 223);
INSERT INTO `tutor_info` VALUES (5, 0, 225);
INSERT INTO `tutor_info` VALUES (6, 23, 268);
INSERT INTO `tutor_info` VALUES (7, 22, 2);
INSERT INTO `tutor_info` VALUES (8, 16, 3);
INSERT INTO `tutor_info` VALUES (9, 0, 4);
INSERT INTO `tutor_info` VALUES (10, 3, 5);
INSERT INTO `tutor_info` VALUES (11, 0, 215);
INSERT INTO `tutor_info` VALUES (12, 0, 217);
INSERT INTO `tutor_info` VALUES (13, 0, 219);
INSERT INTO `tutor_info` VALUES (14, 0, 221);
INSERT INTO `tutor_info` VALUES (15, 0, 222);
INSERT INTO `tutor_info` VALUES (16, 0, 226);
INSERT INTO `tutor_info` VALUES (17, 0, 228);
INSERT INTO `tutor_info` VALUES (18, 0, 229);
INSERT INTO `tutor_info` VALUES (19, 0, 230);
INSERT INTO `tutor_info` VALUES (20, 2, 6);
INSERT INTO `tutor_info` VALUES (21, 0, 220);
INSERT INTO `tutor_info` VALUES (22, 0, 227);
INSERT INTO `tutor_info` VALUES (23, 0, 231);
INSERT INTO `tutor_info` VALUES (24, 0, 232);
INSERT INTO `tutor_info` VALUES (25, 0, 233);
INSERT INTO `tutor_info` VALUES (26, 0, 234);
INSERT INTO `tutor_info` VALUES (27, 0, 235);
INSERT INTO `tutor_info` VALUES (28, 0, 236);
INSERT INTO `tutor_info` VALUES (29, 0, 224);

SET FOREIGN_KEY_CHECKS = 1;
