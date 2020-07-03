/*
 Navicat Premium Data Transfer

 Source Server         : zhangwei
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : yunhome

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 03/07/2020 17:53:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for h_district
-- ----------------------------
DROP TABLE IF EXISTS `h_district`;
CREATE TABLE `h_district`  (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `dis_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`did`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of h_district
-- ----------------------------
INSERT INTO `h_district` VALUES (1, 0, '武汉市');
INSERT INTO `h_district` VALUES (2, 1, '江岸区');
INSERT INTO `h_district` VALUES (3, 1, '江汉区');
INSERT INTO `h_district` VALUES (4, 1, '硚口区');
INSERT INTO `h_district` VALUES (5, 1, '东西湖区');
INSERT INTO `h_district` VALUES (6, 1, '武昌区');
INSERT INTO `h_district` VALUES (7, 1, '青山区');
INSERT INTO `h_district` VALUES (8, 1, '洪山区');
INSERT INTO `h_district` VALUES (9, 1, '汉阳区');
INSERT INTO `h_district` VALUES (10, 1, '东湖高新区');
INSERT INTO `h_district` VALUES (11, 1, '江夏区');
INSERT INTO `h_district` VALUES (12, 1, '蔡甸区');
INSERT INTO `h_district` VALUES (13, 2, '百步亭');
INSERT INTO `h_district` VALUES (14, 2, '大智路');
INSERT INTO `h_district` VALUES (15, 2, '堤角');
INSERT INTO `h_district` VALUES (16, 2, '二七');
INSERT INTO `h_district` VALUES (17, 2, '后湖');
INSERT INTO `h_district` VALUES (18, 2, '黄埔路');
INSERT INTO `h_district` VALUES (19, 2, '永清街');
INSERT INTO `h_district` VALUES (20, 2, '前进路');
INSERT INTO `h_district` VALUES (21, 2, '江汉路');
INSERT INTO `h_district` VALUES (22, 2, '三阳路');
INSERT INTO `h_district` VALUES (23, 2, '台北路');
INSERT INTO `h_district` VALUES (24, 2, '香港路');
INSERT INTO `h_district` VALUES (25, 2, '唐家墩');
INSERT INTO `h_district` VALUES (26, 2, '花桥街');
INSERT INTO `h_district` VALUES (27, 3, '宝丰路');
INSERT INTO `h_district` VALUES (28, 3, '常青路');
INSERT INTO `h_district` VALUES (29, 3, '西北湖');
INSERT INTO `h_district` VALUES (30, 3, '长港路');
INSERT INTO `h_district` VALUES (31, 3, '万松园');
INSERT INTO `h_district` VALUES (32, 3, '新华路');
INSERT INTO `h_district` VALUES (33, 3, '杨汊湖');
INSERT INTO `h_district` VALUES (34, 4, '古田');
INSERT INTO `h_district` VALUES (35, 4, '汉正街');
INSERT INTO `h_district` VALUES (36, 4, '吴家山');
INSERT INTO `h_district` VALUES (37, 4, '宗关');
INSERT INTO `h_district` VALUES (38, 5, '金银滩 ');
INSERT INTO `h_district` VALUES (39, 5, '将军路');
INSERT INTO `h_district` VALUES (40, 5, '常青花园');
INSERT INTO `h_district` VALUES (41, 5, '白沙洲');
INSERT INTO `h_district` VALUES (42, 6, '楚河汉街');
INSERT INTO `h_district` VALUES (43, 6, '东湖');
INSERT INTO `h_district` VALUES (44, 6, '东亭');
INSERT INTO `h_district` VALUES (45, 6, '街道口');
INSERT INTO `h_district` VALUES (46, 6, '积玉桥');
INSERT INTO `h_district` VALUES (47, 6, '水果湖');
INSERT INTO `h_district` VALUES (48, 6, '首义路');
INSERT INTO `h_district` VALUES (49, 6, '沙湖');
INSERT INTO `h_district` VALUES (50, 6, '团结大道');
INSERT INTO `h_district` VALUES (51, 6, '武昌火车站');
INSERT INTO `h_district` VALUES (52, 6, '徐东');
INSERT INTO `h_district` VALUES (53, 6, '杨园');
INSERT INTO `h_district` VALUES (54, 6, '中北路');
INSERT INTO `h_district` VALUES (55, 6, '中南路');
INSERT INTO `h_district` VALUES (56, 7, '红钢城');
INSERT INTO `h_district` VALUES (57, 7, '建设一路');
INSERT INTO `h_district` VALUES (58, 7, '建设二路');
INSERT INTO `h_district` VALUES (59, 7, '建设三路');
INSERT INTO `h_district` VALUES (60, 7, '建设四路');
INSERT INTO `h_district` VALUES (61, 7, '建设五路');
INSERT INTO `h_district` VALUES (62, 7, '建设七路');
INSERT INTO `h_district` VALUES (63, 7, '建设十路');
INSERT INTO `h_district` VALUES (64, 7, '白玉山');
INSERT INTO `h_district` VALUES (65, 7, '武东路');
INSERT INTO `h_district` VALUES (66, 7, '罗家路');
INSERT INTO `h_district` VALUES (67, 7, '八大家');
INSERT INTO `h_district` VALUES (68, 7, '奥山世纪城');
INSERT INTO `h_district` VALUES (69, 8, '虎泉');
INSERT INTO `h_district` VALUES (70, 8, '杨家湾');
INSERT INTO `h_district` VALUES (71, 8, '珞狮南路');
INSERT INTO `h_district` VALUES (72, 8, '珞狮北路');
INSERT INTO `h_district` VALUES (73, 8, '南湖');
INSERT INTO `h_district` VALUES (74, 8, '光谷');
INSERT INTO `h_district` VALUES (75, 8, '广埠屯');
INSERT INTO `h_district` VALUES (76, 9, '王家湾');
INSERT INTO `h_district` VALUES (77, 9, '钟家村');
INSERT INTO `h_district` VALUES (78, 9, '四新');
INSERT INTO `h_district` VALUES (79, 10, '关山大道');
INSERT INTO `h_district` VALUES (80, 10, '民族大道');
INSERT INTO `h_district` VALUES (81, 10, '金融港');
INSERT INTO `h_district` VALUES (82, 10, '华科大');
INSERT INTO `h_district` VALUES (83, 10, '光谷南');
INSERT INTO `h_district` VALUES (84, 10, '花城大道');
INSERT INTO `h_district` VALUES (85, 10, '软件园');
INSERT INTO `h_district` VALUES (86, 11, '藏龙岛');
INSERT INTO `h_district` VALUES (87, 11, '庙山');
INSERT INTO `h_district` VALUES (88, 11, '文化大道');
INSERT INTO `h_district` VALUES (89, 12, '沌口');

-- ----------------------------
-- Table structure for h_house
-- ----------------------------
DROP TABLE IF EXISTS `h_house`;
CREATE TABLE `h_house`  (
  `hid` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋id',
  `user_id` int(11) DEFAULT NULL COMMENT '房屋所属房东id',
  `district_id` int(11) DEFAULT NULL COMMENT '区域表id',
  `type_id` int(11) DEFAULT NULL COMMENT '类型表id',
  `price` double DEFAULT NULL COMMENT '价格',
  `areas` double DEFAULT NULL COMMENT '面积',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `mark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标签',
  `equipment` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '配备',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `imgs` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of h_house
-- ----------------------------
INSERT INTO `h_house` VALUES (1, 1, 85, 1, 500, 56, '清江山水', '湖景房', '电视 冰箱 空调 洗衣机', '武汉市江夏区软件园中路10号 清江山水1期16栋5楼501', '/houseImg/1.jpg');
INSERT INTO `h_house` VALUES (2, 1, 78, 2, 800, 78, '清江山水', '湖景房', '电视 冰箱 空调 洗衣机', '武汉市江夏区软件园中路10号 清江山水1期15栋12楼1203', '/houseImg/2.jpg');
INSERT INTO `h_house` VALUES (3, 3, 55, 1, 550, 59, '清江山水', '湖景房', '电视 冰箱 空调 洗衣机', '武汉市江夏区软件园中路10号 清江山水1期11栋5楼501', '/houseImg/3.jpg');
INSERT INTO `h_house` VALUES (4, 3, 52, 2, 650, 77, '清江山水', '湖景房', '电视 冰箱 空调 洗衣机', '武汉市江夏区软件园中路10号 清江山水2期6栋5楼501', '/houseImg/4.jpg');
INSERT INTO `h_house` VALUES (5, 5, 40, 1, 600, 60, '清江山水', '湖景房', '电视 冰箱 空调 洗衣机', '武汉市江夏区软件园中路10号 清江山水3期2栋1楼101', '/houseImg/5.jpg');
INSERT INTO `h_house` VALUES (6, 5, 78, 2, 700, 78, '清江山水', '湖景房', '电视 冰箱 空调 洗衣机', '武汉市江夏区软件园中路10号 清江山水4期6栋6楼602', '/houseImg/6.jpg');
INSERT INTO `h_house` VALUES (7, 1, 37, 1, 1000, 50, '好房子', '精装修', '沙发 台球 ', '吴家山 一号 4栋 ', '/houseImg/7.jpg');
INSERT INTO `h_house` VALUES (8, 1, 34, 1, 900, 60, '大房子', '精装修', '沙发 台球 ', '吴家山 一号 4栋 ', '/houseImg/8.jpg');
INSERT INTO `h_house` VALUES (9, 3, 36, 2, 100, 78, '好房子', '湖景房', '沙发 台球 ', '吴家山 一号 4栋 ', '/img/1.jpg');
INSERT INTO `h_house` VALUES (10, 5, 45, 6, 3000, 150, '大房子', '精装修', '电脑 女仆', '街道口 1号', '/img/1.jpg');
INSERT INTO `h_house` VALUES (11, 5, 13, 6, 3000, 150, '大房子', '精装修', '电脑 女仆', '街道口 1号', '/img/1.jpg');
INSERT INTO `h_house` VALUES (12, 3, 15, 1, 2500, 70, '好房子', '精装修', '沙发 台球 ', '吴家山 一号 4栋 ', '/houseImg/9.jpg');
INSERT INTO `h_house` VALUES (13, 1, 19, 2, 1200, 80, '好房子', '精装修', '沙发 台球 ', '吴家山 一号 4栋 ', '/houseImg/10.jpg');
INSERT INTO `h_house` VALUES (14, 3, 22, 3, 1300, 90, '好房子', '精装修', '沙发 台球 ', '吴家山 一号 4栋 ', '/houseImg/11.jpg');
INSERT INTO `h_house` VALUES (15, 1, 25, 4, 500, 100, '好房子', '精装修', '沙发 台球 ', '吴家山 一号 4栋 ', '/houseImg/12.jpg');
INSERT INTO `h_house` VALUES (16, 3, 28, 6, 600, 110, '好房子', '精装修', '沙发 台球 ', '吴家山 一号 4栋 ', '/houseImg/13.jpg');
INSERT INTO `h_house` VALUES (17, 1, 36, 5, 700, 120, '好房子', '精装修', '沙发 台球 ', '吴家山 一号 4栋 ', '/houseImg/14.jpg');
INSERT INTO `h_house` VALUES (18, 3, 35, 1, 800, 130, '好房子', '精装修', '沙发 台球 ', '吴家山 一号 4栋 ', '/houseImg/15.jpg');
INSERT INTO `h_house` VALUES (19, 5, 44, 2, 900, 140, '好房子', '精装修', '沙发 台球 ', '吴家山 一号 4栋 ', '/houseImg/16.jpg');
INSERT INTO `h_house` VALUES (20, 5, 56, 3, 1100, 56, '好房子', '精装修', '沙发 台球 ', '吴家山 一号 4栋 ', '/houseImg/17.jpg');
INSERT INTO `h_house` VALUES (21, 5, 65, 4, 1400, 65, '好房子', '精装修', '沙发 台球 ', '吴家山 一号 4栋 ', '/houseImg/18.jpg');

-- ----------------------------
-- Table structure for h_type
-- ----------------------------
DROP TABLE IF EXISTS `h_type`;
CREATE TABLE `h_type`  (
  `typeid` int(11) NOT NULL AUTO_INCREMENT,
  `typedesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型描述',
  PRIMARY KEY (`typeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of h_type
-- ----------------------------
INSERT INTO `h_type` VALUES (1, '一室一厅');
INSERT INTO `h_type` VALUES (2, '两室一厅');
INSERT INTO `h_type` VALUES (3, '三室一厅');
INSERT INTO `h_type` VALUES (4, '一室两厅');
INSERT INTO `h_type` VALUES (5, '两室两厅');
INSERT INTO `h_type` VALUES (6, '三室两厅');

-- ----------------------------
-- Table structure for h_users
-- ----------------------------
DROP TABLE IF EXISTS `h_users`;
CREATE TABLE `h_users`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `psw` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `headImg` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of h_users
-- ----------------------------
INSERT INTO `h_users` VALUES (1, '曹操', '$2a$10$mFU9337Bj/SeIQkhIFafK.tsu5ePSAsLPqYpNAiaXspgWyjxvY44u', '男', '2020-06-13', '/img/曹操.jpg', '房东');
INSERT INTO `h_users` VALUES (2, '貂蝉', '$2a$10$d4idNa9e8O5UIvQDLXQKC.ndKQaHc78nFPNYUO.RfBwFOGo0CvapK', '女', '2020-06-10', '/img/貂蝉.jpg', '租客');
INSERT INTO `h_users` VALUES (3, '刘备', '666', '男', '2020-06-10', '/img/刘备.jpg', '房东');
INSERT INTO `h_users` VALUES (4, '孙小妹', '123', '女', '2020-06-13', '/img/孙小妹.jpg', '租客');
INSERT INTO `h_users` VALUES (5, '孙权', '666', '男', '2020-06-17', '/img/孙权.jpg', '房东');
INSERT INTO `h_users` VALUES (6, '大乔', '123', '女', '2020-06-09', '/img/大乔.jpg', '租客');

SET FOREIGN_KEY_CHECKS = 1;
