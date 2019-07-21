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

 Date: 21/07/2019 16:30:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for group_info_person
-- ----------------------------
DROP TABLE IF EXISTS `group_info_person`;
CREATE TABLE `group_info_person`  (
  `group_info_members_id` bigint(20) NOT NULL,
  `person_id` bigint(20) NULL DEFAULT NULL,
  INDEX `FKn13q7bks9ipmc79fjl5p5f49x`(`person_id`) USING BTREE,
  INDEX `FKb8t2tanwtd2ylji1d0bfnyvc0`(`group_info_members_id`) USING BTREE,
  CONSTRAINT `FKb8t2tanwtd2ylji1d0bfnyvc0` FOREIGN KEY (`group_info_members_id`) REFERENCES `group_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKn13q7bks9ipmc79fjl5p5f49x` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_info_person
-- ----------------------------
INSERT INTO `group_info_person` VALUES (1, 2);
INSERT INTO `group_info_person` VALUES (1, 268);
INSERT INTO `group_info_person` VALUES (1, 3);
INSERT INTO `group_info_person` VALUES (1, 6);
INSERT INTO `group_info_person` VALUES (1, 5);
INSERT INTO `group_info_person` VALUES (1, 224);
INSERT INTO `group_info_person` VALUES (1, 234);
INSERT INTO `group_info_person` VALUES (1, 220);
INSERT INTO `group_info_person` VALUES (2, 219);
INSERT INTO `group_info_person` VALUES (2, 227);
INSERT INTO `group_info_person` VALUES (2, 236);

SET FOREIGN_KEY_CHECKS = 1;
