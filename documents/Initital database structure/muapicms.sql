/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : muapicms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-05-04 14:12:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `active_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `active_sessions`;
CREATE TABLE `active_sessions` (
  `id` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `ip_user` varchar(100) DEFAULT NULL,
  `id_session` varchar(100) DEFAULT NULL,
  `session_expiration_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of active_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for `definitions`
-- ----------------------------
DROP TABLE IF EXISTS `definitions`;
CREATE TABLE `definitions` (
  `site_title` varchar(100) DEFAULT NULL,
  `is_show_separator` tinyint(3) DEFAULT NULL,
  `site_title_separator` varchar(100) DEFAULT NULL,
  `site_adminstrator_email` varchar(100) DEFAULT NULL,
  `default_language` int(10) DEFAULT NULL,
  `server_name` varchar(100) DEFAULT NULL,
  `server_description` varchar(10000) DEFAULT NULL,
  `is_server_md5_password` tinyint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of definitions
-- ----------------------------

-- ----------------------------
-- Table structure for `definitions_carousel`
-- ----------------------------
DROP TABLE IF EXISTS `definitions_carousel`;
CREATE TABLE `definitions_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `body` varchar(10000) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `featured_image` int(10) DEFAULT NULL,
  `thumbnail_image` int(10) DEFAULT NULL,
  `target_link` varchar(100) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_updated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of definitions_carousel
-- ----------------------------

-- ----------------------------
-- Table structure for `definitions_classes`
-- ----------------------------
DROP TABLE IF EXISTS `definitions_classes`;
CREATE TABLE `definitions_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `exibition_name` varchar(100) DEFAULT NULL,
  `amount_created` int(10) DEFAULT NULL,
  `image` int(10) DEFAULT NULL,
  `image_thumb` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of definitions_classes
-- ----------------------------

-- ----------------------------
-- Table structure for `definitions_countries`
-- ----------------------------
DROP TABLE IF EXISTS `definitions_countries`;
CREATE TABLE `definitions_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `exibition_name` varchar(100) DEFAULT NULL,
  `flag_id` int(10) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_updated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of definitions_countries
-- ----------------------------

-- ----------------------------
-- Table structure for `definitions_cron_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `definitions_cron_jobs`;
CREATE TABLE `definitions_cron_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `cron_id` int(10) DEFAULT NULL,
  `next_cron_run` datetime DEFAULT NULL,
  `cron_time_set` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of definitions_cron_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `definitions_downloads`
-- ----------------------------
DROP TABLE IF EXISTS `definitions_downloads`;
CREATE TABLE `definitions_downloads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `target_link` varchar(10000) DEFAULT NULL,
  `is_new_page` tinyint(3) DEFAULT NULL,
  `icon` int(10) DEFAULT NULL,
  `visibility` int(10) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `is_download_per_user_limited` tinyint(3) DEFAULT NULL,
  `download_per_user_limit` int(10) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_updated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of definitions_downloads
-- ----------------------------

-- ----------------------------
-- Table structure for `definitions_modules`
-- ----------------------------
DROP TABLE IF EXISTS `definitions_modules`;
CREATE TABLE `definitions_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_updated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of definitions_modules
-- ----------------------------

-- ----------------------------
-- Table structure for `definitions_navigation_bars`
-- ----------------------------
DROP TABLE IF EXISTS `definitions_navigation_bars`;
CREATE TABLE `definitions_navigation_bars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `is_all_pages` tinyint(3) DEFAULT NULL,
  `available_pages` varchar(1000) DEFAULT NULL,
  `location` int(10) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_updated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of definitions_navigation_bars
-- ----------------------------

-- ----------------------------
-- Table structure for `definitions_navigation_bars_items`
-- ----------------------------
DROP TABLE IF EXISTS `definitions_navigation_bars_items`;
CREATE TABLE `definitions_navigation_bars_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `exibition_name` varchar(100) DEFAULT NULL,
  `is_external_link` tinyint(3) DEFAULT NULL,
  `id_page` int(10) DEFAULT NULL,
  `target_link` varchar(1000) DEFAULT NULL,
  `is_dropdown` tinyint(3) DEFAULT NULL,
  `is_dropdown_child` tinyint(3) DEFAULT NULL,
  `dropdown_father` int(3) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_updated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of definitions_navigation_bars_items
-- ----------------------------

-- ----------------------------
-- Table structure for `definitions_referrals`
-- ----------------------------
DROP TABLE IF EXISTS `definitions_referrals`;
CREATE TABLE `definitions_referrals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `site_link` varchar(1000) DEFAULT NULL,
  `incoming_users_count` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of definitions_referrals
-- ----------------------------

-- ----------------------------
-- Table structure for `definitions_sidebars`
-- ----------------------------
DROP TABLE IF EXISTS `definitions_sidebars`;
CREATE TABLE `definitions_sidebars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `is_all_pages` tinyint(3) DEFAULT NULL,
  `available_pages` varchar(10000) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_updated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of definitions_sidebars
-- ----------------------------

-- ----------------------------
-- Table structure for `mail_custom_messages`
-- ----------------------------
DROP TABLE IF EXISTS `mail_custom_messages`;
CREATE TABLE `mail_custom_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `body` varchar(10000) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_updated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mail_custom_messages
-- ----------------------------

-- ----------------------------
-- Table structure for `mail_queue`
-- ----------------------------
DROP TABLE IF EXISTS `mail_queue`;
CREATE TABLE `mail_queue` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `target_email` varchar(1000) DEFAULT NULL,
  `content` int(10) DEFAULT NULL,
  `is_custom_mail` tinyint(3) DEFAULT NULL,
  `id_custom_mail_messages` int(10) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mail_queue
-- ----------------------------

-- ----------------------------
-- Table structure for `media_file_uploads`
-- ----------------------------
DROP TABLE IF EXISTS `media_file_uploads`;
CREATE TABLE `media_file_uploads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(10) DEFAULT NULL,
  `original_file_name` varchar(1000) DEFAULT NULL,
  `edited_file_name` varchar(1000) DEFAULT NULL,
  `storage_file_name` varchar(1000) DEFAULT NULL,
  `is_image` tinyint(3) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `size` int(100) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_edited` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of media_file_uploads
-- ----------------------------

-- ----------------------------
-- Table structure for `media_image_uploads`
-- ----------------------------
DROP TABLE IF EXISTS `media_image_uploads`;
CREATE TABLE `media_image_uploads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(10) DEFAULT NULL,
  `original_file_name` varchar(1000) DEFAULT NULL,
  `edited_file_name` varchar(1000) DEFAULT NULL,
  `storage_file_name` varchar(1000) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `size` int(100) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_edited` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of media_image_uploads
-- ----------------------------

-- ----------------------------
-- Table structure for `media_video_uploads`
-- ----------------------------
DROP TABLE IF EXISTS `media_video_uploads`;
CREATE TABLE `media_video_uploads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(10) DEFAULT NULL,
  `original_file_name` varchar(1000) DEFAULT NULL,
  `edited_file_name` varchar(1000) DEFAULT NULL,
  `storage_file_name` varchar(1000) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `height` int(10) DEFAULT NULL,
  `size` int(100) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_edited` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of media_video_uploads
-- ----------------------------

-- ----------------------------
-- Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `body` varchar(10000) DEFAULT NULL,
  `visibility` int(10) DEFAULT NULL,
  `template_name` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pages
-- ----------------------------

-- ----------------------------
-- Table structure for `posts_events`
-- ----------------------------
DROP TABLE IF EXISTS `posts_events`;
CREATE TABLE `posts_events` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `body` varchar(10000) DEFAULT NULL,
  `featured_image` int(10) DEFAULT NULL,
  `is_social_share` tinyint(3) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `visibility` tinyint(3) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_updated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of posts_events
-- ----------------------------

-- ----------------------------
-- Table structure for `posts_news`
-- ----------------------------
DROP TABLE IF EXISTS `posts_news`;
CREATE TABLE `posts_news` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `body` varchar(10000) DEFAULT NULL,
  `featured_image` int(10) DEFAULT NULL,
  `is_social_share` tinyint(3) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `visibility` tinyint(3) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_updated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of posts_news
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_server` int(10) DEFAULT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` int(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` int(10) DEFAULT NULL,
  `country_code` int(10) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `is_whatsapp_phone` tinyint(3) DEFAULT NULL,
  `secret_question` varchar(1000) DEFAULT NULL,
  `secret_answer` varchar(1000) DEFAULT NULL,
  `wcoinsc` int(10) DEFAULT NULL,
  `wcoinsp` int(10) DEFAULT NULL,
  `goblin_points` int(10) DEFAULT NULL,
  `web_coin` int(10) DEFAULT NULL,
  `is_vip` tinyint(3) DEFAULT NULL,
  `vip_type` int(10) DEFAULT NULL,
  `vip_expiration_date` datetime DEFAULT NULL,
  `control_code` int(10) DEFAULT NULL,
  `id_profile_facebook` varchar(1000) DEFAULT NULL,
  `id_profile_twitter` varchar(1000) DEFAULT NULL,
  `id_profile_instagram` varchar(1000) DEFAULT NULL,
  `user_from_referral` int(10) DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `creation_ip` varchar(100) DEFAULT NULL,
  `last_login_ip` varchar(100) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for `users_allowed_access`
-- ----------------------------
DROP TABLE IF EXISTS `users_allowed_access`;
CREATE TABLE `users_allowed_access` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_title` varchar(1000) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `control_code` int(10) DEFAULT NULL,
  `allowed_access` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users_allowed_access
-- ----------------------------

-- ----------------------------
-- Table structure for `users_banned`
-- ----------------------------
DROP TABLE IF EXISTS `users_banned`;
CREATE TABLE `users_banned` (
  `id` int(11) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `reason` int(10) DEFAULT NULL,
  `banned_by_user_id` int(10) DEFAULT NULL,
  `is_pernament` tinyint(3) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `id_user_created` int(10) DEFAULT NULL,
  `id_user_updated` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users_banned
-- ----------------------------

-- ----------------------------
-- Table structure for `users_characters`
-- ----------------------------
DROP TABLE IF EXISTS `users_characters`;
CREATE TABLE `users_characters` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_server` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `master_level` int(10) DEFAULT NULL,
  `class` int(10) DEFAULT NULL,
  `strenght` int(10) DEFAULT NULL,
  `agility` int(10) DEFAULT NULL,
  `vitality` int(10) DEFAULT NULL,
  `energy` int(10) DEFAULT NULL,
  `command` int(10) DEFAULT NULL,
  `hp_points` int(100) DEFAULT NULL,
  `mp_points` int(100) DEFAULT NULL,
  `ag_points` int(100) DEFAULT NULL,
  `sd_points` int(100) DEFAULT NULL,
  `guild` int(10) DEFAULT NULL,
  `inventory_zen` int(100) DEFAULT NULL,
  `resets` int(10) DEFAULT NULL,
  `grand_resets` int(10) DEFAULT NULL,
  `current_map` int(10) DEFAULT NULL,
  `current_map_x` int(10) DEFAULT NULL,
  `current_map_y` int(10) DEFAULT NULL,
  `pk_count` int(10) DEFAULT NULL,
  `pk_level` int(10) DEFAULT NULL,
  `pk_time` int(10) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `is_expanded_inventory` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users_characters
-- ----------------------------

-- ----------------------------
-- Table structure for `users_characters_guilds`
-- ----------------------------
DROP TABLE IF EXISTS `users_characters_guilds`;
CREATE TABLE `users_characters_guilds` (
  `id` int(10) unsigned NOT NULL,
  `id_server` int(10) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users_characters_guilds
-- ----------------------------

-- ----------------------------
-- Table structure for `users_failed_logins`
-- ----------------------------
DROP TABLE IF EXISTS `users_failed_logins`;
CREATE TABLE `users_failed_logins` (
  `id` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `ip_user` varchar(100) DEFAULT NULL,
  `id_session` varchar(100) DEFAULT NULL,
  `failed_attemps` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users_failed_logins
-- ----------------------------
