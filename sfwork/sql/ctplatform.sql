/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50642
Source Host           : 127.0.0.1:3306
Source Database       : ctplatform

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2019-04-16 01:53:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `rootid` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `cont` text,
  `pdate` datetime DEFAULT NULL,
  `isleaf` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '0', '1', '蚂蚁大战大象', '蚂蚁大战大象', '2017-03-28 17:50:37', '1');
INSERT INTO `article` VALUES ('2', '1', '1', '大象被打趴下了', '大象被打趴下了', '2017-03-28 17:50:37', '1');
INSERT INTO `article` VALUES ('3', '2', '1', '蚂蚁也不好过', '蚂蚁也不好过', '2017-03-28 17:50:37', '0');
INSERT INTO `article` VALUES ('4', '2', '1', '瞎说', '瞎说', '2017-03-28 17:50:37', '1');
INSERT INTO `article` VALUES ('5', '4', '1', '没有瞎说', '没有瞎说', '2017-03-28 17:50:37', '0');
INSERT INTO `article` VALUES ('6', '1', '1', '怎么可能', '怎么可能', '2017-03-28 17:50:37', '1');
INSERT INTO `article` VALUES ('7', '6', '1', '怎么没有可能', '怎么没有可能', '2017-03-28 17:50:37', '0');
INSERT INTO `article` VALUES ('8', '6', '1', '可能性是很大的', '可能性是很大的', '2017-03-28 17:50:37', '0');
INSERT INTO `article` VALUES ('9', '2', '1', '大象进医院了', '大象进医院了', '2017-03-28 17:50:37', '1');
INSERT INTO `article` VALUES ('10', '9', '1', '护士是蚂蚁', '护士是蚂蚁', '2017-03-28 17:50:37', '0');
INSERT INTO `article` VALUES ('11', '0', '11', '我的校园', '我的大学是一个美丽的地方，学校里种了好多树', '2017-03-30 20:32:36', '1');
INSERT INTO `article` VALUES ('12', '11', '11', '不错袄', '', '2017-04-22 16:20:21', '0');
INSERT INTO `article` VALUES ('13', '11', '11', '还行把', '', '2017-04-22 16:21:12', '0');

-- ----------------------------
-- Table structure for `choicequestion`
-- ----------------------------
DROP TABLE IF EXISTS `choicequestion`;
CREATE TABLE `choicequestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `option3` varchar(100) DEFAULT NULL,
  `option4` varchar(100) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choicequestion
-- ----------------------------

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_number` varchar(20) DEFAULT NULL,
  `title` varchar(30) NOT NULL,
  `teacher` varchar(20) NOT NULL,
  `info` varchar(500) DEFAULT NULL,
  `courseType` int(11) NOT NULL,
  `deliver` varchar(20) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `mdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '新的课程', '请添加部分新课程呢', '2017-04-23 11:34:42');
INSERT INTO `message` VALUES ('2', '678', 'qweq123', '2019-04-14 17:33:20');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `ndate` datetime DEFAULT NULL,
  `deliver` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '喜报：《剪纸设计》被推荐申报国家级精品课程', '喜报：《剪纸设计》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'Kevin');
INSERT INTO `news` VALUES ('2', '喜报：《剪纸基础》被推荐申报国家级精品课程', '喜报：《剪纸基础》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'KevinPlatform');
INSERT INTO `news` VALUES ('3', '喜报：《剪纸实践》被推荐申报国家级精品课程', '喜报：《剪纸实践》被推荐申报国家级精品课程', '2017-04-22 15:41:57', 'Kevin');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(255) DEFAULT NULL,
  `notice_content` varchar(500) DEFAULT NULL,
  `notice_date` datetime DEFAULT NULL,
  `notice_deliver` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '剪纸基础课程', '喜报：《剪纸基础课程》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'Kevin');
INSERT INTO `notice` VALUES ('2', '剪纸设计课程', '喜报：《剪纸设计课程》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'KevinPlatform');
INSERT INTO `notice` VALUES ('3', '剪纸实践课程', '喜报：《剪纸实践课程》被推荐申报国家级精品课程', '2017-04-22 15:42:16', 'Kevin');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `score_number` varchar(20) NOT NULL,
  `score_sgrade` double DEFAULT NULL,
  `testpaperno` varchar(20) DEFAULT NULL,
  `validation` int(11) DEFAULT NULL,
  PRIMARY KEY (`score_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------

