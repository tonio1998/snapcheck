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
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table snapcheck.personal_access_tokens: 42 rows
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
	(42, 'App\\Models\\User', 2, 'mobile', '5a869126e1e76eda9187d4bbe630d9d8bbb496aea33971f5d5e5316a02af8f9f', '["*"]', NULL, NULL, '2025-06-20 01:38:08', '2025-06-20 01:38:08');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table snapcheck.users: 2 rows
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Antonio Piloton', 'apiloton1@ssct.edu.ph', NULL, '$2y$12$BoJ64hLX/eN6z1xn87apTua5MNDd1KbFpvaBOa5tNjCJZUMFGsp0G', NULL, '2025-06-19 23:23:53', '2025-06-19 23:23:53'),
	(2, 'a', 'a', NULL, '$2y$12$t18.oCNULmO/EUZn9KzBh.EufoV1AUpBll9R/JYW23rb.g23OXx42', NULL, '2025-06-20 01:21:23', '2025-06-20 01:21:23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
