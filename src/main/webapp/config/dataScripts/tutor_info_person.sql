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

 Date: 09/08/2019 15:18:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tutor_info_person
-- ----------------------------
DROP TABLE IF EXISTS `tutor_info_person`;
CREATE TABLE `tutor_info_person`  (
  `tutor_info_students_id` bigint(20) NOT NULL,
  `person_id` bigint(20) NULL DEFAULT NULL,
  INDEX `FKhulx2jd8f369j6res34t38m2x`(`person_id`) USING BTREE,
  INDEX `FKc5qjton3okp5t4d5id27uav2d`(`tutor_info_students_id`) USING BTREE,
  CONSTRAINT `FKc5qjton3okp5t4d5id27uav2d` FOREIGN KEY (`tutor_info_students_id`) REFERENCES `tutor_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhulx2jd8f369j6res34t38m2x` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tutor_info_person
-- ----------------------------
INSERT INTO `tutor_info_person` VALUES (7, 75);
INSERT INTO `tutor_info_person` VALUES (7, 61);
INSERT INTO `tutor_info_person` VALUES (7, 59);
INSERT INTO `tutor_info_person` VALUES (7, 80);
INSERT INTO `tutor_info_person` VALUES (7, 72);
INSERT INTO `tutor_info_person` VALUES (7, 34);
INSERT INTO `tutor_info_person` VALUES (7, 35);
INSERT INTO `tutor_info_person` VALUES (7, 43);
INSERT INTO `tutor_info_person` VALUES (7, 49);
INSERT INTO `tutor_info_person` VALUES (7, 50);
INSERT INTO `tutor_info_person` VALUES (7, 263);
INSERT INTO `tutor_info_person` VALUES (7, 57);
INSERT INTO `tutor_info_person` VALUES (7, 48);
INSERT INTO `tutor_info_person` VALUES (7, 29);
INSERT INTO `tutor_info_person` VALUES (7, 269);
INSERT INTO `tutor_info_person` VALUES (7, 270);
INSERT INTO `tutor_info_person` VALUES (7, 271);
INSERT INTO `tutor_info_person` VALUES (7, 272);
INSERT INTO `tutor_info_person` VALUES (1, 7);
INSERT INTO `tutor_info_person` VALUES (1, 8);
INSERT INTO `tutor_info_person` VALUES (1, 9);
INSERT INTO `tutor_info_person` VALUES (6, 10);
INSERT INTO `tutor_info_person` VALUES (6, 11);
INSERT INTO `tutor_info_person` VALUES (6, 12);
INSERT INTO `tutor_info_person` VALUES (1, 13);
INSERT INTO `tutor_info_person` VALUES (1, 14);
INSERT INTO `tutor_info_person` VALUES (1, 15);
INSERT INTO `tutor_info_person` VALUES (6, 16);
INSERT INTO `tutor_info_person` VALUES (1, 17);
INSERT INTO `tutor_info_person` VALUES (6, 18);
INSERT INTO `tutor_info_person` VALUES (1, 19);
INSERT INTO `tutor_info_person` VALUES (6, 20);
INSERT INTO `tutor_info_person` VALUES (6, 21);
INSERT INTO `tutor_info_person` VALUES (1, 22);
INSERT INTO `tutor_info_person` VALUES (1, 23);
INSERT INTO `tutor_info_person` VALUES (6, 24);
INSERT INTO `tutor_info_person` VALUES (1, 25);
INSERT INTO `tutor_info_person` VALUES (1, 26);
INSERT INTO `tutor_info_person` VALUES (6, 27);
INSERT INTO `tutor_info_person` VALUES (6, 28);
INSERT INTO `tutor_info_person` VALUES (6, 31);
INSERT INTO `tutor_info_person` VALUES (6, 32);
INSERT INTO `tutor_info_person` VALUES (6, 33);
INSERT INTO `tutor_info_person` VALUES (8, 36);
INSERT INTO `tutor_info_person` VALUES (6, 37);
INSERT INTO `tutor_info_person` VALUES (8, 38);
INSERT INTO `tutor_info_person` VALUES (1, 39);
INSERT INTO `tutor_info_person` VALUES (8, 40);
INSERT INTO `tutor_info_person` VALUES (8, 41);
INSERT INTO `tutor_info_person` VALUES (10, 42);
INSERT INTO `tutor_info_person` VALUES (1, 44);
INSERT INTO `tutor_info_person` VALUES (1, 45);
INSERT INTO `tutor_info_person` VALUES (8, 46);
INSERT INTO `tutor_info_person` VALUES (6, 47);
INSERT INTO `tutor_info_person` VALUES (1, 51);
INSERT INTO `tutor_info_person` VALUES (6, 52);
INSERT INTO `tutor_info_person` VALUES (20, 53);
INSERT INTO `tutor_info_person` VALUES (1, 54);
INSERT INTO `tutor_info_person` VALUES (1, 55);
INSERT INTO `tutor_info_person` VALUES (1, 56);
INSERT INTO `tutor_info_person` VALUES (8, 58);
INSERT INTO `tutor_info_person` VALUES (8, 59);
INSERT INTO `tutor_info_person` VALUES (8, 60);
INSERT INTO `tutor_info_person` VALUES (8, 62);
INSERT INTO `tutor_info_person` VALUES (1, 63);
INSERT INTO `tutor_info_person` VALUES (1, 64);
INSERT INTO `tutor_info_person` VALUES (8, 65);
INSERT INTO `tutor_info_person` VALUES (1, 66);
INSERT INTO `tutor_info_person` VALUES (8, 67);
INSERT INTO `tutor_info_person` VALUES (1, 68);
INSERT INTO `tutor_info_person` VALUES (1, 69);
INSERT INTO `tutor_info_person` VALUES (6, 70);
INSERT INTO `tutor_info_person` VALUES (10, 71);
INSERT INTO `tutor_info_person` VALUES (6, 73);
INSERT INTO `tutor_info_person` VALUES (6, 74);
INSERT INTO `tutor_info_person` VALUES (8, 76);
INSERT INTO `tutor_info_person` VALUES (1, 77);
INSERT INTO `tutor_info_person` VALUES (8, 78);
INSERT INTO `tutor_info_person` VALUES (1, 79);
INSERT INTO `tutor_info_person` VALUES (1, 81);
INSERT INTO `tutor_info_person` VALUES (1, 82);
INSERT INTO `tutor_info_person` VALUES (1, 83);
INSERT INTO `tutor_info_person` VALUES (1, 84);
INSERT INTO `tutor_info_person` VALUES (1, 85);
INSERT INTO `tutor_info_person` VALUES (8, 86);
INSERT INTO `tutor_info_person` VALUES (10, 87);
INSERT INTO `tutor_info_person` VALUES (6, 88);
INSERT INTO `tutor_info_person` VALUES (6, 89);
INSERT INTO `tutor_info_person` VALUES (8, 90);
INSERT INTO `tutor_info_person` VALUES (8, 91);
INSERT INTO `tutor_info_person` VALUES (1, 92);
INSERT INTO `tutor_info_person` VALUES (7, 93);
INSERT INTO `tutor_info_person` VALUES (7, 94);
INSERT INTO `tutor_info_person` VALUES (7, 95);
INSERT INTO `tutor_info_person` VALUES (20, 96);
INSERT INTO `tutor_info_person` VALUES (7, 97);
INSERT INTO `tutor_info_person` VALUES (6, 98);
INSERT INTO `tutor_info_person` VALUES (6, 99);

SET FOREIGN_KEY_CHECKS = 1;
