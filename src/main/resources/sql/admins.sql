/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : urgent_logistics

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 06/02/2022 19:54:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `admin` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'root',
  `power` int NULL DEFAULT 1,
  `id` int NOT NULL AUTO_INCREMENT,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('root', '123', 1, 4, '2022-02-04 10:54:07');

-- ----------------------------
-- Table structure for asales
-- ----------------------------
DROP TABLE IF EXISTS `asales`;
CREATE TABLE `asales`  (
  `orderId` int NOT NULL,
  `purchaseAlert` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `purchaseQuantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inventorySurplus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asales
-- ----------------------------

-- ----------------------------
-- Table structure for deliverycenter
-- ----------------------------
DROP TABLE IF EXISTS `deliverycenter`;
CREATE TABLE `deliverycenter`  (
  `SerialNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `center` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of deliverycenter
-- ----------------------------
INSERT INTO `deliverycenter` VALUES ('PV71536480', '14774538866', '???????????????', '??????');
INSERT INTO `deliverycenter` VALUES ('ES18974256', '15685212106', '???????????????', '?????????');
INSERT INTO `deliverycenter` VALUES ('QV03589421', '15000130824', '???????????????', '?????????');
INSERT INTO `deliverycenter` VALUES ('GQ09387521', '18727282989', '???????????????', '??????');
INSERT INTO `deliverycenter` VALUES ('SX82670491', '18554006756', '???????????????', '??????');
INSERT INTO `deliverycenter` VALUES ('ZJ13478625', '18913548089', '???????????????', '??????');
INSERT INTO `deliverycenter` VALUES ('LT32048671', '13818782064', '???????????????', '?????????');
INSERT INTO `deliverycenter` VALUES ('ZH18395204', '15583406872', '??????????????????', '?????????');
INSERT INTO `deliverycenter` VALUES ('AC65103974', '18950585650', '???????????????', '?????????');

-- ----------------------------
-- Table structure for demandsituation
-- ----------------------------
DROP TABLE IF EXISTS `demandsituation`;
CREATE TABLE `demandsituation`  (
  `orderId` int NOT NULL,
  `purchaseAlert` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `purchase` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `solution` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of demandsituation
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `SerialNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `specifications` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kind` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 550 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (545, 'LM01273946', '??????', '689', 'J1', '2022-02-05 22:38:08');
INSERT INTO `goods` VALUES (546, 'KW80936175', '??????', '703', 'A0', '2022-02-05 22:38:08');
INSERT INTO `goods` VALUES (547, 'XM16754098', '??????', '814', 'Y2', '2022-02-05 22:38:08');
INSERT INTO `goods` VALUES (548, 'GH42190637', '??????', '073', 'M3', '2022-02-05 22:38:08');
INSERT INTO `goods` VALUES (549, 'ID61290543', '??????', '519', 'N1', '2022-02-05 22:38:08');

-- ----------------------------
-- Table structure for logistics
-- ----------------------------
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE `logistics`  (
  `trade_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderId` int NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_num` int NULL DEFAULT NULL,
  `order_customer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_customer_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `to_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `arrive_time` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logistics
-- ----------------------------
INSERT INTO `logistics` VALUES ('??????', 305, '??????', 148, '??????', 'F3', '?????????', '1998-09-23 00:00:00');
INSERT INTO `logistics` VALUES ('??????', 373, '??????', 443, '??????', 'N7', '?????????', '1971-01-10 00:00:00');
INSERT INTO `logistics` VALUES ('??????', 505, '??????', 599, '??????', 'M4', '?????????', '1976-06-01 00:00:00');
INSERT INTO `logistics` VALUES ('??????', 307, '??????', 138, '??????', 'G8', '?????????', '2013-12-27 00:00:00');
INSERT INTO `logistics` VALUES ('??????', 155, '??????', 37, '??????', 'B8', '?????????', '1993-01-07 00:00:00');

-- ----------------------------
-- Table structure for partsnformation
-- ----------------------------
DROP TABLE IF EXISTS `partsnformation`;
CREATE TABLE `partsnformation`  (
  `orderId` int NOT NULL,
  `equipmentName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inventoryNumber` int NULL DEFAULT NULL,
  `operation1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `operation2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of partsnformation
-- ----------------------------

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase`  (
  `purchase_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_sum` int NULL DEFAULT NULL,
  `left_sum` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase
-- ----------------------------

-- ----------------------------
-- Table structure for solutionqingk
-- ----------------------------
DROP TABLE IF EXISTS `solutionqingk`;
CREATE TABLE `solutionqingk`  (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `question_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `question_time` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of solutionqingk
-- ----------------------------

-- ----------------------------
-- Table structure for sparepartsinfo
-- ----------------------------
DROP TABLE IF EXISTS `sparepartsinfo`;
CREATE TABLE `sparepartsinfo`  (
  `orderId` int NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `restMoney` float NULL DEFAULT 0,
  `general` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `advanceDate` timestamp NULL DEFAULT NULL,
  `demandLevel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sparepartsinfo
-- ----------------------------
INSERT INTO `sparepartsinfo` VALUES (185, '??????', 12606.6, '?????????', '2001-10-20 00:00:00', '??????');
INSERT INTO `sparepartsinfo` VALUES (291, '??????', 1332.38, '??????', '1977-05-02 00:00:00', '??????');
INSERT INTO `sparepartsinfo` VALUES (396, '??????', 9125.22, '?????????', '1999-09-27 00:00:00', '??????');
INSERT INTO `sparepartsinfo` VALUES (429, '??????', 12601.9, '?????????', '2017-12-30 00:00:00', '??????');
INSERT INTO `sparepartsinfo` VALUES (551, '??????', 14054.8, '?????????', '2010-08-18 00:00:00', '??????');

-- ----------------------------
-- Table structure for supply
-- ----------------------------
DROP TABLE IF EXISTS `supply`;
CREATE TABLE `supply`  (
  `product_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `need_sum` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supply
-- ----------------------------

-- ----------------------------
-- Table structure for vehiclecondition
-- ----------------------------
DROP TABLE IF EXISTS `vehiclecondition`;
CREATE TABLE `vehiclecondition`  (
  `orderId` int NOT NULL,
  `vehicleCondition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loadableCapacity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transportationCost` decimal(10, 2) NULL DEFAULT NULL,
  `operation2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehiclecondition
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
