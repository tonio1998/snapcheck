-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.36 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for snapcheck
CREATE DATABASE IF NOT EXISTS `snapcheck` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `snapcheck`;

-- Dumping structure for table snapcheck.cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table snapcheck.cache: 0 rows
DELETE FROM `cache`;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Dumping structure for table snapcheck.cache_locks
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table snapcheck.cache_locks: 0 rows
DELETE FROM `cache_locks`;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;

-- Dumping structure for table snapcheck.classes
DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive','locked','unlocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `archived` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- Dumping data for table snapcheck.classes: 60 rows
DELETE FROM `classes`;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` (`id`, `user_id`, `name`, `subject`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`, `archived`) VALUES
	(1, 2, 'Classroom 1', 'Subject 1', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(2, 4, 'Classroom 2', 'Subject 2', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(3, 4, 'Classroom 3', 'Subject 3', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(4, 2, 'Classroom 4', 'Subject 4', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(5, 2, 'Classroom 5', 'Subject 5', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(6, 3, 'Classroom 6', 'Subject 6', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(7, 5, 'Classroom 7', 'Subject 7', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(8, 4, 'Classroom 8', 'Subject 8', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(9, 4, 'Classroom 9', 'Subject 9', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(10, 2, 'Classroom 10', 'Subject 10', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(11, 1, 'Classroom 11', 'Subject 11', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(12, 4, 'Classroom 12', 'Subject 12', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(13, 2, 'Classroom 13', 'Subject 13', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(14, 2, 'Classroom 14', 'Subject 14', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(15, 4, 'Classroom 15', 'Subject 15', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(16, 1, 'Classroom 16', 'Subject 16', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(17, 5, 'Classroom 17', 'Subject 17', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(18, 1, 'Classroom 18', 'Subject 18', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(19, 2, 'Classroom 19', 'Subject 19', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(20, 4, 'Classroom 20', 'Subject 20', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(21, 1, 'Classroom 21', 'Subject 21', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(22, 2, 'Classroom 22', 'Subject 22', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(23, 1, 'Classroom 23', 'Subject 23', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(24, 5, 'Classroom 24', 'Subject 24', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(25, 5, 'Classroom 25', 'Subject 25', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(26, 3, 'Classroom 26', 'Subject 26', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(27, 5, 'Classroom 27', 'Subject 27', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(28, 5, 'Classroom 28', 'Subject 28', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(29, 2, 'Classroom 29', 'Subject 29', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(30, 3, 'Classroom 30', 'Subject 30', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', NULL, 'active', 0),
	(31, 3, 'Classroom 1', 'Subject 1', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(32, 1, 'Classroom 2', 'Subject 2', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(33, 2, 'Classroom 3', 'Subject 3', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(34, 1, 'Classroom 4', 'Subject 4', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(35, 2, 'Classroom 5', 'Subject 5', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(36, 1, 'Classroom 6', 'Subject 6', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(37, 1, 'Classroom 7', 'Subject 7', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(38, 3, 'Classroom 8', 'Subject 8', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(39, 5, 'Classroom 9', 'Subject 9', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(40, 5, 'Classroom 10', 'Subject 10', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(41, 1, 'Classroom 11', 'Subject 11', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(42, 5, 'Classroom 12', 'Subject 12', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(43, 1, 'Classroom 13', 'Subject 13', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(44, 1, 'Classroom 14', 'Subject 14', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(45, 1, 'Classroom 15', 'Subject 15', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(46, 5, 'Classroom 16', 'Subject 16', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(47, 2, 'Classroom 17', 'Subject 17', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(48, 4, 'Classroom 18', 'Subject 18', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(49, 5, 'Classroom 19', 'Subject 19', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(50, 5, 'Classroom 20', 'Subject 20', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(51, 3, 'Classroom 21', 'Subject 21', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(52, 4, 'Classroom 22', 'Subject 22', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(53, 4, 'Classroom 23', 'Subject 23', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(54, 4, 'Classroom 24', 'Subject 24', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(55, 2, 'Classroom 25', 'Subject 25', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(56, 3, 'Classroom 26', 'Subject 26', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(57, 4, 'Classroom 27', 'Subject 27', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(58, 5, 'Classroom 28', 'Subject 28', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(59, 1, 'Classroom 29', 'Subject 29', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0),
	(60, 3, 'Classroom 30', 'Subject 30', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', NULL, 'active', 0);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;

-- Dumping structure for table snapcheck.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table snapcheck.failed_jobs: 0 rows
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table snapcheck.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table snapcheck.jobs: 0 rows
DELETE FROM `jobs`;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table snapcheck.job_batches
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table snapcheck.job_batches: 0 rows
DELETE FROM `job_batches`;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;

-- Dumping structure for table snapcheck.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table snapcheck.migrations: 4 rows
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2025_06_20_071903_create_personal_access_tokens_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table snapcheck.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table snapcheck.password_reset_tokens: 0 rows
DELETE FROM `password_reset_tokens`;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;

-- Dumping structure for table snapcheck.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table snapcheck.personal_access_tokens: 71 rows
DELETE FROM `personal_access_tokens`;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(1, 'App\\Models\\User', 1, 'mobile', '08126a3cdb12e91ea2d8005cba089895c0fcab4df05034f817404fbd7697ff97', '["*"]', NULL, NULL, '2025-06-19 23:23:53', '2025-06-19 23:23:53'),
	(2, 'App\\Models\\User', 1, 'mobile', '268dc1dd799cc87fe819617f6ea9530b7818d3cc60a1505c8d89d25804cdd8b3', '["*"]', NULL, NULL, '2025-06-19 23:29:57', '2025-06-19 23:29:57'),
	(3, 'App\\Models\\User', 1, 'mobile', 'c7acac94122aa345a0a3f6870961d5a5fa49109abdf9df2bdc8122ce3332f90f', '["*"]', NULL, NULL, '2025-06-19 23:38:22', '2025-06-19 23:38:22'),
	(4, 'App\\Models\\User', 1, 'mobile', 'b1bedd711f4be8feb6877e5cba355837afa8c8c5730af348fd5c32e754a90507', '["*"]', NULL, NULL, '2025-06-19 23:38:40', '2025-06-19 23:38:40'),
	(5, 'App\\Models\\User', 1, 'mobile', '23d660a9cbb418b05a66300b7af81b546ff9582b58cdb1ed6e02d6ab35cb0523', '["*"]', NULL, NULL, '2025-06-19 23:53:58', '2025-06-19 23:53:58'),
	(6, 'App\\Models\\User', 1, 'mobile', '9ed5afe8b62ac028eae4b55f0976a820148510733d0f6e641f4449dc8cd12fa8', '["*"]', NULL, NULL, '2025-06-20 00:01:46', '2025-06-20 00:01:46'),
	(7, 'App\\Models\\User', 1, 'mobile', '61428d6bebc19cbdd051b4e29d6276d840660909a3a414099c14f25e56f02f4a', '["*"]', NULL, NULL, '2025-06-20 00:43:09', '2025-06-20 00:43:09'),
	(8, 'App\\Models\\User', 1, 'mobile', '3fda20305d0294fa0b8475168b750662009538ef56cc49e629220987b96c59a3', '["*"]', NULL, NULL, '2025-06-20 00:43:39', '2025-06-20 00:43:39'),
	(9, 'App\\Models\\User', 1, 'mobile', '5dfc2d18cc5e4149a137a7248cd7d230344f96279c431897e00ab7a71d4df4fb', '["*"]', NULL, NULL, '2025-06-20 00:44:35', '2025-06-20 00:44:35'),
	(10, 'App\\Models\\User', 1, 'mobile', '1d45f26c854c675ceb222c415d15fb8c74aa299c534678444b4b387a9034b2e4', '["*"]', NULL, NULL, '2025-06-20 00:53:15', '2025-06-20 00:53:15'),
	(11, 'App\\Models\\User', 1, 'mobile', '662e4eae4f8870efbfdbe644552a89d46ae19a9489905ff1c66f60dcd62d1fd7', '["*"]', NULL, NULL, '2025-06-20 00:55:25', '2025-06-20 00:55:25'),
	(12, 'App\\Models\\User', 1, 'mobile', '610c5c2765f75cc4a1e05ab11fab6f403b03a8fcc2c7898abebe7b2dfb6b891a', '["*"]', NULL, NULL, '2025-06-20 00:56:14', '2025-06-20 00:56:14'),
	(13, 'App\\Models\\User', 1, 'mobile', '6e2214aea9b0e78b9fce07b4759034baf7d9f5241885c70f6713434cbdac4ca0', '["*"]', NULL, NULL, '2025-06-20 00:56:56', '2025-06-20 00:56:56'),
	(14, 'App\\Models\\User', 1, 'mobile', '299d9c629f3170c97fc1f2a548a9e4e6dcd2f959465a4654a205a5e6fa1b6c00', '["*"]', NULL, NULL, '2025-06-20 00:57:11', '2025-06-20 00:57:11'),
	(15, 'App\\Models\\User', 1, 'mobile', 'c6e7517502a19f118edc56d3b4dc8e08e81cadb773103913a8d455064c2d81da', '["*"]', NULL, NULL, '2025-06-20 00:58:13', '2025-06-20 00:58:13'),
	(16, 'App\\Models\\User', 1, 'mobile', '0cd67248459ea927ecdb55c18c15b63c7059de30ed916301596ec99f403fbe23', '["*"]', NULL, NULL, '2025-06-20 01:00:04', '2025-06-20 01:00:04'),
	(17, 'App\\Models\\User', 1, 'mobile', '1cd07d308cf4d56bcad199b593ac335aa20f11c0f4479204ac1498e0d3fffba8', '["*"]', NULL, NULL, '2025-06-20 01:05:33', '2025-06-20 01:05:33'),
	(18, 'App\\Models\\User', 1, 'mobile', 'f7e2bb4175a757e458ba27f7a4408db4f8e446e7e950beb15c9db70baa776120', '["*"]', NULL, NULL, '2025-06-20 01:06:31', '2025-06-20 01:06:31'),
	(19, 'App\\Models\\User', 1, 'mobile', '76f78776889e1ebdda0980b27b6403392483b59580193f7078e9a5ef79a2ba3f', '["*"]', NULL, NULL, '2025-06-20 01:06:35', '2025-06-20 01:06:35'),
	(20, 'App\\Models\\User', 1, 'mobile', 'd2fc8bf4c8b5e731123a22cbc9724879b8385a7dab76c4d08326146e72a0d0f1', '["*"]', NULL, NULL, '2025-06-20 01:06:54', '2025-06-20 01:06:54'),
	(21, 'App\\Models\\User', 1, 'mobile', 'a757b0bb2314d31d2da5d2cf1f6ab9f998231e088f33f689c6c368477f444f93', '["*"]', NULL, NULL, '2025-06-20 01:08:14', '2025-06-20 01:08:14'),
	(22, 'App\\Models\\User', 1, 'mobile', 'bd67b66b299c58fc8324b6711476887132a39f96085f4d123d91d369d4bd2bc7', '["*"]', NULL, NULL, '2025-06-20 01:11:05', '2025-06-20 01:11:05'),
	(23, 'App\\Models\\User', 1, 'mobile', 'f49c5a77f5ce061affc860b4c853d4e4cc64205eb9efdb4398e9a6ea5a3ccaac', '["*"]', NULL, NULL, '2025-06-20 01:12:27', '2025-06-20 01:12:27'),
	(24, 'App\\Models\\User', 1, 'mobile', 'bd6a0b35c367aaf493eddfd175e15efd745e7aeb9fd5b2a0966c2ffa75ca42b0', '["*"]', NULL, NULL, '2025-06-20 01:13:55', '2025-06-20 01:13:55'),
	(25, 'App\\Models\\User', 1, 'mobile', 'b06185d7729da798e1b4988d109a35cc5131323cb2d25ef08f8ddfe807f2cf0f', '["*"]', NULL, NULL, '2025-06-20 01:15:43', '2025-06-20 01:15:43'),
	(26, 'App\\Models\\User', 1, 'mobile', '96afc827a20b4095ef5bd742f8e587feab3d96901ffe45db5ea5b52d44203988', '["*"]', NULL, NULL, '2025-06-20 01:16:03', '2025-06-20 01:16:03'),
	(27, 'App\\Models\\User', 1, 'mobile', '386ef55b349d9c2513edbea10305604fb4978beccec4890c599f597a0e48d005', '["*"]', NULL, NULL, '2025-06-20 01:16:10', '2025-06-20 01:16:10'),
	(28, 'App\\Models\\User', 1, 'mobile', '2a306a4e0905a1fa16de8a6cfe84ad5431ba08628e3acdfe4c4f2b20b383b5be', '["*"]', NULL, NULL, '2025-06-20 01:16:26', '2025-06-20 01:16:26'),
	(29, 'App\\Models\\User', 1, 'mobile', 'db15096e4681b78fa52b1524777a1b3eedbdeda5e019d885b5d0a4e8865ef029', '["*"]', NULL, NULL, '2025-06-20 01:20:07', '2025-06-20 01:20:07'),
	(30, 'App\\Models\\User', 2, 'mobile', 'f953a13b3f35e6e9a8579fefb256fa7ebdb1fb8de3f04c1651365aeeb4e3e29b', '["*"]', NULL, NULL, '2025-06-20 01:21:23', '2025-06-20 01:21:23'),
	(31, 'App\\Models\\User', 2, 'mobile', 'ddc87a3ebdf420511f2124fb9ee1127936a764846c379a74fea27e2fdaf9dabb', '["*"]', NULL, NULL, '2025-06-20 01:21:31', '2025-06-20 01:21:31'),
	(32, 'App\\Models\\User', 2, 'mobile', '8d8b664c31b3e80a04591b69cb8f39375a6287905abd451f830987d2474923b7', '["*"]', NULL, NULL, '2025-06-20 01:21:46', '2025-06-20 01:21:46'),
	(33, 'App\\Models\\User', 2, 'mobile', 'e2c8184323b6f738b3a50a36c78d9dd447b56ff8a523918a3de48d71415e26e7', '["*"]', NULL, NULL, '2025-06-20 01:23:06', '2025-06-20 01:23:06'),
	(34, 'App\\Models\\User', 2, 'mobile', '9be722b8f99030b35158f6629b33389a6bb0fac7372e102a265950985186b370', '["*"]', NULL, NULL, '2025-06-20 01:25:41', '2025-06-20 01:25:41'),
	(35, 'App\\Models\\User', 2, 'mobile', '55f75a4bb01c2ff014c041c632878860e21c0d72c2e245c534d669510f0fb16e', '["*"]', NULL, NULL, '2025-06-20 01:25:53', '2025-06-20 01:25:53'),
	(36, 'App\\Models\\User', 2, 'mobile', '5f7f19027a4d988194a772ecaf89e3b5bc1d99fa85c6b191d3d2e7daaa79be4d', '["*"]', NULL, NULL, '2025-06-20 01:26:39', '2025-06-20 01:26:39'),
	(37, 'App\\Models\\User', 2, 'mobile', '494a7d580247ce2e425324a47a86c9d8e122bf69a3663aa9326b9b149122cb56', '["*"]', NULL, NULL, '2025-06-20 01:27:39', '2025-06-20 01:27:39'),
	(38, 'App\\Models\\User', 2, 'mobile', '2e340ce9ad1536fb62824f8606be7cdbf8ce2bcce4832ebcda796384f57ee84b', '["*"]', NULL, NULL, '2025-06-20 01:28:05', '2025-06-20 01:28:05'),
	(39, 'App\\Models\\User', 2, 'mobile', '42baa548c4617090db10b6fbf420478a647c5e37c7f85044be189f5afaeffda5', '["*"]', NULL, NULL, '2025-06-20 01:33:38', '2025-06-20 01:33:38'),
	(40, 'App\\Models\\User', 2, 'mobile', '7e5cbf65c9702f5474c054c113f6951b357e53b779a28ecb9a20d9a3a1c90a30', '["*"]', NULL, NULL, '2025-06-20 01:34:54', '2025-06-20 01:34:54'),
	(41, 'App\\Models\\User', 2, 'mobile', '3df8d03c731109039d9d20358d08cc8e0f72795a49cd41d2b1742984b6568d91', '["*"]', NULL, NULL, '2025-06-20 01:37:07', '2025-06-20 01:37:07'),
	(42, 'App\\Models\\User', 2, 'mobile', '5a869126e1e76eda9187d4bbe630d9d8bbb496aea33971f5d5e5316a02af8f9f', '["*"]', NULL, NULL, '2025-06-20 01:38:08', '2025-06-20 01:38:08'),
	(43, 'App\\Models\\User', 3, 'mobile', '959d5aa86abe25c350f4410dbb2f4c8ab3845824343c7e8cd805f61416ec5aba', '["*"]', NULL, NULL, '2025-06-20 05:14:48', '2025-06-20 05:14:48'),
	(44, 'App\\Models\\User', 3, 'mobile', 'f82ad4fdffcc8ad9c95f9d1ce96382a828f9098978b3f5f98eac28a85b62dfb6', '["*"]', NULL, NULL, '2025-06-20 05:15:31', '2025-06-20 05:15:31'),
	(45, 'App\\Models\\User', 1, 'mobile', '1fea03671afcd826e23f3ad58eb608b20055a7fb2514a0574075ac3dea4a3f90', '["*"]', NULL, NULL, '2025-06-20 06:18:02', '2025-06-20 06:18:02'),
	(46, 'App\\Models\\User', 2, 'mobile', '3749e256660e76f16936f12aeeb2de4829c799f975872d3161a916b99df835a0', '["*"]', NULL, NULL, '2025-06-20 06:21:08', '2025-06-20 06:21:08'),
	(47, 'App\\Models\\User', 2, 'mobile', '44f7785ed90edf238da789913cc4838883751764e8aa63596702650647ada4fa', '["*"]', NULL, NULL, '2025-06-20 06:37:53', '2025-06-20 06:37:53'),
	(48, 'App\\Models\\User', 2, 'mobile', '5e84e9edce95eb56e8c5a856c456063aec8182f882839dc52375be27ad0d97f0', '["*"]', NULL, NULL, '2025-06-20 07:01:50', '2025-06-20 07:01:50'),
	(49, 'App\\Models\\User', 2, 'mobile', '1a6e6fe3eccf01bcf2ce6fbdffe22945edab2eb068632db8be0c621cc6e1928d', '["*"]', NULL, NULL, '2025-06-20 07:28:40', '2025-06-20 07:28:40'),
	(50, 'App\\Models\\User', 2, 'mobile', '5e6e6991a42db4eb693da15abf50cef39e9015cae32c4882552b4af46ea9912f', '["*"]', '2025-06-20 07:50:51', NULL, '2025-06-20 07:40:30', '2025-06-20 07:50:51'),
	(51, 'App\\Models\\User', 2, 'mobile', '07836e77f42ae6213ea4a595af77078cc89f34fabeb42e9954e6242c38b58a66', '["*"]', '2025-06-20 07:53:04', NULL, '2025-06-20 07:52:00', '2025-06-20 07:53:04'),
	(52, 'App\\Models\\User', 2, 'mobile', 'a98849e45e156f846a6f00e52bcba2a30a4a8df0301cf3a2c6b4e720c1f7cbbb', '["*"]', '2025-06-20 08:09:24', NULL, '2025-06-20 07:54:28', '2025-06-20 08:09:24'),
	(53, 'App\\Models\\User', 2, 'mobile', '0a9f125a39bb2e2842b3ad11bb159852b0708724bda268a16108575617a0fc6b', '["*"]', '2025-06-20 08:11:20', NULL, '2025-06-20 08:11:19', '2025-06-20 08:11:20'),
	(54, 'App\\Models\\User', 2, 'mobile', '040c3335632aef1b8460040972b7a42d29675eb80a0bb395ae4fef76be4cab7d', '["*"]', '2025-06-20 08:42:04', NULL, '2025-06-20 08:13:42', '2025-06-20 08:42:04'),
	(55, 'App\\Models\\User', 2, 'mobile', '084a81288450e64cf39b50f9d84881b36e781f351c6bacd110941601db4940da', '["*"]', NULL, NULL, '2025-06-20 08:56:43', '2025-06-20 08:56:43'),
	(56, 'App\\Models\\User', 2, 'mobile', 'caf41b46b8af8a16aa26c4c7bcc12621c2437b2e689837d0b86e2cb18510bb2d', '["*"]', NULL, NULL, '2025-06-20 08:57:28', '2025-06-20 08:57:28'),
	(57, 'App\\Models\\User', 2, 'mobile', '82b1b3113e97a8d950b59692435245ede201083b5561986415e806306726cffd', '["*"]', NULL, NULL, '2025-06-20 08:57:29', '2025-06-20 08:57:29'),
	(58, 'App\\Models\\User', 2, 'mobile', 'd3ea2a7f7075855ce9701c772b3a951860a53ab35b49dd3a490f77b758c07e71', '["*"]', NULL, NULL, '2025-06-20 08:58:58', '2025-06-20 08:58:58'),
	(59, 'App\\Models\\User', 2, 'mobile', 'f456cf46c7abcd0922c90b8cd46e0a2bd31b969aab059873c8dd6757c777dd90', '["*"]', NULL, NULL, '2025-06-20 08:59:05', '2025-06-20 08:59:05'),
	(60, 'App\\Models\\User', 2, 'mobile', '5e0b2505d94524b26e0574d60e050b27d15f5bdc46571b8de18739bd76c8f386', '["*"]', NULL, NULL, '2025-06-20 08:59:10', '2025-06-20 08:59:10'),
	(61, 'App\\Models\\User', 2, 'mobile', 'fde4696ef06d7f6ba2b29d6db3f9926283b1ca5e1b482be13a9008aec113791f', '["*"]', NULL, NULL, '2025-06-20 09:00:40', '2025-06-20 09:00:40'),
	(62, 'App\\Models\\User', 2, 'mobile', '7785a49d3b3194b54cfa91e12672ee84202a5ae6e50d1e70b1bf7e1e97b64c5d', '["*"]', NULL, NULL, '2025-06-20 09:02:00', '2025-06-20 09:02:00'),
	(63, 'App\\Models\\User', 2, 'mobile', '321d866ead0146bf6e02fc4870b969af115144c0b1a9eb17a320b8b499f96bf5', '["*"]', NULL, NULL, '2025-06-20 09:02:32', '2025-06-20 09:02:32'),
	(64, 'App\\Models\\User', 2, 'mobile', '643a879ef44cb7fbbce7420867a69af0081a89ce90340fd067f7a75a37cc6770', '["*"]', NULL, NULL, '2025-06-20 09:05:48', '2025-06-20 09:05:48'),
	(65, 'App\\Models\\User', 2, 'mobile', '1e051210060c857dc89c3a45d33fb403beb822a06c3283291c305e079f5dbe65', '["*"]', NULL, NULL, '2025-06-20 09:06:52', '2025-06-20 09:06:52'),
	(66, 'App\\Models\\User', 2, 'mobile', 'a923e0394a62e0eec3fa476c17da747526a8d007c6bb6d1dd849b926518c2094', '["*"]', NULL, NULL, '2025-06-20 09:07:54', '2025-06-20 09:07:54'),
	(67, 'App\\Models\\User', 2, 'mobile', '666ccdbbf63b9be4b0af24b9728369a5e2cedf9fcc92160065f513ec10871616', '["*"]', NULL, NULL, '2025-06-20 09:13:55', '2025-06-20 09:13:55'),
	(68, 'App\\Models\\User', 2, 'mobile', 'b60ac02f0bd4fb22be6977375fe478383f216c7aabd202eb54b0f7fdb99a33c5', '["*"]', NULL, NULL, '2025-06-20 09:13:58', '2025-06-20 09:13:58'),
	(69, 'App\\Models\\User', 2, 'mobile', 'e7918ffec5678d758fe84d002bf0d6fa51076644463ea1bbd113ce67079961ba', '["*"]', NULL, NULL, '2025-06-20 09:14:46', '2025-06-20 09:14:46'),
	(70, 'App\\Models\\User', 2, 'mobile', '424420461b641592269760c028e3c01fc16ea9f4bee291921ca923d28b6b5cd7', '["*"]', NULL, NULL, '2025-06-20 09:15:09', '2025-06-20 09:15:09'),
	(71, 'App\\Models\\User', 2, 'mobile', 'e1a0acbdf28c8a43db701d81bc9aa51533a5d5e103a03747cd0a2ca95193019e', '["*"]', '2025-06-20 10:15:48', NULL, '2025-06-20 09:16:43', '2025-06-20 10:15:48');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table snapcheck.quizzes
DROP TABLE IF EXISTS `quizzes`;
CREATE TABLE IF NOT EXISTS `quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `total_items` int(11) NOT NULL,
  `quiz_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('active','inactive','locked','unlocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `archived` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

-- Dumping data for table snapcheck.quizzes: 200 rows
DELETE FROM `quizzes`;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` (`id`, `class_id`, `user_id`, `title`, `total_items`, `quiz_date`, `created_by`, `updated_by`, `created_at`, `updated_at`, `status`, `archived`, `deleted_at`) VALUES
	(1, 14, 5, 'Quiz 1', 140, '0000-00-00', 0, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(2, 8, 0, 'Quiz 2', 90, '0000-00-00', 3, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(3, 28, 5, 'Quiz 3', 140, '0000-00-00', 1, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(4, 19, 1, 'Quiz 4', 110, '0000-00-00', 2, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(5, 18, 4, 'Quiz 5', 80, '0000-00-00', 4, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(6, 21, 1, 'Quiz 6', 90, '0000-00-00', 4, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(7, 8, 5, 'Quiz 7', 30, '0000-00-00', 5, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(8, 23, 3, 'Quiz 8', 40, '0000-00-00', 4, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(9, 1, 3, 'Quiz 9', 10, '0000-00-00', 4, 3, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(10, 18, 3, 'Quiz 10', 40, '0000-00-00', 1, 0, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(11, 29, 0, 'Quiz 11', 10, '0000-00-00', 3, 0, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(12, 20, 2, 'Quiz 12', 70, '0000-00-00', 0, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(13, 13, 2, 'Quiz 13', 150, '0000-00-00', 5, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(14, 30, 4, 'Quiz 14', 20, '0000-00-00', 3, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(15, 24, 2, 'Quiz 15', 150, '0000-00-00', 1, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(16, 26, 5, 'Quiz 16', 120, '0000-00-00', 3, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(17, 24, 3, 'Quiz 17', 140, '0000-00-00', 0, 3, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(18, 13, 1, 'Quiz 18', 140, '0000-00-00', 2, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(19, 23, 2, 'Quiz 19', 10, '0000-00-00', 2, 0, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(20, 10, 4, 'Quiz 20', 110, '0000-00-00', 3, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(21, 26, 0, 'Quiz 21', 130, '0000-00-00', 0, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(22, 12, 3, 'Quiz 22', 70, '0000-00-00', 3, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(23, 3, 5, 'Quiz 23', 10, '0000-00-00', 5, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(24, 27, 2, 'Quiz 24', 20, '0000-00-00', 3, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(25, 4, 1, 'Quiz 25', 10, '0000-00-00', 3, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(26, 9, 5, 'Quiz 26', 30, '0000-00-00', 4, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(27, 9, 1, 'Quiz 27', 10, '0000-00-00', 2, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(28, 30, 0, 'Quiz 28', 80, '0000-00-00', 4, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(29, 10, 5, 'Quiz 29', 70, '0000-00-00', 1, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(30, 11, 5, 'Quiz 30', 10, '0000-00-00', 5, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(31, 5, 5, 'Quiz 31', 120, '0000-00-00', 2, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(32, 27, 5, 'Quiz 32', 50, '0000-00-00', 0, 3, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(33, 5, 5, 'Quiz 33', 40, '0000-00-00', 5, 3, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(34, 23, 2, 'Quiz 34', 40, '0000-00-00', 2, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(35, 28, 1, 'Quiz 35', 20, '0000-00-00', 5, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(36, 7, 5, 'Quiz 36', 110, '0000-00-00', 4, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(37, 28, 5, 'Quiz 37', 20, '0000-00-00', 0, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(38, 28, 2, 'Quiz 38', 130, '0000-00-00', 5, 3, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(39, 5, 2, 'Quiz 39', 110, '0000-00-00', 0, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(40, 6, 5, 'Quiz 40', 120, '0000-00-00', 4, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(41, 19, 0, 'Quiz 41', 40, '0000-00-00', 0, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(42, 6, 2, 'Quiz 42', 110, '0000-00-00', 2, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(43, 12, 5, 'Quiz 43', 80, '0000-00-00', 1, 0, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(44, 16, 5, 'Quiz 44', 120, '0000-00-00', 5, 3, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(45, 22, 3, 'Quiz 45', 50, '0000-00-00', 4, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(46, 23, 3, 'Quiz 46', 10, '0000-00-00', 1, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(47, 8, 2, 'Quiz 47', 10, '0000-00-00', 2, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(48, 27, 4, 'Quiz 48', 10, '0000-00-00', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(49, 6, 4, 'Quiz 49', 70, '0000-00-00', 2, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(50, 21, 1, 'Quiz 50', 50, '0000-00-00', 5, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(51, 1, 3, 'Quiz 51', 50, '0000-00-00', 5, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(52, 30, 2, 'Quiz 52', 20, '0000-00-00', 2, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(53, 10, 0, 'Quiz 53', 80, '0000-00-00', 5, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(54, 30, 3, 'Quiz 54', 110, '0000-00-00', 3, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(55, 14, 5, 'Quiz 55', 30, '0000-00-00', 5, 3, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(56, 10, 1, 'Quiz 56', 20, '0000-00-00', 4, 0, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(57, 23, 1, 'Quiz 57', 100, '0000-00-00', 2, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(58, 10, 0, 'Quiz 58', 20, '0000-00-00', 1, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(59, 13, 5, 'Quiz 59', 120, '0000-00-00', 5, 0, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(60, 15, 0, 'Quiz 60', 50, '0000-00-00', 3, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(61, 19, 2, 'Quiz 61', 130, '0000-00-00', 5, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(62, 5, 4, 'Quiz 62', 150, '0000-00-00', 5, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(63, 23, 5, 'Quiz 63', 10, '0000-00-00', 2, 0, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(64, 16, 4, 'Quiz 64', 100, '0000-00-00', 3, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(65, 29, 3, 'Quiz 65', 60, '0000-00-00', 2, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(66, 30, 2, 'Quiz 66', 70, '0000-00-00', 3, 3, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(67, 23, 0, 'Quiz 67', 80, '0000-00-00', 3, 3, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(68, 16, 3, 'Quiz 68', 120, '0000-00-00', 2, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(69, 12, 2, 'Quiz 69', 130, '0000-00-00', 5, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(70, 15, 0, 'Quiz 70', 40, '0000-00-00', 1, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(71, 23, 5, 'Quiz 71', 30, '0000-00-00', 3, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(72, 8, 1, 'Quiz 72', 130, '0000-00-00', 2, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(73, 4, 5, 'Quiz 73', 110, '0000-00-00', 3, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(74, 8, 3, 'Quiz 74', 120, '0000-00-00', 2, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(75, 2, 4, 'Quiz 75', 140, '0000-00-00', 4, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(76, 27, 1, 'Quiz 76', 140, '0000-00-00', 4, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(77, 16, 3, 'Quiz 77', 30, '0000-00-00', 1, 0, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(78, 15, 0, 'Quiz 78', 130, '0000-00-00', 2, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(79, 14, 0, 'Quiz 79', 150, '0000-00-00', 2, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(80, 3, 3, 'Quiz 80', 130, '0000-00-00', 5, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(81, 28, 2, 'Quiz 81', 60, '0000-00-00', 4, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(82, 6, 4, 'Quiz 82', 80, '0000-00-00', 2, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(83, 12, 5, 'Quiz 83', 10, '0000-00-00', 4, 0, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(84, 2, 2, 'Quiz 84', 120, '0000-00-00', 2, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(85, 15, 3, 'Quiz 85', 130, '0000-00-00', 4, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(86, 30, 3, 'Quiz 86', 60, '0000-00-00', 0, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(87, 30, 4, 'Quiz 87', 90, '0000-00-00', 1, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(88, 12, 5, 'Quiz 88', 120, '0000-00-00', 4, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(89, 8, 0, 'Quiz 89', 80, '0000-00-00', 3, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(90, 29, 0, 'Quiz 90', 50, '0000-00-00', 3, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(91, 15, 1, 'Quiz 91', 70, '0000-00-00', 5, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(92, 1, 1, 'Quiz 92', 150, '0000-00-00', 5, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(93, 5, 1, 'Quiz 93', 110, '0000-00-00', 0, 4, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(94, 19, 5, 'Quiz 94', 100, '0000-00-00', 2, 2, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(95, 7, 3, 'Quiz 95', 70, '0000-00-00', 2, 0, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(96, 29, 3, 'Quiz 96', 90, '0000-00-00', 5, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(97, 19, 4, 'Quiz 97', 110, '0000-00-00', 4, 0, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(98, 21, 0, 'Quiz 98', 120, '0000-00-00', 2, 1, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(99, 14, 3, 'Quiz 99', 100, '0000-00-00', 0, 0, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(100, 11, 4, 'Quiz 100', 130, '0000-00-00', 0, 5, '2025-06-20 18:12:28', '2025-06-20 10:12:28', 'active', 0, NULL),
	(101, 18, 4, 'Quiz 1', 90, '0000-00-00', 4, 4, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(102, 24, 1, 'Quiz 2', 140, '0000-00-00', 5, 2, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(103, 30, 5, 'Quiz 3', 30, '0000-00-00', 1, 3, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(104, 5, 3, 'Quiz 4', 120, '0000-00-00', 1, 0, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(105, 3, 1, 'Quiz 5', 60, '0000-00-00', 2, 2, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(106, 4, 5, 'Quiz 6', 140, '0000-00-00', 4, 3, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(107, 26, 2, 'Quiz 7', 60, '0000-00-00', 1, 5, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(108, 28, 2, 'Quiz 8', 20, '0000-00-00', 0, 5, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(109, 7, 1, 'Quiz 9', 40, '0000-00-00', 1, 3, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(110, 10, 4, 'Quiz 10', 100, '0000-00-00', 3, 2, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(111, 2, 2, 'Quiz 11', 120, '0000-00-00', 3, 2, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(112, 29, 3, 'Quiz 12', 70, '0000-00-00', 4, 0, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(113, 24, 3, 'Quiz 13', 130, '0000-00-00', 3, 3, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(114, 4, 5, 'Quiz 14', 140, '0000-00-00', 0, 5, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(115, 15, 5, 'Quiz 15', 100, '0000-00-00', 2, 5, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(116, 22, 0, 'Quiz 16', 30, '0000-00-00', 2, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(117, 2, 3, 'Quiz 17', 60, '0000-00-00', 1, 3, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(118, 16, 2, 'Quiz 18', 140, '0000-00-00', 0, 4, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(119, 19, 3, 'Quiz 19', 60, '0000-00-00', 5, 2, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(120, 24, 4, 'Quiz 20', 30, '0000-00-00', 2, 4, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(121, 17, 3, 'Quiz 21', 10, '0000-00-00', 5, 2, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(122, 18, 2, 'Quiz 22', 50, '0000-00-00', 2, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(123, 26, 5, 'Quiz 23', 150, '0000-00-00', 0, 5, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(124, 2, 2, 'Quiz 24', 130, '0000-00-00', 2, 4, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(125, 24, 1, 'Quiz 25', 90, '0000-00-00', 5, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(126, 5, 1, 'Quiz 26', 40, '0000-00-00', 3, 4, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(127, 21, 3, 'Quiz 27', 40, '0000-00-00', 1, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(128, 7, 0, 'Quiz 28', 130, '0000-00-00', 2, 3, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(129, 18, 0, 'Quiz 29', 90, '0000-00-00', 2, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(130, 21, 5, 'Quiz 30', 110, '0000-00-00', 1, 0, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(131, 28, 0, 'Quiz 31', 90, '0000-00-00', 0, 4, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(132, 16, 0, 'Quiz 32', 60, '0000-00-00', 3, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(133, 19, 3, 'Quiz 33', 110, '0000-00-00', 3, 4, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(134, 24, 2, 'Quiz 34', 100, '0000-00-00', 1, 0, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(135, 6, 1, 'Quiz 35', 150, '0000-00-00', 1, 0, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(136, 13, 0, 'Quiz 36', 140, '0000-00-00', 2, 5, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(137, 14, 4, 'Quiz 37', 130, '0000-00-00', 3, 2, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(138, 24, 0, 'Quiz 38', 150, '0000-00-00', 2, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(139, 27, 4, 'Quiz 39', 70, '0000-00-00', 3, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(140, 19, 2, 'Quiz 40', 100, '0000-00-00', 2, 3, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(141, 5, 3, 'Quiz 41', 110, '0000-00-00', 3, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(142, 12, 4, 'Quiz 42', 140, '0000-00-00', 5, 0, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(143, 16, 3, 'Quiz 43', 60, '0000-00-00', 5, 5, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(144, 20, 2, 'Quiz 44', 80, '0000-00-00', 2, 1, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(145, 10, 1, 'Quiz 45', 130, '0000-00-00', 5, 0, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(146, 15, 0, 'Quiz 46', 130, '0000-00-00', 5, 2, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(147, 2, 0, 'Quiz 47', 10, '0000-00-00', 4, 4, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(148, 18, 5, 'Quiz 48', 60, '0000-00-00', 0, 2, '2025-06-20 18:13:18', '2025-06-20 10:13:18', 'active', 0, NULL),
	(149, 13, 4, 'Quiz 49', 90, '0000-00-00', 1, 5, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(150, 22, 5, 'Quiz 50', 20, '0000-00-00', 5, 2, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(151, 19, 5, 'Quiz 51', 10, '0000-00-00', 4, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(152, 19, 3, 'Quiz 52', 70, '0000-00-00', 1, 3, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(153, 17, 5, 'Quiz 53', 100, '0000-00-00', 0, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(154, 9, 1, 'Quiz 54', 120, '0000-00-00', 1, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(155, 12, 4, 'Quiz 55', 90, '0000-00-00', 1, 2, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(156, 18, 4, 'Quiz 56', 20, '0000-00-00', 2, 3, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(157, 19, 5, 'Quiz 57', 10, '0000-00-00', 2, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(158, 5, 1, 'Quiz 58', 90, '0000-00-00', 3, 0, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(159, 19, 2, 'Quiz 59', 140, '0000-00-00', 5, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(160, 30, 0, 'Quiz 60', 110, '0000-00-00', 0, 5, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(161, 15, 0, 'Quiz 61', 110, '0000-00-00', 3, 0, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(162, 19, 4, 'Quiz 62', 70, '0000-00-00', 4, 2, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(163, 2, 3, 'Quiz 63', 10, '0000-00-00', 1, 3, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(164, 2, 4, 'Quiz 64', 50, '0000-00-00', 4, 3, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(165, 11, 2, 'Quiz 65', 50, '0000-00-00', 3, 3, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(166, 4, 4, 'Quiz 66', 100, '0000-00-00', 3, 0, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(167, 21, 1, 'Quiz 67', 100, '0000-00-00', 1, 0, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(168, 1, 2, 'Quiz 68', 60, '0000-00-00', 1, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(169, 3, 5, 'Quiz 69', 130, '0000-00-00', 3, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(170, 27, 5, 'Quiz 70', 80, '0000-00-00', 0, 1, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(171, 20, 5, 'Quiz 71', 130, '0000-00-00', 4, 0, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(172, 3, 2, 'Quiz 72', 90, '0000-00-00', 1, 3, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(173, 7, 3, 'Quiz 73', 140, '0000-00-00', 5, 0, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(174, 18, 3, 'Quiz 74', 90, '0000-00-00', 1, 2, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(175, 21, 1, 'Quiz 75', 140, '0000-00-00', 4, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(176, 17, 5, 'Quiz 76', 70, '0000-00-00', 5, 5, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(177, 19, 4, 'Quiz 77', 120, '0000-00-00', 5, 3, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(178, 25, 2, 'Quiz 78', 60, '0000-00-00', 4, 5, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(179, 28, 2, 'Quiz 79', 60, '0000-00-00', 4, 2, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(180, 9, 4, 'Quiz 80', 60, '0000-00-00', 3, 5, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(181, 1, 2, 'Quiz 81', 80, '0000-00-00', 3, 3, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(182, 20, 3, 'Quiz 82', 120, '0000-00-00', 5, 5, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(183, 17, 2, 'Quiz 83', 10, '0000-00-00', 3, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(184, 25, 0, 'Quiz 84', 50, '0000-00-00', 3, 0, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(185, 26, 0, 'Quiz 85', 20, '0000-00-00', 1, 3, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(186, 2, 3, 'Quiz 86', 100, '0000-00-00', 4, 2, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(187, 17, 3, 'Quiz 87', 130, '0000-00-00', 0, 5, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(188, 6, 0, 'Quiz 88', 120, '0000-00-00', 4, 2, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(189, 19, 5, 'Quiz 89', 10, '0000-00-00', 0, 3, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(190, 18, 3, 'Quiz 90', 40, '0000-00-00', 2, 5, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(191, 29, 0, 'Quiz 91', 90, '0000-00-00', 4, 2, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(192, 15, 0, 'Quiz 92', 100, '0000-00-00', 1, 0, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(193, 1, 5, 'Quiz 93', 70, '0000-00-00', 1, 2, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(194, 15, 0, 'Quiz 94', 10, '0000-00-00', 5, 5, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(195, 4, 3, 'Quiz 95', 40, '0000-00-00', 0, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(196, 25, 0, 'Quiz 96', 90, '0000-00-00', 1, 3, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(197, 1, 0, 'Quiz 97', 30, '0000-00-00', 0, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(198, 10, 1, 'Quiz 98', 80, '0000-00-00', 5, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(199, 22, 5, 'Quiz 99', 140, '0000-00-00', 3, 4, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL),
	(200, 21, 4, 'Quiz 100', 100, '0000-00-00', 0, 2, '2025-06-20 18:13:19', '2025-06-20 10:13:19', 'active', 0, NULL);
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;

-- Dumping structure for table snapcheck.quiz_questions
DROP TABLE IF EXISTS `quiz_questions`;
CREATE TABLE IF NOT EXISTS `quiz_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `question_no` int(11) NOT NULL,
  `correct_answer` char(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('active','inactive','locked','unlocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `archived` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quiz_id` (`quiz_id`,`question_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table snapcheck.quiz_questions: 0 rows
DELETE FROM `quiz_questions`;
/*!40000 ALTER TABLE `quiz_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_questions` ENABLE KEYS */;

-- Dumping structure for table snapcheck.scans
DROP TABLE IF EXISTS `scans`;
CREATE TABLE IF NOT EXISTS `scans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `scanned_at` datetime NOT NULL,
  `score` int(11) NOT NULL,
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('active','inactive','locked','unlocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `archived` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `quiz_id` (`quiz_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table snapcheck.scans: 0 rows
DELETE FROM `scans`;
/*!40000 ALTER TABLE `scans` DISABLE KEYS */;
/*!40000 ALTER TABLE `scans` ENABLE KEYS */;

-- Dumping structure for table snapcheck.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table snapcheck.sessions: 0 rows
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Dumping structure for table snapcheck.students
DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('active','inactive','locked','unlocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `archived` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table snapcheck.students: 0 rows
DELETE FROM `students`;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
/*!40000 ALTER TABLE `students` ENABLE KEYS */;

-- Dumping structure for table snapcheck.student_answers
DROP TABLE IF EXISTS `student_answers`;
CREATE TABLE IF NOT EXISTS `student_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scan_id` int(11) NOT NULL,
  `question_no` int(11) NOT NULL,
  `selected_answer` char(1) DEFAULT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('active','inactive','locked','unlocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `archived` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scan_id` (`scan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table snapcheck.student_answers: 0 rows
DELETE FROM `student_answers`;
/*!40000 ALTER TABLE `student_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_answers` ENABLE KEYS */;

-- Dumping structure for table snapcheck.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table snapcheck.users: 3 rows
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Antonio Piloton', 'apiloton1@ssct.edu.ph', NULL, '$2y$12$BoJ64hLX/eN6z1xn87apTua5MNDd1KbFpvaBOa5tNjCJZUMFGsp0G', NULL, '2025-06-19 23:23:53', '2025-06-19 23:23:53'),
	(2, 'a', 'a', NULL, '$2y$12$t18.oCNULmO/EUZn9KzBh.EufoV1AUpBll9R/JYW23rb.g23OXx42', NULL, '2025-06-20 01:21:23', '2025-06-20 01:21:23'),
	(3, 'a', 'b', NULL, '$2y$12$V/aGUf/1TvKfMqe3CwgeR.WNsxmYTnLYm5lTaP0yQvIBzkeSoJUIm', NULL, '2025-06-20 05:14:48', '2025-06-20 05:14:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
