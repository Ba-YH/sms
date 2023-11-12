/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : sms

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 03/11/2023 15:57:48
*/

CREATE DATABASE sms;
use sms;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `classNO` bigint NOT NULL AUTO_INCREMENT,
  `year` varchar(50) CHARACTER  SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `facultyNO` bigint NULL DEFAULT NULL,
  `major` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `classSize` int NULL DEFAULT NULL,
  `counsellorNO` bigint NULL DEFAULT NULL,
  `classs` int NULL DEFAULT NULL,
  PRIMARY KEY (`classNO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 774 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '2021', 1, '原神元素科学', 30, 30002696, 1);
INSERT INTO `class` VALUES (2, '2021', 1, '原神文字学（丘丘语方向）', 30, 30002696, 1);
INSERT INTO `class` VALUES (3, '2021', 1, '原神文字学（古文字方向）', 30, 30002696, 1);
INSERT INTO `class` VALUES (4, '2022', 20, '计算机科学与技术', 32, 30002695, 1);
INSERT INTO `class` VALUES (5, '2022', 20, '计算机科学与技术', 32, 30002695, 2);
INSERT INTO `class` VALUES (6, '2022', 20, '计算机科学与技术', 32, 30002695, 3);
INSERT INTO `class` VALUES (7, '2022', 20, '计算机科学与技术', 32, 30002695, 4);
INSERT INTO `class` VALUES (8, '2022', 20, '计算机科学与技术', 32, 30002695, 5);
INSERT INTO `class` VALUES (9, '2022', 20, '计算机科学与技术', 32, 30002695, 6);
INSERT INTO `class` VALUES (10, '2022', 20, '软件工程', 32, 30002695, 1);
INSERT INTO `class` VALUES (11, '2022', 20, '软件工程', 32, 30002695, 2);
INSERT INTO `class` VALUES (12, '2022', 20, '软件工程', 32, 30002695, 3);
INSERT INTO `class` VALUES (13, '2022', 20, '软件工程', 32, 30002695, 4);
INSERT INTO `class` VALUES (14, '2022', 20, '软件工程', 32, 30002695, 5);
INSERT INTO `class` VALUES (15, '2022', 20, '软件工程', 32, 30002695, 6);
INSERT INTO `class` VALUES (16, '2022', 20, '软件工程', 32, 30002695, 7);
INSERT INTO `class` VALUES (17, '2022', 20, '软件工程', 32, 30002695, 8);
INSERT INTO `class` VALUES (18, '2022', 20, '大数据科学与技术', 32, 30002695, 1);
INSERT INTO `class` VALUES (19, '2022', 20, '大数据科学与技术', 32, 30002695, 2);
INSERT INTO `class` VALUES (20, '2022', 20, '大数据科学与技术', 32, 30002695, 3);

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom`  (
  `classRoomNO` bigint NOT NULL AUTO_INCREMENT,
  `capacity` int NULL DEFAULT NULL,
  `isMultimedia` int NULL DEFAULT NULL,
  `state` int NULL DEFAULT NULL,
  `locationNo` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`classRoomNO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1011 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES (101, 99, 1, 0, 4);
INSERT INTO `classroom` VALUES (102, 99, 1, 0, 4);
INSERT INTO `classroom` VALUES (103, 99, 1, 0, 4);
INSERT INTO `classroom` VALUES (104, 99, 1, 1, 4);
INSERT INTO `classroom` VALUES (105, 99, 1, 0, 4);
INSERT INTO `classroom` VALUES (106, 99, 1, 0, 4);
INSERT INTO `classroom` VALUES (107, 99, 1, 0, 4);
INSERT INTO `classroom` VALUES (108, 99, 1, 0, 4);
INSERT INTO `classroom` VALUES (201, 60, 1, 0, 4);
INSERT INTO `classroom` VALUES (202, 60, 1, 0, 4);
INSERT INTO `classroom` VALUES (203, 60, 1, 0, 4);
INSERT INTO `classroom` VALUES (204, 60, 0, 0, 4);
INSERT INTO `classroom` VALUES (205, 60, 1, 0, 4);
INSERT INTO `classroom` VALUES (206, 60, 1, 0, 4);
INSERT INTO `classroom` VALUES (207, 60, 1, 0, 4);
INSERT INTO `classroom` VALUES (208, 60, 1, 0, 4);
INSERT INTO `classroom` VALUES (301, 76, 0, 0, 4);
INSERT INTO `classroom` VALUES (302, 76, 1, 0, 4);
INSERT INTO `classroom` VALUES (303, 76, 1, 0, 4);
INSERT INTO `classroom` VALUES (304, 76, 1, 0, 4);
INSERT INTO `classroom` VALUES (305, 76, 1, 1, 4);
INSERT INTO `classroom` VALUES (306, 76, 1, 0, 4);
INSERT INTO `classroom` VALUES (307, 76, 1, 0, 4);
INSERT INTO `classroom` VALUES (308, 76, 1, 0, 4);
INSERT INTO `classroom` VALUES (401, 81, 1, 0, 4);
INSERT INTO `classroom` VALUES (402, 81, 1, 0, 4);
INSERT INTO `classroom` VALUES (403, 81, 0, 0, 4);
INSERT INTO `classroom` VALUES (404, 81, 1, 0, 4);
INSERT INTO `classroom` VALUES (405, 81, 1, 0, 4);
INSERT INTO `classroom` VALUES (406, 81, 1, 0, 4);
INSERT INTO `classroom` VALUES (407, 81, 1, 0, 4);
INSERT INTO `classroom` VALUES (408, 81, 1, 0, 4);
INSERT INTO `classroom` VALUES (420, 50, 1, 0, 7);
INSERT INTO `classroom` VALUES (501, 99, 1, 1, 3);
INSERT INTO `classroom` VALUES (502, 99, 1, 0, 3);
INSERT INTO `classroom` VALUES (503, 99, 1, 0, 3);
INSERT INTO `classroom` VALUES (504, 99, 1, 0, 3);
INSERT INTO `classroom` VALUES (505, 99, 1, 1, 3);
INSERT INTO `classroom` VALUES (506, 99, 1, 0, 3);
INSERT INTO `classroom` VALUES (507, 99, 1, 0, 3);
INSERT INTO `classroom` VALUES (508, 99, 1, 0, 3);
INSERT INTO `classroom` VALUES (531, 80, 1, 0, 13);
INSERT INTO `classroom` VALUES (532, 80, 1, 0, 13);
INSERT INTO `classroom` VALUES (533, 80, 1, 1, 13);
INSERT INTO `classroom` VALUES (534, 80, 1, 0, 13);
INSERT INTO `classroom` VALUES (535, 80, 1, 0, 13);
INSERT INTO `classroom` VALUES (536, 80, 1, 0, 13);
INSERT INTO `classroom` VALUES (537, 80, 1, 0, 13);
INSERT INTO `classroom` VALUES (538, 80, 1, 0, 13);
INSERT INTO `classroom` VALUES (601, 60, 1, 0, 3);
INSERT INTO `classroom` VALUES (602, 60, 1, 0, 3);
INSERT INTO `classroom` VALUES (603, 60, 1, 0, 3);
INSERT INTO `classroom` VALUES (604, 60, 0, 0, 3);
INSERT INTO `classroom` VALUES (605, 60, 1, 0, 3);
INSERT INTO `classroom` VALUES (606, 60, 1, 0, 3);
INSERT INTO `classroom` VALUES (607, 60, 1, 0, 3);
INSERT INTO `classroom` VALUES (608, 60, 1, 1, 3);
INSERT INTO `classroom` VALUES (666, 99999, 0, 0, 8);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `courseID` bigint NOT NULL AUTO_INCREMENT,
  `courseName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `hour` int NULL DEFAULT NULL,
  `credit` double NULL DEFAULT NULL,
  PRIMARY KEY (`courseID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '元素体系概论及其应用', 120, 6);
INSERT INTO `course` VALUES (2, '提瓦特古代史纲要', 120, 6);
INSERT INTO `course` VALUES (3, '体力管理:飞行、游泳与冲刺', 120, 6);
INSERT INTO `course` VALUES (4, '高等数学AI', 80, 5);
INSERT INTO `course` VALUES (5, '高级语言程序设计', 48, 3);
INSERT INTO `course` VALUES (6, '高级语言程序设计实验', 32, 1);
INSERT INTO `course` VALUES (7, '计算机科学导论', 32, 2);
INSERT INTO `course` VALUES (8, '思想道德与法治', 32, 3);
INSERT INTO `course` VALUES (9, '大学生心理健康教育', 32, 2);
INSERT INTO `course` VALUES (10, '体育I', 32, 2);
INSERT INTO `course` VALUES (11, '大学英语I', 32, 2);
INSERT INTO `course` VALUES (12, '高等数学AII', 80, 5);
INSERT INTO `course` VALUES (13, '数据结构', 56, 3.5);
INSERT INTO `course` VALUES (14, '数据结构实验', 32, 1);
INSERT INTO `course` VALUES (15, '数字电路与逻辑设计', 56, 3.5);
INSERT INTO `course` VALUES (16, '数字电路与逻辑设计实验', 32, 1);
INSERT INTO `course` VALUES (17, '离散结构', 64, 4);
INSERT INTO `course` VALUES (18, '计算智能', 40, 2);
INSERT INTO `course` VALUES (19, '中国近代史纲要', 48, 3);
INSERT INTO `course` VALUES (20, '体育II', 32, 2);
INSERT INTO `course` VALUES (21, '大学英语II', 32, 2);
INSERT INTO `course` VALUES (22, '面向对象程序设计', 64, 3.5);
INSERT INTO `course` VALUES (23, '概率论', 32, 2);
INSERT INTO `course` VALUES (24, '大学物理A', 64, 4);
INSERT INTO `course` VALUES (25, '大学物理A实验', 32, 1);
INSERT INTO `course` VALUES (26, 'Linux系统及程序设计', 40, 2);
INSERT INTO `course` VALUES (27, '信息系统项目管理', 32, 2);
INSERT INTO `course` VALUES (28, '毛泽东思想和中国特色社会主义理论体系概论', 48, 3);
INSERT INTO `course` VALUES (29, '习近平新时代中国特色社会主义思想概论', 48, 3);
INSERT INTO `course` VALUES (30, '大学生职业生涯发展与就业力提升', 16, 1);
INSERT INTO `course` VALUES (31, '体育III', 32, 2);
INSERT INTO `course` VALUES (32, '大学英语III', 32, 2);
INSERT INTO `course` VALUES (33, '线性代数', 56, 2);
INSERT INTO `course` VALUES (34, '数学建模', 40, 2);
INSERT INTO `course` VALUES (35, '计算机组成原理', 54, 3.5);
INSERT INTO `course` VALUES (36, '汇编语言程序设计', 64, 3.5);
INSERT INTO `course` VALUES (37, '操作系统', 64, 3.5);
INSERT INTO `course` VALUES (38, '统计学', 40, 2);
INSERT INTO `course` VALUES (39, '分布与并行计算', 40, 3);
INSERT INTO `course` VALUES (40, '数据库系统', 64, 3.5);
INSERT INTO `course` VALUES (41, '算法分析与设计', 48, 2.5);
INSERT INTO `course` VALUES (42, '软件开发基础 (C++)', 40, 2);
INSERT INTO `course` VALUES (43, '农业机器人', 40, 2);
INSERT INTO `course` VALUES (44, '编译原理', 40, 2);
INSERT INTO `course` VALUES (45, '软件开发基础（Python）', 40, 2);
INSERT INTO `course` VALUES (46, '虚拟现实技术', 40, 2);
INSERT INTO `course` VALUES (47, '区块链原理与技术', 40, 2);
INSERT INTO `course` VALUES (48, '机器人技术', 40, 2);
INSERT INTO `course` VALUES (49, '计算机网络', 64, 3.5);
INSERT INTO `course` VALUES (50, '数据挖掘与机器学习', 40, 2);
INSERT INTO `course` VALUES (51, '计算机图形学', 40, 2);
INSERT INTO `course` VALUES (52, '人机交互', 40, 2);
INSERT INTO `course` VALUES (53, '数值计算', 40, 2);
INSERT INTO `course` VALUES (54, '现代软件开发技术', 40, 2);
INSERT INTO `course` VALUES (55, '计算机视觉与图像处理', 40, 2);

-- ----------------------------
-- Table structure for curriculum
-- ----------------------------
DROP TABLE IF EXISTS `curriculum`;
CREATE TABLE `curriculum`  (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `courseNO` bigint NULL DEFAULT NULL,
  `classNO` bigint NULL DEFAULT NULL,
  `teacherID` bigint NULL DEFAULT NULL,
  `schoolYear` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `term` int NULL DEFAULT NULL,
  `startWeek` int NULL DEFAULT NULL,
  `endWeek` int NULL DEFAULT NULL,
  `weekday` int NULL DEFAULT NULL,
  `section` int NULL DEFAULT NULL,
  `locationNo` bigint NULL DEFAULT NULL,
  `classRoomNO` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20210104 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of curriculum
-- ----------------------------
INSERT INTO `curriculum` VALUES (1, 6, 4, 30002700, '2022-2023', 0, 7, 14, 1, 1, 7, 420);
INSERT INTO `curriculum` VALUES (2, 4, 4, 30002699, '2022-2023', 0, 4, 17, 1, 2, 3, 504);
INSERT INTO `curriculum` VALUES (3, 4, 4, 30002699, '2022-2023', 0, 4, 17, 3, 1, 3, 606);
INSERT INTO `curriculum` VALUES (4, 5, 4, 30002700, '2022-2023', 0, 4, 17, 1, 4, 4, 108);
INSERT INTO `curriculum` VALUES (5, 5, 4, 30002700, '2022-2023', 0, 4, 17, 2, 4, 3, 601);
INSERT INTO `curriculum` VALUES (6, 7, 4, 30002701, '2022-2023', 0, 4, 17, 1, 5, 3, 503);
INSERT INTO `curriculum` VALUES (7, 7, 4, 30002701, '2022-2023', 0, 4, 17, 2, 1, 3, 506);
INSERT INTO `curriculum` VALUES (8, 11, 4, 30002702, '2022-2023', 0, 4, 17, 2, 2, 3, 604);
INSERT INTO `curriculum` VALUES (9, 10, 4, 30002713, '2022-2023', 0, 4, 17, 3, 2, 8, 666);
INSERT INTO `curriculum` VALUES (10, 9, 4, 30002697, '2022-2023', 0, 7, 14, 3, 5, 4, 207);
INSERT INTO `curriculum` VALUES (11, 8, 4, 30002712, '2022-2023', 0, 4, 17, 4, 5, 3, 508);
INSERT INTO `curriculum` VALUES (12, 12, 4, 30002703, '2022-2023', 1, 1, 14, 1, 1, 4, 307);
INSERT INTO `curriculum` VALUES (13, 12, 4, 30002703, '2022-2023', 1, 1, 14, 4, 1, 4, 202);
INSERT INTO `curriculum` VALUES (14, 14, 4, 30002692, '2022-2023', 1, 5, 12, 5, 4, 7, 420);
INSERT INTO `curriculum` VALUES (15, 18, 4, 30002704, '2022-2023', 1, 1, 12, 1, 2, 4, 307);
INSERT INTO `curriculum` VALUES (16, 18, 4, 30002704, '2022-2023', 1, 5, 12, 2, 1, 13, 538);
INSERT INTO `curriculum` VALUES (17, 21, 4, 30002702, '2022-2023', 1, 1, 16, 2, 2, 4, 302);
INSERT INTO `curriculum` VALUES (18, 15, 4, 30002693, '2022-2023', 1, 1, 14, 1, 6, 4, 206);
INSERT INTO `curriculum` VALUES (19, 15, 4, 30002693, '2022-2023', 1, 1, 14, 3, 1, 4, 104);
INSERT INTO `curriculum` VALUES (20, 16, 4, 30002693, '2022-2023', 1, 6, 13, 2, 5, 13, 531);
INSERT INTO `curriculum` VALUES (21, 16, 4, 30002693, '2022-2023', 1, 6, 13, 2, 6, 13, 531);
INSERT INTO `curriculum` VALUES (22, 17, 4, 30002693, '2022-2023', 1, 1, 16, 2, 6, 4, 303);
INSERT INTO `curriculum` VALUES (23, 17, 4, 30002693, '2022-2023', 1, 1, 16, 3, 4, 4, 202);
INSERT INTO `curriculum` VALUES (24, 20, 4, 30002713, '2022-2023', 1, 1, 16, 3, 2, 8, 666);
INSERT INTO `curriculum` VALUES (25, 19, 4, 30002712, '2022-2023', 1, 1, 16, 4, 2, 4, 407);
INSERT INTO `curriculum` VALUES (26, 24, 4, 30002705, '2023-2024', 0, 1, 16, 1, 2, 4, 403);
INSERT INTO `curriculum` VALUES (27, 24, 4, 30002705, '2023-2024', 0, 1, 16, 3, 4, 4, 402);
INSERT INTO `curriculum` VALUES (28, 25, 4, 30002707, '2023-2024', 0, 2, 12, 4, 2, 7, 420);
INSERT INTO `curriculum` VALUES (29, 32, 4, 30002702, '2023-2024', 0, 1, 16, 2, 2, 4, 402);
INSERT INTO `curriculum` VALUES (30, 23, 4, 30002706, '2023-2024', 0, 1, 16, 2, 4, 4, 407);
INSERT INTO `curriculum` VALUES (31, 23, 4, 30002706, '2023-2024', 0, 1, 16, 5, 4, 4, 402);
INSERT INTO `curriculum` VALUES (32, 22, 4, 30002694, '2023-2024', 0, 1, 16, 2, 5, 4, 407);
INSERT INTO `curriculum` VALUES (33, 22, 4, 30002694, '2023-2024', 0, 1, 16, 3, 1, 4, 406);
INSERT INTO `curriculum` VALUES (34, 31, 4, 30002713, '2023-2024', 0, 1, 16, 3, 2, 8, 666);
INSERT INTO `curriculum` VALUES (35, 29, 4, 30002712, '2023-2024', 0, 1, 16, 4, 4, 4, 303);
INSERT INTO `curriculum` VALUES (36, 26, 4, 30002708, '2023-2024', 0, 1, 16, 5, 2, 4, 206);
INSERT INTO `curriculum` VALUES (37, 26, 4, 30002708, '2023-2024', 0, 1, 16, 4, 5, 4, 303);
INSERT INTO `curriculum` VALUES (38, 30, 4, 30002695, '2023-2024', 0, 7, 8, 7, 6, 4, 202);
INSERT INTO `curriculum` VALUES (39, 30, 4, 30002695, '2023-2024', 0, 1, 6, 5, 5, 4, 404);
INSERT INTO `curriculum` VALUES (40, 27, 4, 30002709, '2023-2024', 0, 1, 16, 5, 6, 4, 101);
INSERT INTO `curriculum` VALUES (41, 33, 4, 30002699, '2023-2024', 1, 1, 12, 1, 2, 3, 602);
INSERT INTO `curriculum` VALUES (42, 33, 4, 30002699, '2023-2024', 1, 1, 12, 3, 2, 3, 508);
INSERT INTO `curriculum` VALUES (43, 34, 4, 30002703, '2023-2024', 1, 5, 16, 5, 6, 4, 403);
INSERT INTO `curriculum` VALUES (44, 35, 4, 30002693, '2023-2024', 1, 1, 16, 2, 5, 4, 406);
INSERT INTO `curriculum` VALUES (45, 35, 4, 30002693, '2023-2024', 1, 1, 16, 4, 1, 4, 403);
INSERT INTO `curriculum` VALUES (46, 36, 4, 30002694, '2023-2024', 1, 1, 12, 1, 5, 4, 403);
INSERT INTO `curriculum` VALUES (47, 36, 4, 30002694, '2023-2024', 1, 1, 12, 3, 4, 4, 408);
INSERT INTO `curriculum` VALUES (48, 37, 4, 30002692, '2023-2024', 1, 1, 16, 2, 1, 4, 301);
INSERT INTO `curriculum` VALUES (49, 37, 4, 30002692, '2023-2024', 1, 1, 16, 4, 5, 4, 403);
INSERT INTO `curriculum` VALUES (50, 38, 4, 30002703, '2023-2024', 1, 1, 12, 2, 6, 4, 303);
INSERT INTO `curriculum` VALUES (51, 39, 4, 30002693, '2024-2025', 0, 1, 12, 4, 4, 4, 406);
INSERT INTO `curriculum` VALUES (52, 40, 4, 30002700, '2024-2025', 0, 1, 16, 3, 2, 4, 202);
INSERT INTO `curriculum` VALUES (53, 40, 4, 30002700, '2024-2025', 0, 1, 16, 1, 1, 4, 405);
INSERT INTO `curriculum` VALUES (54, 41, 4, 30002704, '2024-2025', 0, 1, 16, 4, 4, 4, 303);
INSERT INTO `curriculum` VALUES (55, 42, 4, 30002694, '2024-2025', 0, 1, 16, 1, 6, 4, 401);
INSERT INTO `curriculum` VALUES (56, 43, 4, 30002705, '2024-2025', 0, 1, 16, 4, 2, 13, 536);
INSERT INTO `curriculum` VALUES (57, 44, 4, 30002693, '2024-2025', 0, 1, 16, 2, 1, 4, 102);
INSERT INTO `curriculum` VALUES (58, 45, 4, 30002694, '2024-2025', 0, 1, 16, 2, 5, 4, 406);
INSERT INTO `curriculum` VALUES (59, 45, 4, 30002694, '2024-2025', 0, 1, 16, 5, 1, 4, 206);
INSERT INTO `curriculum` VALUES (60, 46, 4, 30002704, '2024-2025', 0, 1, 16, 3, 5, 4, 202);
INSERT INTO `curriculum` VALUES (61, 47, 4, 30002704, '2024-2025', 0, 1, 16, 4, 5, 4, 303);
INSERT INTO `curriculum` VALUES (62, 48, 4, 30002704, '2024-2025', 0, 1, 16, 1, 4, 4, 101);
INSERT INTO `curriculum` VALUES (63, 49, 4, 30002704, '2024-2025', 0, 1, 16, 2, 6, 4, 206);
INSERT INTO `curriculum` VALUES (64, 50, 4, 30002693, '2024-2025', 1, 1, 16, 1, 5, 4, 104);
INSERT INTO `curriculum` VALUES (65, 51, 4, 30002693, '2024-2025', 1, 1, 8, 2, 2, 4, 103);
INSERT INTO `curriculum` VALUES (66, 52, 4, 30002704, '2024-2025', 1, 1, 16, 3, 5, 4, 305);
INSERT INTO `curriculum` VALUES (67, 53, 4, 30002704, '2024-2025', 1, 1, 12, 1, 2, 4, 206);
INSERT INTO `curriculum` VALUES (68, 54, 4, 30002694, '2024-2025', 1, 1, 16, 1, 4, 4, 104);
INSERT INTO `curriculum` VALUES (69, 55, 4, 30002704, '2024-2025', 1, 1, 16, 2, 4, 4, 102);
INSERT INTO `curriculum` VALUES (70, 1, 1, 30002698, '2021-2022', 0, 1, 20, 1, 2, 8, 666);
INSERT INTO `curriculum` VALUES (71, 1, 1, 30002698, '2021-2022', 0, 1, 20, 3, 5, 8, 666);
INSERT INTO `curriculum` VALUES (72, 1, 1, 30002698, '2021-2022', 0, 1, 20, 4, 1, 8, 666);
INSERT INTO `curriculum` VALUES (73, 2, 1, 30002698, '2021-2022', 1, 1, 20, 2, 2, 8, 666);
INSERT INTO `curriculum` VALUES (74, 2, 1, 30002698, '2021-2022', 1, 1, 20, 2, 5, 8, 666);
INSERT INTO `curriculum` VALUES (75, 2, 1, 30002698, '2021-2022', 1, 1, 20, 3, 4, 8, 666);
INSERT INTO `curriculum` VALUES (76, 3, 1, 30002698, '2021-2022', 0, 1, 20, 5, 1, 8, 666);
INSERT INTO `curriculum` VALUES (77, 3, 1, 30002698, '2021-2022', 0, 1, 20, 5, 4, 8, 666);
INSERT INTO `curriculum` VALUES (78, 3, 1, 30002698, '2021-2022', 0, 1, 20, 5, 6, 8, 666);
INSERT INTO `curriculum` VALUES (79, 13, 4, 30002692, '2022-2023', 1, 1, 14, 4, 5, 4, 408);
INSERT INTO `curriculum` VALUES (80, 13, 4, 30002692, '2022-2023', 1, 1, 14, 5, 2, 4, 405);

-- ----------------------------
-- Table structure for faculty
-- ----------------------------
DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty`  (
  `facultyNO` bigint NOT NULL AUTO_INCREMENT,
  `facultyName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`facultyNO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of faculty
-- ----------------------------
INSERT INTO `faculty` VALUES (1, '原神学院');
INSERT INTO `faculty` VALUES (2, '农学院');
INSERT INTO `faculty` VALUES (3, '林学与风景园林学院');
INSERT INTO `faculty` VALUES (4, '兽医学院');
INSERT INTO `faculty` VALUES (5, '资源环境学院');
INSERT INTO `faculty` VALUES (6, '生命科学学院');
INSERT INTO `faculty` VALUES (7, '食品学院');
INSERT INTO `faculty` VALUES (8, '材料与能源学院');
INSERT INTO `faculty` VALUES (9, '电子工程学院（人工智能学院）');
INSERT INTO `faculty` VALUES (10, '公共管理学院');
INSERT INTO `faculty` VALUES (11, '外国语学院');
INSERT INTO `faculty` VALUES (12, '马克思主义学院');
INSERT INTO `faculty` VALUES (13, '继续教育学院');
INSERT INTO `faculty` VALUES (14, '植物保护学院');
INSERT INTO `faculty` VALUES (15, '园艺学院');
INSERT INTO `faculty` VALUES (16, '动物科学学院');
INSERT INTO `faculty` VALUES (17, '海洋学院');
INSERT INTO `faculty` VALUES (18, '工程学院');
INSERT INTO `faculty` VALUES (19, '水利与土木工程学院');
INSERT INTO `faculty` VALUES (20, '数学与信息学院、软件学院');
INSERT INTO `faculty` VALUES (21, '经济管理学院');
INSERT INTO `faculty` VALUES (22, '人文与法学学院');
INSERT INTO `faculty` VALUES (23, '艺术学院');
INSERT INTO `faculty` VALUES (24, '体育教学研究部');
INSERT INTO `faculty` VALUES (25, '国际教育学院\r\n');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `locationNo` bigint NOT NULL AUTO_INCREMENT,
  `locationName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`locationNo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES (1, '教一');
INSERT INTO `location` VALUES (2, '教二');
INSERT INTO `location` VALUES (3, '教三');
INSERT INTO `location` VALUES (4, '教四');
INSERT INTO `location` VALUES (5, '教五');
INSERT INTO `location` VALUES (6, '教六');
INSERT INTO `location` VALUES (7, '东区实验楼');
INSERT INTO `location` VALUES (8, '东区运动场');
INSERT INTO `location` VALUES (9, '黑山区运动场');
INSERT INTO `location` VALUES (10, '华山区运动场');
INSERT INTO `location` VALUES (11, '启林南运动场');
INSERT INTO `location` VALUES (12, '田家炳综合训练馆');
INSERT INTO `location` VALUES (13, '数信院楼');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `studentID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `grade` int NULL DEFAULT NULL,
  `facultyNO` bigint NULL DEFAULT NULL,
  `classNO` bigint NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL,
  PRIMARY KEY (`studentID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('100000111', '胡桃', 2021, 1, 1, '提瓦特大陆', '18888888888', NULL, 0);
INSERT INTO `student` VALUES ('100000222', '雷电将军', 2021, 1, 2, '提瓦特大陆', '18888888888', NULL, 0);
INSERT INTO `student` VALUES ('100000333', '钟离', 2021, 1, 3, '提瓦特大陆', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202116110301', '巴云浩', 2022, 20, 4, '广东省广州市', '18888888888', '转专业', 1);
INSERT INTO `student` VALUES ('202121110110', '林锴', 2022, 20, 4, '广东省广州市', '18888888888', '转专业', 1);
INSERT INTO `student` VALUES ('202225310101', '岑潮亮', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310102', '陈鼎允', 2022, 20, 4, '广东省广州市', '18888888888', '团支书', 1);
INSERT INTO `student` VALUES ('202225310103', '黄楚盈', 2022, 20, 4, '广东省广州市', '18888888888', '心理委员', 0);
INSERT INTO `student` VALUES ('202225310104', '黄宇恒', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310105', '黄芸锦', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310106', '李晓君', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 0);
INSERT INTO `student` VALUES ('202225310107', '李雅桢', 2022, 20, 4, '广东省广州市', '18888888888', '学习委员', 0);
INSERT INTO `student` VALUES ('202225310108', '刘皓文', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310109', '卢铿全', 2022, 20, 4, '广东省广州市', '18888888888', '宣传委员', 1);
INSERT INTO `student` VALUES ('202225310110', '罗志华', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310111', '宁成华', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310112', '唐海明', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310113', '童泽辉', 2022, 20, 4, '广东省广州市', '18888888888', '心理委员', 1);
INSERT INTO `student` VALUES ('202225310114', '吴惠城', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310115', '吴梓珲', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310116', '谢烁沛', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310117', '辛一珂', 2022, 20, 4, '广东省广州市', '18888888888', '纪律委员', 1);
INSERT INTO `student` VALUES ('202225310118', '徐志悦', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310119', '薛克泽', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310120', '颜锦辉', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310121', '杨宝兴', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310122', '叶嘉怡', 2022, 20, 4, '广东省广州市', '18888888888', '生活委员', 0);
INSERT INTO `student` VALUES ('202225310123', '叶昱辰', 2022, 20, 4, '广东省广州市', '18888888888', '班长', 0);
INSERT INTO `student` VALUES ('202225310124', '尹广彬', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310125', '曾星玮', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310126', '张帮申', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310127', '张宇森', 2022, 20, 4, '广东省广州市', '18888888888', '文体委员', 1);
INSERT INTO `student` VALUES ('202225310128', '张子锐', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310129', '周铨浩', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 1);
INSERT INTO `student` VALUES ('202225310130', '庄小静', 2022, 20, 4, '广东省广州市', '18888888888', NULL, 0);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `teacherID` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `facultyNO` bigint NULL DEFAULT NULL,
  `speciality` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`teacherID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30003965 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (30002692, '司国东', 20, '计算机科学与工程系', '副教授');
INSERT INTO `teacher` VALUES (30002693, '黄琼', 20, '计算机科学与工程系', '教授，院长');
INSERT INTO `teacher` VALUES (30002694, '肖磊', 20, '计算机科学与工程系', '副教授');
INSERT INTO `teacher` VALUES (30002695, '张佳午', 20, '计算机科学与工程系', '辅导员');
INSERT INTO `teacher` VALUES (30002696, '徐海婵', 20, '计算机科学与工程系', '辅导员');
INSERT INTO `teacher` VALUES (30002697, '严颖', 20, '计算机科学与工程系', '辅导员');
INSERT INTO `teacher` VALUES (30002698, '丽莎', 1, '原神元素科学系', '院士');
INSERT INTO `teacher` VALUES (30002699, '徐小红', 20, '数学系', '讲师');
INSERT INTO `teacher` VALUES (30002700, '梁云', 20, '计算机科学与工程系', '教授');
INSERT INTO `teacher` VALUES (30002701, '李康顺', 20, '计算机科学与工程系', '讲师');
INSERT INTO `teacher` VALUES (30002702, '仇如慧', 11, '公共外语系', '副教授');
INSERT INTO `teacher` VALUES (30002703, '王霞', 20, '数学系', '讲师');
INSERT INTO `teacher` VALUES (30002704, '陈相机', 20, '计算机科学与工程系', '副教授');
INSERT INTO `teacher` VALUES (30002705, '陈金华', 9, '应用物理系', '讲师');
INSERT INTO `teacher` VALUES (30002706, '周燕', 20, '计算机科学与工程系', '讲师');
INSERT INTO `teacher` VALUES (30002707, '翁嘉文', 20, '应用物理系', '实验师');
INSERT INTO `teacher` VALUES (30002708, '黄立峰', 20, '计算机科学与工程系', '讲师');
INSERT INTO `teacher` VALUES (30002709, '胡焕玲', 20, '信息工程系', '讲师');
INSERT INTO `teacher` VALUES (30002710, '徐大兵', 12, '习概教研室', '教授，副院长');
INSERT INTO `teacher` VALUES (30002711, '李俊宏', 12, '毛概教研室', '讲师');
INSERT INTO `teacher` VALUES (30002712, '梁辉', 20, '习概教研室', '讲师');
INSERT INTO `teacher` VALUES (30002713, '贾力运', 24, '体育教学研究部', '讲师');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` int NOT NULL,
  `disabled` int NULL DEFAULT 0,
  `contrastStudentID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `contrastTeacherID` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '202116110301', '202116110301', 2, 0, '202116110301', NULL);
INSERT INTO `user` VALUES (2, '202121110110', '202121110110', 2, 0, '202121110110', NULL);
INSERT INTO `user` VALUES (3, '202225310101', '202225310101', 0, 0, '202225310101', NULL);
INSERT INTO `user` VALUES (4, '202225310102', '202225310102', 0, 0, '202225310102', NULL);
INSERT INTO `user` VALUES (5, '202225310103', '202225310103', 0, 0, '202225310103', NULL);
INSERT INTO `user` VALUES (6, '202225310104', '202225310104', 0, 0, '202225310104', NULL);
INSERT INTO `user` VALUES (7, '202225310105', '202225310105', 0, 0, '202225310105', NULL);
INSERT INTO `user` VALUES (8, '202225310106', '202225310106', 0, 0, '202225310106', NULL);
INSERT INTO `user` VALUES (9, '202225310107', '202225310107', 0, 0, '202225310107', NULL);
INSERT INTO `user` VALUES (10, '202225310108', '202225310108', 0, 0, '202225310108', NULL);
INSERT INTO `user` VALUES (11, '202225310109', '202225310109', 0, 0, '202225310109', NULL);
INSERT INTO `user` VALUES (12, '202225310110', '202225310110', 0, 0, '202225310110', NULL);
INSERT INTO `user` VALUES (13, '202225310111', '202225310111', 0, 0, '202225310111', NULL);
INSERT INTO `user` VALUES (14, '202225310112', '202225310112', 0, 0, '202225310112', NULL);
INSERT INTO `user` VALUES (15, '202225310113', '202225310113', 0, 0, '202225310113', NULL);
INSERT INTO `user` VALUES (16, '202225310114', '202225310114', 0, 0, '202225310114', NULL);
INSERT INTO `user` VALUES (17, '202225310115', '202225310115', 0, 0, '202225310115', NULL);
INSERT INTO `user` VALUES (18, '202225310116', '202225310116', 0, 0, '202225310116', NULL);
INSERT INTO `user` VALUES (19, '202225310117', '202225310117', 0, 0, '202225310117', NULL);
INSERT INTO `user` VALUES (20, '202225310118', '202225310118', 0, 0, '202225310118', NULL);
INSERT INTO `user` VALUES (21, '202225310119', '202225310119', 0, 0, '202225310119', NULL);
INSERT INTO `user` VALUES (22, '202225310120', '202225310120', 0, 0, '202225310120', NULL);
INSERT INTO `user` VALUES (23, '202225310121', '202225310121', 0, 0, '202225310121', NULL);
INSERT INTO `user` VALUES (24, '202225310122', '202225310122', 0, 0, '202225310122', NULL);
INSERT INTO `user` VALUES (25, '202225310123', '202225310123', 0, 0, '202225310123', NULL);
INSERT INTO `user` VALUES (26, '202225310124', '202225310124', 0, 0, '202225310124', NULL);
INSERT INTO `user` VALUES (27, '202225310125', '202225310125', 0, 0, '202225310125', NULL);
INSERT INTO `user` VALUES (28, '202225310126', '202225310126', 0, 0, '202225310126', NULL);
INSERT INTO `user` VALUES (29, '202225310127', '202225310127', 0, 0, '202225310127', NULL);
INSERT INTO `user` VALUES (30, '202225310128', '202225310128', 0, 0, '202225310128', NULL);
INSERT INTO `user` VALUES (31, '202225310129', '202225310129', 0, 0, '202225310129', NULL);
INSERT INTO `user` VALUES (32, '202225310130', '202225310130', 0, 0, '202225310130', NULL);
INSERT INTO `user` VALUES (33, '100000111', '100000111', 0, 0, '100000111', NULL);
INSERT INTO `user` VALUES (34, '100000222', '100000222', 0, 0, '100000222', NULL);
INSERT INTO `user` VALUES (35, '100000333', '100000333', 0, 0, '100000333', NULL);
INSERT INTO `user` VALUES (36, 'hacker', 'hacker', 2, 0, NULL, NULL);
INSERT INTO `user` VALUES (37, 'admin', 'admin', 2, 0, NULL, NULL);
INSERT INTO `user` VALUES (38, '30002692', '30002692', 1, 0, NULL, 30002692);
INSERT INTO `user` VALUES (39, '30002693', '30002693', 1, 0, NULL, 30002693);
INSERT INTO `user` VALUES (40, '30002694', '30002694', 1, 0, NULL, 30002694);
INSERT INTO `user` VALUES (41, '30002695', '30002695', 1, 0, NULL, 30002695);
INSERT INTO `user` VALUES (42, '30002696', '30002696', 1, 0, NULL, 30002696);
INSERT INTO `user` VALUES (43, '30002697', '30002697', 1, 0, NULL, 30002697);
INSERT INTO `user` VALUES (44, '30002698', '30002698', 1, 0, NULL, 30002698);
INSERT INTO `user` VALUES (45, '30002699', '30002699', 1, 0, NULL, 30002699);
INSERT INTO `user` VALUES (46, '30002700', '30002700', 1, 0, NULL, 30002700);
INSERT INTO `user` VALUES (47, '30002701', '30002701', 1, 0, NULL, 30002701);
INSERT INTO `user` VALUES (48, '30002702', '30002702', 1, 0, NULL, 30002702);
INSERT INTO `user` VALUES (49, '30002703', '30002703', 1, 0, NULL, 30002703);
INSERT INTO `user` VALUES (50, '30002704', '30002704', 1, 0, NULL, 30002704);
INSERT INTO `user` VALUES (51, '30002705', '30002705', 1, 0, NULL, 30002705);
INSERT INTO `user` VALUES (52, '30002706', '30002706', 1, 0, NULL, 30002706);
INSERT INTO `user` VALUES (53, '30002707', '30002707', 1, 0, NULL, 30002707);
INSERT INTO `user` VALUES (54, '30002708', '30002708', 1, 0, NULL, 30002708);
INSERT INTO `user` VALUES (55, '30002709', '30002709', 1, 0, NULL, 30002709);
INSERT INTO `user` VALUES (56, '30002710', '30002710', 1, 0, NULL, 30002710);
INSERT INTO `user` VALUES (57, '30002711', '30002711', 1, 0, NULL, 30002711);
INSERT INTO `user` VALUES (58, '30002712', '30002712', 1, 0, NULL, 30002712);
INSERT INTO `user` VALUES (59, '30002713', '30002713', 1, 0, NULL, 30002713);

SET FOREIGN_KEY_CHECKS = 1;
