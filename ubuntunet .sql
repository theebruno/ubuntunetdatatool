-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 03, 2022 at 02:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ubuntunet`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `event`, `created_at`, `updated_at`) VALUES
(1, 'permission', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 1, NULL, NULL, '[]', NULL, NULL, '2022-09-06 12:13:55', '2022-09-06 12:13:55'),
(2, 'permission', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 2, NULL, NULL, '[]', NULL, NULL, '2022-09-06 12:13:55', '2022-09-06 12:13:55'),
(3, 'permission', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 3, NULL, NULL, '[]', NULL, NULL, '2022-09-06 12:13:55', '2022-09-06 12:13:55'),
(4, 'permission', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 4, NULL, NULL, '[]', NULL, NULL, '2022-09-06 12:13:55', '2022-09-06 12:13:55'),
(5, 'permission', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 5, NULL, NULL, '[]', NULL, NULL, '2022-09-06 12:13:55', '2022-09-06 12:13:55'),
(6, 'permission', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 6, NULL, NULL, '[]', NULL, NULL, '2022-09-06 12:15:01', '2022-09-06 12:15:01'),
(7, 'permission', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 7, NULL, NULL, '[]', NULL, NULL, '2022-09-06 12:15:01', '2022-09-06 12:15:01'),
(8, 'permission', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 8, NULL, NULL, '[]', NULL, NULL, '2022-09-06 12:15:01', '2022-09-06 12:15:01'),
(9, 'permission', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 9, NULL, NULL, '[]', NULL, NULL, '2022-09-06 12:15:01', '2022-09-06 12:15:01'),
(10, 'permission', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 10, NULL, NULL, '[]', NULL, NULL, '2022-09-06 12:15:01', '2022-09-06 12:15:01'),
(11, 'user', 'created', 'App\\Models\\User', 1, NULL, NULL, '[]', NULL, NULL, '2022-09-06 12:15:01', '2022-09-06 12:15:01'),
(12, 'user', 'created', 'App\\Models\\User', 2, 'App\\Models\\User', 1, '[]', NULL, NULL, '2022-09-06 12:28:48', '2022-09-06 12:28:48'),
(13, 'permission', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 11, 'App\\Models\\User', 1, '[]', NULL, NULL, '2022-09-06 12:37:04', '2022-09-06 12:37:04'),
(14, 'role', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Role', 13, 'App\\Models\\User', 1, '[]', NULL, NULL, '2022-09-06 12:50:38', '2022-09-06 12:50:38'),
(15, 'permission', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 12, 'App\\Models\\User', 1, '[]', NULL, NULL, '2022-09-06 12:52:56', '2022-09-06 12:52:56'),
(16, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Role', 3, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 04:37:38', '2022-09-20 04:37:38'),
(17, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Role', 4, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 04:37:44', '2022-09-20 04:37:44'),
(18, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Role', 5, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 04:37:48', '2022-09-20 04:37:48'),
(19, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Role', 6, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 04:37:54', '2022-09-20 04:37:54'),
(20, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Role', 9, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 04:38:00', '2022-09-20 04:38:00'),
(21, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Role', 10, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 04:38:56', '2022-09-20 04:38:56'),
(22, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Role', 12, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 04:39:04', '2022-09-20 04:39:04'),
(23, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Role', 13, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 04:39:09', '2022-09-20 04:39:09'),
(24, 'default', 'deleted', 'App\\Models\\User', 2, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 05:36:08', '2022-09-20 05:36:08'),
(25, 'default', 'created', 'App\\Models\\User', 3, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-09-20 05:40:09', '2022-09-20 05:40:09'),
(26, 'default', 'updated', 'App\\Models\\User', 3, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-09-20 05:40:58', '2022-09-20 05:40:58'),
(27, 'default', 'created', 'App\\Models\\User', 4, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-09-20 10:12:54', '2022-09-20 10:12:54'),
(28, 'default', 'deleted', 'App\\Models\\User', 4, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 10:16:10', '2022-09-20 10:16:10'),
(29, 'default', 'created', 'App\\Models\\User', 5, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-09-20 10:16:51', '2022-09-20 10:16:51'),
(30, 'default', 'deleted', 'App\\Models\\User', 5, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 10:23:15', '2022-09-20 10:23:15'),
(31, 'default', 'created', 'App\\Models\\User', 6, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-09-20 10:24:14', '2022-09-20 10:24:14'),
(32, 'default', 'deleted', 'App\\Models\\User', 6, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 10:27:05', '2022-09-20 10:27:05'),
(33, 'default', 'created', 'App\\Models\\User', 7, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-09-20 10:27:40', '2022-09-20 10:27:40'),
(34, 'default', 'deleted', 'App\\Models\\User', 7, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 10:33:20', '2022-09-20 10:33:20'),
(35, 'default', 'created', 'App\\Models\\User', 8, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-09-20 10:47:52', '2022-09-20 10:47:52'),
(36, 'default', 'deleted', 'App\\Models\\User', 8, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 10:48:22', '2022-09-20 10:48:22'),
(37, 'default', 'created', 'App\\Models\\User', 9, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-09-20 10:48:55', '2022-09-20 10:48:55'),
(38, 'default', 'deleted', 'App\\Models\\User', 9, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 11:02:35', '2022-09-20 11:02:35'),
(39, 'default', 'created', 'App\\Models\\User', 10, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-09-20 11:03:20', '2022-09-20 11:03:20'),
(40, 'default', 'deleted', 'App\\Models\\User', 10, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 12:16:55', '2022-09-20 12:16:55'),
(41, 'default', 'created', 'App\\Models\\User', 11, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-09-20 12:17:35', '2022-09-20 12:17:35'),
(42, 'default', 'deleted', 'App\\Models\\User', 11, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 12:22:42', '2022-09-20 12:22:42'),
(43, 'default', 'deleted', 'App\\Models\\User', 3, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-09-20 12:27:38', '2022-09-20 12:27:38'),
(44, 'default', 'created', 'App\\Models\\User', 12, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-09-20 12:28:04', '2022-09-20 12:28:04'),
(45, 'default', 'created', 'App\\Models\\User', 13, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-09-28 08:14:41', '2022-09-28 08:14:41'),
(46, 'default', 'created', 'App\\Models\\User', 14, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-09-28 08:25:13', '2022-09-28 08:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `questionid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surveyid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_11_11_065705_create_roles_table', 1),
(6, '2020_11_12_073142_create_profiles_table', 1),
(7, '2020_11_13_000001_create_role_user_table', 1),
(8, '2020_11_19_072559_create_permissions_table', 1),
(9, '2021_01_04_050820_create_activity_log_table', 1),
(16, '2021_05_26_123406_create_settings_table', 2),
(17, '2021_05_28_043043_create_preferences_table', 2),
(18, '2021_05_28_051525_create_preference_user_table', 2),
(19, '2022_09_07_123001_create_surveys_table', 2),
(20, '2022_09_07_172020_create_questions_table', 2),
(21, '2022_09_07_172607_create_answers_table', 2),
(22, '2022_09_11_001905_add_step_to_surveys', 3),
(23, '2022_09_11_001927_add_step_to_questions', 3),
(24, '2022_09_15_074900_create_template_table', 4),
(25, '2022_09_20_181051_add_status_tto_surveys', 5),
(26, '2022_09_24_063314_create_surveystatus_table', 6),
(30, '2022_09_26_183521_create_nren_table', 7),
(31, '2022_10_01_081556_create_saved_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `nren`
--

CREATE TABLE `nren` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nren` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `networkname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `generalemail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yearofcreation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relationshipwithgovernment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legalentitytype` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `governance` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nren`
--

INSERT INTO `nren` (`id`, `userid`, `nren`, `networkname`, `country`, `website`, `address`, `generalemail`, `tel`, `fax`, `yearofcreation`, `relationshipwithgovernment`, `legalentitytype`, `governance`, `created_at`, `updated_at`) VALUES
(3, '12', 'KENET', 'Kenya Network', 'Uganda', 'ken.com', 'Kampala Uganda', 'brunodonatelo@gmail.com', '0708689975', '84399393', '2000', '[\"Endorsed by Ministry of Education\",\"part of Government Ministry, Department or Agency\"]', '[\"not-for-profit trust\",\"others\"]', 'not relevant', '2022-09-27 02:56:19', NULL),
(4, '1', 'admin net', 'Kenya Network', 'Albania', 'yy', 'adress', 'u@t.ciom', '000', '00', '88', '[\"Endorsed by Ministry of Education\"]', '[\"not-for profit membership organisation\"]', 'hh', '2022-10-01 12:09:58', '2022-10-01 18:34:26'),
(11, '14', 'KENET', 'Kenya Network', 'Uganda', 'k', 'Kàmpalà. City', 'brunodonatelo@gmail.com', '9988', 'none', '2020', '[\"none\",\"Endorsed by Ministry of Education\"]', '[\"not-for profit membership organisation\",\"not-for-profit trust\"]', 'jj', '2022-10-01 13:12:10', '2022-10-01 13:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `can` tinyint(1) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `browse`, `read`, `edit`, `add`, `delete`, `name`, `can`, `role_id`, `model`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Role', '2022-09-06 12:13:55', '2022-09-06 12:13:55'),
(2, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Permission', '2022-09-06 12:13:55', '2022-09-06 12:13:55'),
(3, 1, 1, 1, 1, 1, NULL, NULL, 2, 'User', '2022-09-06 12:13:55', '2022-09-06 12:13:55'),
(4, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Setting', '2022-09-06 12:13:55', '2022-09-06 12:13:55'),
(5, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Preference', '2022-09-06 12:13:55', '2022-09-06 12:13:55'),
(6, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Role', '2022-09-06 12:15:01', '2022-09-06 12:15:01'),
(7, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Permission', '2022-09-06 12:15:01', '2022-09-06 12:15:01'),
(8, 1, 1, 1, 1, 1, NULL, NULL, 2, 'User', '2022-09-06 12:15:01', '2022-09-06 12:15:01'),
(9, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Setting', '2022-09-06 12:15:01', '2022-09-06 12:15:01'),
(10, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Preference', '2022-09-06 12:15:01', '2022-09-06 12:15:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`roles`)),
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preference_user`
--

CREATE TABLE `preference_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preference_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `gender` int(11) DEFAULT NULL,
  `martial_status` int(11) DEFAULT NULL,
  `blood_group` int(11) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`phone_no`)),
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `username`, `profile_pic`, `status`, `gender`, `martial_status`, `blood_group`, `country`, `address`, `phone_no`, `email`, `birthday`, `facebook`, `instagram`, `twitter`, `linkedin`, `father_name`, `mother_name`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 1, NULL, NULL, NULL, 'Uganda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 12:15:01', '2022-10-01 09:28:54'),
(4, 12, NULL, NULL, 1, NULL, NULL, NULL, 'Uganda', 'Kampala,Uganda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-20 12:28:04', '2022-09-26 12:00:00'),
(5, 13, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-28 08:14:41', '2022-09-28 08:14:41'),
(6, 14, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-28 08:25:13', '2022-09-28 08:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surveyid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `step` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `name`, `options`, `type`, `surveyid`, `userid`, `created_at`, `updated_at`, `step`) VALUES
(1, 'how to drive', '', 'text', '13', '1', '2022-09-11 16:32:47', NULL, 1),
(2, 'how to move', 'YES,NO', 'single', '13', '1', '2022-09-11 16:33:39', NULL, 1),
(3, 'how to drive', '', 'text', '14', '2', '2022-09-12 05:34:52', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `level`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'This is a super admin user', 5, NULL, NULL),
(2, 'admin', 'This is an admin user', 4, NULL, NULL),
(11, 'user', 'This is an normal user', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-09-06 12:15:01', '2022-09-06 12:15:01'),
(4, 11, 12, '2022-09-20 12:28:04', '2022-09-20 12:28:04'),
(5, 11, 13, '2022-09-28 08:14:41', '2022-09-28 08:14:41'),
(6, 11, 14, '2022-09-28 08:25:13', '2022-09-28 08:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `questionid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surveyid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `text_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `setting_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`setting_json`)),
  `setting_custom` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`setting_custom`)),
  `setting_type` int(11) NOT NULL,
  `setting_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `step` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveystatus`