-- ----------------------------
-- Table structure for `scoresimple`
-- ----------------------------
DROP TABLE IF EXISTS `scoresimple`;
CREATE TABLE `scoresimple` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `score_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scoresimple
-- ----------------------------

-- ----------------------------
-- Table structure for `simplequestion`
-- ----------------------------
DROP TABLE IF EXISTS `simplequestion`;
CREATE TABLE `simplequestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of simplequestion
-- ----------------------------

-- ----------------------------
-- Table structure for `sourcefile`
-- ----------------------------
DROP TABLE IF EXISTS `sourcefile`;
CREATE TABLE `sourcefile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) DEFAULT NULL,
  `filedeliver` varchar(50) DEFAULT NULL,
  `filedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sourcefile
-- ----------------------------
INSERT INTO `sourcefile` VALUES ('17', '【HYL】李连杰电影全集【精武英雄】国语版.flv', 'admin', '2017-04-22 23:28:58');
INSERT INTO `sourcefile` VALUES ('18', 'Alone 中文字幕版--音悦Tai.mp4', 'admin', '2017-04-22 23:40:24');
INSERT INTO `sourcefile` VALUES ('19', '', '', '2017-04-24 13:58:13');
INSERT INTO `sourcefile` VALUES ('20', '', 'null', '2017-04-24 16:16:34');
INSERT INTO `sourcefile` VALUES ('21', '1110_元若蓝_绿袖子.rmvb.flv', 'admin', '2017-04-24 16:32:28');
INSERT INTO `sourcefile` VALUES ('22', 'java-review-master (1).zip', '', '2019-04-15 16:36:37');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_number` varchar(20) NOT NULL,
  `student_name` varchar(20) DEFAULT NULL,
  `student_sex` varchar(10) DEFAULT NULL,
  `student_class` varchar(20) DEFAULT NULL,
  `student_grade` float DEFAULT NULL,
  `student_testno` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`student_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20050001', '20050001', '男', '计算机二班', null, null, '20050001');

-- ----------------------------
-- Table structure for `studentscore`
-- ----------------------------
DROP TABLE IF EXISTS `studentscore`;
CREATE TABLE `studentscore` (
  `ssnumber` varchar(50) NOT NULL,
  `ssscore` double DEFAULT NULL,
  PRIMARY KEY (`ssnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentscore
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_number` varchar(20) NOT NULL,
  `teacher_name` varchar(20) DEFAULT NULL,
  `teacher_course` varchar(50) DEFAULT NULL,
  `teacher_studentno` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`teacher_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('2013020121', '梁建勇', '算法分析 ', null, '784776550@qq.com');

-- ----------------------------
-- Table structure for `testpaper`
-- ----------------------------
DROP TABLE IF EXISTS `testpaper`;
CREATE TABLE `testpaper` (
  `peapernumber` varchar(50) NOT NULL,
  `selectEasy` int(11) DEFAULT NULL,
  `selectNormal` int(11) DEFAULT NULL,
  `selectDifficulty` int(11) DEFAULT NULL,
  `simpleEasy` int(11) DEFAULT NULL,
  `simpleNormal` int(11) DEFAULT NULL,
  `simpleDifficulty` int(11) DEFAULT NULL,
  `selectScore` double DEFAULT NULL,
  `simpleScore` double DEFAULT NULL,
  PRIMARY KEY (`peapernumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testpaper
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `userpassword` varchar(20) DEFAULT NULL,
  `userclass` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('20050001', '20050001', '1', '20050001');
INSERT INTO `user` VALUES ('2013020121', '2013020121', '2', '784776550@qq.com');
INSERT INTO `user` VALUES ('wuguangyuan', 'wuguangyuan', '3', 'wuguangyuan757@sina.com');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(50) NOT NULL COMMENT '视频名称',
  `src` varchar(200) NOT NULL COMMENT '视频存放地址',
  `picture` varchar(200) NOT NULL COMMENT '视频截图',
  `descript` varchar(400) DEFAULT NULL COMMENT '视频描述',
  `uptime` varchar(40) DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
