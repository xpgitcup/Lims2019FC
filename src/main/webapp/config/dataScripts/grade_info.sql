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

 Date: 09/08/2019 18:48:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for grade_info
-- ----------------------------
DROP TABLE IF EXISTS `grade_info`;
CREATE TABLE `grade_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `person_title_id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `major_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKshsj77asv5hqmcgvn04tyut2h`(`person_title_id`) USING BTREE,
  INDEX `FKr7chfk0a7ffbtd805v0n7g9j0`(`major_id`) USING BTREE,
  CONSTRAINT `FKr7chfk0a7ffbtd805v0n7g9j0` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKshsj77asv5hqmcgvn04tyut2h` FOREIGN KEY (`person_title_id`) REFERENCES `person_title` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grade_info
-- ----------------------------
INSERT INTO `grade_info` VALUES (1, 35, 13, '储运16-1班', 1);
INSERT INTO `grade_info` VALUES (2, 32, 13, '储运16-2班', 1);
INSERT INTO `grade_info` VALUES (3, 33, 13, '储运16-3班', 1);

SET FOREIGN_KEY_CHECKS = 1;
