/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : sixer

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-08-28 08:11:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for keep_admin_branch
-- ----------------------------
DROP TABLE IF EXISTS `keep_admin_branch`;
CREATE TABLE `keep_admin_branch` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `level` int(4) unsigned DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of keep_admin_branch
-- ----------------------------
INSERT INTO `keep_admin_branch` VALUES ('1', 'branch1', '部门一', '1', '1');
INSERT INTO `keep_admin_branch` VALUES ('2', 'branch2', '部门二', '2', '2');
INSERT INTO `keep_admin_branch` VALUES ('3', 'branch', '部门三', '1', '1');

-- ----------------------------
-- Table structure for keep_admin_level
-- ----------------------------
DROP TABLE IF EXISTS `keep_admin_level`;
CREATE TABLE `keep_admin_level` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `level` int(4) unsigned DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of keep_admin_level
-- ----------------------------
INSERT INTO `keep_admin_level` VALUES ('1', 'level1', '级别一', '1', '2');
INSERT INTO `keep_admin_level` VALUES ('2', 'level2', '级别二', '2', '1');
INSERT INTO `keep_admin_level` VALUES ('3', 'level3', '级别三', '3', '1');
INSERT INTO `keep_admin_level` VALUES ('4', 'level4', '级别4', '4', '2');

-- ----------------------------
-- Table structure for keep_admin_member
-- ----------------------------
DROP TABLE IF EXISTS `keep_admin_member`;
CREATE TABLE `keep_admin_member` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `encrypt` varchar(4) NOT NULL,
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `branch` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '部门',
  `level` int(4) unsigned NOT NULL DEFAULT '0',
  `email` varchar(32) NOT NULL DEFAULT '',
  `addtime` varchar(32) NOT NULL COMMENT '添加时间',
  `adduser` varchar(32) NOT NULL COMMENT '添加者',
  `authority` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否针对该用户制定了权限 0否1是',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `loginip` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `headimg` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of keep_admin_member
-- ----------------------------
INSERT INTO `keep_admin_member` VALUES ('1', 'admin', 'lsWezqE=', '2123', '超级管理员', '0', '0', '272@qq.com', '1495092506', 'fjwcoder', '0', '0', '127.0.0.1', '1', '__STATIC__\\upload\\images\\headimg\\20170816\\ec78513b29f856cf591bec12993323cc.jpg');
INSERT INTO `keep_admin_member` VALUES ('2', 'admin1', 'YW9tk2ljYmk=', 'b165', '冯建文0', '0', '3', '22@qq.com', '1502692147', 'admin', '1', '0', '', '1', '__STATIC__\\upload\\images\\headimg\\20170817\\bbd7591dc7666b871ce0cafae0f2e2ca.jpg');
INSERT INTO `keep_admin_member` VALUES ('3', 'admin2', 'YW9tk2ljYmk=', 'b165', '冯建文', '1', '3', '33@qq.com', '1502692147', 'admin', '0', '0', '', '1', '');
INSERT INTO `keep_admin_member` VALUES ('4', 'admin3', 'YW9tk2ljYmk=', 'b165', '李敏', '3', '2', '2222@qq.com', '1502871785', 'admin', '0', '0', '', '1', null);
INSERT INTO `keep_admin_member` VALUES ('5', 'admin4', 'YW9tk2ljYmk=', 'b165', '王五', '1', '2', '222@qq.com', '1502871810', 'admin', '0', '0', '', '2', null);

