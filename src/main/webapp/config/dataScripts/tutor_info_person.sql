/*
 Navicat Premium Data Transfer

 Source Server         : sample
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : lims2019dbc

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 08/08/2019 20:23:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tutor_info_person
-- ----------------------------
DROP TABLE IF EXISTS `tutor_info_person`;
CREATE TABLE `tutor_info_person`  (
  `tutor_info_students_id` bigint(20) NOT NULL,
  `person_id` bigint(20) DEFAULT NULL,
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

SET FOREIGN_KEY_CHECKS = 1;
