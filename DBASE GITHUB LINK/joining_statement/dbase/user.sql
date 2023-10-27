/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-02-20 11:27:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `courses`
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('1', 'BS Business Administration');
INSERT INTO `courses` VALUES ('2', 'BS Secondary Education');
INSERT INTO `courses` VALUES ('3', 'BS Computer Science');

-- ----------------------------
-- Table structure for `exams`
-- ----------------------------
DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of exams
-- ----------------------------
INSERT INTO `exams` VALUES ('1', 'Prelim', '022023');
INSERT INTO `exams` VALUES ('2', 'Midterm', '042023');
INSERT INTO `exams` VALUES ('3', 'Finals', '062023');

-- ----------------------------
-- Table structure for `grades`
-- ----------------------------
DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_value` int(11) DEFAULT NULL,
  `exam_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `major_id` int(11) NOT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of grades
-- ----------------------------
INSERT INTO `grades` VALUES ('1', '85', '3', '3', '3', '2');
INSERT INTO `grades` VALUES ('2', '84', '2', '2', '2', '2');
INSERT INTO `grades` VALUES ('3', '90', '1', '1', '1', '3');

-- ----------------------------
-- Table structure for `majors`
-- ----------------------------
DROP TABLE IF EXISTS `majors`;
CREATE TABLE `majors` (
  `major_id` int(11) NOT NULL AUTO_INCREMENT,
  `major_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`major_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of majors
-- ----------------------------
INSERT INTO `majors` VALUES ('1', 'Networking');
INSERT INTO `majors` VALUES ('2', 'Operations Management');
INSERT INTO `majors` VALUES ('3', 'Financial Management');
INSERT INTO `majors` VALUES ('4', 'English');
INSERT INTO `majors` VALUES ('5', 'Math');

-- ----------------------------
-- Table structure for `students`
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'Miguel', 'Capule');
INSERT INTO `students` VALUES ('2', 'Melanie', 'Santiago');
INSERT INTO `students` VALUES ('3', 'Jerald', 'Cogonon');
