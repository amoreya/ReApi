/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : reapimocksystem

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-11-19 16:22:03
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
