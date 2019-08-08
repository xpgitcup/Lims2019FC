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

 Date: 08/08/2019 15:14:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `thing_id` bigint(20) NOT NULL,
  `leader_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKakp3oh8ul8hjcycd0aq8x9836`(`thing_id`) USING BTREE,
  INDEX `FK4lrv984nrutn7xe5bwap2p1le`(`leader_id`) USING BTREE,
  CONSTRAINT `FK4lrv984nrutn7xe5bwap2p1le` FOREIGN KEY (`leader_id`) REFERENCES `person` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKakp3oh8ul8hjcycd0aq8x9836` FOREIGN KEY (`thing_id`) REFERENCES `thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES (1, 0, 8, 2);
INSERT INTO `team` VALUES (2, 0, 9, 2);
INSERT INTO `team` VALUES (3, 0, 5, 1);
INSERT INTO `team` VALUES (4, 0, 6, 1);
INSERT INTO `team` VALUES (5, 0, 7, 1);
INSERT INTO `team` VALUES (6, 0, 10, 2);
INSERT INTO `team` VALUES (7, 0, 11, 2);
INSERT INTO `team` VALUES (8, 0, 12, 2);
INSERT INTO `team` VALUES (9, 0, 13, 2);
INSERT INTO `team` VALUES (10, 0, 14, 2);
INSERT INTO `team` VALUES (11, 0, 15, 2);
INSERT INTO `team` VALUES (12, 0, 16, 2);
INSERT INTO `team` VALUES (13, 0, 17, 2);
INSERT INTO `team` VALUES (14, 0, 2, 261);
INSERT INTO `team` VALUES (15, 0, 2, 95);
INSERT INTO `team` VALUES (16, 0, 2, 240);
INSERT INTO `team` VALUES (17, 0, 2, 265);
INSERT INTO `team` VALUES (18, 0, 4, 116);
INSERT INTO `team` VALUES (19, 0, 5, 252);
INSERT INTO `team` VALUES (20, 0, 2, 252);
INSERT INTO `team` VALUES (21, 0, 2, 90);
INSERT INTO `team` VALUES (22, 0, 2, 238);
INSERT INTO `team` VALUES (23, 0, 2, 243);
INSERT INTO `team` VALUES (24, 0, 4, 107);
INSERT INTO `team` VALUES (25, 0, 4, 131);
INSERT INTO `team` VALUES (26, 0, 2, 257);
INSERT INTO `team` VALUES (27, 0, 4, 120);
INSERT INTO `team` VALUES (28, 0, 2, 258);
INSERT INTO `team` VALUES (29, 0, 4, 114);
INSERT INTO `team` VALUES (30, 0, 4, 110);
INSERT INTO `team` VALUES (31, 0, 4, 105);
INSERT INTO `team` VALUES (32, 0, 4, 127);
INSERT INTO `team` VALUES (33, 0, 3, 260);
INSERT INTO `team` VALUES (34, 0, 2, 247);
INSERT INTO `team` VALUES (35, 0, 4, 125);
INSERT INTO `team` VALUES (36, 0, 4, 119);
INSERT INTO `team` VALUES (37, 0, 4, 136);
INSERT INTO `team` VALUES (38, 0, 4, 102);
INSERT INTO `team` VALUES (39, 0, 4, 133);
INSERT INTO `team` VALUES (40, 0, 3, 95);
INSERT INTO `team` VALUES (41, 0, 3, 82);
INSERT INTO `team` VALUES (42, 0, 3, 84);
INSERT INTO `team` VALUES (43, 0, 3, 264);
INSERT INTO `team` VALUES (44, 0, 3, 97);
INSERT INTO `team` VALUES (45, 0, 1, 151);
INSERT INTO `team` VALUES (46, 0, 1, 162);
INSERT INTO `team` VALUES (47, 0, 1, 211);
INSERT INTO `team` VALUES (48, 0, 1, 165);
INSERT INTO `team` VALUES (49, 0, 1, 185);
INSERT INTO `team` VALUES (50, 0, 6, 224);
INSERT INTO `team` VALUES (51, 0, 12, 50);
INSERT INTO `team` VALUES (52, 0, 17, 29);
INSERT INTO `team` VALUES (53, 0, 11, 29);
INSERT INTO `team` VALUES (54, 0, 19, 2);
INSERT INTO `team` VALUES (55, 0, 16, 49);
INSERT INTO `team` VALUES (56, 0, 15, 34);
INSERT INTO `team` VALUES (57, 0, 22, 35);
INSERT INTO `team` VALUES (58, 0, 23, 2);
INSERT INTO `team` VALUES (59, 0, 23, 267);
INSERT INTO `team` VALUES (60, 0, 14, 263);
INSERT INTO `team` VALUES (61, 0, 21, 50);
INSERT INTO `team` VALUES (62, 0, 13, 57);
INSERT INTO `team` VALUES (63, 0, 6, 263);
INSERT INTO `team` VALUES (64, 0, 2, 242);
INSERT INTO `team` VALUES (65, 0, 19, 35);
INSERT INTO `team` VALUES (66, 0, 2, 91);
INSERT INTO `team` VALUES (67, 0, 2, 68);
INSERT INTO `team` VALUES (68, 0, 25, 2);
INSERT INTO `team` VALUES (69, 0, 26, 2);
INSERT INTO `team` VALUES (70, 0, 24, 2);
INSERT INTO `team` VALUES (71, 0, 27, 2);

SET FOREIGN_KEY_CHECKS = 1;