-- ----------------------------
-- Table structure for keep_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `keep_admin_menu`;
CREATE TABLE `keep_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) DEFAULT NULL COMMENT '标识',
  `title` varchar(20) NOT NULL COMMENT '标识',
  `pid` int(10) unsigned DEFAULT NULL,
  `id_list` text,
  `sort` int(4) unsigned NOT NULL COMMENT '级别',
  `deep` int(4) unsigned NOT NULL COMMENT '等级，从1开始',
  `level` int(4) unsigned DEFAULT '99' COMMENT '级别',
  `url` varchar(32) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `isnode` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是不是一个父节点',
  `status` int(1) unsigned NOT NULL COMMENT '状态',
  `remark` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of keep_admin_menu
-- ----------------------------
INSERT INTO `keep_admin_menu` VALUES ('24', 'NAV_ADMIN_MENU', '菜单管理', '5', '2,5,24', '5', '3', '99', '/admin/menu/index/navid/24', 'glyphicon-list', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('36', 'MALL_NAV_SHIPPING_CO', '物流公司', '35', '26,35,36', '1', '3', '99', null, 'glyphicon-road', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('14', 'NAV_WELCOME_ANNOUNCE', '系统公告', '4', '1,4,14', '1', '3', '99', '', null, '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('1', 'CMS_WELCOME', '欢迎登录', '0', '1', '1', '1', '99', null, 'glyphicon-home', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('23', 'NAV_WX_CONFIG', '配置信息', '20', '3,20,23', '3', '3', '0', '/admin/wechat/config/navid/23', 'glyphicon-cog', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('8', 'NAV_ADMIN_MANAGE', '用户列表', '7', '2,7,8', '1', '3', '0', '/admin/member/index/navid/8', 'glyphicon-user', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('37', 'MALL_NAV_SHIPPING_WA', '配送方式', '35', '26,35,37', '2', '3', '99', null, 'glyphicon-road', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('2', 'CMS_SYSTEM', '系统设置', '0', '2', '2', '1', '0', null, 'glyphicon-cog', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('9', 'NAV_ADMIN_INFO', '我的信息', '7', '2,7,9', '2', '3', '99', '/admin/member/edit/navid/9', 'glyphicon-user', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('6', 'NAV_SYSTEM_SET', '基本配置', '5', '2,5,6', '1', '3', '0', '/admin/system/index/navid/6', 'glyphicon-cog', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('21', 'NAV_WX_MENU', '自定义菜单', '20', '3,20,21', '1', '3', '0', '/admin/wechat/menu/navid/21', 'glyphicon-link', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('15', 'WEB_SET', '前台设置', '0', '15', '8', '1', '0', '', 'glyphicon-globe', '1', '0', null);
INSERT INTO `keep_admin_menu` VALUES ('16', 'NAV_WEB_SEO', 'SEO设置', '5', '2,5,16', '98', '3', '0', '/admin/seo/index/navid/16', 'glyphicon-tags', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('26', 'MALL_GOODS', '商品管理', '0', '26', '4', '1', '99', null, 'glyphicon-th', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('13', 'NAV_ADMIN_LEVEL', '级别管理', '11', '2,11,13', '2', '3', '0', '/admin/level/index/navid/13', 'glyphicon-user', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('17', 'WEB_EXT_SET', '基本设置', '15', '2,15,17', '1', '2', '0', '', '', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('10', 'NAV_ADMIN_PWD', '修改密码', '7', '2,7,10', '3', '3', '99', '/admin/member/passcode/navid/10', 'glyphicon-lock', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('12', 'NAV_ADMIN_BRANCH', '部门管理', '11', '2,11,12', '1', '3', '0', '/admin/branch/index/navid/12', 'glyphicon-user', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('27', 'MALL_ORDER', '订单管理', '0', '27', '5', '1', '99', null, 'glyphicon-list-alt', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('4', 'NODE_WELCOME_ANNOUNC', '系统公告', '1', '1,4', '99', '2', '99', null, null, '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('34', 'MALL_NAV_BRAND', '品牌管理', '31', '26,31,34', '4', '3', '99', '/admin/brand/index/navid/34', 'glyphicon-bold', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('20', 'NODE_WX_SET', '微信设置', '3', '3,20', '1', '2', '0', null, null, '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('18', 'WEB_SET_REGIST', '用户注册', '17', '2,17,18', '1', '3', '0', '/admin/web/regist/navid/18', 'glyphicon-thumbs-up', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('25', 'MALL_USER', '用户管理', '0', '25', '3', '1', '99', null, 'glyphicon-user', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('5', 'NODE_SYSTEM_SET', '系统设置', '2', '2,5', '1', '2', '0', null, null, '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('11', 'NODE_ADMIN_BELONG', '权限管理\r\n', '2', '2,11', '3', '2', '0', null, null, '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('28', 'MALL_STATISTIC', '数据统计', '0', '28', '6', '1', '99', null, 'glyphicon-stats', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('35', 'MALL_NODE_SHIPPING', '配送管理', '26', '26,35', '3', '2', '99', null, null, '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('30', 'MALL_NAV_GOODS', '商品列表', '29', '26,29,30', '1', '3', '99', '/admin/goods/index/navid/30', 'glyphicon-th', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('31', 'MALL_NODE_CONFIG', '商品配置', '26', '26,31', '2', '2', '99', null, null, '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('22', 'NAV_WX_CUSTOM', '微信客服', '20', '3,20,22', '2', '3', '0', '/admin/wechat/custom/navid/22', 'glyphicon-user', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('3', 'CMS_EXT', '扩展管理', '0', '3', '9', '1', '0', null, 'glyphicon-magnet', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('7', 'NODE_ADMIN_MANAGE', '后台用户', '2', '2,7', '2', '2', '99', null, null, '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('33', 'MALL_NAV_SPECIFIC', '规格管理', '31', '26,31,33', '3', '3', '99', '/admin/specific/index/navid/33', 'glyphicon-paperclip', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('29', 'MALL_NODE_GOODS', '商品管理', '26', '26,29', '1', '2', '99', null, null, '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('32', 'MALL_NAV_CATEGORY', '商品分类', '31', '26,31,32', '1', '3', '99', '/admin/category/index/navid/32', 'glyphicon-th-large', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('19', 'NAV_WEB_LINK', '友情链接', '5', '2,5,19', '99', '3', '0', '/admin/link/index/navid/19', 'glyphicon-link	', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('38', 'MALL_NAV_GOODS_ADD', '添加商品', '29', '26,29,38', '2', '3', '99', '/admin/goods/add/navid/30', 'glyphicon-th', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('39', 'MALL_NAV_CAT_ADD', '添加分类', '31', '26,31,39', '2', '3', '99', '/admin/category/add/navid/32', 'glyphicon-paperclip', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('40', 'NAV_ADMIN_MALL', '商城配置', '5', '2,5,40', '2', '3', '0', '/admin/mall/index/navid/40', 'glyphicon-cog', '0', '1', null);

-- ----------------------------
-- Table structure for keep_admin_node
-- ----------------------------
DROP TABLE IF EXISTS `keep_admin_node`;
CREATE TABLE `keep_admin_node` (
  `menu_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '编号',
  `branch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '编号',
  `level_id` int(10) NOT NULL DEFAULT '0' COMMENT '标识',
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '标识'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of keep_admin_node
-- ----------------------------

-- ----------------------------
-- Table structure for keep_mall_brand
-- ----------------------------
DROP TABLE IF EXISTS `keep_mall_brand`;
CREATE TABLE `keep_mall_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `catid` int(10) NOT NULL,
  `description` text,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_mall_brand
