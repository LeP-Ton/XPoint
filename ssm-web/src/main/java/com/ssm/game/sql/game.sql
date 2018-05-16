/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : game

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-02-24 21:14:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ssmgame
-- ----------------------------
DROP TABLE IF EXISTS `ssmgame`;
CREATE TABLE `ssmgame` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '测试序列id',
  `input` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '输入框',
  `output` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '计算结果框',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
