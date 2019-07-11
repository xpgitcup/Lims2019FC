/*
 Navicat Premium Data Transfer

 Source Server         : sample
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : lims2019dbb

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 11/07/2019 22:37:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_attribute_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `append_attribute` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_204b9ercidw1baj3s3m9lnr33`(`user_name`) USING BTREE,
  INDEX `FKaiybevf5q198uok4va3p7b6wb`(`role_attribute_id`) USING BTREE,
  CONSTRAINT `FKaiybevf5q198uok4va3p7b6wb` FOREIGN KEY (`role_attribute_id`) REFERENCES `system_attribute` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 270 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES (1, 0, '641d77dd5271fca28764612a028d9c8e', 1, '李晓平', '');
INSERT INTO `system_user` VALUES (2, 0, 'ee26fc66b1369c7625333bedafbfcaf6', 1, '宫敬', '');
INSERT INTO `system_user` VALUES (3, 0, 'f4aa0dd960521e045ae2f20621fb4ee9', 1, '吴海浩', '');
INSERT INTO `system_user` VALUES (4, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2014314014', 'Student=石国赟');
INSERT INTO `system_user` VALUES (5, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2014314013', 'Student=丁麟');
INSERT INTO `system_user` VALUES (6, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2014011043', 'Student=冯志强');
INSERT INTO `system_user` VALUES (7, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010667', 'Student=沈倩');
INSERT INTO `system_user` VALUES (8, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010743', 'Student=王铁淞');
INSERT INTO `system_user` VALUES (9, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010854', 'Student=德吉曲珍');
INSERT INTO `system_user` VALUES (10, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010855', 'Student=胡瑾');
INSERT INTO `system_user` VALUES (11, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010856', 'Student=贾羽茜');
INSERT INTO `system_user` VALUES (12, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010857', 'Student=康雅倩');
INSERT INTO `system_user` VALUES (13, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010858', 'Student=兰敏');
INSERT INTO `system_user` VALUES (14, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010859', 'Student=李露露');
INSERT INTO `system_user` VALUES (15, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010860', 'Student=李玥洁');
INSERT INTO `system_user` VALUES (16, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010861', 'Student=柳佳丽');
INSERT INTO `system_user` VALUES (17, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010862', 'Student=史安丁');
INSERT INTO `system_user` VALUES (18, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010863', 'Student=张怡铭');
INSERT INTO `system_user` VALUES (19, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010864', 'Student=艾斯卡尔·坎买尔');
INSERT INTO `system_user` VALUES (20, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010865', 'Student=白宗翰');
INSERT INTO `system_user` VALUES (21, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010866', 'Student=董佳鑫');
INSERT INTO `system_user` VALUES (22, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010867', 'Student=付顺康');
INSERT INTO `system_user` VALUES (23, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010868', 'Student=高经华');
INSERT INTO `system_user` VALUES (24, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010869', 'Student=顾鹏程');
INSERT INTO `system_user` VALUES (25, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010870', 'Student=贺国晏');
INSERT INTO `system_user` VALUES (26, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010871', 'Student=侯富恒');
INSERT INTO `system_user` VALUES (27, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010872', 'Student=姜铖');
INSERT INTO `system_user` VALUES (28, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010873', 'Student=李致远');
INSERT INTO `system_user` VALUES (29, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010875', 'Student=刘禹良');
INSERT INTO `system_user` VALUES (30, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010876', 'Student=骆新斗');
INSERT INTO `system_user` VALUES (31, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010877', 'Student=马克');
INSERT INTO `system_user` VALUES (32, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010878', 'Student=马有财');
INSERT INTO `system_user` VALUES (33, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010879', 'Student=邵文宏');
INSERT INTO `system_user` VALUES (34, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010880', 'Student=王饕');
INSERT INTO `system_user` VALUES (35, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010881', 'Student=伍彦松');
INSERT INTO `system_user` VALUES (36, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010882', 'Student=熊泽华');
INSERT INTO `system_user` VALUES (37, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010883', 'Student=严腾飞');
INSERT INTO `system_user` VALUES (38, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010884', 'Student=杨宏慧');
INSERT INTO `system_user` VALUES (39, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010885', 'Student=殷雄');
INSERT INTO `system_user` VALUES (40, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010886', 'Student=张猛');
INSERT INTO `system_user` VALUES (41, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010887', 'Student=张雄凯');
INSERT INTO `system_user` VALUES (42, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015011149', 'Student=张悦');
INSERT INTO `system_user` VALUES (43, 1, '25d55ad283aa400af464c76d713c07ad', 7, '1552', 'Teacher=宫敬');
INSERT INTO `system_user` VALUES (44, 2, 'e4976ac2a3a025316b8b27126072a6a8', 1, '2151', 'Teacher=李晓平');
INSERT INTO `system_user` VALUES (45, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2152', 'Teacher=邓道明');
INSERT INTO `system_user` VALUES (46, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2333', 'Teacher=左丽丽');
INSERT INTO `system_user` VALUES (47, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2013880073', 'Teacher=史博会');
INSERT INTO `system_user` VALUES (48, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2012880012', 'Teacher=温凯');
INSERT INTO `system_user` VALUES (49, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2161', 'Teacher=邢晓凯');
INSERT INTO `system_user` VALUES (50, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2166', 'Teacher=侯磊');
INSERT INTO `system_user` VALUES (51, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2005', 'Teacher=李兆慈');
INSERT INTO `system_user` VALUES (52, 1, '25d55ad283aa400af464c76d713c07ad', 7, '1670', 'Teacher=黄启玉');
INSERT INTO `system_user` VALUES (53, 1, '25d55ad283aa400af464c76d713c07ad', 7, '1815', 'Teacher=李鸿英');
INSERT INTO `system_user` VALUES (54, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015314019', 'Student=虞维超');
INSERT INTO `system_user` VALUES (55, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015314016', 'Student=马千里');
INSERT INTO `system_user` VALUES (56, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015314022', 'Student=靳航');
INSERT INTO `system_user` VALUES (57, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015314023', 'Student=柳扬');
INSERT INTO `system_user` VALUES (58, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015314017', 'Student=宋尚飞');
INSERT INTO `system_user` VALUES (59, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015214549', 'Student=金浩');
INSERT INTO `system_user` VALUES (60, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015214571', 'Student=马晓旭');
INSERT INTO `system_user` VALUES (61, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015214557', 'Student=朱梦琪');
INSERT INTO `system_user` VALUES (62, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016314026', 'Student=康琦');
INSERT INTO `system_user` VALUES (63, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016314018', 'Student=洪炳沅');
INSERT INTO `system_user` VALUES (64, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016314025', 'Student=黄辉荣');
INSERT INTO `system_user` VALUES (65, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016314019', 'Student=王丹');
INSERT INTO `system_user` VALUES (66, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016314017', 'Student=李昂');
INSERT INTO `system_user` VALUES (67, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214568', 'Student=陈新果');
INSERT INTO `system_user` VALUES (68, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214090', 'Student=陈怡鸣');
INSERT INTO `system_user` VALUES (69, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214554', 'Student=陈影');
INSERT INTO `system_user` VALUES (70, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214555', 'Student=崔可心');
INSERT INTO `system_user` VALUES (71, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214536', 'Student=丁凯');
INSERT INTO `system_user` VALUES (72, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214091', 'Student=甘东英');
INSERT INTO `system_user` VALUES (73, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214537', 'Student=高航');
INSERT INTO `system_user` VALUES (74, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214541', 'Student=韩庆龙');
INSERT INTO `system_user` VALUES (75, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214538', 'Student=黄璞');
INSERT INTO `system_user` VALUES (76, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214539', 'Student=李梦瑶');
INSERT INTO `system_user` VALUES (77, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214086', 'Student=李莎');
INSERT INTO `system_user` VALUES (78, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214556', 'Student=李愚');
INSERT INTO `system_user` VALUES (79, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214544', 'Student=王传硕');
INSERT INTO `system_user` VALUES (80, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214543', 'Student=任亮');
INSERT INTO `system_user` VALUES (81, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214060', 'Student=沈伟伟');
INSERT INTO `system_user` VALUES (82, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214092', 'Student=沈允');
INSERT INTO `system_user` VALUES (83, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214076', 'Student=苏越');
INSERT INTO `system_user` VALUES (84, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214557', 'Student=万洋洋');
INSERT INTO `system_user` VALUES (85, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214558', 'Student=王茀玺');
INSERT INTO `system_user` VALUES (86, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214057', 'Student=王君傲');
INSERT INTO `system_user` VALUES (87, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214093', 'Student=吴停');
INSERT INTO `system_user` VALUES (88, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214096', 'Student=夏子杰');
INSERT INTO `system_user` VALUES (89, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015214064', 'Student=许洁');
INSERT INTO `system_user` VALUES (90, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214063', 'Student=张若晨');
INSERT INTO `system_user` VALUES (91, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214065', 'Student=赵云鹏');
INSERT INTO `system_user` VALUES (92, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214560', 'Student=周艳红');
INSERT INTO `system_user` VALUES (93, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017314026', 'Student=樊迪');
INSERT INTO `system_user` VALUES (94, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017314015', 'Student=齐雪宇');
INSERT INTO `system_user` VALUES (95, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017314023', 'Student=于志鹏');
INSERT INTO `system_user` VALUES (96, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017314013', 'Student=陈玉川');
INSERT INTO `system_user` VALUES (97, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017314014', 'Student=李熠辰');
INSERT INTO `system_user` VALUES (98, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017314024', 'Student=张盛楠');
INSERT INTO `system_user` VALUES (99, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214552', 'Student=邓坤');
INSERT INTO `system_user` VALUES (100, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214564', 'Student=高晶晶');
INSERT INTO `system_user` VALUES (101, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214553', 'Student=高振宇');
INSERT INTO `system_user` VALUES (102, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214565', 'Student=何卓');
INSERT INTO `system_user` VALUES (103, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214554', 'Student=胡杰');
INSERT INTO `system_user` VALUES (104, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214558', 'Student=兰文萍');
INSERT INTO `system_user` VALUES (105, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214584', 'Student=李根');
INSERT INTO `system_user` VALUES (106, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214050', 'Student=李金潮');
INSERT INTO `system_user` VALUES (107, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214052', 'Student=李立');
INSERT INTO `system_user` VALUES (108, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214555', 'Student=林聿明');
INSERT INTO `system_user` VALUES (109, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214053', 'Student=吕鹏飞');
INSERT INTO `system_user` VALUES (110, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214054', 'Student=孙小喆');
INSERT INTO `system_user` VALUES (111, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214081', 'Student=王振威');
INSERT INTO `system_user` VALUES (112, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214078', 'Student=肖亚琪');
INSERT INTO `system_user` VALUES (113, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214070', 'Student=谢平');
INSERT INTO `system_user` VALUES (114, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214082', 'Student=薛一菡');
INSERT INTO `system_user` VALUES (115, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214570', 'Student=杨克');
INSERT INTO `system_user` VALUES (116, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214566', 'Student=禹亚峰');
INSERT INTO `system_user` VALUES (117, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214556', 'Student=张昊');
INSERT INTO `system_user` VALUES (118, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214055', 'Student=张杰');
INSERT INTO `system_user` VALUES (119, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214557', 'Student=张蒙丽');
INSERT INTO `system_user` VALUES (120, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214056', 'Student=张佩颖');
INSERT INTO `system_user` VALUES (121, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214069', 'Student=狄国佳');
INSERT INTO `system_user` VALUES (122, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018314016', 'Student=段旭');
INSERT INTO `system_user` VALUES (123, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018314015', 'Student=陈思杭');
INSERT INTO `system_user` VALUES (124, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018314026', 'Student=彭泽恒');
INSERT INTO `system_user` VALUES (125, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018314025', 'Student=李楷');
INSERT INTO `system_user` VALUES (126, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214052', 'Student=丁陈陈');
INSERT INTO `system_user` VALUES (127, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214053', 'Student=纪晨秋');
INSERT INTO `system_user` VALUES (128, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214054', 'Student=廖清云');
INSERT INTO `system_user` VALUES (129, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214055', 'Student=刘鹏');
INSERT INTO `system_user` VALUES (130, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214056', 'Student=刘轩章');
INSERT INTO `system_user` VALUES (131, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214051', 'Student=李国豪');
INSERT INTO `system_user` VALUES (132, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214075', 'Student=林德才');
INSERT INTO `system_user` VALUES (133, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214078', 'Student=葛运通');
INSERT INTO `system_user` VALUES (134, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214079', 'Student=杨晓鹏');
INSERT INTO `system_user` VALUES (135, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214544', 'Student=冯兴');
INSERT INTO `system_user` VALUES (136, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214545', 'Student=王昕楚');
INSERT INTO `system_user` VALUES (137, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214546', 'Student=王靖怡');
INSERT INTO `system_user` VALUES (138, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214553', 'Student=崔雪萌');
INSERT INTO `system_user` VALUES (139, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214554', 'Student=都兆楠');
INSERT INTO `system_user` VALUES (140, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214555', 'Student=谭遥');
INSERT INTO `system_user` VALUES (141, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214084', 'Student=周建伟');
INSERT INTO `system_user` VALUES (142, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214068', 'Student=刘胜男');
INSERT INTO `system_user` VALUES (143, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214080', 'Student=喻伟婕');
INSERT INTO `system_user` VALUES (144, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214081', 'Student=张璐瑶');
INSERT INTO `system_user` VALUES (145, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015214576', 'Student=卜铎');
INSERT INTO `system_user` VALUES (146, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2017214588', 'Student=孙成威');
INSERT INTO `system_user` VALUES (147, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214547', 'Student=李雨');
INSERT INTO `system_user` VALUES (148, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214548', 'Student=王昕');
INSERT INTO `system_user` VALUES (149, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214549', 'Student=朱振宇');
INSERT INTO `system_user` VALUES (150, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214550', 'Student=单锦旭');
INSERT INTO `system_user` VALUES (151, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214556', 'Student=董小钰');
INSERT INTO `system_user` VALUES (152, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214557', 'Student=陶冰星');
INSERT INTO `system_user` VALUES (153, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214558', 'Student=王扬超');
INSERT INTO `system_user` VALUES (154, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214559', 'Student=杨哲任');
INSERT INTO `system_user` VALUES (155, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214560', 'Student=张静宇');
INSERT INTO `system_user` VALUES (156, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214564', 'Student=谭宝亮');
INSERT INTO `system_user` VALUES (157, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214565', 'Student=赵恭宇');
INSERT INTO `system_user` VALUES (158, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214566', 'Student=葛旭');
INSERT INTO `system_user` VALUES (159, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214567', 'Student=李栋');
INSERT INTO `system_user` VALUES (160, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214568', 'Student=王帅');
INSERT INTO `system_user` VALUES (161, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214569', 'Student=武壮');
INSERT INTO `system_user` VALUES (162, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214570', 'Student=朱云鹏');
INSERT INTO `system_user` VALUES (163, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214573', 'Student=钟思源');
INSERT INTO `system_user` VALUES (164, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214574', 'Student=周冰');
INSERT INTO `system_user` VALUES (165, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214575', 'Student=曾亚男');
INSERT INTO `system_user` VALUES (166, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214576', 'Student=刘壮');
INSERT INTO `system_user` VALUES (167, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214577', 'Student=倪平');
INSERT INTO `system_user` VALUES (168, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214578', 'Student=张湘玮');
INSERT INTO `system_user` VALUES (169, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214579', 'Student=赵留康');
INSERT INTO `system_user` VALUES (170, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018244505', 'Student=王玮健');
INSERT INTO `system_user` VALUES (171, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2219', 'Teacher=阎凤元');
INSERT INTO `system_user` VALUES (172, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2157', 'Teacher=孙恒');
INSERT INTO `system_user` VALUES (173, 1, '25d55ad283aa400af464c76d713c07ad', 7, '1357', 'Teacher=张帆');
INSERT INTO `system_user` VALUES (174, 1, '25d55ad283aa400af464c76d713c07ad', 7, '0098', 'Teacher=张劲军');
INSERT INTO `system_user` VALUES (175, 1, '25d55ad283aa400af464c76d713c07ad', 7, '1102', 'Teacher=吴海浩');
INSERT INTO `system_user` VALUES (176, 1, '25d55ad283aa400af464c76d713c07ad', 7, '0093', 'Teacher=吴长春');
INSERT INTO `system_user` VALUES (177, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2401', 'Teacher=陈严飞');
INSERT INTO `system_user` VALUES (178, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2435', 'Teacher=韩善鹏');
INSERT INTO `system_user` VALUES (179, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2011880034', 'Teacher=王艺');
INSERT INTO `system_user` VALUES (180, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2018891017', 'Teacher=苏怀');
INSERT INTO `system_user` VALUES (181, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2018880019', 'Teacher=刘啸奔');
INSERT INTO `system_user` VALUES (182, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2017880042', 'Teacher=王雨墨');
INSERT INTO `system_user` VALUES (183, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2016880044', 'Teacher=孙梦然');
INSERT INTO `system_user` VALUES (184, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2016880002', 'Teacher=李文婧');
INSERT INTO `system_user` VALUES (185, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2015880040', 'Teacher=刘稳文');
INSERT INTO `system_user` VALUES (186, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2014880069', 'Teacher=张永星');
INSERT INTO `system_user` VALUES (187, 1, '25d55ad283aa400af464c76d713c07ad', 7, '2013880070', 'Teacher=孙旭');
INSERT INTO `system_user` VALUES (188, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2013010935', 'Student=李伟奇');
INSERT INTO `system_user` VALUES (189, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2013011552', 'Student=柴兆杰');
INSERT INTO `system_user` VALUES (190, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010125', 'Student=张扬');
INSERT INTO `system_user` VALUES (191, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010450', 'Student=焦开拓');
INSERT INTO `system_user` VALUES (192, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010888', 'Student=金晓琼');
INSERT INTO `system_user` VALUES (193, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010889', 'Student=亢燕丽');
INSERT INTO `system_user` VALUES (194, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010890', 'Student=刘学春');
INSERT INTO `system_user` VALUES (195, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010891', 'Student=么娆');
INSERT INTO `system_user` VALUES (196, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010892', 'Student=王玉婷');
INSERT INTO `system_user` VALUES (197, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010893', 'Student=王智林');
INSERT INTO `system_user` VALUES (198, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010894', 'Student=徐苗苗');
INSERT INTO `system_user` VALUES (199, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010895', 'Student=徐则林');
INSERT INTO `system_user` VALUES (200, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010897', 'Student=张昊月');
INSERT INTO `system_user` VALUES (201, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010898', 'Student=戴材炜');
INSERT INTO `system_user` VALUES (202, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010900', 'Student=何毅');
INSERT INTO `system_user` VALUES (203, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010901', 'Student=贺禹铭');
INSERT INTO `system_user` VALUES (204, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010902', 'Student=雷平');
INSERT INTO `system_user` VALUES (205, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010903', 'Student=李彦博');
INSERT INTO `system_user` VALUES (206, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010904', 'Student=李泽世');
INSERT INTO `system_user` VALUES (207, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010905', 'Student=刘琪');
INSERT INTO `system_user` VALUES (208, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010906', 'Student=刘万琪');
INSERT INTO `system_user` VALUES (209, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010907', 'Student=刘志伟');
INSERT INTO `system_user` VALUES (210, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010908', 'Student=石金波');
INSERT INTO `system_user` VALUES (211, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010909', 'Student=宋燎东');
INSERT INTO `system_user` VALUES (212, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010910', 'Student=隋金昊');
INSERT INTO `system_user` VALUES (213, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010911', 'Student=邰昊');
INSERT INTO `system_user` VALUES (214, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010912', 'Student=唐银宏');
INSERT INTO `system_user` VALUES (215, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010913', 'Student=王怡博');
INSERT INTO `system_user` VALUES (216, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010914', 'Student=徐帜');
INSERT INTO `system_user` VALUES (217, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010915', 'Student=杨起');
INSERT INTO `system_user` VALUES (218, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010917', 'Student=张兴强');
INSERT INTO `system_user` VALUES (219, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010918', 'Student=赵鹏');
INSERT INTO `system_user` VALUES (220, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010919', 'Student=赵伟');
INSERT INTO `system_user` VALUES (221, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010920', 'Student=周小龙');
INSERT INTO `system_user` VALUES (222, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010954', 'Student=李维嘉');
INSERT INTO `system_user` VALUES (223, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010956', 'Student=吴紫月');
INSERT INTO `system_user` VALUES (224, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015011166', 'Student=肖帆');
INSERT INTO `system_user` VALUES (225, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2013010971', 'Student=宋少雄');
INSERT INTO `system_user` VALUES (226, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2014010805', 'Student=张艺馨');
INSERT INTO `system_user` VALUES (227, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010921', 'Student=封叶');
INSERT INTO `system_user` VALUES (228, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010922', 'Student=高维蔚');
INSERT INTO `system_user` VALUES (229, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010923', 'Student=李姗姗');
INSERT INTO `system_user` VALUES (230, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010924', 'Student=潘瑞雪');
INSERT INTO `system_user` VALUES (231, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010925', 'Student=索娜曲珍');
INSERT INTO `system_user` VALUES (232, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010926', 'Student=席蔺璇');
INSERT INTO `system_user` VALUES (233, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010927', 'Student=张琴');
INSERT INTO `system_user` VALUES (234, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010928', 'Student=张婉');
INSERT INTO `system_user` VALUES (235, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010929', 'Student=张鑫');
INSERT INTO `system_user` VALUES (236, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010930', 'Student=郑衣珍');
INSERT INTO `system_user` VALUES (237, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010931', 'Student=陈东宁');
INSERT INTO `system_user` VALUES (238, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010932', 'Student=陈盼杰');
INSERT INTO `system_user` VALUES (239, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010933', 'Student=陈枭');
INSERT INTO `system_user` VALUES (240, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010934', 'Student=池弘睿');
INSERT INTO `system_user` VALUES (241, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010935', 'Student=董高华');
INSERT INTO `system_user` VALUES (242, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010936', 'Student=董兆豪');
INSERT INTO `system_user` VALUES (243, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010937', 'Student=高毅飞');
INSERT INTO `system_user` VALUES (244, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010938', 'Student=何习渊');
INSERT INTO `system_user` VALUES (245, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010939', 'Student=李睿麟');
INSERT INTO `system_user` VALUES (246, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010940', 'Student=李伟浩');
INSERT INTO `system_user` VALUES (247, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010941', 'Student=苗泽宇');
INSERT INTO `system_user` VALUES (248, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010942', 'Student=宁立秋');
INSERT INTO `system_user` VALUES (249, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010943', 'Student=田志刚');
INSERT INTO `system_user` VALUES (250, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010944', 'Student=汪常翔');
INSERT INTO `system_user` VALUES (251, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010945', 'Student=杨浩帆');
INSERT INTO `system_user` VALUES (252, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010946', 'Student=张博');
INSERT INTO `system_user` VALUES (253, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010947', 'Student=张财铄');
INSERT INTO `system_user` VALUES (254, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010948', 'Student=张左旻');
INSERT INTO `system_user` VALUES (255, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010949', 'Student=赵凯歌');
INSERT INTO `system_user` VALUES (256, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010950', 'Student=赵文博');
INSERT INTO `system_user` VALUES (257, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010951', 'Student=郑文川');
INSERT INTO `system_user` VALUES (258, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010952', 'Student=周俊炜');
INSERT INTO `system_user` VALUES (259, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015010953', 'Student=朱跃强');
INSERT INTO `system_user` VALUES (260, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015011710', 'Student=姜源');
INSERT INTO `system_user` VALUES (261, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015030065', 'Student=达意娜');
INSERT INTO `system_user` VALUES (262, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015030066', 'Student=康迪');
INSERT INTO `system_user` VALUES (263, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015030067', 'Student=梅尔兰');
INSERT INTO `system_user` VALUES (264, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015030068', 'Student=萨纳特');
INSERT INTO `system_user` VALUES (265, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2015030069', 'Student=桑迪');
INSERT INTO `system_user` VALUES (266, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214559', 'Student=韦宝成');
INSERT INTO `system_user` VALUES (267, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2016214080', 'Student=李蛟鸾');
INSERT INTO `system_user` VALUES (268, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214572', 'Student=陈汉');
INSERT INTO `system_user` VALUES (269, 1, '25d55ad283aa400af464c76d713c07ad', 10, '2018214551', 'Student=时浩');

SET FOREIGN_KEY_CHECKS = 1;
