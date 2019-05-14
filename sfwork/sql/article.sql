/*
Navicat MySQL Data Transfer

Source Server         : nick
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : bbs

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2017-04-27 20:50:12
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
