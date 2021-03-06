/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : photo

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2015-09-02 17:13:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ur7_ad_list`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_ad_list`;
CREATE TABLE `ur7_ad_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `href` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_ad_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ur7_ad_type`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_ad_type`;
CREATE TABLE `ur7_ad_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_ad_type
-- ----------------------------
INSERT INTO `ur7_ad_type` VALUES ('10', '右下方广告4');

-- ----------------------------
-- Table structure for `ur7_admin`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_admin`;
CREATE TABLE `ur7_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `group` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_admin
-- ----------------------------
INSERT INTO `ur7_admin` VALUES ('1', 'admin', 'b160b3469d42967abe6619d443f5d1fa', '12');
INSERT INTO `ur7_admin` VALUES ('4', '1234', 'c23adebf8b2e0dc67b87a41347277f0a', '12');

-- ----------------------------
-- Table structure for `ur7_admin_auth_action`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_admin_auth_action`;
CREATE TABLE `ur7_admin_auth_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `app` varchar(50) NOT NULL DEFAULT 'admin.php',
  `gid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `isshow` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_admin_auth_action
-- ----------------------------
INSERT INTO `ur7_admin_auth_action` VALUES ('1', '文章列表', 'admin.php', '2', '1', 'Content', 'Content', 'index', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('4', '推荐位列表', 'admin.php', '2', '3', 'Content', 'Position', 'positionlist', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('5', '添加推荐位', 'admin.php', '2', '3', 'Content', 'Position', 'add', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('9', '添加栏目', 'admin.php', '2', '5', 'Content', 'Category', 'add', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('11', '编辑推荐位', 'admin.php', '2', '3', 'Content', 'Position', 'edit', '0');
INSERT INTO `ur7_admin_auth_action` VALUES ('12', '删除推荐位', 'admin.php', '2', '3', 'Content', 'Position', 'del', '0');
INSERT INTO `ur7_admin_auth_action` VALUES ('13', '添加文章', 'admin.php', '2', '1', 'Content', 'Content', 'add', '0');
INSERT INTO `ur7_admin_auth_action` VALUES ('14', '管理员列表', 'admin.php', '4', '6', 'Auth', 'Admin', 'Index', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('15', '栏目管理', 'admin.php', '2', '5', 'Content', 'Category', 'index', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('16', '友情链接管理', 'admin.php', '5', '7', 'Modules', 'Link', 'index', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('17', '添加友情链接', 'admin.php', '5', '7', 'Modules', 'Link', 'add', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('19', '更新全站缓存', 'admin.php', '3', '9', 'System', 'Cache', 'clearall', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('20', '留言列表', 'admin.php', '5', '8', 'Modules', 'Guestbook', 'index', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('21', '分类管理', 'admin.php', '5', '10', 'Modules', 'Ad', 'typelist', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('22', '广告管理', 'admin.php', '5', '10', 'Modules', 'Ad', 'adlist', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('23', '模型列表', 'admin.php', '2', '14', 'Content', 'Model', 'index', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('25', '插件列表', 'admin.php', '6', '12', 'Plugin', 'Plugin', 'pluginlist', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('26', '添加分组', 'admin.php', '4', '13', 'Auth', 'Permissions', 'addgroup', '0');
INSERT INTO `ur7_admin_auth_action` VALUES ('27', '添加模块', 'admin.php', '4', '13', 'Auth', 'Permissions', 'addmodule', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('28', '添加权限', 'admin.php', '4', '13', 'Auth', 'Permissions', 'addaction', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('30', '权限列表', 'admin.php', '4', '13', 'Auth', 'Permissions', 'actions', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('31', '角色管理', 'admin.php', '4', '6', 'Auth', 'Admin', 'rolelist', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('32', '添加角色', 'admin.php', '4', '6', 'Auth', 'Admin', 'addrole', '0');
INSERT INTO `ur7_admin_auth_action` VALUES ('33', '添加模型', 'admin.php', '2', '14', 'Content', 'Model', 'addmodel', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('34', '字段管理', 'admin.php', '2', '14', 'Content', 'Model', 'fields', '0');
INSERT INTO `ur7_admin_auth_action` VALUES ('35', '修改权限', 'admin.php', '4', '13', 'Auth', 'Permissions', 'editaction', '0');
INSERT INTO `ur7_admin_auth_action` VALUES ('36', '分组管理', 'admin.php', '4', '13', 'Auth', 'Permissions', 'grouplist', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('38', '添加字段', 'admin.php', '2', '14', 'Content', 'Model', 'addfield', '0');
INSERT INTO `ur7_admin_auth_action` VALUES ('39', '添加管理员', 'admin.php', '4', '6', 'Auth', 'Admin', 'addadmin', '0');
INSERT INTO `ur7_admin_auth_action` VALUES ('40', '添加分类', 'admin.php', '5', '10', 'Component', 'Ad', 'addtype', '0');
INSERT INTO `ur7_admin_auth_action` VALUES ('41', '模块管理', 'admin.php', '4', '13', 'Auth', 'Permissions', 'modulelist', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('60', '基本设置', 'admin.php', '3', '23', 'System', 'Webset', 'index', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('63', '采集列表', '2', '5', '25', 'Collection', 'Admin', 'index', '1');
INSERT INTO `ur7_admin_auth_action` VALUES ('64', '添加采集', '2', '5', '25', 'Collection', 'Admin', 'add', '1');

-- ----------------------------
-- Table structure for `ur7_admin_auth_controller`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_admin_auth_controller`;
CREATE TABLE `ur7_admin_auth_controller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `gid` int(11) NOT NULL,
  `cls` varchar(50) DEFAULT 'icon-align-justify',
  `app` varchar(50) DEFAULT NULL,
  `appname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_admin_auth_controller