-- ----------------------------
INSERT INTO `keep_mall_brand` VALUES ('1', null, '苹果', null, '2', '苹果手机', '1', '苹果手机');
INSERT INTO `keep_mall_brand` VALUES ('2', null, '鸭梨手机', null, '6', '鸭梨手机', '2', '鸭梨手机');

-- ----------------------------
-- Table structure for keep_mall_category
-- ----------------------------
DROP TABLE IF EXISTS `keep_mall_category`;
CREATE TABLE `keep_mall_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `title` varchar(64) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `id_list` text NOT NULL,
  `level` int(10) unsigned NOT NULL DEFAULT '1',
  `sort` int(4) unsigned NOT NULL DEFAULT '1',
  `isnode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `description` text,
  `img` varchar(255) DEFAULT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `adduser` varchar(64) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_mall_category
-- ----------------------------
INSERT INTO `keep_mall_category` VALUES ('1', null, '本期直推', '0', '1', '1', '1', '0', '1', '本期直推，每期只推N件产品', null, '1503557053', 'admin', '本期直推，每期只推N件产品');
INSERT INTO `keep_mall_category` VALUES ('2', null, '数码直推', '5', '5,2', '2', '1', '2', '1', '本期直推，数码直推', null, '1503558118', 'admin', '本期直推，数码直推');
INSERT INTO `keep_mall_category` VALUES ('3', null, '爆款洗护', '5', '5,3', '2', '2', '1', '1', '洗护直推', null, '1503558136', 'admin', '洗护直推');
INSERT INTO `keep_mall_category` VALUES ('4', null, '黄吕洗发', '3', '5,3,4', '3', '1', '0', '1', '拉芳洗发', null, '1503558154', 'admin', '拉芳洗发');
INSERT INTO `keep_mall_category` VALUES ('5', null, '爆款强推', '0', '5', '1', '2', '2', '1', '爆款强推', null, '1503558187', 'admin', '爆款强推');
INSERT INTO `keep_mall_category` VALUES ('6', null, '鸭梨手机', '2', '5,2,6', '3', '1', '0', '1', '鸭梨手机', null, '1503564061', 'admin', '鸭梨手机');
INSERT INTO `keep_mall_category` VALUES ('7', null, '苹果手机', '2', '5,2,7', '3', '2', '1', '2', '苹果手机', null, '1503564092', 'admin', '苹果手机');
INSERT INTO `keep_mall_category` VALUES ('8', null, 'iphone 999', '7', '5,2,7,8', '4', '1', '0', '2', 'iphone 999', null, '1503564191', 'admin', 'iphone 999');

