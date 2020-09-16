/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : cms_qlsite

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-08-04 11:26:02
*/

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `tbl_tags`;
CREATE TABLE `tbl_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_desc` text,
  `pids` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for tbl_configsite
-- ----------------------------
DROP TABLE IF EXISTS `tbl_configsite`;
CREATE TABLE `tbl_configsite` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `tem_id` int(11) DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification` int(11) DEFAULT NULL,
  `work_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8_unicode_ci,
  `meta_keyword` longtext COLLATE utf8_unicode_ci,
  `meta_descript` longtext COLLATE utf8_unicode_ci,
  `lang_id` int(11) NOT NULL DEFAULT '0',
  `contact` text COLLATE utf8_unicode_ci NOT NULL,
  `footer` text COLLATE utf8_unicode_ci NOT NULL,
  `nick_yahoo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_yahoo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `skype1` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `skype2` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `gplus` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email_notification` int(11) DEFAULT NULL,
  `sms_notification` int(11) DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_configsite
-- ----------------------------
INSERT INTO `tbl_configsite` VALUES ('1', '0', '', 'ClassHub', '', 'Văn phòng 5g Media Kim Mã - Hà Nội', '096.954.9903', '096.954.9903  |  096.954.9903', '', 'tranviethiepdz@gmail.com', '5', '8:00 - 17:30, Thứ Hai - Chủ Nhật', '', '', '', 'classhub, họp online, họp trực tuyến, meeting online', 'ClassHub - phần mềm họp trực tuyến', '0', '', '', '', '', '', '', 'https://twitter.com/', 'https://plus.google.com/?hl=vi', 'https://www.facebook.com/', 'https://www.youtube.com/', null, null);

-- ----------------------------
-- Table structure for tbl_users
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(300) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `group` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `site_id` varchar(255) DEFAULT '',
  `gsecret` varchar(50) DEFAULT NULL,
  `isfa2` tinyint(4) DEFAULT '0',
  `isadmin` tinyint(4) DEFAULT '0',
  `pseudonym` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `cdate` int(11) DEFAULT NULL,
  `is_trash` tinyint(4) DEFAULT '0',
  `isactive` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_users
-- ----------------------------
INSERT INTO `tbl_users` VALUES ('nxtuyen.pro@gmail.com', 'a25342213446980b5f750b37daed053ce347ec766265b78aa81d90c8217e5e39|cdf4a007e2b02a0c49fc9b7ccfbb8a10c644f635e1765dcf2a7ab794ddc7edac', 'Nguyễn Xuân Tuyền', '0936831277', 'nxtuyen.pro@gmail.com', '1', null, null, '1', '1', null, null, '1586660652', '0', '1');
INSERT INTO `tbl_users` VALUES ('tranhiep', 'e893052033c1d7a9d91f8e998cbc0c73b83c2672a43de311d31d1a680825ce82|cdf4a007e2b02a0c49fc9b7ccfbb8a10c644f635e1765dcf2a7ab794ddc7edac', 'Trần Hiệp', '09695499991', 'tranviethiepdz@gmail.com', '1', '', null, '0', '0', '', '', '1596515067', '0', '1');
INSERT INTO `tbl_users` VALUES ('tranviethiepdz@gmail.com', 'd93fc24a5f68f2d6621e2d3aff26b5600f38f1b6876ff04f0070b38a54b2d2f8|cdf4a007e2b02a0c49fc9b7ccfbb8a10c644f635e1765dcf2a7ab794ddc7edac', 'Trần Hiệp', '096.954.990', 'tranviethiepdz@gmail.com', '2', null, null, '0', '1', null, null, '1591860947', '0', '1');

-- ----------------------------
-- Table structure for tbl_user_login
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_login`;
CREATE TABLE `tbl_user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `isactive` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx` (`isactive`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_user_login
-- ----------------------------
INSERT INTO `tbl_user_login` VALUES ('46', 'tranviethiepdz@gmail.com', '1596183959', '1596183959', '0');
INSERT INTO `tbl_user_login` VALUES ('47', 'tranviethiepdz@gmail.com', '1596188012', '1596188012', '0');
INSERT INTO `tbl_user_login` VALUES ('48', 'tranviethiepdz@gmail.com', '1596205554', '1596205554', '0');
INSERT INTO `tbl_user_login` VALUES ('49', 'tranviethiepdz@gmail.com', '1596354631', '1596354631', '0');
INSERT INTO `tbl_user_login` VALUES ('50', 'tranviethiepdz@gmail.com', '1596366331', '1596366331', '0');
INSERT INTO `tbl_user_login` VALUES ('51', 'tranviethiepdz@gmail.com', '1596393366', '1596393366', '0');
INSERT INTO `tbl_user_login` VALUES ('52', 'tranviethiepdz@gmail.com', '1596417272', '1596417272', '0');
INSERT INTO `tbl_user_login` VALUES ('53', 'tranviethiepdz@gmail.com', '1596453976', '1596453976', '0');
INSERT INTO `tbl_user_login` VALUES ('54', 'tranviethiepdz@gmail.com', '1596474797', '1596474797', '0');
INSERT INTO `tbl_user_login` VALUES ('55', 'tranviethiepdz@gmail.com', '1596506960', '1596506960', '0');
INSERT INTO `tbl_user_login` VALUES ('56', 'tranviethiepdz@gmail.com', '1596514157', '1596514157', '1');

DROP TABLE IF EXISTS `tbl_content`;
CREATE TABLE `tbl_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `sapo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `intro` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `fulltext` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `author` varchar(255) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `pdate` int(11) DEFAULT NULL,
  `visited` int(11) DEFAULT NULL,
  `liked` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `is_trash` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` int(11) unsigned DEFAULT NULL,
  `version_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `bytes` int(11) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `etag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` tinyint(3) unsigned DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secure_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moderated` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('1', '2a1d5e34cf62cf2484f935968aa93f38', 'AVATAR.jpg', '1600231931', 'b02b925e4d8daf7bd832ea5f7b7d0552', '9a511918b3a5c26dc2710436629ecd6c0ca0d77c', '960', '720', 'jpg', 'image', '2020-09-16 06:52:11', '130983', 'upload', '2d04fa368fc2f320ebe3dbdcd87f0657', '0', 'http://res.cloudinary.com/dpyi1bcws/image/upload/v1600231931/AVATAR.jpg.jpg', 'https://res.cloudinary.com/dpyi1bcws/image/upload/v1600231931/AVATAR.jpg.jpg', 'php91A5', 'tmp', '0');
INSERT INTO `photo` VALUES ('2', '9a5f7b563bbf34d39270f75139081f44', 'anh-ly-cafe-buoi-sang_110730596.jpg', '1600231990', 'aeb73c9e1437f37149659b0b71466cc2', 'e1744416ae30b7a12427bd9735d5ec1db9f3acdf', '670', '503', 'jpg', 'image', '2020-09-16 06:53:10', '65835', 'upload', '5139fb7db4cced51d12469be92ddefd5', '0', 'http://res.cloudinary.com/dpyi1bcws/image/upload/v1600231990/anh-ly-cafe-buoi-sang_110730596.jpg.jpg', 'https://res.cloudinary.com/dpyi1bcws/image/upload/v1600231990/anh-ly-cafe-buoi-sang_110730596.jpg.jpg', 'php88B1', 'tmp', '0');
