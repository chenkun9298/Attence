/*
 Navicat Premium Data Transfer

 Source Server         : 123
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : kaoqin

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 04/08/2020 14:00:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ed
-- ----------------------------
DROP TABLE IF EXISTS `ed`;
CREATE TABLE `ed`  (
  `idEname` int(0) NOT NULL,
  `idDname` int(0) NOT NULL,
  `WorkTime` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`idEname`, `idDname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ed
-- ----------------------------
INSERT INTO `ed` VALUES (95001, 1, 7);
INSERT INTO `ed` VALUES (95002, 7, 8);
INSERT INTO `ed` VALUES (95003, 7, 8);
INSERT INTO `ed` VALUES (95004, 7, 8);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `eid` int(0) NOT NULL,
  `ename` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`eid`) USING BTREE,
  UNIQUE INDEX `idEname`(`eid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (95001, '陈锟', '行政部', '男', 20);
INSERT INTO `employee` VALUES (95002, '梁辰', '人事部', '男', 20);
INSERT INTO `employee` VALUES (95005, '唐晓', '会计部', '女', 20);
INSERT INTO `employee` VALUES (95006, '石井', '人事部', '男', 20);
INSERT INTO `employee` VALUES (95007, '唐荣', '采购部', '女', 31);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `pid` int(0) NOT NULL AUTO_INCREMENT,
  `pimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `eid` int(0) NULL DEFAULT NULL,
  `loadTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` int(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('ck', '123456', 1);
INSERT INTO `role` VALUES ('95001', '95001', 0);
INSERT INTO `role` VALUES ('95002', '95002', 0);
INSERT INTO `role` VALUES ('95003', '95003', 0);
INSERT INTO `role` VALUES ('95005', '95005', 0);
INSERT INTO `role` VALUES ('95006', '95006', 0);
INSERT INTO `role` VALUES ('95007', '95007', 0);
INSERT INTO `role` VALUES ('95002', '95002', 0);

-- ----------------------------
-- Table structure for timecard
-- ----------------------------
DROP TABLE IF EXISTS `timecard`;
CREATE TABLE `timecard`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `eid` int(0) NULL DEFAULT NULL,
  `oneTimecard` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `twoTimecard` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of timecard
-- ----------------------------
INSERT INTO `timecard` VALUES (18, 1, '2020-06-17 7:50:59', NULL);
INSERT INTO `timecard` VALUES (19, 1, '2020-06-27 17:50:59', '2020-06-27 17:59:10');
INSERT INTO `timecard` VALUES (20, 4, NULL, '2020-06-28 23:31:13');
INSERT INTO `timecard` VALUES (21, 95002, NULL, '2020-06-28 23:42:11');

-- ----------------------------
-- Table structure for worktime
-- ----------------------------
DROP TABLE IF EXISTS `worktime`;
CREATE TABLE `worktime`  (
  `up` int(0) NULL DEFAULT NULL,
  `down` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of worktime
-- ----------------------------
INSERT INTO `worktime` VALUES (9, 18);

SET FOREIGN_KEY_CHECKS = 1;