-- ----------------------------
INSERT INTO `ur7_admin_auth_controller` VALUES ('1', '内容管理', 'Content', '2', 'icon-pencil', null, null);
INSERT INTO `ur7_admin_auth_controller` VALUES ('3', '推荐位管理', 'Position', '2', 'icon-tag', null, null);
INSERT INTO `ur7_admin_auth_controller` VALUES ('5', '栏目管理', 'Category', '2', 'icon-align-justify', null, null);
INSERT INTO `ur7_admin_auth_controller` VALUES ('6', '管理员管理', 'Admin', '4', 'icon-user', null, null);
INSERT INTO `ur7_admin_auth_controller` VALUES ('7', '友情链接', 'Link', '5', 'icon-link', null, null);
INSERT INTO `ur7_admin_auth_controller` VALUES ('8', '留言板', 'Gustbook', '5', 'icon-comment', null, null);
INSERT INTO `ur7_admin_auth_controller` VALUES ('9', '缓存管理', 'Cache', '3', 'icon-trash', null, null);
INSERT INTO `ur7_admin_auth_controller` VALUES ('10', '广告管理', 'Ad', '5', 'icon-bullhorn', null, null);
INSERT INTO `ur7_admin_auth_controller` VALUES ('12', '插件管理', 'Plugin', '6', 'icon-resize-full', null, null);
INSERT INTO `ur7_admin_auth_controller` VALUES ('13', '权限管理', 'Permissions', '4', 'icon-eye-close', null, null);
INSERT INTO `ur7_admin_auth_controller` VALUES ('14', '模型管理', 'Model', '2', 'icon-hdd', null, null);
INSERT INTO `ur7_admin_auth_controller` VALUES ('23', '站点设置', 'Webset', '3', 'icon-align-justify', null, null);
INSERT INTO `ur7_admin_auth_controller` VALUES ('25', '采集模块', 'Admin', '5', 'icon-resize-full', '2', 'Collection');

-- ----------------------------
-- Table structure for `ur7_admin_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_admin_auth_group`;
CREATE TABLE `ur7_admin_auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `app` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_admin_auth_group
-- ----------------------------
INSERT INTO `ur7_admin_auth_group` VALUES ('2', '内容管理', 'Content', '0', '');
INSERT INTO `ur7_admin_auth_group` VALUES ('3', '系统管理', 'System', '2', '');
INSERT INTO `ur7_admin_auth_group` VALUES ('4', '权限分配', 'Auth', '1', '');
INSERT INTO `ur7_admin_auth_group` VALUES ('5', '模块组件', 'Component', '3', '');
INSERT INTO `ur7_admin_auth_group` VALUES ('6', '插件钩子', 'Plugin', '4', '');

-- ----------------------------
-- Table structure for `ur7_admin_group`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_admin_group`;
CREATE TABLE `ur7_admin_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_admin_group
-- ----------------------------
INSERT INTO `ur7_admin_group` VALUES ('11', '文章编辑员', '0');
INSERT INTO `ur7_admin_group` VALUES ('12', '超级管理员', '0');

-- ----------------------------
-- Table structure for `ur7_admin_language`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_admin_language`;
CREATE TABLE `ur7_admin_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `lang` varchar(20) NOT NULL,
  `default` int(11) NOT NULL DEFAULT '0',
  `tmpl` varchar(50) NOT NULL,
  `seotitle` varchar(100) DEFAULT NULL,
  `seokeyword` varchar(200) DEFAULT NULL,
  `seodesc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_admin_language
-- ----------------------------
INSERT INTO `ur7_admin_language` VALUES ('1', '中文', 'zh-cn', '1', '', null, null, null);

