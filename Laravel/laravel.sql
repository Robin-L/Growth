/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50709
Source Host           : 127.0.0.1:3306
Source Database       : laravel

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-03-04 15:04:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `page_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', 'plsuke', 'pluske@163.com', 'www.baidu.com', '评论测试', '11', '2016-03-04 06:09:07', '2016-03-04 06:09:07');
INSERT INTO `comments` VALUES ('2', 'admin	', 'admin@163.com', 'google.com', '@plsuke 回复123', '11', '2016-03-04 06:09:42', '2016-03-04 06:23:04');
INSERT INTO `comments` VALUES ('3', '1323', '', '', '123231323', '1', '2016-03-04 06:30:15', '2016-03-04 06:30:15');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2016_03_04_022847_create_articles_table', '2');
INSERT INTO `migrations` VALUES ('2016_03_04_022854_create_pages_table', '2');
INSERT INTO `migrations` VALUES ('2016_03_04_040855_create_comments_table', '3');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'Title 0', 'first-page', 'Body 0', '1', '2016-03-04 02:43:33', '2016-03-04 02:43:33');
INSERT INTO `pages` VALUES ('2', 'Title 1', 'first-page', 'Body 1', '1', '2016-03-04 02:43:33', '2016-03-04 02:43:33');
INSERT INTO `pages` VALUES ('3', 'Title 2', 'first-page', 'Body 2', '1', '2016-03-04 02:43:33', '2016-03-04 02:43:33');
INSERT INTO `pages` VALUES ('4', 'Title 3', 'first-page', 'Body 3', '1', '2016-03-04 02:43:33', '2016-03-04 02:43:33');
INSERT INTO `pages` VALUES ('5', 'Title 4', 'first-page', 'Body 4', '1', '2016-03-04 02:43:33', '2016-03-04 02:43:33');
INSERT INTO `pages` VALUES ('6', 'Title 5', 'first-page', 'Body 5', '1', '2016-03-04 02:43:33', '2016-03-04 02:43:33');
INSERT INTO `pages` VALUES ('7', 'Title 6', 'first-page', 'Body 6', '1', '2016-03-04 02:43:33', '2016-03-04 02:43:33');
INSERT INTO `pages` VALUES ('8', 'Title 7', 'first-page', 'Body 7', '1', '2016-03-04 02:43:33', '2016-03-04 02:43:33');
INSERT INTO `pages` VALUES ('9', 'Title 8', 'first-page', 'Body 8', '1', '2016-03-04 02:43:33', '2016-03-04 02:43:33');
INSERT INTO `pages` VALUES ('11', '测试', null, '传参数散打', '1', '2016-03-04 03:36:03', '2016-03-04 03:36:21');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'LuckyNine', 'pluske@163.com', '$2y$10$BWE88YLUmEyR5Z7c/bsOm.m/69hVG8hqwopU0FOpzM1yboJevesgK', 'fZ1Nu6JvMFo5EA01u4Ro1k4BBSvEBuhidM1KNO29yhssaPVOvXFv5P9XKz24', '2016-03-04 02:20:05', '2016-03-04 03:39:43');