-- ----------------------------
-- Table structure for keep_mall_config
-- ----------------------------
DROP TABLE IF EXISTS `keep_mall_config`;
CREATE TABLE `keep_mall_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `value` varchar(128) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_mall_config
-- ----------------------------
INSERT INTO `keep_mall_config` VALUES ('1', 'index_template', '首页模板', 'index', '1', '首页模板');

-- ----------------------------
-- Table structure for keep_mall_service
-- ----------------------------
DROP TABLE IF EXISTS `keep_mall_service`;
CREATE TABLE `keep_mall_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_mall_service
-- ----------------------------

-- ----------------------------
-- Table structure for keep_mall_specific
-- ----------------------------
DROP TABLE IF EXISTS `keep_mall_specific`;
CREATE TABLE `keep_mall_specific` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_mall_specific
-- ----------------------------

-- ----------------------------
-- Table structure for keep_web_config
-- ----------------------------
DROP TABLE IF EXISTS `keep_web_config`;
CREATE TABLE `keep_web_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '加载项名称',
  `title` varchar(64) NOT NULL,
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT '加载项值',
  `status` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否加载 默认1加载',
  `space` int(2) unsigned NOT NULL DEFAULT '0' COMMENT '作用域 0全局，1后台，2PC, 3 移动',
  `must` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of keep_web_config
-- ----------------------------
INSERT INTO `keep_web_config` VALUES ('1', 'web_name', '网站全称', 'Keep官方网站', '1', '0', '1', '1', '网站全名');
INSERT INTO `keep_web_config` VALUES ('2', 'web_url', '网站域名', 'http://keep.io', '1', '0', '0', '1', '网站域名，可不填写');
INSERT INTO `keep_web_config` VALUES ('3', 'admin_title', '后台名称', 'KEEP后台管理系统', '1', '0', '1', '1', null);
INSERT INTO `keep_web_config` VALUES ('4', 'doc_root', '站点根目录', 'H:\\PHP_Develop\\WWW\\sixer\\', '1', '0', '0', '0', '站点根目录，不可修改，自动获取');

-- ----------------------------
-- Table structure for keep_web_icon//暂时没啥用
-- ----------------------------
DROP TABLE IF EXISTS `keep_web_icon//暂时没啥用`;
CREATE TABLE `keep_web_icon//暂时没啥用` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `value` varchar(64) NOT NULL,
  `tvalue` varchar(64) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `remark` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of keep_web_icon//暂时没啥用
