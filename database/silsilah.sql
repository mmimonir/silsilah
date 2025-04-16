-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.4 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table silsilah.couples
DROP TABLE IF EXISTS `couples`;
CREATE TABLE IF NOT EXISTS `couples` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `husband_id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `wife_id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `marriage_date` date DEFAULT NULL,
  `divorce_date` date DEFAULT NULL,
  `manager_id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `couples_husband_id_wife_id_unique` (`husband_id`,`wife_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Dumping data for table silsilah.couples: 3 rows
/*!40000 ALTER TABLE `couples` DISABLE KEYS */;
INSERT INTO `couples` (`id`, `husband_id`, `wife_id`, `marriage_date`, `divorce_date`, `manager_id`, `created_at`, `updated_at`) VALUES
	('21a1f034-5138-43a2-946a-5f782d4f5413', 'de0beea8-a4f0-4870-8e9f-3fd9925fed90', '785a2e30-705c-46d9-beee-b8a7e4fc6f42', NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', '2024-11-12 10:08:22', '2024-11-12 10:08:22'),
	('293078a9-0e35-46a0-8e51-27b6e62c04ef', 'b1a8d858-dfce-4040-8193-63a18c754eff', '8b3176c0-a121-4096-b784-069fb190c77a', NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', '2024-11-21 09:16:40', '2024-11-21 09:16:40'),
	('ebd37b53-b1ae-45f3-866f-25967b52ff09', 'dbd21312-943f-4813-b1f6-3dbe45e4679e', '698b1d17-8cf4-4140-80c9-aba03f9bbce2', '2021-04-04', NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', '2024-11-12 10:02:24', '2024-11-12 10:02:24');
/*!40000 ALTER TABLE `couples` ENABLE KEYS */;

-- Dumping structure for table silsilah.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Dumping data for table silsilah.migrations: 4 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2017_06_27_151536_create_couples_table', 1),
	(4, '2021_04_04_215601_create_user_metadata_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table silsilah.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Dumping data for table silsilah.password_resets: 0 rows
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table silsilah.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gender_id` tinyint unsigned NOT NULL,
  `father_id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `mother_id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `parent_id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `yob` year DEFAULT NULL,
  `birth_order` tinyint unsigned DEFAULT NULL,
  `dod` date DEFAULT NULL,
  `yod` year DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `manager_id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Dumping data for table silsilah.users: ~74 rows (approximately)
INSERT INTO `users` (`id`, `nickname`, `name`, `gender_id`, `father_id`, `mother_id`, `parent_id`, `dob`, `yob`, `birth_order`, `dod`, `yod`, `email`, `password`, `address`, `city`, `phone`, `photo_path`, `manager_id`, `remember_token`, `created_at`, `updated_at`) VALUES
	('0609189d-44c3-42d9-851d-4ba07a35c5e4', 'Ehan Prodhan', 'Ehan Prodhan', 1, 'b1a8d858-dfce-4040-8193-63a18c754eff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-21 09:17:18', '2024-11-21 09:17:18'),
	('069eec0b-6dc6-4896-8c40-b4e14a940fba', 'মুহাম্মদ খোশাল ঠাকুর', 'মুহাম্মদ খোশাল ঠাকুর', 1, 'b41e8f13-b6fb-4c83-87b2-d86ed27b459c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:37:20', '2024-11-13 03:37:20'),
	('079793ea-c569-4ed0-b6ac-74486c823c01', 'আবদুল্লাহ আখের', 'আবদুল্লাহ আখের', 1, NULL, 'bcbe4dcf-1de4-4b04-a42f-800bd95d621b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 05:00:56', '2024-11-13 05:00:56'),
	('09267067-9a3d-4695-8d2f-19eaf767cf04', 'রুম্পা (পতিবন্ধী)', 'রুম্পা (পতিবন্ধী)', 2, '4d035570-88a1-4d8f-b6df-8162d3ecba03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:18:55', '2024-11-12 10:18:55'),
	('0a05c1c4-7429-4e7c-b176-20abcf008853', 'খালিদ বিন মনির', 'খালিদ বিন মনির', 1, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', '698b1d17-8cf4-4140-80c9-aba03f9bbce2', 'ebd37b53-b1ae-45f3-866f-25967b52ff09', '2024-09-23', '2024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:02:52', '2024-11-12 10:03:32'),
	('161d2aff-0509-4e3d-8235-c5aea9408b1e', 'আবদুর রহমান', 'আবদুর রহমান (8th Gen)', 1, '634ea442-2d6e-4084-8da2-411655bdeaa0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 09:55:53', '2024-11-13 05:23:44'),
	('164d8913-7bbd-4604-828d-50853eb1aa23', 'আবদুন নবী', 'আবদুন নবী', 1, 'b41e8f13-b6fb-4c83-87b2-d86ed27b459c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:35:49', '2024-11-13 03:35:49'),
	('18de69f4-25b4-41cd-b369-575a988608ce', 'কাঞ্চন (কন্যা)', 'কাঞ্চন (কন্যা)', 2, 'ab1b9513-62f6-4daa-a58a-659f28dc37e8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:18:09', '2024-11-12 10:18:09'),
	('19728716-9a87-4ce6-9487-bf1412ea4cbc', 'কন্যা', 'কন্যা', 2, 'c44360b2-098a-4f5e-afb4-865b3d1c9e07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:14:21', '2024-11-12 10:14:21'),
	('208539f6-6c82-409d-9247-39873ef58d83', 'এম এ আজিম চোধূরী', 'এম এ আজিম চোধূরী (11th Gen)', 1, '456db16a-5b4e-4ae0-9b00-530ac3896557', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:06:53', '2024-11-13 05:25:19'),
	('224596b3-c7a9-425d-a78d-c5ae8c1c3dbd', 'কন্যা', 'কন্যা', 2, '7911ab75-2666-430b-a2b1-23d10722e6aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:49:44', '2024-11-13 03:49:44'),
	('24694ac2-459b-4027-9ed5-e1336db01e40', 'কন্যা (ওয়াহেদ মুহাম্মদ চৌধুরীর মাতা, বেরুলিয়া)', 'কন্যা (ওয়াহেদ মুহাম্মদ চৌধুরীর মাতা, বেরুলিয়া)', 2, '7911ab75-2666-430b-a2b1-23d10722e6aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:44:58', '2024-11-13 03:44:58'),
	('26b06cb5-fe56-4871-83d4-d9aa370c924a', 'বশির উল্লাহ', 'বশির উল্লাহ', 1, '634ea442-2d6e-4084-8da2-411655bdeaa0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 04:57:02', '2024-11-13 04:57:02'),
	('2ec86f59-c982-4d81-ac31-4c2ade4634db', 'বানু (কন্যা)', 'বানু (কন্যা)', 2, 'ab1b9513-62f6-4daa-a58a-659f28dc37e8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:17:56', '2024-11-12 10:17:56'),
	('30f093e0-6345-4aeb-b0b1-ac07b871e183', 'কন্যা', 'কন্যা (নুরুর মাতা)', 2, 'fe8e23ce-3f48-429f-9ebf-e542911a35bc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:11:01', '2024-11-13 04:00:04'),
	('37c024da-56f6-46a3-872f-a0935adaa10c', 'মুন্সী ছাদেক মুহাম্মদ করিম মোতায়াল্লী', 'মুন্সী ছাদেক মুহাম্মদ করিম মোতায়াল্লী', 1, 'b41e8f13-b6fb-4c83-87b2-d86ed27b459c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:36:53', '2024-11-13 03:36:53'),
	('3b65e099-de71-41f7-bb48-e1a4df758925', 'কন্যা', 'কন্যা (বকতেয়ারের মাতা)', 2, 'fe8e23ce-3f48-429f-9ebf-e542911a35bc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:10:53', '2024-11-13 04:00:40'),
	('3d618fb5-f080-4c6e-8589-f538471aa7e6', 'ডা: এ কে এম নুরুল আলম চৌধুরী', 'ডা: এ কে এম নুরুল আলম চৌধুরী', 1, 'ab1b9513-62f6-4daa-a58a-659f28dc37e8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:17:24', '2024-11-12 10:17:24'),
	('447e4742-788a-4c4f-ac6f-65227bdd7123', 'লতিফুল কেরানী', 'লতিফুল কেরানী', 1, '5e9c4226-41b9-4e61-aaa4-ea609ec6816c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:12:46', '2024-11-12 10:12:46'),
	('456db16a-5b4e-4ae0-9b00-530ac3896557', 'মোহাম্মদ সোলায়মান', 'মোহাম্মদ সোলায়মান (10th Gen)', 1, 'ed39a1ef-a0a2-42d9-a58b-2bbd99ae1008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:06:13', '2024-11-13 05:24:54'),
	('4c06f0b3-ae34-4857-a82d-8295766776ac', 'এনায়েত উল্লাহ', 'এনায়েত উল্লাহ', 1, '634ea442-2d6e-4084-8da2-411655bdeaa0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 09:59:58', '2024-11-12 09:59:58'),
	('4d035570-88a1-4d8f-b6df-8162d3ecba03', 'এ কে এম খোরশেদুল আলম চৌধুরী', 'এ কে এম খোরশেদুল আলম চৌধুরী', 1, 'ab1b9513-62f6-4daa-a58a-659f28dc37e8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:17:45', '2024-11-12 10:17:45'),
	('4e50af0c-3737-4714-a861-53425c25405f', 'কন্যা (মুদন চৌধুরী মাতা, ফতেনগর, গহিরা, রাউজান)', 'কন্যা (মুদন চৌধুরী মাতা, ফতেনগর, গহিরা, রাউজান)', 2, '7911ab75-2666-430b-a2b1-23d10722e6aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:42:17', '2024-11-13 03:42:17'),
	('55128827-0536-4041-afb5-9119c8eab23b', 'দয়া বিবি', 'দয়া বিবি', 2, 'b41e8f13-b6fb-4c83-87b2-d86ed27b459c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:37:31', '2024-11-13 03:37:31'),
	('564e5f7e-fcba-47ca-a723-0eaea2b83281', 'কন্যা (হামজা খানের মাতা, হামজারবাগ ও মোহরা)', 'কন্যা (হামজা খানের মাতা, হামজারবাগ ও মোহরা)', 2, '7911ab75-2666-430b-a2b1-23d10722e6aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:41:30', '2024-11-13 03:41:30'),
	('569a67b8-397d-4906-a88f-43072718750f', 'বরকত উল্লাহ', 'বরকত উল্লাহ', 1, '634ea442-2d6e-4084-8da2-411655bdeaa0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:00:17', '2024-11-12 10:00:17'),
	('5afecc1f-8bc2-4146-a0d9-01ab98089ca9', 'জান মুহাম্মদ পন্ডিত', 'জান মুহাম্মদ পন্ডিত', 1, 'b41e8f13-b6fb-4c83-87b2-d86ed27b459c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:31:02', '2024-11-13 03:31:38'),
	('5baaddbf-6b95-4651-8d0a-d5177af45b11', 'আবেদা খাতুন (কন্যা)', 'আবেদা খাতুন (কন্যা)', 2, '4c06f0b3-ae34-4857-a82d-8295766776ac', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:21:09', '2024-11-12 10:21:09'),
	('5e9c4226-41b9-4e61-aaa4-ea609ec6816c', 'ছলিম উদ্দিন', 'ছলিম উদ্দিন', 1, 'd12b418d-4bdd-42a9-be92-2d8a7feac177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:11:50', '2024-11-12 10:11:50'),
	('5f582933-96f1-4678-9182-ad23feb62fcc', 'কন্যা (হাছান চৌধুরীর মাতা, হাছানখিল, ডাবুয়া, রাউজান)', 'কন্যা (হাছান চৌধুরীর মাতা, হাছানখিল, ডাবুয়া, রাউজান)', 2, '7911ab75-2666-430b-a2b1-23d10722e6aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:43:01', '2024-11-13 03:43:01'),
	('634ea442-2d6e-4084-8da2-411655bdeaa0', 'মুহাম্মদ শফি', 'মুহাম্মদ শফি (7th Generation)', 1, 'acf1dba9-a7fb-4102-8f8b-62750702ca04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 09:58:14', '2024-11-13 03:28:26'),
	('674e5045-8055-4b7e-a1ed-bbe6984cbd21', 'কন্যা', 'কন্যা', 2, 'c44360b2-098a-4f5e-afb4-865b3d1c9e07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:14:27', '2024-11-12 10:14:27'),
	('698b1d17-8cf4-4140-80c9-aba03f9bbce2', 'মল্লিকা আকতার', 'মল্লিকা আকতার', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:02:24', '2024-11-12 10:02:24'),
	('6f0403e0-f64d-4202-9833-85de6cb251b9', 'করিম চোধূরী', 'করিম চোধূরী', 1, '456db16a-5b4e-4ae0-9b00-530ac3896557', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:07:17', '2024-11-12 10:07:17'),
	('785a2e30-705c-46d9-beee-b8a7e4fc6f42', 'ফাতেমা বেগম', 'ফাতেমা বেগম', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:08:22', '2024-11-12 10:08:22'),
	('790f4f56-0495-4f10-a475-daae38db6b97', 'ইয়াসমিন আকতার', 'ইয়াসমিন আকতার', 2, 'de0beea8-a4f0-4870-8e9f-3fd9925fed90', '785a2e30-705c-46d9-beee-b8a7e4fc6f42', '21a1f034-5138-43a2-946a-5f782d4f5413', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:08:00', '2024-11-12 10:25:44'),
	('7911ab75-2666-430b-a2b1-23d10722e6aa', 'মুহম্মদ রেজা খান', 'মুহম্মদ রেজা খান', 1, 'a0f5c8a9-3bfb-42f9-ae93-9302f0d53844', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:32:11', '2024-11-13 03:32:33'),
	('7c9b236d-3280-4646-a8ca-871675f9e957', 'মোঃ আবিরুল ইসলাম', 'মোঃ আবিরুল ইসলাম', 1, NULL, '790f4f56-0495-4f10-a475-daae38db6b97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:25:20', '2024-11-12 10:25:20'),
	('8b3176c0-a121-4096-b784-069fb190c77a', 'Rima Emran', 'Rima Emran', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-21 09:16:40', '2024-11-21 09:16:40'),
	('8db275e0-47db-4ac7-9418-d24ec3c5a2c8', 'কন্যা (ফিতর মুহাম্মদ চৌধুরীর মাতা, ফিতর মোঃ চৌঃ বাড়ী)', 'কন্যা (ফিতর মুহাম্মদ চৌধুরীর মাতা, ফিতর মোঃ চৌঃ বাড়ী)', 2, '7911ab75-2666-430b-a2b1-23d10722e6aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:44:05', '2024-11-13 03:44:05'),
	('8de50c1c-8a65-46f8-9f7a-c075d6fe4187', 'আহমদুল হক', 'আহমদুল হক', 1, '447e4742-788a-4c4f-ac6f-65227bdd7123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:15:19', '2024-11-12 10:15:19'),
	('930bc709-532b-4421-9ee5-0f80cc007a4c', 'আবদুল্লাহ জাহের', 'আবদুল্লাহ জাহের', 1, NULL, 'bcbe4dcf-1de4-4b04-a42f-800bd95d621b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:24:54', '2024-11-12 10:24:54'),
	('9c60874b-b529-4add-93fc-590ad5a4c860', 'সেলিনা আকতার', 'সেলিনা আকতার', 2, '456db16a-5b4e-4ae0-9b00-530ac3896557', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:07:04', '2024-11-12 10:07:04'),
	('a0f5c8a9-3bfb-42f9-ae93-9302f0d53844', 'সৈয়দ আদম বঢ়হা', 'সৈয়দ আদম বঢ়হা', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:32:33', '2024-11-13 03:32:33'),
	('a3bdd981-e337-49ce-88ef-269177dc8e74', 'কন্যা', 'কন্যা', 2, 'c44360b2-098a-4f5e-afb4-865b3d1c9e07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:14:16', '2024-11-12 10:14:16'),
	('a473bce3-0139-4eed-bb5b-944be1af359a', 'সাবরিনা সুলতানা (পম্পা) (কন্যা)', 'সাবরিনা সুলতানা (পম্পা) (কন্যা)', 2, '4d035570-88a1-4d8f-b6df-8162d3ecba03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:19:21', '2024-11-12 10:19:21'),
	('ab1b9513-62f6-4daa-a58a-659f28dc37e8', 'মুন্সী ওবায়দুল্লাহ (বাচা মুন্সী)', 'মুন্সী ওবায়দুল্লাহ (বাচা মুন্সী)', 1, 'f726021b-6e95-49c4-a8ee-684d671876f5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:16:45', '2024-11-12 10:16:45'),
	('ab323c24-4dae-47b6-917d-525fe9ccbc36', 'শফিকুল হক', 'শফিকুল হক', 1, '447e4742-788a-4c4f-ac6f-65227bdd7123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:15:29', '2024-11-12 10:15:29'),
	('acf1dba9-a7fb-4102-8f8b-62750702ca04', 'লাতু পন্ডিত', 'লাতু পন্ডিত', 1, 'e415cc56-d074-4d74-ba90-a2e54ba9f62d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:28:26', '2024-11-13 03:30:32'),
	('aeb51817-dd94-4be2-85b3-59e79a848729', 'মুহাম্মদ আমিন (নিঃসন্তান)', 'মুহাম্মদ আমিন (নিঃসন্তান)', 1, 'acf1dba9-a7fb-4102-8f8b-62750702ca04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:29:41', '2024-11-13 03:29:41'),
	('afb7c15a-44eb-4618-8634-15aef2f2a632', 'দলিলুর রহমান দলু', 'দলিলুর রহমান দলু', 1, 'c44360b2-098a-4f5e-afb4-865b3d1c9e07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:14:07', '2024-11-12 10:14:07'),
	('b1a8d858-dfce-4040-8193-63a18c754eff', 'Al Masud Emran', 'Al Masud Emran', 1, NULL, 'f443d84c-6741-405e-a6e6-c98334d434e7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-21 09:16:03', '2024-11-21 09:16:04'),
	('b41e8f13-b6fb-4c83-87b2-d86ed27b459c', 'মুহাম্মদ মুকিম খাঁন', 'মুহাম্মদ মুকিম খাঁন', 1, '7911ab75-2666-430b-a2b1-23d10722e6aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:31:38', '2024-11-13 03:32:11'),
	('bcbe4dcf-1de4-4b04-a42f-800bd95d621b', 'জিন্নাত আরা বেগম', 'জিন্নাত আরা বেগম', 2, 'de0beea8-a4f0-4870-8e9f-3fd9925fed90', '785a2e30-705c-46d9-beee-b8a7e4fc6f42', '21a1f034-5138-43a2-946a-5f782d4f5413', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:07:47', '2024-11-12 10:26:05'),
	('c44360b2-098a-4f5e-afb4-865b3d1c9e07', 'আবদুল কাদের কেরানী', 'আবদুল কাদের কেরানী', 1, '5e9c4226-41b9-4e61-aaa4-ea609ec6816c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:12:28', '2024-11-12 10:12:28'),
	('c561e91d-6d71-4bd9-bf80-e6380b5c4190', 'সাইফুর রহমান মানিক', 'সাইফুর রহমান মানিক', 1, 'c44360b2-098a-4f5e-afb4-865b3d1c9e07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:13:48', '2024-11-12 10:13:48'),
	('cec11fec-f773-4f1a-88d4-f59bc182d9c8', 'মোবারক আলী', 'মোবারক আলী', 1, 'acf1dba9-a7fb-4102-8f8b-62750702ca04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:29:11', '2024-11-13 03:29:11'),
	('cf094325-39a3-4da5-9d2b-804fcdadc788', 'মুন্সী মুহাম্মদ পন্ডিত', 'মুন্সী মুহাম্মদ পন্ডিত', 1, 'b41e8f13-b6fb-4c83-87b2-d86ed27b459c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:36:15', '2024-11-13 03:36:15'),
	('d12b418d-4bdd-42a9-be92-2d8a7feac177', 'গুরুন মিয়া', 'গুরুন মিয়া', 1, '634ea442-2d6e-4084-8da2-411655bdeaa0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 09:59:44', '2024-11-12 09:59:44'),
	('d3c62e5d-a6e1-404e-8da3-24bb0bfba9dd', 'কন্যা', 'কন্যা', 2, '7911ab75-2666-430b-a2b1-23d10722e6aa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:49:51', '2024-11-13 03:49:51'),
	('dbd21312-943f-4813-b1f6-3dbe45e4679e', 'মনির', 'মোঃ মনিরুল ইসলাম', 1, 'de0beea8-a4f0-4870-8e9f-3fd9925fed90', '785a2e30-705c-46d9-beee-b8a7e4fc6f42', '21a1f034-5138-43a2-946a-5f782d4f5413', '1987-01-20', '1987', NULL, NULL, NULL, 'mmimonir.ctg@gmail.com', '$2y$10$9pU44X9YWXpdUhBoHQgUhuK6V7qJaosjdrIbagCkrr3jJiHXgHGVC', 'Bajaj Point, 67/B DIT Road, Malibagh Chowdhury Para, Dhaka-1219', 'Dhaka', '01974353555', NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 09:51:04', '2024-11-13 07:14:23'),
	('de0beea8-a4f0-4870-8e9f-3fd9925fed90', 'মোঃ নুরুল ইসলাম', 'মোঃ নুরুল ইসলাম', 1, 'ed39a1ef-a0a2-42d9-a58b-2bbd99ae1008', 'f59f9db8-8013-43c8-9a99-2d1c0113e1f4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 09:52:30', '2024-11-12 10:08:38'),
	('e1c1d21a-26ec-4fab-b379-f3d6aa190e62', 'নুরুল হক (নুরু)', 'নুরুল হক (নুরু)', 1, '447e4742-788a-4c4f-ac6f-65227bdd7123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:15:06', '2024-11-12 10:15:06'),
	('e415cc56-d074-4d74-ba90-a2e54ba9f62d', 'চামারু পন্ডিত', 'চামারু পন্ডিত', 1, '5afecc1f-8bc2-4146-a0d9-01ab98089ca9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-13 03:30:32', '2024-11-13 03:31:02'),
	('ebd2de2f-8ff9-48a7-b9c2-b35b83764567', 'সোনা মিয়া', 'সোনা মিয়া', 1, 'c44360b2-098a-4f5e-afb4-865b3d1c9e07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:13:26', '2024-11-12 10:13:26'),
	('ed39a1ef-a0a2-42d9-a58b-2bbd99ae1008', 'ফজলুর রহমান (গুন্নু মিয়াজী)', 'ফজলুর রহমান (গুন্নু মিয়াজী) (9th Gen)', 1, '161d2aff-0509-4e3d-8235-c5aea9408b1e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 09:54:40', '2024-11-13 05:24:19'),
	('efeebc25-8f19-4bb0-9103-9373cc8419c9', 'পাখী (কন্যা)', 'পাখী (কন্যা)', 2, '447e4742-788a-4c4f-ac6f-65227bdd7123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:15:46', '2024-11-12 10:15:46'),
	('f443d84c-6741-405e-a6e6-c98334d434e7', 'সুলতানা রাজিয়া চোধুরী', 'সুলতানা রাজিয়া চোধুরী', 2, '456db16a-5b4e-4ae0-9b00-530ac3896557', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:06:41', '2024-11-12 10:06:41'),
	('f59f9db8-8013-43c8-9a99-2d1c0113e1f4', 'সায়রা খাতুন', 'সায়রা খাতুন', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:08:38', '2024-11-12 10:08:38'),
	('f726021b-6e95-49c4-a8ee-684d671876f5', 'নুরুল উল্লাহ', 'নুরুল উল্লাহ', 1, '634ea442-2d6e-4084-8da2-411655bdeaa0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:00:31', '2024-11-12 10:00:31'),
	('f7e03cab-c702-4db7-81b9-c1314a132672', 'Mushfiq Prodhan', 'Mushfiq Prodhan', 1, NULL, 'f443d84c-6741-405e-a6e6-c98334d434e7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-21 09:16:17', '2024-11-21 09:16:17'),
	('fe8e23ce-3f48-429f-9ebf-e542911a35bc', 'আসাদ উল্লাহ', 'আসাদ উল্লাহ', 1, '634ea442-2d6e-4084-8da2-411655bdeaa0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 09:59:18', '2024-11-12 09:59:18'),
	('ff56417f-4d5f-4975-8295-1d07bbd69c6e', 'কালু', 'কালু', 1, 'c44360b2-098a-4f5e-afb4-865b3d1c9e07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:13:31', '2024-11-12 10:13:31'),
	('ffe80463-c0c1-4a23-a7be-61f3941fa718', 'কন্যা', 'কন্যা', 2, '5e9c4226-41b9-4e61-aaa4-ea609ec6816c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dbd21312-943f-4813-b1f6-3dbe45e4679e', NULL, '2024-11-12 10:12:55', '2024-11-12 10:12:55');

-- Dumping structure for table silsilah.user_metadata
DROP TABLE IF EXISTS `user_metadata`;
CREATE TABLE IF NOT EXISTS `user_metadata` (
  `id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_metadata_user_id_foreign` (`user_id`),
  KEY `user_metadata_key_index` (`key`),
  CONSTRAINT `user_metadata_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Dumping data for table silsilah.user_metadata: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
