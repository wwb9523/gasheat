/*
Navicat MySQL Data Transfer

Source Server         : conn
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : gasheat

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-09-02 17:11:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ycity_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `ycity_admin_log`;
CREATE TABLE `ycity_admin_log` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` tinyint(3) unsigned DEFAULT NULL COMMENT '用户ID',
  `username` varchar(50) DEFAULT '' COMMENT '用户',
  `action` text NOT NULL COMMENT 'URI',
  `ip` char(15) NOT NULL DEFAULT '127.0.0.1' COMMENT 'IP',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员操作日志';

-- ----------------------------
-- Records of ycity_admin_log
-- ----------------------------
INSERT INTO `ycity_admin_log` VALUES ('10', '0', '', '/gasheat/index.php/Upload/doInsert.html (录入:116)', '0.0.0.0', '1470819518');
INSERT INTO `ycity_admin_log` VALUES ('4', '2', 'wwb', '/gasheat/index.php/Upload/doInsert.html (录入:115)', '0.0.0.0', '1470817998');
INSERT INTO `ycity_admin_log` VALUES ('8', '1', 'admin', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1470819263');
INSERT INTO `ycity_admin_log` VALUES ('9', '1', 'admin', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1470819462');
INSERT INTO `ycity_admin_log` VALUES ('11', '1', 'admin', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1470877260');
INSERT INTO `ycity_admin_log` VALUES ('12', '1', 'admin', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1470877528');
INSERT INTO `ycity_admin_log` VALUES ('13', '1', 'admin', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1470877680');
INSERT INTO `ycity_admin_log` VALUES ('14', '2', 'wwb', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1470877749');
INSERT INTO `ycity_admin_log` VALUES ('15', '2', 'wwb', '/gasheat/index.php/Public/doChangePwd.html (修改密码)', '0.0.0.0', '1470877763');
INSERT INTO `ycity_admin_log` VALUES ('16', '2', 'wwb', '/gasheat/admin.php', '0.0.0.0', '1470877795');
INSERT INTO `ycity_admin_log` VALUES ('17', '2', 'wwb', '/gasheat/admin.php/Config/index', '0.0.0.0', '1470877802');
INSERT INTO `ycity_admin_log` VALUES ('18', '2', 'wwb', '/gasheat/admin.php/Config/index', '0.0.0.0', '1470877802');
INSERT INTO `ycity_admin_log` VALUES ('19', '1', 'admin', '/gasheat/admin.php/Index/index', '0.0.0.0', '1470877855');
INSERT INTO `ycity_admin_log` VALUES ('20', '1', 'admin', '/gasheat/admin.php/Config/index', '0.0.0.0', '1470877857');
INSERT INTO `ycity_admin_log` VALUES ('21', '1', 'admin', '/gasheat/admin.php/Config/index', '0.0.0.0', '1470877857');
INSERT INTO `ycity_admin_log` VALUES ('22', '1', 'admin', '/gasheat/admin.php/Config/doModify (编辑系统配置)', '0.0.0.0', '1470877864');
INSERT INTO `ycity_admin_log` VALUES ('23', '1', 'admin', '/gasheat/admin.php/Config', '0.0.0.0', '1470877865');
INSERT INTO `ycity_admin_log` VALUES ('24', '1', 'admin', '/gasheat/admin.php/Module/index', '0.0.0.0', '1470877868');
INSERT INTO `ycity_admin_log` VALUES ('25', '1', 'admin', '/gasheat/admin.php/Theme/index', '0.0.0.0', '1470877870');
INSERT INTO `ycity_admin_log` VALUES ('26', '1', 'admin', '/gasheat/admin.php/User/index', '0.0.0.0', '1470877871');
INSERT INTO `ycity_admin_log` VALUES ('27', '1', 'admin', '/gasheat/admin.php/User/index', '0.0.0.0', '1470877871');
INSERT INTO `ycity_admin_log` VALUES ('28', '1', 'admin', '/gasheat/admin.php/Category/index', '0.0.0.0', '1470877877');
INSERT INTO `ycity_admin_log` VALUES ('29', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470877880');
INSERT INTO `ycity_admin_log` VALUES ('30', '1', 'admin', '/gasheat/admin.php/Download/index', '0.0.0.0', '1470877882');
INSERT INTO `ycity_admin_log` VALUES ('31', '1', 'admin', '/gasheat/admin.php/Page/index', '0.0.0.0', '1470877884');
INSERT INTO `ycity_admin_log` VALUES ('32', '1', 'admin', '/gasheat/admin.php/Member/index', '0.0.0.0', '1470877890');
INSERT INTO `ycity_admin_log` VALUES ('33', '1', 'admin', '/gasheat/admin.php/Member/index', '0.0.0.0', '1470877890');
INSERT INTO `ycity_admin_log` VALUES ('34', '1', 'admin', '/gasheat/admin.php/Member/index', '0.0.0.0', '1470877892');
INSERT INTO `ycity_admin_log` VALUES ('35', '1', 'admin', '/gasheat/admin.php/Core/index', '0.0.0.0', '1470877894');
INSERT INTO `ycity_admin_log` VALUES ('36', '1', 'admin', '/gasheat/admin.php/Core/index', '0.0.0.0', '1470877894');
INSERT INTO `ycity_admin_log` VALUES ('37', '1', 'admin', '/gasheat/admin.php/Tools/index', '0.0.0.0', '1470877896');
INSERT INTO `ycity_admin_log` VALUES ('38', '1', 'admin', '/gasheat/admin.php/Index/index', '0.0.0.0', '1470877915');
INSERT INTO `ycity_admin_log` VALUES ('39', '1', 'admin', '/gasheat/admin.php/Tools/index', '0.0.0.0', '1470877917');
INSERT INTO `ycity_admin_log` VALUES ('40', '1', 'admin', '/gasheat/admin.php/Database/index', '0.0.0.0', '1470877919');
INSERT INTO `ycity_admin_log` VALUES ('41', '1', 'admin', '/gasheat/admin.php/Database/index', '0.0.0.0', '1470877919');
INSERT INTO `ycity_admin_log` VALUES ('42', '1', 'admin', '/gasheat/admin.php/AdminLog/index', '0.0.0.0', '1470877930');
INSERT INTO `ycity_admin_log` VALUES ('43', '1', 'admin', '/gasheat/admin.php/Core/index', '0.0.0.0', '1470877949');
INSERT INTO `ycity_admin_log` VALUES ('44', '1', 'admin', '/gasheat/admin.php/Tools/index', '0.0.0.0', '1470877961');
INSERT INTO `ycity_admin_log` VALUES ('45', '1', 'admin', '/gasheat/admin.php/Page/index', '0.0.0.0', '1470877970');
INSERT INTO `ycity_admin_log` VALUES ('46', '1', 'admin', '/gasheat/admin.php', '0.0.0.0', '1470878027');
INSERT INTO `ycity_admin_log` VALUES ('47', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470878030');
INSERT INTO `ycity_admin_log` VALUES ('48', '1', 'admin', '/gasheat/admin.php/News/doModify (编辑:140)', '0.0.0.0', '1470878044');
INSERT INTO `ycity_admin_log` VALUES ('49', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470878046');
INSERT INTO `ycity_admin_log` VALUES ('50', '1', 'admin', '/gasheat/admin.php/News/doModify (编辑:242)', '0.0.0.0', '1470878062');
INSERT INTO `ycity_admin_log` VALUES ('51', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470878063');
INSERT INTO `ycity_admin_log` VALUES ('52', '1', 'admin', '/gasheat/admin.php/Download/index', '0.0.0.0', '1470878086');
INSERT INTO `ycity_admin_log` VALUES ('53', '1', 'admin', '/gasheat/admin.php/Download/doCommand/operate/delete/id/116 (删除: 116)', '0.0.0.0', '1470878087');
INSERT INTO `ycity_admin_log` VALUES ('54', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470878089');
INSERT INTO `ycity_admin_log` VALUES ('55', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470878089');
INSERT INTO `ycity_admin_log` VALUES ('56', '1', 'admin', '/gasheat/admin.php/Download/doCommand/operate/delete/id/115 (删除: 115)', '0.0.0.0', '1470878091');
INSERT INTO `ycity_admin_log` VALUES ('57', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470878092');
INSERT INTO `ycity_admin_log` VALUES ('58', '1', 'admin', '/gasheat/admin.php/Download/doCommand/operate/delete/id/113 (删除: 113)', '0.0.0.0', '1470878093');
INSERT INTO `ycity_admin_log` VALUES ('59', '1', 'admin', '/gasheat/admin.php/Download/doCommand/operate/delete/id/113 (删除: 113)', '0.0.0.0', '1470878094');
INSERT INTO `ycity_admin_log` VALUES ('60', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470878094');
INSERT INTO `ycity_admin_log` VALUES ('61', '1', 'admin', '/gasheat/admin.php/Download/doCommand/operate/delete/id/111 (删除: 111)', '0.0.0.0', '1470878097');
INSERT INTO `ycity_admin_log` VALUES ('62', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470878098');
INSERT INTO `ycity_admin_log` VALUES ('63', '1', 'admin', '/gasheat/admin.php/Download/doInsert (录入:117)', '0.0.0.0', '1470878314');
INSERT INTO `ycity_admin_log` VALUES ('64', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470878317');
INSERT INTO `ycity_admin_log` VALUES ('65', '1', 'admin', '/gasheat/admin.php/Download/doInsert (录入:118)', '0.0.0.0', '1470878453');
INSERT INTO `ycity_admin_log` VALUES ('66', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470878492');
INSERT INTO `ycity_admin_log` VALUES ('67', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470878492');
INSERT INTO `ycity_admin_log` VALUES ('68', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470878511');
INSERT INTO `ycity_admin_log` VALUES ('69', '1', 'admin', '/gasheat/admin.php/Download/doModify (编辑:117)', '0.0.0.0', '1470878518');
INSERT INTO `ycity_admin_log` VALUES ('70', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470878520');
INSERT INTO `ycity_admin_log` VALUES ('71', '1', 'admin', '/gasheat/admin.php/Download/doModify (编辑:117)', '0.0.0.0', '1470879278');
INSERT INTO `ycity_admin_log` VALUES ('72', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470879281');
INSERT INTO `ycity_admin_log` VALUES ('73', '1', 'admin', '/gasheat/admin.php/Download/doModify (编辑:117)', '0.0.0.0', '1470879435');
INSERT INTO `ycity_admin_log` VALUES ('74', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470879438');
INSERT INTO `ycity_admin_log` VALUES ('75', '1', 'admin', '/gasheat/admin.php/Download/doModify (编辑:114)', '0.0.0.0', '1470879477');
INSERT INTO `ycity_admin_log` VALUES ('76', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470879480');
INSERT INTO `ycity_admin_log` VALUES ('77', '1', 'admin', '/gasheat/admin.php/Download/doModify (编辑:114)', '0.0.0.0', '1470879506');
INSERT INTO `ycity_admin_log` VALUES ('78', '1', 'admin', '/gasheat/admin.php/Download/doModify (编辑:114)', '0.0.0.0', '1470879517');
INSERT INTO `ycity_admin_log` VALUES ('79', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470879520');
INSERT INTO `ycity_admin_log` VALUES ('80', '1', 'admin', '/gasheat/admin.php/Download/doModify (编辑:117)', '0.0.0.0', '1470879565');
INSERT INTO `ycity_admin_log` VALUES ('81', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470879568');
INSERT INTO `ycity_admin_log` VALUES ('82', '1', 'admin', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1470879750');
INSERT INTO `ycity_admin_log` VALUES ('83', '1', 'admin', '/gasheat/admin.php', '0.0.0.0', '1470879825');
INSERT INTO `ycity_admin_log` VALUES ('84', '1', 'admin', '/gasheat/admin.php/Download/index', '0.0.0.0', '1470879828');
INSERT INTO `ycity_admin_log` VALUES ('85', '1', 'admin', '/gasheat/admin.php/Download/index', '0.0.0.0', '1470879828');
INSERT INTO `ycity_admin_log` VALUES ('86', '1', 'admin', '/gasheat/admin.php/Download/doInsert (录入:119)', '0.0.0.0', '1470880025');
INSERT INTO `ycity_admin_log` VALUES ('87', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470880028');
INSERT INTO `ycity_admin_log` VALUES ('88', '1', 'admin', '/gasheat/admin.php/Page/index', '0.0.0.0', '1470880735');
INSERT INTO `ycity_admin_log` VALUES ('89', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470880736');
INSERT INTO `ycity_admin_log` VALUES ('90', '1', 'admin', '/gasheat/admin.php/Download/index', '0.0.0.0', '1470880742');
INSERT INTO `ycity_admin_log` VALUES ('91', '1', 'admin', '/gasheat/admin.php/Download/doModify (编辑:119)', '0.0.0.0', '1470880752');
INSERT INTO `ycity_admin_log` VALUES ('92', '1', 'admin', '/gasheat/admin.php/Download', '0.0.0.0', '1470880755');
INSERT INTO `ycity_admin_log` VALUES ('93', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470880770');
INSERT INTO `ycity_admin_log` VALUES ('94', '1', 'admin', '/gasheat/admin.php/Page/index', '0.0.0.0', '1470880774');
INSERT INTO `ycity_admin_log` VALUES ('95', '1', 'admin', '/gasheat/admin.php/Page/index', '0.0.0.0', '1470880774');
INSERT INTO `ycity_admin_log` VALUES ('96', '1', 'admin', '/gasheat/admin.php', '0.0.0.0', '1470905267');
INSERT INTO `ycity_admin_log` VALUES ('97', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905271');
INSERT INTO `ycity_admin_log` VALUES ('98', '1', 'admin', '/gasheat/admin.php/News/doModify (编辑:240)', '0.0.0.0', '1470905324');
INSERT INTO `ycity_admin_log` VALUES ('99', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470905326');
INSERT INTO `ycity_admin_log` VALUES ('100', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470905376');
INSERT INTO `ycity_admin_log` VALUES ('101', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905392');
INSERT INTO `ycity_admin_log` VALUES ('102', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905396');
INSERT INTO `ycity_admin_log` VALUES ('103', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905401');
INSERT INTO `ycity_admin_log` VALUES ('104', '1', 'admin', '/gasheat/admin.php/News/doModify (编辑:240)', '0.0.0.0', '1470905479');
INSERT INTO `ycity_admin_log` VALUES ('105', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470905482');
INSERT INTO `ycity_admin_log` VALUES ('106', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470905534');
INSERT INTO `ycity_admin_log` VALUES ('107', '1', 'admin', '/gasheat/admin.php/News/doModify (编辑:240)', '0.0.0.0', '1470905545');
INSERT INTO `ycity_admin_log` VALUES ('108', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470905546');
INSERT INTO `ycity_admin_log` VALUES ('109', '1', 'admin', '/gasheat/admin.php/News/doModify (编辑:240)', '0.0.0.0', '1470905565');
INSERT INTO `ycity_admin_log` VALUES ('110', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470905566');
INSERT INTO `ycity_admin_log` VALUES ('111', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905574');
INSERT INTO `ycity_admin_log` VALUES ('112', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905578');
INSERT INTO `ycity_admin_log` VALUES ('113', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905581');
INSERT INTO `ycity_admin_log` VALUES ('114', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905589');
INSERT INTO `ycity_admin_log` VALUES ('115', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905592');
INSERT INTO `ycity_admin_log` VALUES ('116', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905596');
INSERT INTO `ycity_admin_log` VALUES ('117', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905600');
INSERT INTO `ycity_admin_log` VALUES ('118', '1', 'admin', '/gasheat/admin.php/News/doModify (编辑:139)', '0.0.0.0', '1470905615');
INSERT INTO `ycity_admin_log` VALUES ('119', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470905616');
INSERT INTO `ycity_admin_log` VALUES ('120', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905624');
INSERT INTO `ycity_admin_log` VALUES ('121', '1', 'admin', '/gasheat/admin.php/News/doModify (编辑:241)', '0.0.0.0', '1470905632');
INSERT INTO `ycity_admin_log` VALUES ('122', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470905633');
INSERT INTO `ycity_admin_log` VALUES ('123', '1', 'admin', '/gasheat/admin.php/News/index', '0.0.0.0', '1470905635');
INSERT INTO `ycity_admin_log` VALUES ('124', '1', 'admin', '/gasheat/admin.php/News/doModify (编辑:240)', '0.0.0.0', '1470905641');
INSERT INTO `ycity_admin_log` VALUES ('125', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470905642');
INSERT INTO `ycity_admin_log` VALUES ('126', '1', 'admin', '/gasheat/admin.php/News/doModify (编辑:240)', '0.0.0.0', '1470905974');
INSERT INTO `ycity_admin_log` VALUES ('127', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470905976');
INSERT INTO `ycity_admin_log` VALUES ('128', '1', 'admin', '/gasheat/admin.php/News/doModify (编辑:240)', '0.0.0.0', '1470905999');
INSERT INTO `ycity_admin_log` VALUES ('129', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470906000');
INSERT INTO `ycity_admin_log` VALUES ('130', '1', 'admin', '/gasheat/admin.php/News/doModify (编辑:240)', '0.0.0.0', '1470906211');
INSERT INTO `ycity_admin_log` VALUES ('131', '1', 'admin', '/gasheat/admin.php/News', '0.0.0.0', '1470906212');
INSERT INTO `ycity_admin_log` VALUES ('132', '0', '', '/gasheat/index.php/Upload/doInsert.html (录入:120)', '0.0.0.0', '1470906424');
INSERT INTO `ycity_admin_log` VALUES ('133', '0', '', '/gasheat/index.php/Upload/doInsert.html (录入:121)', '0.0.0.0', '1470907107');
INSERT INTO `ycity_admin_log` VALUES ('134', '0', '', '/gasheat/index.php/Upload/doInsert.html (录入:122)', '0.0.0.0', '1470907369');
INSERT INTO `ycity_admin_log` VALUES ('135', '0', '', '/gasheat/index.php/Upload/doInsert.html (录入:123)', '0.0.0.0', '1470908215');
INSERT INTO `ycity_admin_log` VALUES ('136', '0', '', '/gasheat/index.php/Upload/doInsert.html (录入:124)', '0.0.0.0', '1470908304');
INSERT INTO `ycity_admin_log` VALUES ('137', '1', 'admin', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1470961441');
INSERT INTO `ycity_admin_log` VALUES ('138', '0', '', '/gasheat/index.php/Upload/doInsert.html (录入:125)', '0.0.0.0', '1470961515');
INSERT INTO `ycity_admin_log` VALUES ('139', '1', 'admin', '/gasheat/admin.php', '0.0.0.0', '1470963271');
INSERT INTO `ycity_admin_log` VALUES ('140', '1', 'admin', '/gasheat/admin.php/Download/index', '0.0.0.0', '1470963274');
INSERT INTO `ycity_admin_log` VALUES ('141', '1', 'admin', '/gasheat/admin.php/Download/index', '0.0.0.0', '1470963311');
INSERT INTO `ycity_admin_log` VALUES ('142', '0', '', '/gasheat/index.php/Upload/doInsert.html (录入:126)', '0.0.0.0', '1470964272');
INSERT INTO `ycity_admin_log` VALUES ('143', '0', '', '/gasheat/index.php/Upload/doInsert.html (录入:127)', '0.0.0.0', '1470964340');
INSERT INTO `ycity_admin_log` VALUES ('144', '0', '', '/gasheat/index.php/Upload/doInsert.html (录入:128)', '0.0.0.0', '1470964666');
INSERT INTO `ycity_admin_log` VALUES ('145', '0', '', '/gasheat/index.php/Upload/doInsert.html (录入:129)', '0.0.0.0', '1470964768');
INSERT INTO `ycity_admin_log` VALUES ('146', '0', '', '/gasheat/index.php/Upload/doInsert.html (录入:130)', '0.0.0.0', '1470964830');
INSERT INTO `ycity_admin_log` VALUES ('147', '1', 'admin', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1472023912');
INSERT INTO `ycity_admin_log` VALUES ('148', '2', 'wwb', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1472024387');
INSERT INTO `ycity_admin_log` VALUES ('149', '2', 'wwb', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1472024583');
INSERT INTO `ycity_admin_log` VALUES ('150', '1', 'admin', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1472024679');
INSERT INTO `ycity_admin_log` VALUES ('151', '1', 'admin', '/gasheat/index.php/Public/doLogin.html (登录系统)', '0.0.0.0', '1472024746');

-- ----------------------------
-- Table structure for `ycity_category`
-- ----------------------------
DROP TABLE IF EXISTS `ycity_category`;
CREATE TABLE `ycity_category` (
  `id` smallint(255) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) DEFAULT NULL,
  `parent_id` int(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `display_order` varchar(255) DEFAULT NULL,
  `protected` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ycity_category
-- ----------------------------
INSERT INTO `ycity_category` VALUES ('74', 'Page', '0', '指导小组介绍', null, null, null, null, '0', null, null);
INSERT INTO `ycity_category` VALUES ('75', 'News', '0', '会议和动态', null, null, null, null, '0', null, null);
INSERT INTO `ycity_category` VALUES ('76', 'News', '0', '各校建环专业概况', null, null, null, null, '0', null, null);
INSERT INTO `ycity_category` VALUES ('77', 'News', '0', '教师风采', null, null, null, null, '0', null, null);
INSERT INTO `ycity_category` VALUES ('78', 'Download', '0', '教学成果交流', null, null, null, null, '0', null, null);
INSERT INTO `ycity_category` VALUES ('79', 'News', '0', '研究成果展示', null, null, null, null, '0', null, null);

-- ----------------------------
-- Table structure for `ycity_config`
-- ----------------------------
DROP TABLE IF EXISTS `ycity_config`;
CREATE TABLE `ycity_config` (
  `id` tinyint(1) unsigned NOT NULL,
  `lang` char(20) NOT NULL DEFAULT 'cn' COMMENT '语言',
  `site_name` varchar(100) NOT NULL COMMENT '网站名称',
  `company_name` varchar(200) NOT NULL COMMENT '公司名称',
  `site_url` varchar(200) NOT NULL COMMENT '网站地址',
  `contact_name` varchar(50) NOT NULL COMMENT '联系人',
  `telephone` varchar(50) NOT NULL COMMENT '电话',
  `email` varchar(100) NOT NULL COMMENT 'email',
  `fax` varchar(50) NOT NULL COMMENT '传真',
  `mobile_telephone` varchar(50) NOT NULL COMMENT '手机',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `icp` varchar(20) NOT NULL COMMENT 'icp',
  `qq` varchar(50) NOT NULL COMMENT 'qq',
  `msn` varchar(100) NOT NULL COMMENT 'msn',
  `im` varchar(250) NOT NULL COMMENT '即时通讯工具',
  `web_status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '网站状态',
  `status_description` text NOT NULL COMMENT '停止描述',
  `header_content` text NOT NULL COMMENT '头部内容',
  `footer_content` text NOT NULL COMMENT '脚部内容',
  `comment_verify` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否开启留言/评论审核',
  `sys_log` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '系统日志',
  `sys_log_ext` varchar(255) NOT NULL COMMENT '记录日志类型',
  `download_suffix` varchar(255) NOT NULL DEFAULT 'Winndows' COMMENT '下载类型',
  `run_system` varchar(255) NOT NULL COMMENT '运行平台',
  `global_thumb_status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '缩略图开关',
  `watermark_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '水印开关',
  `watermark_size` varchar(50) NOT NULL COMMENT '水印尺寸',
  `watermark_position` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '水印位置',
  `watermark_padding` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '水印边距',
  `watermark_trans` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '水印透明度',
  `global_attach_size` int(10) unsigned NOT NULL DEFAULT '2048000' COMMENT '附件大小',
  `global_attach_suffix` varchar(200) NOT NULL COMMENT '允许附件类型',
  `news_thumb_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '新闻缩略图状态',
  `news_thumb_size` varchar(50) NOT NULL COMMENT '新闻缩略图高',
  `product_thumb_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '产品缩略图开关',
  `product_thumb_size` varchar(50) NOT NULL COMMENT '产品缩略图高',
  `download_thumb_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '下载缩略图开关',
  `download_thumb_size` varchar(50) NOT NULL COMMENT '下载缩略图高',
  `global_thumb_size` varchar(50) NOT NULL COMMENT '全局缩略图 尺寸',
  `seo_title` varchar(200) NOT NULL,
  `seo_keyword` varchar(240) NOT NULL,
  `seo_description` varchar(240) NOT NULL,
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '提交时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='系统配置';

-- ----------------------------
-- Records of ycity_config
-- ----------------------------
INSERT INTO `ycity_config` VALUES ('1', 'cn', '燃气指导小组频道', '新城网络', 'http://127.0.0.1/gasheat', 'Y-city', '15100000000', 'admin@admin.com', '15100000000', '15100000000', 'address a', '津ICP备88888888', '5565907', 'y_city@qeeyang.com', 'Y-city', '0', '系统维护中.....', '', '', '1', '1', 'index,delete,modify,insert,update,login', 'Windows,Linux,Apple,其它', 'linux,windows', '1', '1', '100x100', '0', '5', '70', '20480000', 'gif,jpg,png,jpeg,swf,zip,rar,chm,7z,pdf,xls,doc,ppt,xlsx,docx,pptx', '1', '300,200', '1', '300,250', '1', '300,200', '300,200', '', '', '', '1335163385', '1335163385');

-- ----------------------------
-- Table structure for `ycity_download`
-- ----------------------------
DROP TABLE IF EXISTS `ycity_download`;
CREATE TABLE `ycity_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '软件名称',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '样式',
  `title_style_serialize` varchar(255) NOT NULL COMMENT '样式序列化',
  `category_id` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `run_system` varchar(255) NOT NULL DEFAULT 'windows' COMMENT '运行系统',
  `extension` varchar(10) NOT NULL COMMENT '扩展名',
  `file_size` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '大小',
  `file_size_unit` char(10) NOT NULL DEFAULT 'KB' COMMENT '大小单位',
  `link_url` varchar(100) NOT NULL COMMENT '外链',
  `content` text NOT NULL COMMENT '介绍',
  `tags` varchar(255) NOT NULL COMMENT 'tags',
  `template` varchar(100) NOT NULL COMMENT '模板文件',
  `attach_file` varchar(255) NOT NULL COMMENT '附件地址',
  `view_count` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '查看次数',
  `istop` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '置顶',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `display_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='下载';

-- ----------------------------
-- Records of ycity_download
-- ----------------------------
INSERT INTO `ycity_download` VALUES ('112', '1', '天津市2016年高校毕业生“三支一扶”计划实施方案', '', '', '78', '', '', 'jpg', '826.11', 'KB', '', '<p>为确保我市2016年高校毕业生“三支一扶”计划顺利实施，结合工作实际，制定本实施方案。<br /></p><p>一、招募对象和条件<br /></p><p>2016年，全市继续招募高校毕业生到乡镇基层从事“三支一扶”工作，服务时间为2年。招募对象为全日制普通高等院校本市生源2015届、2016届毕业生。部分支医岗位可扩大至本市全日制普通高等院校外地生源2015届、2016届本科毕业生，或本市全日制普通高等院校本地生源2015届、2016届专科毕业生。招募对象应具备以下条件：</p><p>市“三支一扶”工作领导小组和协调管理办公室（以下简称“市‘三支一扶’办”）利用多种媒体，广泛宣传“三支一扶”工作及相关政策，深入“三支一扶”大学生重点来源高校宣讲优秀“三支一扶”大学生先进事迹，营造引导和鼓励高校毕业生参加“三支一扶”计划的良好氛围。各高校要开展有针对性的思想政治教育和就业指导教育，积极发挥导向作用<br /></p>', '', '', 'Download/201608/57a3f237d1bbe.jpg', '82', '0', '0', '0', '0', '1470326400', '0');
INSERT INTO `ycity_download` VALUES ('117', '1', 'THINKPHP', '', '', '78', '', '', '', '2.18', 'MB', '', '<p>ThinkPHP_3.2.2_full.zip<br /></p>', '', '', 'Download/201608/57abd73f79106.zip', '5', '0', '0', '0', '0', '1470844800', '0');
INSERT INTO `ycity_download` VALUES ('114', '2', '图片水母', '', '', '78', '', '', '', '757.52', 'KB', '', '<p><br /></p>', '', '', 'Download/201608/57abd71c08c0a.jpg', '14', '0', '0', '0', '0', '1470758400', '0');
INSERT INTO `ycity_download` VALUES ('130', '1', 'HTML测试', '', '', '78', '', '', 'jpg', '762.53', 'KB', '', '&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/body&gt;&lt;/html&gt;', '', '', 'Upload/201608/57ad245e930f1.jpg', '1', '0', '0', '0', '0', '1470964830', '0');

-- ----------------------------
-- Table structure for `ycity_group`
-- ----------------------------
DROP TABLE IF EXISTS `ycity_group`;
CREATE TABLE `ycity_group` (
  `id` tinyint(1) NOT NULL,
  `role_name` varchar(50) NOT NULL DEFAULT 'all' COMMENT '名称',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '系统内置',
  `create_time` int(11) unsigned NOT NULL COMMENT '增加时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员角色';

-- ----------------------------
-- Records of ycity_group
-- ----------------------------
INSERT INTO `ycity_group` VALUES ('1', '企业会员', '1', '0', '0');
INSERT INTO `ycity_group` VALUES ('2', '禁止访问', '1', '0', '0');
INSERT INTO `ycity_group` VALUES ('3', '普通会员', '1', '0', '1317994448');

-- ----------------------------
-- Table structure for `ycity_module`
-- ----------------------------
DROP TABLE IF EXISTS `ycity_module`;
CREATE TABLE `ycity_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `module_title` varchar(100) NOT NULL COMMENT '中文',
  `module_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模块名称',
  `module_permission` text NOT NULL COMMENT '包含权限',
  `system_module` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否内置',
  `left_menu` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示在管理菜单左侧',
  `developer` text NOT NULL COMMENT '开发者版权',
  `build_version` varchar(255) NOT NULL DEFAULT 'N/A' COMMENT '版本',
  `display_order` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='模块';

-- ----------------------------
-- Records of ycity_module
-- ----------------------------
INSERT INTO `ycity_module` VALUES ('4', '导航管理', 'Menu', '浏览=Menu_index|录入=Menu_insert|编辑=Menu_modify|批量操作=Menu_command', '1', '1', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('7', '类别管理', 'Category', '浏览=Category_index|编辑=Category_modify|批量操作=Category_update', '1', '1', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('8', '新闻管理', 'News', '浏览=News_index|编辑=News_modify|录入=News_insert|移动栏目=News_move|批量操作=News_command', '1', '1', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('10', '下载管理', 'Download', '', '0', '1', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('15', '单页管理', 'Page', '浏览=Page_index|录入=Page_insert|编辑=Page_modify|批量操作=Page_command', '1', '1', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('29', '管理员管理', 'Admin', '浏览=Admin_index|录入=Admin_insert|编辑=Admin_modify|批量操作=Admin_command', '1', '0', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('31', '模板风格', 'Theme', '管理=Theme', '1', '0', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('30', '角色管理', 'AdminRole', '浏览=AdminRole_index|录入=AdminRole_insert|编辑=AdminRole_modify|批量操作=AdminRole_command', '1', '0', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('32', '模块管理', 'Module', '浏览=Module_index|编辑=Module_modify|安装=Module_install|卸载=Module_uninstall', '1', '0', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('33', '系统配置', 'Config', '浏览系统配置=Config_index|编辑系统配置=Config_modify|浏览核心配置=Config_core|编辑核心配置=Config_coreModify', '1', '0', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('34', '数据库管理', 'Database', '浏览=Database_index|执行SQL=Database_query|备份数据库=Database_export|恢复数据库=Database_import', '1', '0', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('35', '操作日志管理', 'AdminLog', '管理=AdminLog', '1', '0', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('36', '工具箱管理', 'Tools', '管理=Tools', '1', '0', '', '2.0', '0', '0', '0', '0');
INSERT INTO `ycity_module` VALUES ('37', '数据调用', 'Label', '管理=Label', '1', '0', '', '2.0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ycity_news`
-- ----------------------------
DROP TABLE IF EXISTS `ycity_news`;
CREATE TABLE `ycity_news` (
  `id` smallint(50) NOT NULL AUTO_INCREMENT,
  `category_id` smallint(50) DEFAULT NULL,
  `user_id` smallint(50) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_style` varchar(255) DEFAULT NULL,
  `title_style_serialize` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `copy_from` varchar(255) DEFAULT NULL,
  `from_link` varchar(255) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` text,
  `tags` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `attach` varchar(255) DEFAULT NULL,
  `attach_image` varchar(255) DEFAULT NULL,
  `attach_thumb` varchar(255) DEFAULT NULL,
  `istop` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `recommend` varchar(255) DEFAULT '0',
  `display_order` varchar(255) DEFAULT '0',
  `view_count` varchar(255) DEFAULT '0',
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ycity_news
-- ----------------------------
INSERT INTO `ycity_news` VALUES ('96', '75', '1', 'admin', '天津市2016年高校毕业生“三支一扶”计划实施方案', '', '', '', '', '', '', null, '<p>为确保我市2016年高校毕业生“三支一扶”计划顺利实施，结合工作实际，制定本实施方案。<br /></p><p>一、招募对象和条件<br /></p><p>2016年，全市继续招募高校毕业生到乡镇基层从事“三支一扶”工作，服务时间为2年。招募对象为全日制普通高等院校本市生源2015届、2016届毕业生。部分支医岗位可扩大至本市全日制普通高等院校外地生源2015届、2016届本科毕业生，或本市全日制普通高等院校本地生源2015届、2016届专科毕业生。招募对象应具备以下条件：</p><p>（一）政治素质好，热爱社会主义祖国，拥护党的基本路线和方针政策；<br /></p><p><span style=\"white-space: normal;\">（二）学习成绩合格，具有相应的专业知识；</span><br /></p><p><span style=\"white-space: normal;\">（三）具有敬业奉献精神，遵纪守法，作风正派；<br /></span></p><p><span style=\"white-space: normal;\">（四）身体健康；<br /></span></p><p><span style=\"white-space: nowrap;\">（五）拟招募岗位所需的其他条件。</span><br /></p><p><span style=\"white-space: nowrap;\"><span style=\"white-space: nowrap;\">二、宣传动员</span><br /></span></p><p><span style=\"white-space: nowrap;\"><span style=\"white-space: nowrap;\">（一）宣传口号<br /></span></span></p><p><span style=\"white-space: nowrap;\"><span style=\"white-space: nowrap;\">到农村去，到基层去，到人民最需要的地方去！<br /></span></span></p><p><span style=\"white-space: nowrap;\"><span style=\"white-space: nowrap;\"><span style=\"white-space: nowrap;\">（二）宣传动员</span><br /></span></span></p><p>市“三支一扶”工作领导小组和协调管理办公室（以下简称“市‘三支一扶’办”）利用多种媒体，广泛宣传“三支一扶”工作及相关政策，深入“三支一扶”大学生重点来源高校宣讲优秀“三支一扶”大学生先进事迹，营造引导和鼓励高校毕业生参加“三支一扶”计划的良好氛围。各高校要开展有针对性的思想政治教育和就业指导教育，积极发挥导向作用<br /></p>', '', '', null, null, null, '0', '0', '0', '0', '68', '1470326400', '1470366193');
INSERT INTO `ycity_news` VALUES ('97', '75', '1', 'admin', '天津市公开招募“三支一扶”工作简章', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470326400', null);
INSERT INTO `ycity_news` VALUES ('98', '75', '1', 'admin', '创维集团招聘简章——天津城建大学2016年毕业生宣讲会', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470326400', null);
INSERT INTO `ycity_news` VALUES ('99', '75', '1', 'admin', '北京怀特机电设备安装工程有限责任公司简介——天津城建大学2016年毕业生宣讲会', '', '', '', '', '', '', null, '<p>北京怀特机电设备安装工程有限责任公司简介——天津城建大学2016年毕业生宣讲会<br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470326400', null);
INSERT INTO `ycity_news` VALUES ('100', '75', '1', 'admin', '天津城建大学2016年毕业生4月21日招聘会参会单位名单', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470326400', null);
INSERT INTO `ycity_news` VALUES ('101', '75', '1', 'admin', '中国邮政集团公司天津市分公司招聘公告——天津城建大学2016年毕业生宣讲会', '', '', '', '', '', '', null, '<p>中国邮政集团公司天津市分公司招聘公告——天津城建大学2016年毕业生宣讲会<br /></p>', '', '', null, null, null, '0', '0', '0', '0', '3', '1470326400', null);
INSERT INTO `ycity_news` VALUES ('102', '75', '1', 'admin', '天津城建大学2016年毕业生4月14日招聘会参会单位名单', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470326400', null);
INSERT INTO `ycity_news` VALUES ('103', '75', '1', 'admin', '天津城建大学2016年毕业生4月7日招聘会参会单位名单', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '1', '1470326400', null);
INSERT INTO `ycity_news` VALUES ('104', '75', '1', 'admin', '天津市第一中心医院2016年度工程技术岗位职工招聘简章', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '6', '1470326400', null);
INSERT INTO `ycity_news` VALUES ('105', '75', '1', 'admin', '中民燃气集团招聘简章', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '5', '1470326400', null);
INSERT INTO `ycity_news` VALUES ('106', '75', '1', 'admin', '我院第二十九期校党课学员“义务奉献”', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('107', '75', '1', 'admin', '我院成功举办第二场IT类专场招聘会', '', '', '', '', '', '', null, '<p>我院成功举办第二场IT类专场招聘会<br /></p>', '', '', null, null, null, '0', '0', '0', '0', '1', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('108', '75', '1', 'admin', '我院隆重举行“学生公寓安全月”动员大会 ', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('109', '75', '1', 'admin', '群英聚首，剑指研锋——我院成功举办', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('110', '75', '1', 'admin', '群英聚首，剑指研锋——我院成功举办', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('111', '75', '1', 'admin', '我院开展本学期第一次学术交流活动 ', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '4', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('112', '75', '1', 'admin', '我院第二十九期校党课学员“义务奉献”', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '4', null, null);
INSERT INTO `ycity_news` VALUES ('113', '75', '1', 'admin', '我院成功举办第二场IT类专场招聘会', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '2', null, null);
INSERT INTO `ycity_news` VALUES ('114', '75', '1', 'admin', '我院隆重举行“学生公寓安全月”动员大会 ', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('115', '75', '1', 'admin', '群英聚首，剑指研锋——我院成功举办', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('116', '75', '1', 'admin', '我院开展本学期第一次学术交流活动 ', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '3', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('117', '75', '1', 'admin', '我院第二十九期校党课学员“义务奉献”', '', '', '', '', '', '', null, '<p>我院第二十九期校党课学员“义务奉献”<br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('118', '75', '1', 'admin', ' 我院成功举办第二场IT类专场招聘会 ', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('119', '75', '1', 'admin', ' 我院隆重举行“学生公寓安全月”动员大会 ', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('120', '75', '1', 'admin', '群英聚首，剑指研锋——我院成功举办', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('121', '75', '1', 'admin', '百花齐放，百团争鸣 ——经管学院社团', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('122', '75', '1', 'admin', '我院开展本学期第一次学术交流活动 ', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '3', '1470585600', null);
INSERT INTO `ycity_news` VALUES ('123', '75', '1', 'admin', '我院第二十九期校党课学员“义务奉献”', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0', '5', null, null);
INSERT INTO `ycity_news` VALUES ('124', '75', '1', 'admin', '天津城建大学2016年毕业生4月14日招聘会参会单位名单', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('125', '75', '1', 'admin', '天津城建大学2016年毕业生4月7日招聘会参会单位名单', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '1', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('126', '75', '1', 'admin', '天津城建大学2016年毕业生3月31日招聘会参会单位信息', '', '', '', '', '', '', null, '<p>天津城建大学2016年毕业生3月31日招聘会参会单位信息<br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('127', '75', '1', 'admin', '台湾水泥（湖南区域）储备干部招聘——天津城建大学2016年毕业生宣讲会', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('128', '75', '1', 'admin', '经济与管理学院IT类小型专场招聘会', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('129', '75', '1', 'admin', '重庆市组团赴天津开展紧缺人才引进活动', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '2', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('130', '75', '1', 'admin', '经济与管理学院IT类小型专场招聘会', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('131', '75', '1', 'admin', '天津市第一中心医院2016年度工程技术岗位职工招聘简章', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('132', '75', '1', 'admin', '中国邮政集团公司天津市分公司招聘公告——天津城建大学2016年毕业生宣讲会', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '1', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('133', '75', '1', 'admin', '天津市第一商业学校招聘简章', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '1', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('134', '75', '1', 'admin', '中交天津港湾工程研究院有限公司招聘简章', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('135', '75', '1', 'admin', '中建三局总承包公司——天津城建大学2016年毕业生宣讲会', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '1', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('136', '75', '1', 'admin', '融创中国2016创想家春季招聘计划——天津城建大学2016年毕业生宣讲会', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '1', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('137', '75', '1', 'admin', '天津城建大学2016年毕业生3月24日招聘会参会单位信息', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('138', '75', '1', 'admin', '经济与管理学院IT类小型专场招聘会', '', '', '', '', '', '', null, '<p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '0', '1470672000', null);
INSERT INTO `ycity_news` VALUES ('139', '75', '1', 'admin', '天津城建大学2016年毕业生4月21日招聘会参会单位名单', '', '', '', '', '', '', null, '<p>ghjghjg&nbsp;kj</p><p>p[</p>', '', '', null, null, null, '0', '0', '0', '0', '2', '1470672000', '1470905615');
INSERT INTO `ycity_news` VALUES ('140', '75', '1', 'admin', '群英聚首，剑指研锋——我院成功举办', '', '', '', '', '', '', null, '<p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">为确保我市2016年高校毕业生“三支一扶”计划顺利实施，结合工作实际，制定本实施方案。<br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">一、招募对象和条件<br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">2016年，全市继续招募高校毕业生到乡镇基层从事“三支一扶”工作，服务时间为2年。招募对象为全日制普通高等院校本市生源2015届、2016届毕业生。部分支医岗位可扩大至本市全日制普通高等院校外地生源2015届、2016届本科毕业生，或本市全日制普通高等院校本地生源2015届、2016届专科毕业生。招募对象应具备以下条件：</p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">（一）政治素质好，热爱社会主义祖国，拥护党的基本路线和方针政策；<br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">（二）学习成绩合格，具有相应的专业知识；<br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">（三）具有敬业奉献精神，遵纪守法，作风正派；<br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">（四）身体健康；<br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\"><span style=\"white-space: nowrap;\">（五）拟招募岗位所需的其他条件。</span><br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\"><span style=\"white-space: nowrap;\">二、宣传动员<br /></span></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\"><span style=\"white-space: nowrap;\">（一）宣传口号<br /></span></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\"><span style=\"white-space: nowrap;\">到农村去，到基层去，到人民最需要的地方去！<br /></span></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\"><span style=\"white-space: nowrap;\">（二）宣传动员<br /></span></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">市“三支一扶”工作领导小组和协调管理办公室（以下简称“市‘三支一扶’办”）利用多种媒体，广泛宣传“三支一扶”工作及相关政策，深入“三支一扶”大学生重点来源高校宣讲优秀“三支一扶”大学生先进事迹，营造引导和鼓励高校毕业生参加“三支一扶”计划的良好氛围。各高校要开展有针对性的思想政治教育和就业指导教育，积极发挥导向作用</p>', '', '', null, null, null, '0', '0', '0', '0', '4', '-28800', '1470878044');
INSERT INTO `ycity_news` VALUES ('240', '76', '1', 'admin', '我院成功举办第二场IT类专场招聘会', '', '', '', '', '', '', null, '<p><a href=\"https://www.baidu.com\">111\r\n</a></p>', '', '', null, null, null, '0', '0', '0', '0', '16', '-28800', '1470906211');
INSERT INTO `ycity_news` VALUES ('241', '76', '1', 'admin', '我院成功举办第二场IT类专场招聘会', '', '', '', '', '', '', null, '<p>jkl;jh;</p><p>jkl;</p>', '', '', null, null, null, '0', '0', '0', '0', '0', '-28800', '1470905632');
INSERT INTO `ycity_news` VALUES ('242', '79', '1', 'admin', '我院成功举办第二场IT类专场招聘会', '', '', '', '', '', '', null, '<p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">为确保我市2016年高校毕业生“三支一扶”计划顺利实施，结合工作实际，制定本实施方案。<br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">一、招募对象和条件<br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">2016年，全市继续招募高校毕业生到乡镇基层从事“三支一扶”工作，服务时间为2年。招募对象为全日制普通高等院校本市生源2015届、2016届毕业生。部分支医岗位可扩大至本市全日制普通高等院校外地生源2015届、2016届本科毕业生，或本市全日制普通高等院校本地生源2015届、2016届专科毕业生。招募对象应具备以下条件：</p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">（一）政治素质好，热爱社会主义祖国，拥护党的基本路线和方针政策；<br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">（二）学习成绩合格，具有相应的专业知识；<br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">（三）具有敬业奉献精神，遵纪守法，作风正派；<br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">（四）身体健康；<br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\"><span style=\"white-space: nowrap;\">（五）拟招募岗位所需的其他条件。</span><br /></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\"><span style=\"white-space: nowrap;\">二、宣传动员<br /></span></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\"><span style=\"white-space: nowrap;\">（一）宣传口号<br /></span></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\"><span style=\"white-space: nowrap;\">到农村去，到基层去，到人民最需要的地方去！<br /></span></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\"><span style=\"white-space: nowrap;\">（二）宣传动员<br /></span></p><p style=\"font-family: &quot;Microsoft Yahei&quot;, 宋体, Helvetica, Arial, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8em; word-wrap: break-word; color: rgb(24, 24, 24); font-size: 14px; white-space: normal;\">市“三支一扶”工作领导小组和协调管理办公室（以下简称“市‘三支一扶’办”）利用多种媒体，广泛宣传“三支一扶”工作及相关政策，深入“三支一扶”大学生重点来源高校宣讲优秀“三支一扶”大学生先进事迹，营造引导和鼓励高校毕业生参加“三支一扶”计划的良好氛围。各高校要开展有针对性的思想政治教育和就业指导教育，积极发挥导向作用</p><p><br /></p>', '', '', null, null, null, '0', '0', '0', '0', '1', '-28800', '1470878062');

-- ----------------------------
-- Table structure for `ycity_page`
-- ----------------------------
DROP TABLE IF EXISTS `ycity_page`;
CREATE TABLE `ycity_page` (
  `id` smallint(50) NOT NULL AUTO_INCREMENT,
  `category_id` smallint(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` text,
  `template` varchar(255) DEFAULT NULL,
  `attach_image` varchar(255) DEFAULT NULL,
  `attach_thumb` varchar(255) DEFAULT NULL,
  `attach_ext` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `view_count` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ycity_page
-- ----------------------------
INSERT INTO `ycity_page` VALUES ('6', '74', '小组指导介绍', '', '', '<p><span style=\"white-space: normal;\"><img src=\"http://localhost/gasheat/Uploads/201608/1470367582.png\" width=\"191\" height=\"128\" style=\"float: left;\" /></span></p><p style=\"text-indent: 2em;\"><span style=\"white-space: normal;\">天津盛扬信远科技有限公司注册于天津滨海高新技术产业园区，注册资本300万元人民币主要从事民航领域计算机信息技术领域的开发应用和服务的高新技术企业。目前公司的主要服务项目为电子信息、软件技术开发、咨询、</span><span style=\"white-space: normal;\">&nbsp;&nbsp;</span><span style=\"white-space: normal;\">物及技术进出口服务。作为一家技术过硬的高新技术企业，公司凭借独特的资源优势和区位优势，在软件定制项目中主要从事民用航空领域和教育领域的应用软件定制开发，并已取得一定的成绩。</span></p><p style=\"text-indent: 2em;\"><span style=\"white-space: normal;\">公司具有一支掌握先进计算机知识并且拥有先进管理理念的产品研发团队在开发硬件条件上，公司拥有完善的办公配套设施，以及用于开发和测试的专</span><br /></p>', '', null, null, null, null, null, '1970-01-01', '1470625786');

-- ----------------------------
-- Table structure for `ycity_role`
-- ----------------------------
DROP TABLE IF EXISTS `ycity_role`;
CREATE TABLE `ycity_role` (
  `id` tinyint(1) NOT NULL,
  `role_name` varchar(50) NOT NULL DEFAULT 'all' COMMENT '名称',
  `role_permission` text NOT NULL COMMENT '权限',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '系统内置',
  `create_time` int(11) unsigned NOT NULL COMMENT '增加时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员角色';

-- ----------------------------
-- Records of ycity_role
-- ----------------------------
INSERT INTO `ycity_role` VALUES ('1', '超级管理', 'Menu_index,Menu_insert,Menu_modify,Menu_command,Category_index,Category_modify,Category_update,News_index,News_modify,News_insert,News_move,News_command,Product_index,Product_insert,Product_modify,Product_command,Product_order,Product_move,Download_index,Download_insert,Download_modify,Download_command,Download_move,Feedback_index,Feedback_insert,Feedback_modify,Feedback_command,Job_index,Job_insert,Job_modify,Job_resume,Job_command,Notice_index,Notice_insert,Notice_modify,Notice_command,Link_index,Link_insert,Link_modify,Link_command,Page_index,Page_insert,Page_modify,Page_command,Ad_index,Ad_insert,Ad_modify,Ad_command,Tags,Comment_index,Comment_modify,Comment_command,Admin_index,Admin_insert,Admin_modify,Admin_command,Template,AdminRole_index,AdminRole_insert,AdminRole_modify,AdminRole_command', '1', '0', '0');
INSERT INTO `ycity_role` VALUES ('2', '禁止访问', 'disable', '1', '0', '0');
INSERT INTO `ycity_role` VALUES ('3', '普通管理', 'Menu_index,Menu_insert,Menu_modify,Menu_command,Category_index,Category_modify,News_index,News_modify,News_insert,News_move,News_command,Product_index,Product_insert,Product_modify,Product_command,Product_order,Product_move,Download_index,Download_insert,Download_modify,Download_command,Download_move,Feedback_index,Feedback_insert,Feedback_modify,Feedback_command,Job_index,Job_insert,Job_modify,Job_resume,Job_command,Notice_index,Notice_insert,Notice_modify,Notice_command,Link_index,Link_insert,Link_modify,Link_command,Page_index,Page_insert,Page_modify,Page_command,Ad_index,Ad_insert,Ad_modify,Ad_command,Tags,Comment_index,Comment_modify,Comment_command,Admin_index,Admin_insert,Admin_modify,Admin_command,Theme,AdminRole_index,AdminRole_insert,AdminRole_modify,AdminRole_command,Module_index,Module_install,Config_index,Config_core,Database_index,Database_export,AdminLog,Tools,Label,Product_index,Product_insert,Product_modify,Product_command,Product_move', '1', '0', '1317994448');

-- ----------------------------
-- Table structure for `ycity_user`
-- ----------------------------
DROP TABLE IF EXISTS `ycity_user`;
CREATE TABLE `ycity_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '角色组',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `realname` varchar(50) NOT NULL COMMENT '真实姓名',
  `notepad` text NOT NULL COMMENT '备忘录',
  `sex` char(5) NOT NULL DEFAULT '男' COMMENT '性别',
  `telephone` varchar(50) NOT NULL COMMENT '电话',
  `mobile_telephone` varchar(50) NOT NULL COMMENT '手机',
  `fax` varchar(50) NOT NULL COMMENT 'FAX',
  `web_url` varchar(100) NOT NULL COMMENT '网址',
  `email` varchar(50) NOT NULL COMMENT '电子邮件',
  `qq` varchar(50) NOT NULL COMMENT 'QQ',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  `login_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='管理员';

-- ----------------------------
-- Records of ycity_user
-- ----------------------------
INSERT INTO `ycity_user` VALUES ('1', '1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '姚晓峰', '', '男', '05560000000', '13900000000', '05560000000', 'http://www.y-city.net.cn', 'y_city@qeeyang.com', '5565907', '', '486', '1335163385', '1335163385', '1472024746');
INSERT INTO `ycity_user` VALUES ('2', '3', 'wwb', 'b96c5e4db7a005dbbabf178437a82dfc', 'wwb', '', '男', '1234', '10', '', '22f', '4325', '342', 'fsd', '31', '1468809399', '0', '1472024583');
