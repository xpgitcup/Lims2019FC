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

 Date: 21/07/2019 16:31:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for thing_type
-- ----------------------------
DROP TABLE IF EXISTS `thing_type`;
CREATE TABLE `thing_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `append_keys` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `up_type_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_gdcrc8efclj9bf72ek4grj09u`(`name`) USING BTREE,
  INDEX `FKpnengadsd69u0k59x286mr04`(`up_type_id`) USING BTREE,
  CONSTRAINT `FKpnengadsd69u0k59x286mr04` FOREIGN KEY (`up_type_id`) REFERENCES `thing_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of thing_type
-- ----------------------------
INSERT INTO `thing_type` VALUES (1, 0, '全部任务', NULL, NULL);
INSERT INTO `thing_type` VALUES (2, 0, '教学任务', NULL, 1);
INSERT INTO `thing_type` VALUES (3, 0, '硕士论文', NULL, 2);
INSERT INTO `thing_type` VALUES (4, 0, '教改项目', NULL, 2);
INSERT INTO `thing_type` VALUES (5, 0, '本科毕设', NULL, 2);
INSERT INTO `thing_type` VALUES (6, 0, '课程设计', NULL, 2);
INSERT INTO `thing_type` VALUES (7, 0, '油气管道SCADA系统与过程控制', NULL, 6);
INSERT INTO `thing_type` VALUES (8, 0, '软件实训', NULL, 6);
INSERT INTO `thing_type` VALUES (9, 0, '成品油管道设计', NULL, 6);
INSERT INTO `thing_type` VALUES (10, 0, '软件概论', NULL, 6);
INSERT INTO `thing_type` VALUES (11, 0, '课堂教学', NULL, 2);
INSERT INTO `thing_type` VALUES (12, 0, '科研项目', NULL, 1);
INSERT INTO `thing_type` VALUES (13, 0, '省级基金', NULL, 12);
INSERT INTO `thing_type` VALUES (14, 0, '自然基金', NULL, 12);
INSERT INTO `thing_type` VALUES (15, 0, '横向项目', NULL, 12);
INSERT INTO `thing_type` VALUES (16, 0, '国家科技重大专项', NULL, 12);

SET FOREIGN_KEY_CHECKS = 1;
