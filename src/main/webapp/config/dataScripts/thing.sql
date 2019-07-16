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

 Date: 16/07/2019 09:52:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for thing
-- ----------------------------
DROP TABLE IF EXISTS `thing`;
CREATE TABLE `thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `start_date` datetime(0) NULL DEFAULT NULL,
  `sponsor_id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thing_type_id` bigint(20) NOT NULL,
  `end_date` datetime(0) NULL DEFAULT NULL,
  `append_values` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_9iletimkbhifny4mo0rgy1of0`(`name`) USING BTREE,
  INDEX `FKn2r9xbm8nh2geao105rduwp50`(`sponsor_id`) USING BTREE,
  INDEX `FK3jv5lg4546jticrnr46rl9i6f`(`thing_type_id`) USING BTREE,
  CONSTRAINT `FK3jv5lg4546jticrnr46rl9i6f` FOREIGN KEY (`thing_type_id`) REFERENCES `thing_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKn2r9xbm8nh2geao105rduwp50` FOREIGN KEY (`sponsor_id`) REFERENCES `person` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of thing
-- ----------------------------
INSERT INTO `thing` VALUES (1, 0, '2019-06-06 21:20:46', 224, '本科毕设.2018-2019-2', 9, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (2, 0, '2019-06-06 21:20:46', 224, '软件概论.2018-2019-2', 8, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (3, 0, '2019-06-06 21:20:46', 224, '油气管道SCADA系统与过程控制.2018-2019-2', 5, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (4, 0, '2019-06-06 21:20:46', 224, '成品油管道设计.2018-2019-2', 6, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (5, 0, '2016-01-01 00:00:00', 224, '多气合采全开发周期集输及处理工艺', 14, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (6, 0, '2017-01-01 00:00:00', 224, '华南销售项目', 13, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (7, 0, '2018-01-01 00:00:00', 224, '冲蚀项目', 13, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (8, 0, '2018-01-01 00:00:00', 224, '单管水力模拟', 13, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (9, 0, NULL, 224, '管网水力模拟', 13, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (10, 0, NULL, 224, '集输管网积液', 13, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (11, 0, '2019-06-06 21:20:46', 224, '微型SCADA系统', 11, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (12, 0, '2019-06-06 21:20:46', 224, '2016.硕士论文.李愚', 10, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (13, 0, '2019-06-06 21:20:46', 224, '2016.硕士论文.周艳红', 10, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (14, 0, '2019-06-06 21:20:46', 224, '2016.硕士论文.韦宝成', 10, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (15, 0, '2019-06-06 21:20:46', 224, '2016.硕士论文.陈影', 10, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (16, 0, '2019-06-06 21:20:46', 224, '2016.硕士论文.万洋洋', 10, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (17, 0, '2019-06-06 21:20:46', 224, '2016.硕士论文.金浩', 10, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (18, 0, '2019-06-06 21:20:46', 224, '课堂教学.2018-2019-2', 3, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (19, 0, '2016-01-01 00:00:00', 224, '纳米微波', 13, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (20, 0, '2019-06-06 21:20:46', 224, '2016.硕士论文.苏越', 10, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (21, 0, '2019-06-06 21:20:46', 224, '2016.硕士论文.王茀玺', 10, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (22, 0, '2019-06-06 21:20:46', 224, '2016.硕士论文.崔可心', 10, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (23, 0, '2018-01-01 00:00:00', 224, '顺北项目', 13, '2019-06-06 21:20:46', NULL);
INSERT INTO `thing` VALUES (24, 0, '2019-05-01 00:00:00', 224, '华北积液项目', 13, '2019-06-06 21:20:47', NULL);
INSERT INTO `thing` VALUES (25, 0, '2019-05-01 00:00:00', 224, '机场水力模拟', 13, '2019-06-06 21:20:47', NULL);
INSERT INTO `thing` VALUES (26, 0, NULL, 224, '匹配性计算', 14, '2019-06-06 21:20:47', NULL);

SET FOREIGN_KEY_CHECKS = 1;