-- ----------------------------
-- Table structure for `ur7_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_admin_role`;
CREATE TABLE `ur7_admin_role` (
  `gid` int(11) NOT NULL,
  `aid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_admin_role
-- ----------------------------
INSERT INTO `ur7_admin_role` VALUES ('11', '1');
INSERT INTO `ur7_admin_role` VALUES ('11', '13');
INSERT INTO `ur7_admin_role` VALUES ('12', '1');
INSERT INTO `ur7_admin_role` VALUES ('12', '13');
INSERT INTO `ur7_admin_role` VALUES ('12', '4');
INSERT INTO `ur7_admin_role` VALUES ('12', '5');
INSERT INTO `ur7_admin_role` VALUES ('12', '11');
INSERT INTO `ur7_admin_role` VALUES ('12', '12');
INSERT INTO `ur7_admin_role` VALUES ('12', '9');
INSERT INTO `ur7_admin_role` VALUES ('12', '15');
INSERT INTO `ur7_admin_role` VALUES ('12', '23');
INSERT INTO `ur7_admin_role` VALUES ('12', '14');
INSERT INTO `ur7_admin_role` VALUES ('12', '24');
INSERT INTO `ur7_admin_role` VALUES ('12', '31');
INSERT INTO `ur7_admin_role` VALUES ('12', '32');
INSERT INTO `ur7_admin_role` VALUES ('12', '26');
INSERT INTO `ur7_admin_role` VALUES ('12', '27');
INSERT INTO `ur7_admin_role` VALUES ('12', '28');
INSERT INTO `ur7_admin_role` VALUES ('12', '30');
INSERT INTO `ur7_admin_role` VALUES ('12', '2');
INSERT INTO `ur7_admin_role` VALUES ('12', '3');
INSERT INTO `ur7_admin_role` VALUES ('12', '7');
INSERT INTO `ur7_admin_role` VALUES ('12', '8');
INSERT INTO `ur7_admin_role` VALUES ('12', '19');
INSERT INTO `ur7_admin_role` VALUES ('12', '16');
INSERT INTO `ur7_admin_role` VALUES ('12', '17');
INSERT INTO `ur7_admin_role` VALUES ('12', '20');
INSERT INTO `ur7_admin_role` VALUES ('12', '21');
INSERT INTO `ur7_admin_role` VALUES ('12', '22');
INSERT INTO `ur7_admin_role` VALUES ('12', '25');

-- ----------------------------
-- Table structure for `ur7_article`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_article`;
CREATE TABLE `ur7_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_article
-- ----------------------------
INSERT INTO `ur7_article` VALUES ('5', '6', 'DreamCMS服务器环境要求', 'DreamCMS,DreamCMS服务器环境', 'DreamCMS服务器环境要求', null, null);
INSERT INTO `ur7_article` VALUES ('6', '6', '模型-视图-控制器 (MVC)', '模型,视图,控制器 ,MVC', '什么是MVC', null, null);
INSERT INTO `ur7_article` VALUES ('7', '7', '文件目录结构', 'DreamCMS程序目录结构', 'DreamCMS文件目录介绍', null, null);
INSERT INTO `ur7_article` VALUES ('8', '7', '命名规范', 'DreamCMS,命名规范', 'DreamCMS命名规范', null, null);
INSERT INTO `ur7_article` VALUES ('9', '8', '路由配置', '路由配置', '路由配置', null, null);
INSERT INTO `ur7_article` VALUES ('10', '8', '数据库配置', '数据库配置', '数据库配置', null, null);
INSERT INTO `ur7_article` VALUES ('12', '7', 'test1', 'test', 'test', 'Uploads/Content/2015-04-16/DreamCMS_19j0ku21nllgbgm2r4124b7nn4_100_100.jpg', '1,2,4');

-- ----------------------------
-- Table structure for `ur7_article_data`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_article_data`;
CREATE TABLE `ur7_article_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_article_data
-- ----------------------------
INSERT INTO `ur7_article_data` VALUES ('5', '5', '<p>\r\n	PHP 版本 5.2 或更新的版本。</p><p>\r\n	MySQL版本推荐5.0或者更新版本。</p><p><br /></p>');
INSERT INTO `ur7_article_data` VALUES ('6', '6', '<p>MVC是一个设计模式，它强制性的使应用程序的输入、处理和输出分开。使用MVC应用程序被分成三个核心部件：模型（M）、视图（V）、控制器（C），它们各自处理自己的任务。<br /> <br />视图 ：<br />　　视图是用户看到并与之交互的界面。对老式的Web应用程序来说，视图就是由HTML元素组成的界面，在新式的Web应用程序中，HTML依旧在视图中扮演着重要的角色，但一些新的技术已层出不穷，它们包括Adobe Flash和象XHTML，XML/XSL，WML等一些标识语言和Web services。如何处理应用程序的界面变得越来越有挑战性。MVC一个大的好处是它能为你的应用程序处理很多不同的视图。在视图中其实没有真正的处理发生，不管这些数据是联机存储的还是一个雇员列表，作为视图来讲，它只是作为一种输出数据并允许用户操纵的方式。<br /> <br />模型 ：<br />　　模型表示企业数据和业务规则。在MVC的三个部件中，模型拥有最多的处理任务。例如它可能用象EJBs和ColdFusion Components这样的构件对象来处理数据库。被模型返回的数据是中立的，就是说模型与数据格式无关，这样一个模型能为多个视图提供数据。由于应用于模型的代码只需写一次就可以被多个视图重用，所以减少了代码的重复性。<br /> <br />控制器 ：<br />　　控制器接受用户的输入并调用模型和视图去完成用户的需求。所以当单击Web页面中的超链接和发送HTML表单时，控制器本身不输出任何东西和做任何处理。它只是接收请求并决定调用哪个模型构件去处理请求，然后确定用哪个视图来显示模型处理返回的数据。<br /> <br />　　现在我们总结MVC的处理过程，首先控制器接收用户的请求，并决定应该调用哪个模型来进行处理，然后模型用业务逻辑来处理用户的请求并返回数据，最后控制器用相应的视图格式化模型返回的数据，并通过表示层呈现给用户。</p>');
INSERT INTO `ur7_article_data` VALUES ('7', '7', '<p>\r\n	<strong>根目录</strong></p><p>\r\n	</p><p>\r\n		<strong>|  –  api  接口文件目录</strong></p><p>\r\n	</p><p>\r\n		<strong>|  –  caches 缓存文件目录</strong></p><p>\r\n	</p><p>\r\n		       |  – configs 系统配置文件目录</p><p>\r\n	</p><p>\r\n		       |  – caches_* 系统缓存目录</p><p>\r\n	</p><p>\r\n		<strong>|  –  phpcms  phpcms框架主目录</strong></p><p>\r\n	</p><p>\r\n		       |  – languages 框架语言包目录</p><p>\r\n	</p><p>\r\n		       |  – libs 框架主类库、主函数库目录</p><p>\r\n	</p><p>\r\n		       |  – model 框架数据库模型目录</p><p>\r\n	</p><p>\r\n		       |  – modules 框架模块目录</p><p>\r\n	</p><p>\r\n		       |  – templates 框架系统模板目录</p><p>\r\n	</p><p>\r\n		<strong>|  –  phpsso_server  phpsso主目录</strong></p><p>\r\n	</p><p>\r\n		<strong>|  –  statics  系统附件包</strong></p><p>\r\n	</p><p>\r\n		       |  – css 系统css包</p><p>\r\n	</p><p>\r\n		       |  – images 系统图片包</p><p>\r\n	</p><p>\r\n		       |  – js 系统js包</p><p>\r\n	</p><p>\r\n		<strong>|  –  uploadfile  网站附件目录</strong></p><p>\r\n	</p><p>\r\n		|  –  admin.php  后台管理入口</p><p>\r\n	</p><p>\r\n		|  –  index.php  程序主入口</p><p>\r\n	</p><p>\r\n		|  –  crossdomain.xml  FLASH跨域传输文件</p><p>\r\n	</p><p>\r\n		|  –  robots.txt 搜索引擎蜘蛛限制配置文件</p><p>\r\n	</p><p>\r\n		|  –  favicon.ico  系统icon图标</p><p><br /></p>');
INSERT INTO `ur7_article_data` VALUES ('8', '8', '<p><span class=\"pln\"></span><span class=\"pun\">类文件需要以.</span><span class=\"kwd\">class</span><span class=\"pun\">.</span><span class=\"pln\">php</span><span class=\"pun\">为后缀（这里是指的</span><span class=\"pln\">phpcms</span><span class=\"pun\">的系统类库文件和模块中的类库文件，第三方引入的不做要求），例如</span><span class=\"pln\">http</span><span class=\"pun\">.</span><span class=\"kwd\">class</span><span class=\"pun\">.</span><span class=\"pln\">php</span><span class=\"pun\">。</span><span class=\"pln\"> </span></p><p><span class=\"pun\">函数文件需要以.</span><span class=\"pln\">func</span><span class=\"pun\">.</span><span class=\"pln\">php</span><span class=\"pun\">为后缀（第三方引入的不做要求），例如</span><span class=\"pln\">mail</span><span class=\"pun\">.</span><span class=\"pln\">func</span><span class=\"pun\">.</span><span class=\"pln\">php</span><span class=\"pun\">。</span></p><p><span class=\"pln\"> </span></p><p><span class=\"pun\">类名和文件名一致，例如</span><span class=\"pln\"> phpcmsapp</span><span class=\"pun\">类的文件命名是</span><span class=\"pln\">phpcmsapp</span><span class=\"pun\">.</span><span class=\"kwd\">class</span><span class=\"pun\">.</span><span class=\"pln\">php</span><span class=\"pun\">。</span></p><p><span class=\"pln\"> </span></p><p><span class=\"pun\">数据模型需要以“数据表名称</span><span class=\"pln\">_model</span><span class=\"pun\">.</span><span class=\"kwd\">class</span><span class=\"pun\">.</span><span class=\"pln\">php</span><span class=\"pun\">”为形式，类名称与文件名必须相同。</span></p><p><br /></p>');
INSERT INTO `ur7_article_data` VALUES ('9', '9', '<p>路由配置</p>');
INSERT INTO `ur7_article_data` VALUES ('10', '10', '<p>数据库配置</p>');
INSERT INTO `ur7_article_data` VALUES ('12', '12', '<p>test<br /></p>');

-- ----------------------------
-- Table structure for `ur7_category`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_category`;
CREATE TABLE `ur7_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `listtmpl` varchar(50) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `link` varchar(255) DEFAULT NULL COMMENT '连接地址',
  `sort` int(11) NOT NULL DEFAULT '0',
  `isleaf` int(11) NOT NULL DEFAULT '1',
  `catetmpl` varchar(50) NOT NULL,
  `newstmpl` varchar(50) NOT NULL,
  `pagetmpl` varchar(50) NOT NULL,
  `menushow` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_category
-- ----------------------------
INSERT INTO `ur7_category` VALUES ('1', '程序下载', 'DreamCMS下载, php多语言版CMS下载 ', 'DreamCMS下载, php多语言版CMS下载 ', '0', '-1', null, '0', 'http://', '0', '1', '', '', 'page', '1');
INSERT INTO `ur7_category` VALUES ('2', '二次开发', 'DreamCMS二次开发教程, php多语言版二次开发教程', 'DreamCMS二次开发教程, php多语言版二次开发教程', '0', '30', 'list', '0', 'http://', '1', '0', 'category', '', 'page', '1');
INSERT INTO `ur7_category` VALUES ('3', '模板开发', 'DreamCMS模板开发教程, php多语言版模板开发教程', 'DreamCMS模板开发教程, php多语言版模板开发教程', '0', '30', 'list', '0', 'http://', '2', '1', '', '', 'page', '1');
INSERT INTO `ur7_category` VALUES ('4', '帮助中心', 'DreamCMS帮助中心,DreamCMS帮助手册, php多语言版模板帮助手册', 'DreamCMS帮助中心,DreamCMS帮助手册, php多语言版模板帮助手册', '0', '30', 'list', '0', 'http://', '3', '1', '', '', 'page', '1');
INSERT INTO `ur7_category` VALUES ('5', '论坛', '', '', '0', '30', 'list', '1', 'bbs/', '4', '1', '', '', 'page', '1');
INSERT INTO `ur7_category` VALUES ('6', '入门基础', '', '', '2', '30', 'list', '0', 'http://', '0', '1', '', '', 'page', '1');
INSERT INTO `ur7_category` VALUES ('7', '结构设计', '', '', '2', '30', 'list', '0', 'http://', '0', '1', '', '', 'page', '1');
INSERT INTO `ur7_category` VALUES ('8', '相关配置', '', '', '2', '30', 'list', '0', 'http://', '0', '1', '', '', 'page', '1');
INSERT INTO `ur7_category` VALUES ('9', '钩子插件', '', '', '2', '30', 'list', '0', 'http://', '0', '1', '', '', 'page', '1');
INSERT INTO `ur7_category` VALUES ('10', '关于我们', '', '', '0', '-1', 'list', '0', 'http://', '10', '1', 'category', '', 'page', '0');
INSERT INTO `ur7_category` VALUES ('11', '版权申明', '', '', '0', '-1', 'list', '0', 'http://', '11', '1', 'category', '', 'page', '0');
INSERT INTO `ur7_category` VALUES ('12', '商务合作', '', '', '0', '-1', 'list', '0', 'http://', '12', '1', 'category', 'news', 'page', '0');
INSERT INTO `ur7_category` VALUES ('13', '客照', '', '', '0', '31', 'list', '0', 'http://', '0', '1', 'category', 'news', 'page', '1');

-- ----------------------------
-- Table structure for `ur7_friend_link`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_friend_link`;
CREATE TABLE `ur7_friend_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '友情链接名称',
  `url` varchar(200) DEFAULT NULL COMMENT '友情连接地址',
  `image_url` varchar(200) DEFAULT NULL COMMENT '友情连接图片地址',
  `show_order` varchar(255) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_friend_link
-- ----------------------------
INSERT INTO `ur7_friend_link` VALUES ('2', '百度1', 'http://www.baidu.com', 'Uploads/link/2015-01-22/54c0692ad5f45.png', null);

-- ----------------------------
-- Table structure for `ur7_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_guestbook`;
CREATE TABLE `ur7_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `telephone` varchar(20) NOT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `msn` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `ur7_hook`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_hook`;
CREATE TABLE `ur7_hook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hookname` varchar(50) NOT NULL,
  `hookvalue` varchar(100) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0 视图钩子 1业务钩子',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_hook
-- ----------------------------
INSERT INTO `ur7_hook` VALUES ('1', '前台文章结尾', 'ARTICLE_AFTER', '0');

-- ----------------------------
-- Table structure for `ur7_hook_list`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_hook_list`;
CREATE TABLE `ur7_hook_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `pid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `path` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `js` varchar(200) DEFAULT NULL,
  `css` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `usejs` varchar(200) DEFAULT NULL,
  `usecss` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_hook_list
-- ----------------------------
INSERT INTO `ur7_hook_list` VALUES ('12', '多图片上传', '26', '0', 'WebUpload/Hook/Vhook', 'multiimgupload', '1', '1', 'jquery.min.js,webuploader.min.js,upload.js', 'webuploader.css,style.css', 'jquery.min.js,webuploader.min.js,upload.js', 'webuploader.css,style.css');
INSERT INTO `ur7_hook_list` VALUES ('13', '多文件上传', '26', '0', 'WebUpload/Hook/Vhook', 'multifileupload', '1', '1', 'jquery.min.js,webuploader.min.js,filesupload.js', 'webuploader.css,style.css,bootstrap.min.css', 'jquery.min.js,webuploader.min.js,filesupload.js', 'webuploader.css,style.css,bootstrap.min.css');
INSERT INTO `ur7_hook_list` VALUES ('14', '多缩略图上传', '26', '0', 'WebUpload/Hook/Vhook', 'thumbupload', '1', '1', 'jquery.min.js,webuploader.min.js,webuploader.min.js', 'webuploader.css,style.css', 'jquery.min.js,webuploader.min.js,webuploader.min.js', 'webuploader.css,style.css');
INSERT INTO `ur7_hook_list` VALUES ('15', '百度编辑器', '27', '0', 'Ueditor/Hook/Vhook', 'ueditor', '1', '1', 'ueditor.all.min.js,lang/zh-cn/zh-cn.js', '', 'ueditor.all.min.js,lang/zh-cn/zh-cn.js', null);

-- ----------------------------
-- Table structure for `ur7_language`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_language`;
CREATE TABLE `ur7_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `lang` varchar(20) NOT NULL,
  `default` int(11) NOT NULL DEFAULT '0',
  `tmpl` varchar(50) NOT NULL,
  `seotitle` varchar(100) DEFAULT NULL,
  `seokeyword` varchar(200) DEFAULT NULL,
  `seodesc` varchar(200) DEFAULT NULL,
  `langconf` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_language
-- ----------------------------
INSERT INTO `ur7_language` VALUES ('1', '中文', 'zh-cn', '1', 'BootStrap', '', '', '', 'CHINESE');
INSERT INTO `ur7_language` VALUES ('2', '英文', 'en-us', '0', 'Default', null, null, null, 'ENGLISH');

-- ----------------------------
-- Table structure for `ur7_model`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_model`;
CREATE TABLE `ur7_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `table` varchar(50) NOT NULL,
  `issys` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_model
-- ----------------------------
INSERT INTO `ur7_model` VALUES ('30', '文章', 'article', '0');
INSERT INTO `ur7_model` VALUES ('31', '图片', 'photo', '0');

-- ----------------------------
-- Table structure for `ur7_model_field`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_model_field`;
CREATE TABLE `ur7_model_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `fieldname` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `reg` varchar(200) NOT NULL,
  `fieldvalue` varchar(255) NOT NULL,
  `isnull` tinyint(1) NOT NULL DEFAULT '0',
  `tackattr` varchar(255) NOT NULL,
  `mid` int(11) NOT NULL,
  `plugin` varchar(100) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `issys` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_model_field
-- ----------------------------
INSERT INTO `ur7_model_field` VALUES ('91', '标题', 'title', 'text', '', '', '1', 'style=\"width:100%\"', '30', '', '0', '1');
INSERT INTO `ur7_model_field` VALUES ('92', '关键字', 'keyword', 'text', '', '', '0', 'style=\"width:100%\"', '30', '', '0', '1');
INSERT INTO `ur7_model_field` VALUES ('93', '描述', 'desc', 'textarea', '', '', '0', '', '30', '', '0', '1');
INSERT INTO `ur7_model_field` VALUES ('94', '栏目', 'cid', 'cate', '', '', '0', '', '30', '', '0', '1');
INSERT INTO `ur7_model_field` VALUES ('95', '缩略图', 'thumb', '', '', '', '0', '', '30', 'Webupload/Hook/Vhook/thumbupload', '0', '1');
INSERT INTO `ur7_model_field` VALUES ('96', '内容', 'content', 'editor', '', '', '0', '', '30', 'Ueditor/Hook/Vhook/ueditor', '0', '1');
INSERT INTO `ur7_model_field` VALUES ('97', '推荐位', 'position', 'position', '', '', '0', '', '30', '', '0', '1');
INSERT INTO `ur7_model_field` VALUES ('98', '标题', 'title', 'text', '', '', '1', 'style=\"width:100%\"', '31', '', '0', '1');
INSERT INTO `ur7_model_field` VALUES ('99', '关键字', 'keyword', 'text', '', '', '0', 'style=\"width:100%\"', '31', '', '1', '1');
INSERT INTO `ur7_model_field` VALUES ('100', '描述', 'desc', 'textarea', '', '', '0', '', '31', '', '2', '1');
INSERT INTO `ur7_model_field` VALUES ('101', '栏目', 'cid', 'cate', '', '', '0', '', '31', '', '3', '1');
INSERT INTO `ur7_model_field` VALUES ('102', '缩略图', 'thumb', '', '', '', '0', '', '31', 'Webupload/Hook/Vhook/thumbupload', '4', '1');
INSERT INTO `ur7_model_field` VALUES ('103', '内容', 'content', 'editor', '', '', '0', '', '31', 'Ueditor/Hook/Vhook/ueditor', '5', '1');
INSERT INTO `ur7_model_field` VALUES ('104', '推荐位', 'position', 'position', '', '', '0', '', '31', '', '7', '1');
INSERT INTO `ur7_model_field` VALUES ('112', '组图', 'photolist', 'text', '', '', '0', '', '31', 'WebUpload/Hook/Vhook/multiimgupload', '6', '0');

-- ----------------------------
-- Table structure for `ur7_page`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_page`;
CREATE TABLE `ur7_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `addtime` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `desc` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_page
-- ----------------------------
INSERT INTO `ur7_page` VALUES ('1', '10', '关于DreamCMS', '<p>DreamCMS网站内容管理系统是国内主流多语言CMS系统之一，曾多次被新浪、网易、电脑报等IT媒体报道。</p><p><br /></p><p>DreamCMS目前已有数万网站的应用规模，拥有政府、企业、科研教育和媒体等各个行业领域近千名商业用户。 公司以“为客户创造效益”为核心理念，致力为用户提供最优秀的网站建设和电子商务解决方案及相关咨询、培训和实施服务，帮助客户摆脱技术捆扰全心投入网站运营。公司视服务为企业生命，视客户为企业之本，以服务客户为企业宗旨，努力提升服务水平，以优秀服务为客户节约成本、创造价值，赢得了广大用户的信赖与支持。 在当今瞬机万变的市场环境中，快速高效的IT解决方案是您业务成功的关键。</p><p><br />我们DreamCMS因为能为您量身打造完全符合需求的解决方案而自豪，使用我们的系统，我们可以让您的企业更高效，从而在市场中获得更大的利润。</p><p><br />我们在CMS领域的长期成功经验，使得我们成为国内CMS领域的领跑者。我们能为您提供的服务包括：PHPCMS商业授权、程序定制、数据转换、视频存 储服务。携手PHPCMS，我们共同迈向您事业的新高点。</p>', '1421715973', '关于DreamCMS,DreamCMS介绍', '关于DreamCMS,DreamCMS介绍');
INSERT INTO `ur7_page` VALUES ('2', '11', '版权申明', '<h3 class=\"title-about\">	DreamCMS 全称为 DreamCMS网站管理系统</h3><pre class=\"lh26 f14\">PHPCMS网站管理系统的官方网站为 http://www.phpcms.cn，是 PHPCMS 产品的开发商，依法独立拥有 PHPCMS 产品著作权。\r\nPHPCMS 著作权受到法律和国际公约保护。使用者：无论个人或组织、盈利与否、用途如何（包括以学习和研究为目的），均需仔细阅读本协议，在理解、同意、并遵守本协议的全部条款后，方可开始使用 PHPCMS 软件。\r\n本授权协议适用于 PHPCMS V9 、PHPCMS 2008版本，酷溜网（北京）科技有限公司有对本授权协议的最终解释权。</pre><h3 class=\"title-about\">\r\n	协议许可的权利</h3><pre class=\"lh26 f14\">您可以在协议规定的约束和限制范围内修改 PHPCMS 源代码(如果被提供的话)或界面风格以适应您的网站要求。 \r\n您拥有使用本软件构建的网站中全部会员资料、文章及相关信息的所有权，并独立承担与文章内容的相关法律义务。 \r\n获得商业授权之后，您可以将本软件应用于商业用途，同时依据所购买的授权类型中确定的技术支持期限、技术支持方式和技术支持内容，自购买时刻起，在技术支持期限内拥有通过指定的方式获得指定范围内的技术支持服务。商业授权用户享有反映和提出意见的权力，相关意见将被作为首要考虑，但没有一定被采纳的承诺或保证。</pre><h3 class=\"title-about\">\r\n	协议规定的约束和限制</h3><pre class=\"lh26 f14\">未获商业授权之前，不得将本软件用于商业用途（包括但不限于企业网站、经营性网站、以营利为目或实现盈利的网站）。购买商业授权请登陆http://www.phpcms.cn参考相关说明。\r\n不得对本软件或与之关联的商业授权进行出租、出售、抵押或发放子许可证。 \r\n无论如何，即无论用途如何、是否经过修改或美化、修改程度如何，只要使用 PHPCMS 的整体或任何部分，未经书面许可，网站页面页脚处的 PHPCMS 名称和 http://www.phpcms.cn 的链接都必须保留，而不能清除或修改，除非您获得上海盛大计算机有限公司授权许可。 \r\n禁止在 PHPCMS 的整体或任何部分基础上以发展任何派生版本、修改版本或第三方版本用于重新分发。 \r\n如果您未能遵守本协议的条款，您的授权将被终止，所被许可的权利将被收回，并承担相应法律责任。</pre><h3 class=\"title-about\">\r\n	有限担保和免责声明</h3><pre class=\"lh26 f14\">本软件及所附带的文件是作为不提供任何明确的或隐含的赔偿或担保的形式提供的。         \r\n用户出于自愿而使用本软件，您必须了解使用本软件的风险，在尚未购买产品技术服务之前，我们不承诺提供任何形式的技术支持、使用担保，也不承担任何因使用本软件而产生问题的相关责任。 \r\n上海盛大计算机有限公司不对使用本软件构建的网站中的文章或信息承担责任。 \r\n有关 PHPCMS 最终用户授权协议、商业授权与技术服务的详细内容，均由 PHPCMS 官方网站独家提供。上海盛大计算机有限公司拥有在不事先通知的情况下，修改授权协议和服务价目表的权力，修改后的协议或价目表对自改变之日起的新授权用户生效。\r\n\r\n电子文本形式的授权协议如同双方书面签署的协议一样，具有完全的和等同的法律效力。您一旦开始安装 PHPCMS，即被视为完全理解并接受本协议的各项条款，在享有上述条款授予的权力的同时，受到相关的约束和限制。协议许可范围以外的行为，将直接违反本授权协议并构成侵权，我们有权随时终止授权，责令停止损害，并保留追究相关责任的权力。</pre><p><br /></p>', '1421740798', '版权申明', '版权申明');
INSERT INTO `ur7_page` VALUES ('3', '12', '商务合作', '<p>DreamCMS愿与国内外优秀开发商建立各种深层次合作关系，希望和国内外开发者一起，推广优秀的正版软件和限时免费的游戏应用。</p><h4>合作模式：</h4><ul class=\"list-paddingleft-2\"><li><p>特约限免</p></li><li><p>新浪微博合作发码</p></li><li><p>硬广告投放</p></li><li><p>促销活动推广</p></li><li><p>提交新闻线索</p></li><li><p>其它合作意向</p></li></ul><h4>合作需知：</h4><p>爱应用以 iOS 平台的作品推荐为主，其中主要推荐的是开发商限时免费促销的产品，我们真诚希望与广大开发者一起，为用户提供更多更优质的 App，若您有意与我们合作，请通过我们在联系我们内标注的各种联系方式直接联系我们！</p><h4>商务合作联系方式：</h4><p>商务合作邮箱：media@iapps.im</p><p>爱应用商务联络：电话 025-58842238  QQ 2355520270 / 2355520276</p><p>爱应用商务合作1群：204683553</p><p>爱应用商务合作2群：168647346</p><p>爱应用产品发码群：1932874506（主） / 2408064348</p><p><br /></p>', '1421718455', '商务合作', '商务合作');
INSERT INTO `ur7_page` VALUES ('4', '1', 'DreamCMS程序下载', '<hr /><h3>   \r\n		DreamCMS V0.8 正式版<img alt=\"\" src=\"/ueditor/php/upload/image/20150120/1421719636105324.gif\" height=\"15\" width=\"17\" /></h3><p>    <strong>程序下载： </strong><a href=\"http://updatenew.dedecms.com/base-v57/package/update-57tosp1.zip\">DreamCMS V0.8</a><br /></p><p>   <strong>相关文档：</strong><a href=\"http://help.dedecms.com/install-use/\">详细功能说明</a> <a class=\"mL5\" href=\"http://help.dedecms.com/index_old.htm\">帮助手册</a> <a class=\"mL5\" href=\"http://bbs.dedecms.com/331304.html\">二次开发说明</a></p><p><a class=\"mL5\" href=\"http://bbs.dedecms.com/331304.html\"><br /></a></p><h3>   \r\n		XAMPP-PHP环境整合套件</h3><p>   \r\n		XAMPP（Apache+MySQL+PHP+PERL）是一个功能强大的建 XAMPP 软件站集成软件包。</p><p>这个软件包原来的名字是 LAMPP，但是为了避免误解，最新的几个版本就改名为 XAMPP 了。</p><p>它可以在Windows、Linux、Solaris、Mac OS X 等多种操作系统下安装使用，支持多语言：英文、简体中文、繁体中文、韩文、俄文、日文等。<br />许多人通过他们自己的经验认识到安装 Apache 服务器是件不容易的事儿。</p><p>如果您想添加 MySQL、PHP 和 Perl，那就更难了。</p><p>XAMPP 是一个易于安装且包含 MySQL、PHP 和 Perl 的 Apache 发行版。</p><p>XAMPP 的确非常容易安装和使用：只需下载，解压缩，启动即可。</p><p><strong>程序下载：</strong><a href=\"http://www.dedecms.com/html/chanpinxiazai/20080905/39481.html\">XAMPP-PHP环境整合套件 </a></p><hr /><h3>    历史版本下载</h3><ul class=\"list-paddingleft-2\"><li><p><a href=\"http://www.dedecms.com/html/chanpinxiazai/20090804/39486.html\">DreamCMS V0.1正式版正式发布(Build-0912) </a>发布日期：2015-03-12</p></li></ul><p><br /></p><p> <br /></p><p><br /></p>', '1421719862', 'DreamCMS，DreamCMS程序下载', 'DreamCMS程序源码下载');

-- ----------------------------
-- Table structure for `ur7_photo`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_photo`;
CREATE TABLE `ur7_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `photolist` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_photo
-- ----------------------------
INSERT INTO `ur7_photo` VALUES ('4', '13', '客照', '客照', '客照', 'Uploads/Content/2015-09-01/DreamCMS_19u416te063qaon138813girthb.png', null, null);

-- ----------------------------
-- Table structure for `ur7_photo_data`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_photo_data`;
CREATE TABLE `ur7_photo_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_photo_data
-- ----------------------------
INSERT INTO `ur7_photo_data` VALUES ('4', '4', '<p>www<br /></p>');

-- ----------------------------
-- Table structure for `ur7_plg_collection`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_plg_collection`;
CREATE TABLE `ur7_plg_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `langcode` varchar(50) NOT NULL DEFAULT 'utf-8' COMMENT '目标站编码',
  `title` varchar(100) NOT NULL,
  `cate` varchar(50) NOT NULL,
  `listrule` text NOT NULL,
  `pagerule` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_plg_collection
-- ----------------------------

-- ----------------------------
-- Table structure for `ur7_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_plugin`;
CREATE TABLE `ur7_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `filetitle` varchar(50) NOT NULL,
  `desc` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_plugin
-- ----------------------------
INSERT INTO `ur7_plugin` VALUES ('26', '文件上传插件', 'WebUpload', 'PLG_WEBUPLOAD_DESC', '1');
INSERT INTO `ur7_plugin` VALUES ('27', '百度编辑器', 'Ueditor', 'PLG_UEDITOR_DESC', '1');
INSERT INTO `ur7_plugin` VALUES ('42', '采集插件', 'Collection', '??phpQuery??????????jQuery??????????jQuery????????????????????', '1');

-- ----------------------------
-- Table structure for `ur7_plugin_list`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_plugin_list`;
CREATE TABLE `ur7_plugin_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(100) NOT NULL,
  `js` varchar(200) NOT NULL,
  `css` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `usejs` varchar(200) DEFAULT NULL,
  `usecss` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_plugin_list
-- ----------------------------
INSERT INTO `ur7_plugin_list` VALUES ('3', 'Collection/Admin/index', 'fuelux.wizard.min.js,json2.js,json2.js', '', '采集列表', '42', '2', 'fuelux.wizard.min.js,json2.js,json2.js', null);
INSERT INTO `ur7_plugin_list` VALUES ('4', 'Collection/Admin/add', 'fuelux.wizard.min.js,json2.js', '', '添加采集', '42', '2', 'json2.js', null);

-- ----------------------------
-- Table structure for `ur7_position`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_position`;
CREATE TABLE `ur7_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_position
-- ----------------------------
INSERT INTO `ur7_position` VALUES ('1', '首页推荐');
INSERT INTO `ur7_position` VALUES ('2', '首页幻灯');
INSERT INTO `ur7_position` VALUES ('4', '热点头条');
INSERT INTO `ur7_position` VALUES ('6', '今天头条');

-- ----------------------------
-- Table structure for `ur7_position_data`
-- ----------------------------
DROP TABLE IF EXISTS `ur7_position_data`;
CREATE TABLE `ur7_position_data` (
  `aid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `posid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ur7_position_data
-- ----------------------------
INSERT INTO `ur7_position_data` VALUES ('6', '29', '1', '1');
INSERT INTO `ur7_position_data` VALUES ('6', '29', '1', '2');
INSERT INTO `ur7_position_data` VALUES ('6', '29', '1', '4');
INSERT INTO `ur7_position_data` VALUES ('12', '30', '7', '1');
INSERT INTO `ur7_position_data` VALUES ('12', '30', '7', '2');
INSERT INTO `ur7_position_data` VALUES ('12', '30', '7', '4');
