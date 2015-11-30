-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.24 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for zf2oauthen2
CREATE DATABASE IF NOT EXISTS `zf2oauthen2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `zf2oauthen2`;


-- Dumping structure for table zf2oauthen2.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table zf2oauthen2.oauth_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
	('7ce47ac6e77202f43e40e4854708d99d91648431', 'testclient', NULL, '2015-11-30 10:12:49', NULL),
	('95f7e55b6b63cbfd3829aecc4f4b751f83bd7062', 'testclient', NULL, '2015-11-30 10:17:25', NULL),
	('a8d27afe60b2d2112a7446a5f788e51e5cd9d3f5', 'testclient', NULL, '2015-11-30 10:27:35', NULL),
	('d6a15d36b45886d5bf856a9ceb230b9c4f7f7200', 'testclient', NULL, '2015-11-30 10:14:27', NULL),
	('e19a3082eefde76b32d0fef9811ba0d9af98a630', 'testclient', NULL, '2015-11-30 10:25:52', NULL),
	('f664c419e01164027b200f93e57c35b252267ecf', 'testclient', NULL, '2015-11-30 10:23:32', NULL);
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;


-- Dumping structure for table zf2oauthen2.oauth_authorization_codes
CREATE TABLE IF NOT EXISTS `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  `id_token` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`authorization_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table zf2oauthen2.oauth_authorization_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_authorization_codes` DISABLE KEYS */;
INSERT INTO `oauth_authorization_codes` (`authorization_code`, `client_id`, `user_id`, `redirect_uri`, `expires`, `scope`, `id_token`) VALUES
	('3d68708344d6f748a38c33a9228673d2f7442b73', 'testclient', NULL, '/oauth/receivecode', '2015-11-30 07:25:33', NULL, NULL),
	('d3552c7e3a361b132a10078a3a362d822b262bd3', 'testclient', NULL, '/oauth/receivecode', '2015-11-30 08:08:07', NULL, NULL);
/*!40000 ALTER TABLE `oauth_authorization_codes` ENABLE KEYS */;


-- Dumping structure for table zf2oauthen2.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table zf2oauthen2.oauth_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
	('testclient', '$2y$14$f3qml4G2hG6sxM26VMq.geDYbsS089IBtVJ7DlD05BoViS9PFykE2', '/oauth/receivecode', NULL, NULL, NULL);
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;


-- Dumping structure for table zf2oauthen2.oauth_jwt
CREATE TABLE IF NOT EXISTS `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table zf2oauthen2.oauth_jwt: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_jwt` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_jwt` ENABLE KEYS */;


-- Dumping structure for table zf2oauthen2.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`refresh_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table zf2oauthen2.oauth_refresh_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;


-- Dumping structure for table zf2oauthen2.oauth_scopes
CREATE TABLE IF NOT EXISTS `oauth_scopes` (
  `type` varchar(255) NOT NULL DEFAULT 'supported',
  `scope` varchar(2000) DEFAULT NULL,
  `client_id` varchar(80) DEFAULT NULL,
  `is_default` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table zf2oauthen2.oauth_scopes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_scopes` ENABLE KEYS */;


-- Dumping structure for table zf2oauthen2.oauth_users
CREATE TABLE IF NOT EXISTS `oauth_users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table zf2oauthen2.oauth_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
