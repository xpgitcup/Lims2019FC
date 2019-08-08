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

 Date: 08/08/2019 15:26:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for thing_person
-- ----------------------------
DROP TABLE IF EXISTS `thing_person`;
CREATE TABLE `thing_person`  (
  `thing_related_persons_id` bigint(20) NOT NULL,
  `person_id` bigint(20) NULL DEFAULT NULL,
  INDEX `FKlxc8lkh4f96lm6nkrixmpih63`(`person_id`) USING BTREE,
  INDEX `FKqh6ljd8ln0q92yo3is9fvr0dx`(`thing_related_persons_id`) USING BTREE,
  CONSTRAINT `FKlxc8lkh4f96lm6nkrixmpih63` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKqh6ljd8ln0q92yo3is9fvr0dx` FOREIGN KEY (`thing_related_persons_id`) REFERENCES `thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of thing_person
-- ----------------------------
INSERT INTO `thing_person` VALUES (6, 1);
INSERT INTO `thing_person` VALUES (6, 2);
INSERT INTO `thing_person` VALUES (6, 6);
INSERT INTO `thing_person` VALUES (6, 49);
INSERT INTO `thing_person` VALUES (6, 263);
INSERT INTO `thing_person` VALUES (6, 224);
INSERT INTO `thing_person` VALUES (6, 34);
INSERT INTO `thing_person` VALUES (7, 1);
INSERT INTO `thing_person` VALUES (7, 2);
INSERT INTO `thing_person` VALUES (7, 64);
INSERT INTO `thing_person` VALUES (7, 15);
INSERT INTO `thing_person` VALUES (7, 69);
INSERT INTO `thing_person` VALUES (7, 75);
INSERT INTO `thing_person` VALUES (7, 224);
INSERT INTO `thing_person` VALUES (5, 59);
INSERT INTO `thing_person` VALUES (5, 1);
INSERT INTO `thing_person` VALUES (5, 2);
INSERT INTO `thing_person` VALUES (5, 15);
INSERT INTO `thing_person` VALUES (5, 57);
INSERT INTO `thing_person` VALUES (5, 43);
INSERT INTO `thing_person` VALUES (5, 80);
INSERT INTO `thing_person` VALUES (5, 48);
INSERT INTO `thing_person` VALUES (8, 1);
INSERT INTO `thing_person` VALUES (8, 2);
INSERT INTO `thing_person` VALUES (8, 48);
INSERT INTO `thing_person` VALUES (8, 61);
INSERT INTO `thing_person` VALUES (9, 1);
INSERT INTO `thing_person` VALUES (9, 15);
INSERT INTO `thing_person` VALUES (9, 2);
INSERT INTO `thing_person` VALUES (9, 48);
INSERT INTO `thing_person` VALUES (9, 61);
INSERT INTO `thing_person` VALUES (10, 2);
INSERT INTO `thing_person` VALUES (10, 48);
INSERT INTO `thing_person` VALUES (10, 61);
INSERT INTO `thing_person` VALUES (11, 29);
INSERT INTO `thing_person` VALUES (11, 2);
INSERT INTO `thing_person` VALUES (12, 43);
INSERT INTO `thing_person` VALUES (12, 2);
INSERT INTO `thing_person` VALUES (13, 57);
INSERT INTO `thing_person` VALUES (13, 2);
INSERT INTO `thing_person` VALUES (14, 2);
INSERT INTO `thing_person` VALUES (14, 263);
INSERT INTO `thing_person` VALUES (15, 2);
INSERT INTO `thing_person` VALUES (15, 34);
INSERT INTO `thing_person` VALUES (16, 2);
INSERT INTO `thing_person` VALUES (16, 49);
INSERT INTO `thing_person` VALUES (17, 29);
INSERT INTO `thing_person` VALUES (17, 2);
INSERT INTO `thing_person` VALUES (25, 94);
INSERT INTO `thing_person` VALUES (25, 2);
INSERT INTO `thing_person` VALUES (26, 2);
INSERT INTO `thing_person` VALUES (26, 95);
INSERT INTO `thing_person` VALUES (24, 97);
INSERT INTO `thing_person` VALUES (24, 2);
INSERT INTO `thing_person` VALUES (19, 35);
INSERT INTO `thing_person` VALUES (19, 2);
INSERT INTO `thing_person` VALUES (23, 2);
INSERT INTO `thing_person` VALUES (23, 267);
INSERT INTO `thing_person` VALUES (22, 35);
INSERT INTO `thing_person` VALUES (21, 50);
INSERT INTO `thing_person` VALUES (12, 50);
INSERT INTO `thing_person` VALUES (2, 68);
INSERT INTO `thing_person` VALUES (3, 92);
INSERT INTO `thing_person` VALUES (3, 81);
INSERT INTO `thing_person` VALUES (3, 82);
INSERT INTO `thing_person` VALUES (3, 83);
INSERT INTO `thing_person` VALUES (3, 84);
INSERT INTO `thing_person` VALUES (3, 68);
INSERT INTO `thing_person` VALUES (2, 249);
INSERT INTO `thing_person` VALUES (2, 239);
INSERT INTO `thing_person` VALUES (2, 90);
INSERT INTO `thing_person` VALUES (2, 91);
INSERT INTO `thing_person` VALUES (2, 94);
INSERT INTO `thing_person` VALUES (2, 95);
INSERT INTO `thing_person` VALUES (2, 245);
INSERT INTO `thing_person` VALUES (3, 94);
INSERT INTO `thing_person` VALUES (3, 95);
INSERT INTO `thing_person` VALUES (3, 96);
INSERT INTO `thing_person` VALUES (3, 97);
INSERT INTO `thing_person` VALUES (3, 93);
INSERT INTO `thing_person` VALUES (4, 102);
INSERT INTO `thing_person` VALUES (4, 111);
INSERT INTO `thing_person` VALUES (4, 101);
INSERT INTO `thing_person` VALUES (4, 103);
INSERT INTO `thing_person` VALUES (4, 105);
INSERT INTO `thing_person` VALUES (4, 106);
INSERT INTO `thing_person` VALUES (4, 127);
INSERT INTO `thing_person` VALUES (4, 124);
INSERT INTO `thing_person` VALUES (4, 107);
INSERT INTO `thing_person` VALUES (4, 112);
INSERT INTO `thing_person` VALUES (4, 110);
INSERT INTO `thing_person` VALUES (4, 109);
INSERT INTO `thing_person` VALUES (4, 114);
INSERT INTO `thing_person` VALUES (4, 117);
INSERT INTO `thing_person` VALUES (4, 113);
INSERT INTO `thing_person` VALUES (4, 118);
INSERT INTO `thing_person` VALUES (4, 115);
INSERT INTO `thing_person` VALUES (4, 116);
INSERT INTO `thing_person` VALUES (4, 104);
INSERT INTO `thing_person` VALUES (4, 119);
INSERT INTO `thing_person` VALUES (4, 123);
INSERT INTO `thing_person` VALUES (4, 120);
INSERT INTO `thing_person` VALUES (4, 100);
INSERT INTO `thing_person` VALUES (4, 129);
INSERT INTO `thing_person` VALUES (4, 130);
INSERT INTO `thing_person` VALUES (4, 121);
INSERT INTO `thing_person` VALUES (4, 125);
INSERT INTO `thing_person` VALUES (4, 128);
INSERT INTO `thing_person` VALUES (4, 131);
INSERT INTO `thing_person` VALUES (4, 135);
INSERT INTO `thing_person` VALUES (4, 132);
INSERT INTO `thing_person` VALUES (4, 133);
INSERT INTO `thing_person` VALUES (4, 134);
INSERT INTO `thing_person` VALUES (4, 136);
INSERT INTO `thing_person` VALUES (4, 108);
INSERT INTO `thing_person` VALUES (4, 126);
INSERT INTO `thing_person` VALUES (1, 151);
INSERT INTO `thing_person` VALUES (1, 162);
INSERT INTO `thing_person` VALUES (1, 165);
INSERT INTO `thing_person` VALUES (1, 165);
INSERT INTO `thing_person` VALUES (1, 185);
INSERT INTO `thing_person` VALUES (1, 185);
INSERT INTO `thing_person` VALUES (1, 211);
INSERT INTO `thing_person` VALUES (2, 238);
INSERT INTO `thing_person` VALUES (2, 33);
INSERT INTO `thing_person` VALUES (2, 68);
INSERT INTO `thing_person` VALUES (2, 241);
INSERT INTO `thing_person` VALUES (2, 266);
INSERT INTO `thing_person` VALUES (2, 240);
INSERT INTO `thing_person` VALUES (2, 242);
INSERT INTO `thing_person` VALUES (2, 93);
INSERT INTO `thing_person` VALUES (2, 244);
INSERT INTO `thing_person` VALUES (2, 243);
INSERT INTO `thing_person` VALUES (2, 246);
INSERT INTO `thing_person` VALUES (2, 247);
INSERT INTO `thing_person` VALUES (2, 56);
INSERT INTO `thing_person` VALUES (5, 252);
INSERT INTO `thing_person` VALUES (2, 252);
INSERT INTO `thing_person` VALUES (2, 254);
INSERT INTO `thing_person` VALUES (2, 253);
INSERT INTO `thing_person` VALUES (2, 259);
INSERT INTO `thing_person` VALUES (2, 257);
INSERT INTO `thing_person` VALUES (2, 242);
INSERT INTO `thing_person` VALUES (2, 251);
INSERT INTO `thing_person` VALUES (2, 258);
INSERT INTO `thing_person` VALUES (2, 250);
INSERT INTO `thing_person` VALUES (3, 256);
INSERT INTO `thing_person` VALUES (3, 260);
INSERT INTO `thing_person` VALUES (3, 255);
INSERT INTO `thing_person` VALUES (2, 260);
INSERT INTO `thing_person` VALUES (2, 261);
INSERT INTO `thing_person` VALUES (3, 264);
INSERT INTO `thing_person` VALUES (3, 66);
INSERT INTO `thing_person` VALUES (3, 265);
INSERT INTO `thing_person` VALUES (2, 256);
INSERT INTO `thing_person` VALUES (2, 255);
INSERT INTO `thing_person` VALUES (2, 265);

SET FOREIGN_KEY_CHECKS = 1;