--

CREATE TABLE `surveystatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surveyid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveystatus`
--

INSERT INTO `surveystatus` (`id`, `surveyid`, `userid`, `status`, `created_at`, `updated_at`) VALUES
(17, '18', '12', 'answered', '2022-10-01 09:20:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surveyid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `step` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `name`, `options`, `type`, `surveyid`, `userid`, `created_at`, `updated_at`, `step`) VALUES
(1, 'Country', '', 'text', '0', '1', NULL, NULL, 1),
(2, 'Name of NREN', '', 'text', '0', '1', NULL, NULL, 1),
(7, 'Website', '', 'text', '0', '1', NULL, NULL, 1),
(9, 'When was your NREN established?', '', 'date', '0', '', NULL, NULL, 2),
(10, 'Give an outline of the main development stages that your NREN has gone through since establishment', '', 'textarea', '0', '', NULL, NULL, 2),
(11, 'What Governance structure doues your NREN have?', '', 'text', '0', '', NULL, NULL, 2),
(12, 'What is the Composition of the Governance?', '', 'text', '0', '', NULL, NULL, 2),
(13, 'Statuses / missions', '', 'textarea', '0', '', NULL, NULL, 2),
(14, 'Staff dedicated to the structure', 'group', 'text', '0', '', NULL, NULL, 2),
(15, 'Equivalent in full time', 'group', 'text', '0', '', NULL, NULL, 2),
(16, 'Short term (2 years) needed profiles (How many are needed to fill existing positions)', 'group', 'text', '0', '', NULL, NULL, 2),
(17, 'Short term (2 years) needs in terms of training and skillset', 'group', 'text', '0', '', NULL, NULL, 2),
(18, 'National network (backbone)', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '1', '', NULL, NULL, 2),
(19, 'Campus network', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '1', '', NULL, NULL, 2),
(20, 'Services', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '1', '', NULL, NULL, 2),
(21, 'Other', '', 'textarea', '', '', NULL, NULL, 2),
(22, 'Existing NREN roadmap or stratetigic plan', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '0', '1', NULL, NULL, 2),
(23, 'Provide key elements', '', 'textarea', '0', '', NULL, NULL, 2),
(24, 'When did your NREN become a member of UbuntuNet Alliance?', '', 'date', '0', '1', NULL, NULL, 2),
(25, 'Operating', '', 'text', '2', '', NULL, NULL, 3),
(26, 'Investment', '', 'text', '2', '', NULL, NULL, 3),
(27, ' Tell us about you NREN\'s Business model', '', 'textarea', '', '', NULL, NULL, 3),
(28, 'What are the main source of funding for your NREN?', '', 'textarea', '', '', NULL, NULL, 3),
(29, 'If based on a commercial model: state  offers? and tariffs?', '', 'textarea', '', '', NULL, NULL, 3),
(30, 'Number of organizations connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(31, 'Average bandwidth (in Mbit/s)', '', 'text', '3', '', NULL, NULL, 4),
(32, 'Number of organizations member of the NREN', '', 'text', '3', '', NULL, NULL, 4),
(33, 'Number of end-users connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(34, 'Estimated number of organizations in the country', '', 'text', '3', '', NULL, NULL, 4),
(35, 'Estimated number of users in the country', '', 'text', '3', '', NULL, NULL, 4),
(36, 'Number of organizations connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(37, 'Average bandwidth (in Mbit/s)', '', 'text', '3', '', NULL, NULL, 4),
(38, 'Number of organizations member of the NREN', '', 'text', '3', '', NULL, NULL, 4),
(39, 'Number of end-users connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(40, 'Estimated number of organizations in the country', '', 'text', '3', '', NULL, NULL, 4),
(41, 'Estimated number of users in the country', '', 'text', '3', '', NULL, NULL, 4),
(42, 'Number of organizations connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(43, 'Average bandwidth (in Mbit/s)', '', 'text', '3', '', NULL, NULL, 4),
(44, 'Number of organizations member of the NREN', '', 'text', '3', '', NULL, NULL, 4),
(45, 'Number of end-users connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(46, 'Estimated number of organizations in the country', '', 'text', '3', '', NULL, NULL, 4),
(47, 'Estimated number of users in the country', '', 'text', '3', '', NULL, NULL, 4),
(48, 'Number of organizations connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(49, 'Average bandwidth (in Mbit/s)', '', 'text', '3', '', NULL, NULL, 4),
(50, 'Number of organizations member of the NREN', '', 'text', '3', '', NULL, NULL, 4),
(51, 'Number of end-users connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(52, 'Estimated number of organizations in the country', '', 'text', '3', '', NULL, NULL, 4),
(53, 'Estimated number of users in the country', '', 'text', '3', '', NULL, NULL, 4),
(54, 'Number of organizations connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(55, 'Average bandwidth (in Mbit/s)', '', 'text', '3', '', NULL, NULL, 4),
(56, 'Number of organizations member of the NREN', '', 'text', '3', '', NULL, NULL, 4),
(57, 'Number of end-users connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(58, 'Estimated number of organizations in the country', '', 'text', '3', '', NULL, NULL, 4),
(59, 'Estimated number of users in the country', '', 'text', '3', '', NULL, NULL, 4),
(60, 'Number of organizations connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(61, 'Average bandwidth (in Mbit/s)', '', 'text', '3', '', NULL, NULL, 4),
(62, 'Number of organizations member of the NREN', '', 'text', '3', '', NULL, NULL, 4),
(63, 'Number of end-users connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(64, 'Estimated number of organizations in the country', '', 'text', '3', '', NULL, NULL, 4),
(65, 'Estimated number of users in the country', '', 'text', '3', '', NULL, NULL, 4),
(66, 'Number of organizations connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(67, 'Average bandwidth (in Mbit/s)', '', 'text', '3', '', NULL, NULL, 4),
(68, 'Number of organizations member of the NREN', '', 'text', '3', '', NULL, NULL, 4),
(69, 'Number of end-users connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(70, 'Estimated number of organizations in the country', '', 'text', '3', '', NULL, NULL, 4),
(71, 'Estimated number of users in the country', '', 'text', '3', '', NULL, NULL, 4),
(72, 'Number of organizations connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(73, 'Average bandwidth (in Mbit/s)', '', 'text', '3', '', NULL, NULL, 4),
(74, 'Number of organizations member of the NREN', '', 'text', '3', '', NULL, NULL, 4),
(75, 'Number of end-users connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(76, 'Estimated number of organizations in the country', '', 'text', '3', '', NULL, NULL, 4),
(77, 'Estimated number of users in the country', '', 'text', '3', '', NULL, NULL, 4),
(78, 'Number of organizations connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(79, 'Average bandwidth (in Mbit/s)', '', 'text', '3', '', NULL, NULL, 4),
(80, 'Number of organizations member of the NREN', '', 'text', '3', '', NULL, NULL, 4),
(81, 'Number of end-users connected to the NREN backbone', '', 'text', '3', '', NULL, NULL, 4),
(82, 'Estimated number of organizations in the country', '', 'text', '3', '', NULL, NULL, 4),
(83, 'Estimated number of users in the country', '', 'text', '3', '', NULL, NULL, 4),
(84, 'Number of other potential institutions to connect', '', 'text', '', '', NULL, NULL, 4),
(85, 'Does your NREN have an Acceptable use Policy?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 4),
(86, ' If Yes, provide a link to the Acceptable Use Policy, if accesiible online', '', 'text', '', '', NULL, NULL, 4),
(87, ' What is the main type of usage of the network?', '', 'text', '', '', NULL, NULL, 4),
(88, 'Initiatives / Projects requesting good national and international connectivity ', '', 'textarea', '', '', NULL, NULL, 4),
(92, 'National network infrastructure\r\nOwnership (for example is it woned by the NREN, or State, or Telecom operator...)', '', 'text', '5', '', NULL, NULL, 5),
(93, 'Acquisition mode (clarify, for example NREN tender process, state provisio, etc)', '', 'text', '5', '', NULL, NULL, 5),
(94, 'When do you expect to review/upgrade the main/strategic part of your network?', '', 'text', '5', '', NULL, NULL, 5),
(95, 'Operational national network architecture', '', 'file', '', '', NULL, NULL, 5),
(96, 'Does your NREN operate Dark fiber on its network?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 5),
(97, 'Does your NREN have Leased Lines?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 5),
(98, 'Who does infrastructure, equipment and services supervision for the NREN?', '{\"first\":\"Done by NREN\",\"second\":\"Done by telecommunications operator\",\"third\":\"Other\",\"fourth\":\"No answer\"}', 'single', '', '', NULL, NULL, 5),
(99, 'Who does and administration of equipment and supervision tools, ticketing, modification implementation for the NREN?', '{\"first\":\"Done by NREN\",\"second\":\"Done by telecommunications operator\",\"third\":\"Other\",\"fourth\":\"No answer\"}', 'single', '', '', NULL, NULL, 5),
(106, 'Who does network maintenance for the NREN?', '{\"first\":\"Done by NREN\",\"second\":\"Done by telecommunications operator\",\"third\":\"Other\",\"fourth\":\"No answer\"}', 'single', '', '', NULL, NULL, 5),
(107, 'Campus networks enable end to end services to find users', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 5),
(108, 'Main issues', '', 'textarea', '', '', NULL, NULL, 5),
(109, 'The NREN financially participates into AfricaConnect 3', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 5),
(110, 'The NREN is connected through AfricaConnect 3', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 5),
(111, 'NREN has a Transit contract with a telecommunications operator', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 5),
(115, ' Does your NREN currently get connectivity services from UbuntuNet Alliance?\r\n', '{\"first\":\"NREN has a network and is connected to UbuntuNet backbone\",\"second\":\"NREN has a network, but is not connected to the UbuntuNet backbone\",\"third\":\"NREN does not yet have a network\"}', 'single', '', '', NULL, NULL, 5),
(116, 'Can you share any network developments/upgrades plans that your NREN has', '', 'textarea', '', '', NULL, NULL, 5),
(117, ' List any Deployed and operational services that your NREN has.', '', 'textarea', '', '', NULL, NULL, 6),
(118, 'What other services does your NREN plan to develop?', '', 'textarea', '', '', NULL, NULL, 6),
(119, ' Does your NREN have a CERT?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 6),
(120, 'Is there an existing national Datacenter in your country?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 6),
(121, 'Does your NREN connect to the Datacenter?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 6),
(122, 'Existence of national High Performance Computing?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 6),
(123, 'HPC connected to the NREN?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 6),
(124, 'Examples of content available on the NREN', '', 'textarea', '', '', NULL, NULL, 6),
(125, 'Existing Internet Exchange Point (IXP) in the country', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 7),
(126, 'Url', '', 'url', '', '', NULL, NULL, 7),
(130, 'Is it operated by the NREN?', '{\"first\":\"NO\",\"second\":\"YES\"}', 'single', '', '', NULL, NULL, 7),
(131, 'Is your NREN peering on this IXP?', '{\"first\":\"NO\",\"second\":\"YES\"}', 'single', '', '', NULL, NULL, 7),
(132, 'Telecom Market', '{\"first\":\"Monopoly\",\"second\":\"Duopoly\",\"third\":\"Competitive\"}', 'single', '', '', NULL, NULL, 7),
(133, ' Level of tariffs on the wholesale market On average USD/Mps/month', '', 'text', '', '', NULL, NULL, 7),
(134, 'Number of public university in the country', '', 'text', '', '', NULL, NULL, 7),
(135, ' Number of private university in the country', '', 'text', '', '', NULL, NULL, 7),
(136, 'Number of students in the country', '', 'text', '', '', NULL, NULL, 7),
(137, 'Number of researchers in the country', '', 'text', '', '', NULL, NULL, 7),
(138, 'Main research collaborations countries', '', 'text', '', '', NULL, NULL, 7),
(139, ' Research centers: is CIRAD located in the country?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 7),
(140, ' Research centers: is  IRD located in the country?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 7),
(141, 'Do you have any comment to add? or any specific needs you may want to share?', '', 'textarea', '', '', NULL, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@admin.com', NULL, '$2y$10$93Qdu8OhPcSQf.oMS1n/XO4m355wqjergUtjs9pieM0pQFTJv2oEq', NULL, '2022-09-06 12:15:01', '2022-09-06 12:15:01'),
(12, 'testtest', 'test@test.com', NULL, '$2y$10$ZeT1ZYE4Oo2PAYHDuTCJvOOvFokRkScXfgfVnFYLtUIvFPZNmMSkW', NULL, '2022-09-20 12:28:04', '2022-09-20 12:28:04'),
(13, 'testtwo', 'testtwo@testtwp.com', NULL, '$2y$10$srOYW1YFGIgt.cw6IVs4Be0p/JxzMYm45nznDVY1rsbHIUvzKk2ua', NULL, '2022-09-28 08:14:41', '2022-09-28 08:14:41'),
(14, 'testthree', 'testthree@testhree.com', NULL, '$2y$10$nCXSb.Y5NEYSXk0R7tDoCOaEbkrngsg7CRb.Y32X0dougNEXrfRym', NULL, '2022-09-28 08:25:13', '2022-09-28 08:25:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nren`
--
ALTER TABLE `nren`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preference_user`
--
ALTER TABLE `preference_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved`
--
ALTER TABLE `saved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveystatus`
--
ALTER TABLE `surveystatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1388;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `nren`
--
ALTER TABLE `nren`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preference_user`
--
ALTER TABLE `preference_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `saved`
--
ALTER TABLE `saved`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1081;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `surveystatus`
--
ALTER TABLE `surveystatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
