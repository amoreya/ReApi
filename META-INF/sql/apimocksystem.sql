

/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : apimocksystem

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-09-06 18:31:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for interface_info
-- ----------------------------
DROP TABLE IF EXISTS `interface_info`;
CREATE TABLE `interface_info` (
  `interface_id` int(11) NOT NULL AUTO_INCREMENT,
  `interface_name` varchar(20) NOT NULL,
  `method` varchar(5) NOT NULL,
  `description` text,
  `url` varchar(50) DEFAULT NULL,
  `json` text,
  `project_id` int(10) unsigned NOT NULL,
  `del_flag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`interface_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interface_info
-- ----------------------------
INSERT INTO `interface_info` VALUES ('1', 'ewqe', 'se', 'sq', 'wrqw', 'er', '1', '0');
INSERT INTO `interface_info` VALUES ('2', 'aaa', 'post', 'aaa', null, '	\n					a;', '1', '0');
INSERT INTO `interface_info` VALUES ('3', 'aaa', 'post', 'aaa', null, '	\n					a;', '1', '0');
INSERT INTO `interface_info` VALUES ('4', 'aaa', 'post', 'aaa', null, '	\n					a;', '1', '0');
INSERT INTO `interface_info` VALUES ('5', 'aaa', 'get', 'aaa', null, '	\n					jjjj', '1', '0');
INSERT INTO `interface_info` VALUES ('6', 'aaa', 'get', 'aaa', null, '	\n					jjjj', '1', '0');
INSERT INTO `interface_info` VALUES ('7', 'fff', 'get', 'fff', null, '	\n					fff', '1', '0');
INSERT INTO `interface_info` VALUES ('8', 'fff', 'get', 'fff', null, '	\n					fff', '1', '0');
INSERT INTO `interface_info` VALUES ('9', '', 'get', '', null, '	\n					', '1', '0');
INSERT INTO `interface_info` VALUES ('10', 'a', 'get', 'a', 'a', '	\n					d ', '26', '1');
INSERT INTO `interface_info` VALUES ('11', 'FF', 'get', 'FF', 'FF', '	\n					FFF', '26', '1');
INSERT INTO `interface_info` VALUES ('12', 'GG', 'get', 'FF', 'FFGG', '	\n					FFF', '26', '1');
INSERT INTO `interface_info` VALUES ('13', 'GGGGG', 'get', 'FF', 'FFGG', '	\n					FFF', '26', '0');
INSERT INTO `interface_info` VALUES ('14', 'GGGGG', 'get', 'FF', 'FFGG', '	\n					FFF', '26', '1');
INSERT INTO `interface_info` VALUES ('15', 'GGGGG', 'get', 'FF', 'FFGGGG', '	\n					FFF', '26', '1');
INSERT INTO `interface_info` VALUES ('16', '姚秋红', 'get', 'hhh', 'url', 'hhhh', '26', '0');
INSERT INTO `interface_info` VALUES ('17', '姚秋红', 'get', '啊', 'uil', '	\n					jjjj', '126', '1');
INSERT INTO `interface_info` VALUES ('18', 'ggg', 'get', 'gggg', 'ggg', '	\n					ggg', '126', '1');
INSERT INTO `interface_info` VALUES ('19', 'aaa', 'get', 'aaa', 'aaa', '	\n			aa		', '126', '1');
INSERT INTO `interface_info` VALUES ('20', 'hhhh', 'get', 'hhhh', 'hhhh', '	\n					hhhh', '126', '0');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `del_flag` tinyint(4) DEFAULT '0',
  `read_flag` tinyint(4) DEFAULT '0',
  `send_user_id` int(10) unsigned NOT NULL,
  `team_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for project_info
-- ----------------------------
DROP TABLE IF EXISTS `project_info`;
CREATE TABLE `project_info` (
  `project_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_name` varchar(20) NOT NULL,
  `description` text,
  `project_address` varchar(100) DEFAULT NULL,
  `del_flag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`project_id`),
  UNIQUE KEY `project_name` (`project_name`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_info
-- ----------------------------
INSERT INTO `project_info` VALUES ('1', 'wew', 'wqe', 'eqwe', '1');
INSERT INTO `project_info` VALUES ('2', '1700', 'abc', '哈哈', '0');
INSERT INTO `project_info` VALUES ('6', 'd ', '哈哈', '1111', '0');
INSERT INTO `project_info` VALUES ('7', '啊啊', '哈哈', '1111', '0');
INSERT INTO `project_info` VALUES ('9', '哈哈', '哈哈', '1111', '0');
INSERT INTO `project_info` VALUES ('10', '哈哈555', '哈哈', '1111', '0');
INSERT INTO `project_info` VALUES ('11', 'd 898', 'abc', '1111', '0');
INSERT INTO `project_info` VALUES ('12', '今天', '哈哈', '1111', '0');
INSERT INTO `project_info` VALUES ('13', '今天天', '我', '1111', '0');
INSERT INTO `project_info` VALUES ('14', '酷酷酷', 'abc', '1111', '0');
INSERT INTO `project_info` VALUES ('16', '；', 'abc', '1111', '0');
INSERT INTO `project_info` VALUES ('17', '坎坎坷坷', '500', '1111', '0');
INSERT INTO `project_info` VALUES ('18', '酷酷酷；', 'abc', '1111', '0');
INSERT INTO `project_info` VALUES ('19', '冯源', '冯源', '1111', '0');
INSERT INTO `project_info` VALUES ('20', 'lol', 'lol', '1111', '0');
INSERT INTO `project_info` VALUES ('26', 'jj', '', 'das', '0');
INSERT INTO `project_info` VALUES ('36', 'dfsd', 'dfs', 'fsd', '0');
INSERT INTO `project_info` VALUES ('37', 'abhgdc', '123', 'das', '0');
INSERT INTO `project_info` VALUES ('100', 'sf', 'fsd00', 'fsdf', '0');
INSERT INTO `project_info` VALUES ('103', 'abhgdcffdfd', '123433', 'dasutr', '0');
INSERT INTO `project_info` VALUES ('105', 'test', '123433', 'dasutr', '0');
INSERT INTO `project_info` VALUES ('107', 'test434', '123433', 'dasutr', '0');
INSERT INTO `project_info` VALUES ('108', 'test434tr', '123433', 'dasutr', '0');
INSERT INTO `project_info` VALUES ('109', 'test434tr34', '123433', 'dasutr', '0');
INSERT INTO `project_info` VALUES ('110', 'tehhst434tr34', '123433', 'dasutr', '0');
INSERT INTO `project_info` VALUES ('111', 'tehhst4g\'h\'f34tr34', '123433', 'dasutr', '0');
INSERT INTO `project_info` VALUES ('113', 'tehh4', '123433', 'dasutr', '0');
INSERT INTO `project_info` VALUES ('114', 'tehhjghfh4', '123433', 'dasutr', '0');
INSERT INTO `project_info` VALUES ('115', '', '', '1111', '1');
INSERT INTO `project_info` VALUES ('119', 'NK', '哈哈', '1111', '0');
INSERT INTO `project_info` VALUES ('120', 'p', 'p', '1111', '0');
INSERT INTO `project_info` VALUES ('122', '解决', '啊', '1111', '0');
INSERT INTO `project_info` VALUES ('123', 'kkk', 'kkkk', '1111', '0');
INSERT INTO `project_info` VALUES ('125', 'jjjjjjjjj', '哈哈', '1111', '1');
INSERT INTO `project_info` VALUES ('126', 'xiangmu', 'httt', '1111', '0');
INSERT INTO `project_info` VALUES ('127', '姚秋红', '哈哈', '1111', '0');
INSERT INTO `project_info` VALUES ('128', '姚秋红h', '哈哈', '1111', '0');
INSERT INTO `project_info` VALUES ('129', 'koko', 'koo', '1111', '0');
INSERT INTO `project_info` VALUES ('130', 'kkkkkkk', '啊啊', '1111', '0');
INSERT INTO `project_info` VALUES ('131', 'KAOAKAOOAOAOAOOA', 'KK', '1111', '0');
INSERT INTO `project_info` VALUES ('132', 'FENGYUAN', '', '1111', '0');
INSERT INTO `project_info` VALUES ('133', 'NISHUO', '', '1111', '0');
INSERT INTO `project_info` VALUES ('134', 'UUU', '', '1111', '0');
INSERT INTO `project_info` VALUES ('135', 'A ', 'A', '1111', '0');
INSERT INTO `project_info` VALUES ('136', '水水水水水水水水水水水市场的', '撒的', '1111', '0');
INSERT INTO `project_info` VALUES ('137', '741', '555555', '1111', '1');
INSERT INTO `project_info` VALUES ('138', '84415165', '15616516', '1111', '0');
INSERT INTO `project_info` VALUES ('139', '555555', '99999', '1111', '0');
INSERT INTO `project_info` VALUES ('140', '88854543', '453543', '1111', '0');

-- ----------------------------
-- Table structure for project_member
-- ----------------------------
DROP TABLE IF EXISTS `project_member`;
CREATE TABLE `project_member` (
  `project_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `join_time` datetime NOT NULL,
  PRIMARY KEY (`project_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_member
-- ----------------------------

-- ----------------------------
-- Table structure for project_team_ref
-- ----------------------------
DROP TABLE IF EXISTS `project_team_ref`;
CREATE TABLE `project_team_ref` (
  `project_id` int(10) unsigned NOT NULL,
  `team_id` int(10) unsigned NOT NULL,
  `create_user_id` int(10) unsigned NOT NULL,
  `del_flag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`project_id`,`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_team_ref
-- ----------------------------

-- ----------------------------
-- Table structure for project_user_ref
-- ----------------------------
DROP TABLE IF EXISTS `project_user_ref`;
CREATE TABLE `project_user_ref` (
  `project_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `del_flag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`project_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_user_ref
-- ----------------------------
INSERT INTO `project_user_ref` VALUES ('1', '1', '0');
INSERT INTO `project_user_ref` VALUES ('26', '1', '0');
INSERT INTO `project_user_ref` VALUES ('37', '223', '0');
INSERT INTO `project_user_ref` VALUES ('103', '223', '0');
INSERT INTO `project_user_ref` VALUES ('105', '223', '0');
INSERT INTO `project_user_ref` VALUES ('107', '223', '0');
INSERT INTO `project_user_ref` VALUES ('108', '223', '0');
INSERT INTO `project_user_ref` VALUES ('109', '223', '0');
INSERT INTO `project_user_ref` VALUES ('110', '223', '0');
INSERT INTO `project_user_ref` VALUES ('111', '223', '0');
INSERT INTO `project_user_ref` VALUES ('113', '223', '0');
INSERT INTO `project_user_ref` VALUES ('114', '223', '0');
INSERT INTO `project_user_ref` VALUES ('115', '1', '0');
INSERT INTO `project_user_ref` VALUES ('119', '1', '0');
INSERT INTO `project_user_ref` VALUES ('120', '1', '0');
INSERT INTO `project_user_ref` VALUES ('122', '1', '0');
INSERT INTO `project_user_ref` VALUES ('123', '1', '0');
INSERT INTO `project_user_ref` VALUES ('125', '2', '0');
INSERT INTO `project_user_ref` VALUES ('126', '2', '0');
INSERT INTO `project_user_ref` VALUES ('127', '2', '0');
INSERT INTO `project_user_ref` VALUES ('128', '2', '0');
INSERT INTO `project_user_ref` VALUES ('129', '3', '0');
INSERT INTO `project_user_ref` VALUES ('130', '0', '0');
INSERT INTO `project_user_ref` VALUES ('131', '0', '0');
INSERT INTO `project_user_ref` VALUES ('132', '0', '0');
INSERT INTO `project_user_ref` VALUES ('133', '0', '0');
INSERT INTO `project_user_ref` VALUES ('134', '0', '0');
INSERT INTO `project_user_ref` VALUES ('135', '3', '0');
INSERT INTO `project_user_ref` VALUES ('136', '0', '0');
INSERT INTO `project_user_ref` VALUES ('137', '5', '0');
INSERT INTO `project_user_ref` VALUES ('138', '0', '0');
INSERT INTO `project_user_ref` VALUES ('139', '5', '0');
INSERT INTO `project_user_ref` VALUES ('140', '5', '0');
INSERT INTO `project_user_ref` VALUES ('222', '333', '0');

-- ----------------------------
-- Table structure for team_info
-- ----------------------------
DROP TABLE IF EXISTS `team_info`;
CREATE TABLE `team_info` (
  `team_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `team_name` varchar(20) NOT NULL,
  `description` text,
  `del_flag` tinyint(4) DEFAULT '0',
  `create_user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team_info
-- ----------------------------
INSERT INTO `team_info` VALUES ('1', 'hhhh', 'hhhh', '0', '3');
INSERT INTO `team_info` VALUES ('2', '88888', '88888', '0', '3');
INSERT INTO `team_info` VALUES ('3', 'hhhhhh', 'hhh', '0', '3');
INSERT INTO `team_info` VALUES ('4', '今天', 'abc', '0', '3');
INSERT INTO `team_info` VALUES ('5', 'yuna', 'yuan', '0', '3');
INSERT INTO `team_info` VALUES ('6', 'yuan', 'yuan', '1', '3');
INSERT INTO `team_info` VALUES ('10', 'yuanjjj', 'yuan', '0', '3');
INSERT INTO `team_info` VALUES ('11', '哈哈', '哈哈', '1', '3');
INSERT INTO `team_info` VALUES ('13', '空间', '看你', '0', '3');
INSERT INTO `team_info` VALUES ('14', '哈哈', '哈哈', '1', '3');
INSERT INTO `team_info` VALUES ('15', '哈哈', '', '1', '3');
INSERT INTO `team_info` VALUES ('16', 'abc', 'abc', '1', '3');
INSERT INTO `team_info` VALUES ('17', '得分王', '第三方', '1', '3');
INSERT INTO `team_info` VALUES ('18', '成都', 'vd', '1', '3');
INSERT INTO `team_info` VALUES ('19', 'gggg', '5555', '1', '3');
INSERT INTO `team_info` VALUES ('20', '44444', '44', '1', '3');
INSERT INTO `team_info` VALUES ('21', '8888888', 'df egvdc', '0', '5');
INSERT INTO `team_info` VALUES ('22', '45616', 'ccc', '0', '5');

-- ----------------------------
-- Table structure for team_member_info
-- ----------------------------
DROP TABLE IF EXISTS `team_member_info`;
CREATE TABLE `team_member_info` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `join_time` datetime DEFAULT NULL,
  `del_flag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team_member_info
-- ----------------------------
INSERT INTO `team_member_info` VALUES ('1', '3', '6', null, '0');
INSERT INTO `team_member_info` VALUES ('2', '3', '10', null, '0');
INSERT INTO `team_member_info` VALUES ('3', '3', '11', null, '0');
INSERT INTO `team_member_info` VALUES ('4', '3', '13', null, '0');
INSERT INTO `team_member_info` VALUES ('5', '3', '14', null, '0');
INSERT INTO `team_member_info` VALUES ('6', '3', '15', null, '0');
INSERT INTO `team_member_info` VALUES ('7', '3', '16', null, '0');
INSERT INTO `team_member_info` VALUES ('8', '3', '17', null, '0');
INSERT INTO `team_member_info` VALUES ('9', '3', '18', null, '0');
INSERT INTO `team_member_info` VALUES ('10', '3', '19', null, '0');
INSERT INTO `team_member_info` VALUES ('11', '3', '20', null, '0');
INSERT INTO `team_member_info` VALUES ('12', '5', '21', null, '0');
INSERT INTO `team_member_info` VALUES ('13', '5', '22', null, '0');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `introduction` text,
  `phone_number` char(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `del_flag` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'fewf', 'fsd', 's', 'dfs', 'sdf', 'fsdf', 'dfs', '0');
INSERT INTO `user_info` VALUES ('2', '1290341092', null, null, null, null, '1339665047@qq.com', '123456', '0');
INSERT INTO `user_info` VALUES ('3', 'fff', null, null, null, null, '137@qq.com', '12345678', '0');
INSERT INTO `user_info` VALUES ('4', '000', null, null, null, null, '1339665047@qq.com', '123456', '0');
INSERT INTO `user_info` VALUES ('5', '1111', null, null, null, null, '1339665047@qq.com', '123456', '0');
