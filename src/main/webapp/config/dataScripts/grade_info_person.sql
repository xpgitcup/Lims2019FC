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

 Date: 09/08/2019 18:48:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for grade_info_person
-- ----------------------------
DROP TABLE IF EXISTS `grade_info_person`;
CREATE TABLE `grade_info_person`  (
  `grade_info_students_id` bigint(20) NOT NULL,
  `person_id` bigint(20) DEFAULT NULL,
  INDEX `FKoawewuokub2yddujnhxkxdy17`(`person_id`) USING BTREE,
  INDEX `FKholupsdbhme4j42lns4ps6vck`(`grade_info_students_id`) USING BTREE,
  CONSTRAINT `FKholupsdbhme4j42lns4ps6vck` FOREIGN KEY (`grade_info_students_id`) REFERENCES `grade_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKoawewuokub2yddujnhxkxdy17` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of grade_info_person
-- ----------------------------
INSERT INTO `grade_info_person` VALUES (1, 269);
INSERT INTO `grade_info_person` VALUES (1, 270);
INSERT INTO `grade_info_person` VALUES (1, 271);
INSERT INTO `grade_info_person` VALUES (1, 272);
INSERT INTO `grade_info_person` VALUES (1, 273);
INSERT INTO `grade_info_person` VALUES (1, 274);
INSERT INTO `grade_info_person` VALUES (1, 275);
INSERT INTO `grade_info_person` VALUES (1, 276);
INSERT INTO `grade_info_person` VALUES (1, 277);
INSERT INTO `grade_info_person` VALUES (1, 278);
INSERT INTO `grade_info_person` VALUES (1, 279);
INSERT INTO `grade_info_person` VALUES (1, 280);
INSERT INTO `grade_info_person` VALUES (1, 281);
INSERT INTO `grade_info_person` VALUES (1, 282);
INSERT INTO `grade_info_person` VALUES (1, 283);
INSERT INTO `grade_info_person` VALUES (1, 284);
INSERT INTO `grade_info_person` VALUES (1, 285);
INSERT INTO `grade_info_person` VALUES (1, 286);
INSERT INTO `grade_info_person` VALUES (1, 287);
INSERT INTO `grade_info_person` VALUES (1, 288);
INSERT INTO `grade_info_person` VALUES (1, 289);
INSERT INTO `grade_info_person` VALUES (1, 290);
INSERT INTO `grade_info_person` VALUES (1, 291);
INSERT INTO `grade_info_person` VALUES (1, 292);
INSERT INTO `grade_info_person` VALUES (1, 293);
INSERT INTO `grade_info_person` VALUES (1, 294);
INSERT INTO `grade_info_person` VALUES (1, 295);
INSERT INTO `grade_info_person` VALUES (1, 296);
INSERT INTO `grade_info_person` VALUES (1, 297);
INSERT INTO `grade_info_person` VALUES (1, 298);
INSERT INTO `grade_info_person` VALUES (1, 299);
INSERT INTO `grade_info_person` VALUES (1, 300);
INSERT INTO `grade_info_person` VALUES (1, 301);
INSERT INTO `grade_info_person` VALUES (1, 302);
INSERT INTO `grade_info_person` VALUES (1, 303);
INSERT INTO `grade_info_person` VALUES (2, 304);
INSERT INTO `grade_info_person` VALUES (2, 305);
INSERT INTO `grade_info_person` VALUES (2, 306);
INSERT INTO `grade_info_person` VALUES (2, 307);
INSERT INTO `grade_info_person` VALUES (2, 308);
INSERT INTO `grade_info_person` VALUES (2, 309);
INSERT INTO `grade_info_person` VALUES (2, 310);
INSERT INTO `grade_info_person` VALUES (2, 311);
INSERT INTO `grade_info_person` VALUES (2, 312);
INSERT INTO `grade_info_person` VALUES (2, 313);
INSERT INTO `grade_info_person` VALUES (2, 314);
INSERT INTO `grade_info_person` VALUES (2, 315);
INSERT INTO `grade_info_person` VALUES (2, 316);
INSERT INTO `grade_info_person` VALUES (2, 317);
INSERT INTO `grade_info_person` VALUES (2, 318);
INSERT INTO `grade_info_person` VALUES (2, 319);
INSERT INTO `grade_info_person` VALUES (2, 320);
INSERT INTO `grade_info_person` VALUES (2, 321);
INSERT INTO `grade_info_person` VALUES (2, 322);
INSERT INTO `grade_info_person` VALUES (2, 323);
INSERT INTO `grade_info_person` VALUES (2, 324);
INSERT INTO `grade_info_person` VALUES (2, 325);
INSERT INTO `grade_info_person` VALUES (2, 326);
INSERT INTO `grade_info_person` VALUES (2, 327);
INSERT INTO `grade_info_person` VALUES (2, 328);
INSERT INTO `grade_info_person` VALUES (2, 329);
INSERT INTO `grade_info_person` VALUES (2, 330);
INSERT INTO `grade_info_person` VALUES (2, 331);
INSERT INTO `grade_info_person` VALUES (2, 332);
INSERT INTO `grade_info_person` VALUES (2, 333);
INSERT INTO `grade_info_person` VALUES (2, 334);
INSERT INTO `grade_info_person` VALUES (2, 335);
INSERT INTO `grade_info_person` VALUES (3, 336);
INSERT INTO `grade_info_person` VALUES (3, 337);
INSERT INTO `grade_info_person` VALUES (3, 338);
INSERT INTO `grade_info_person` VALUES (3, 339);
INSERT INTO `grade_info_person` VALUES (3, 340);
INSERT INTO `grade_info_person` VALUES (3, 341);
INSERT INTO `grade_info_person` VALUES (3, 342);
INSERT INTO `grade_info_person` VALUES (3, 343);
INSERT INTO `grade_info_person` VALUES (3, 344);
INSERT INTO `grade_info_person` VALUES (3, 345);
INSERT INTO `grade_info_person` VALUES (3, 346);
INSERT INTO `grade_info_person` VALUES (3, 347);
INSERT INTO `grade_info_person` VALUES (3, 348);
INSERT INTO `grade_info_person` VALUES (3, 349);
INSERT INTO `grade_info_person` VALUES (3, 350);
INSERT INTO `grade_info_person` VALUES (3, 351);
INSERT INTO `grade_info_person` VALUES (3, 352);
INSERT INTO `grade_info_person` VALUES (3, 353);
INSERT INTO `grade_info_person` VALUES (3, 354);
INSERT INTO `grade_info_person` VALUES (3, 355);
INSERT INTO `grade_info_person` VALUES (3, 356);
INSERT INTO `grade_info_person` VALUES (3, 357);
INSERT INTO `grade_info_person` VALUES (3, 358);
INSERT INTO `grade_info_person` VALUES (3, 359);
INSERT INTO `grade_info_person` VALUES (3, 360);
INSERT INTO `grade_info_person` VALUES (3, 361);
INSERT INTO `grade_info_person` VALUES (3, 362);
INSERT INTO `grade_info_person` VALUES (3, 363);
INSERT INTO `grade_info_person` VALUES (3, 364);
INSERT INTO `grade_info_person` VALUES (3, 365);
INSERT INTO `grade_info_person` VALUES (3, 366);
INSERT INTO `grade_info_person` VALUES (3, 367);
INSERT INTO `grade_info_person` VALUES (3, 368);

SET FOREIGN_KEY_CHECKS = 1;