-- ----------------------------
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('1', '主页', 'glyphicon-home', 'glyphicon glyphicon-home', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('2', '设置', 'glyphicon-cog', 'glyphicon glyphicon-cog', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('3', '用户', 'glyphicon-user', 'glyphicon glyphicon-user', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('4', '删除', 'glyphicon-trash', 'glyphicon glyphicon-trash', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('5', '关闭/退出', 'glyphicon-off', 'glyphicon glyphicon-off', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('6', '锁/密码', 'glyphicon-lock', 'glyphicon glyphicon-lock', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('7', '云端', 'glyphicon-cloud', 'glyphicon glyphicon-cloud', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('8', '搜索', 'glyphicon-search', 'glyphicon glyphicon-search', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('9', '刷新', 'glyphicon-refresh', 'glyphicon glyphicon-refresh', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('10', '图片', 'glyphicon-picture', 'glyphicon glyphicon-picture', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('11', '分享', 'glyphicon-share-alt', 'glyphicon glyphicon-share-alt', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('12', '日历', 'glyphicon-calendar', 'glyphicon glyphicon-calendar', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('13', '扳手', 'glyphicon-wrench', 'glyphicon glyphicon-wrench', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('14', '磁铁', 'glyphicon-magnet', 'glyphicon glyphicon-magnet', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('15', '评论', 'glyphicon-comment', 'glyphicon glyphicon-comment', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('16', '全屏', 'glyphicon-resize-full', 'glyphicon glyphicon-resize-full', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('17', '窗口化', 'glyphicon-resize-small', 'glyphicon glyphicon-resize-small', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('18', '左尖角', 'glyphicon-chevron-left', 'glyphicon glyphicon-chevron-left', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('19', '右尖角', 'glyphicon-chevron-right', 'glyphicon glyphicon-chevron-right', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('20', '上尖角', 'glyphicon-chevron-up', 'glyphicon glyphicon-chevron-up', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('21', '下尖角', 'glyphicon-chevron-down', 'glyphicon glyphicon-chevron-down', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('22', '满星标', 'glyphicon-star', 'glyphicon glyphicon-star', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('23', '空星标', 'glyphicon-star-empty', 'glyphicon glyphicon-star-empty', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('24', '对号', 'glyphicon-ok', 'glyphicon glyphicon-ok', '1', '');
INSERT INTO `keep_web_icon//暂时没啥用` VALUES ('25', '错号', 'glyphicon-remove', 'glyphicon glyphicon-remove', '1', '');

-- ----------------------------
-- Table structure for keep_wechat_config
-- ----------------------------
DROP TABLE IF EXISTS `keep_wechat_config`;
CREATE TABLE `keep_wechat_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '标识',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `value` text,
  `exprire` varchar(16) DEFAULT NULL,
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of keep_wechat_config
-- ----------------------------
INSERT INTO `keep_wechat_config` VALUES ('1', 'ACCESS_TOKEN', '微信ACCESS_TOKEN', '{\"access_token\":\"adMecI7xJfyyrfS_leI0FjQlvv1dxYGOZrcpC4znmPLV1c1Dhj-R_e7bMBDtKBFx-7u1T51ZotTRDF4cJ8DhwleOq_XC8M2YzVbrs5qFgzgUOSfAHAICG\",\"stop_time\":1497251800}', null, '');
