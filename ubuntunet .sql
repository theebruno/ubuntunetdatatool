-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2022 at 11:48 PM
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
(1, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 1, NULL, NULL, '[]', NULL, 'created', '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
(2, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 2, NULL, NULL, '[]', NULL, 'created', '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
(3, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 3, NULL, NULL, '[]', NULL, 'created', '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
(4, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 4, NULL, NULL, '[]', NULL, 'created', '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
(5, 'default', 'created', 'Pratiksh\\Adminetic\\Models\\Admin\\Permission', 5, NULL, NULL, '[]', NULL, 'created', '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
(6, 'default', 'created', 'App\\Models\\User', 1, NULL, NULL, '[]', NULL, 'created', '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
(7, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Role', 3, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-10-03 10:47:57', '2022-10-03 10:47:57'),
(8, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Role', 4, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-10-03 10:48:01', '2022-10-03 10:48:01'),
(9, 'default', 'deleted', 'Pratiksh\\Adminetic\\Models\\Admin\\Role', 6, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-10-03 10:48:07', '2022-10-03 10:48:07'),
(10, 'default', 'created', 'App\\Models\\User', 2, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-03 11:04:38', '2022-10-03 11:04:38'),
(11, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-03 11:20:19', '2022-10-03 11:20:19'),
(47, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-03 16:33:57', '2022-10-03 16:33:57'),
(48, 'default', 'created', 'App\\Models\\User', 15, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 06:08:40', '2022-10-04 06:08:40'),
(49, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-04 06:09:13', '2022-10-04 06:09:13'),
(50, 'default', 'created', 'App\\Models\\User', 16, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 10:48:31', '2022-10-04 10:48:31'),
(51, 'default', 'created', 'App\\Models\\User', 17, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 10:49:54', '2022-10-04 10:49:54'),
(52, 'default', 'created', 'App\\Models\\User', 18, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 10:51:43', '2022-10-04 10:51:43'),
(53, 'default', 'created', 'App\\Models\\User', 19, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 10:53:38', '2022-10-04 10:53:38'),
(54, 'default', 'created', 'App\\Models\\User', 20, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 10:54:43', '2022-10-04 10:54:43'),
(55, 'default', 'created', 'App\\Models\\User', 21, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 10:57:57', '2022-10-04 10:57:57'),
(56, 'default', 'created', 'App\\Models\\User', 22, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 11:16:50', '2022-10-04 11:16:50'),
(57, 'default', 'created', 'App\\Models\\User', 23, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 11:18:08', '2022-10-04 11:18:08'),
(58, 'default', 'created', 'App\\Models\\User', 24, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 11:19:03', '2022-10-04 11:19:03'),
(59, 'default', 'created', 'App\\Models\\User', 25, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 11:22:18', '2022-10-04 11:22:18'),
(60, 'default', 'created', 'App\\Models\\User', 26, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 11:32:57', '2022-10-04 11:32:57'),
(61, 'default', 'created', 'App\\Models\\User', 27, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 11:35:19', '2022-10-04 11:35:19'),
(62, 'default', 'created', 'App\\Models\\User', 28, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 11:36:31', '2022-10-04 11:36:31'),
(63, 'default', 'created', 'App\\Models\\User', 29, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 11:39:44', '2022-10-04 11:39:44'),
(64, 'default', 'created', 'App\\Models\\User', 30, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 11:42:55', '2022-10-04 11:42:55'),
(65, 'default', 'created', 'App\\Models\\User', 31, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-04 11:46:22', '2022-10-04 11:46:22'),
(66, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-04 11:47:44', '2022-10-04 11:47:44'),
(67, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-04 12:52:45', '2022-10-04 12:52:45'),
(68, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-04 12:57:37', '2022-10-04 12:57:37'),
(69, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-05 08:31:57', '2022-10-05 08:31:57'),
(70, 'default', 'updated', 'App\\Models\\User', 29, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-05 09:39:22', '2022-10-05 09:39:22'),
(71, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-05 09:39:36', '2022-10-05 09:39:36'),
(72, 'default', 'updated', 'App\\Models\\User', 27, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-05 12:46:09', '2022-10-05 12:46:09'),
(73, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-05 12:46:15', '2022-10-05 12:46:15'),
(74, 'default', 'updated', 'App\\Models\\User', 31, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-05 22:53:13', '2022-10-05 22:53:13'),
(75, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-05 23:19:04', '2022-10-05 23:19:04'),
(76, 'default', 'deleted', 'App\\Models\\User', 15, 'App\\Models\\User', 1, '[]', NULL, 'deleted', '2022-10-05 23:28:01', '2022-10-05 23:28:01'),
(77, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-05 23:36:05', '2022-10-05 23:36:05'),
(78, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-06 11:09:23', '2022-10-06 11:09:23'),
(79, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-06 11:49:08', '2022-10-06 11:49:08'),
(80, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-06 12:19:02', '2022-10-06 12:19:02'),
(81, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-06 14:26:33', '2022-10-06 14:26:33'),
(82, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-29 03:41:23', '2022-10-29 03:41:23'),
(83, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-30 09:06:00', '2022-10-30 09:06:00'),
(84, 'default', 'created', 'App\\Models\\User', 32, 'App\\Models\\User', 1, '[]', NULL, 'created', '2022-10-30 09:07:16', '2022-10-30 09:07:16'),
(85, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-30 09:07:23', '2022-10-30 09:07:23'),
(86, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-30 10:02:47', '2022-10-30 10:02:47'),
(87, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-30 10:04:07', '2022-10-30 10:04:07'),
(88, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-30 10:45:45', '2022-10-30 10:45:45'),
(89, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-31 05:59:04', '2022-10-31 05:59:04'),
(90, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-31 05:59:58', '2022-10-31 05:59:58'),
(91, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-11-05 06:16:58', '2022-11-05 06:16:58'),
(92, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-11-05 06:46:55', '2022-11-05 06:46:55'),
(93, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-11-05 07:25:45', '2022-11-05 07:25:45'),
(94, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-11-05 12:57:31', '2022-11-05 12:57:31');

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

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `name`, `questionid`, `surveyid`, `userid`, `created_at`, `updated_at`) VALUES
(3816, 'N/A', '1', '22', '19', '2022-11-05 12:10:27', NULL),
(3817, 'N/A', '2', '22', '19', '2022-11-05 12:10:27', NULL),
(3818, 'N/A', '3', '22', '19', '2022-11-05 12:10:27', NULL),
(3819, 'N/A', '4', '22', '19', '2022-11-05 12:10:27', NULL),
(3820, '[\"Not-for-profit membership organisation\",\"Not-for-profit company or trust\"]', '10', '22', '19', '2022-11-05 12:10:27', NULL),
(3821, 'N/A', '11', '22', '19', '2022-11-05 12:10:27', NULL),
(3822, '[\"Board\"]', '12', '22', '19', '2022-11-05 12:10:27', NULL),
(3823, 'N/A', '14', '22', '19', '2022-11-05 12:10:27', NULL),
(3824, 'N/A', '15', '22', '19', '2022-11-05 12:10:27', NULL),
(3825, 'Yes', '16', '22', '19', '2022-11-05 12:10:27', NULL),
(3826, 'Yes', '17', '22', '19', '2022-11-05 12:10:27', NULL),
(3827, 'Yes', '18', '22', '19', '2022-11-05 12:10:27', NULL),
(3828, 'No', '19', '22', '19', '2022-11-05 12:10:27', NULL),
(3829, '[\"Strategic Plan\",\"Business Plan\"]', '20', '22', '19', '2022-11-05 12:10:27', NULL),
(3830, '0', '21', '22', '19', '2022-11-05 12:10:27', NULL),
(3831, '0', '22', '22', '19', '2022-11-05 12:10:27', NULL),
(3832, '0', '23', '22', '19', '2022-11-05 12:10:27', NULL),
(3833, '0', '24', '22', '19', '2022-11-05 12:10:27', NULL),
(3834, 'N/A', '25', '22', '19', '2022-11-05 12:10:27', NULL),
(3835, 'N/A', '26', '22', '19', '2022-11-05 12:10:27', NULL),
(3836, 'N/A', '27', '22', '19', '2022-11-05 12:10:27', NULL),
(3837, '[\"none\",\"empty\"]', '28', '22', '19', '2022-11-05 12:10:27', NULL),
(3838, 'N/A', '29', '22', '19', '2022-11-05 12:10:27', NULL),
(3839, '[\"none\",\"empty\"]', '31', '22', '19', '2022-11-05 12:10:27', NULL),
(3840, 'N/A', '32', '22', '19', '2022-11-05 12:10:27', NULL),
(3841, 'N/A', '33', '22', '19', '2022-11-05 12:10:27', NULL),
(3842, 'N/A', '34', '22', '19', '2022-11-05 12:10:27', NULL),
(3843, 'N/A', '35', '22', '19', '2022-11-05 12:10:27', NULL),
(3844, '0', '36', '22', '19', '2022-11-05 12:10:27', NULL),
(3845, '0', '37', '22', '19', '2022-11-05 12:10:27', NULL),
(3846, '0', '38', '22', '19', '2022-11-05 12:10:27', NULL),
(3847, '[\"none\",\"empty\"]', '39', '22', '19', '2022-11-05 12:10:27', NULL),
(3848, 'N/A', '41', '22', '19', '2022-11-05 12:10:27', NULL),
(3849, '0', '42', '22', '19', '2022-11-05 12:10:27', NULL),
(3850, '0', '43', '22', '19', '2022-11-05 12:10:27', NULL),
(3851, '[\"none\",\"empty\"]', '50', '22', '19', '2022-11-05 12:10:27', NULL),
(3852, '0', '51', '22', '19', '2022-11-05 12:10:27', NULL),
(3853, '0', '52', '22', '19', '2022-11-05 12:10:27', NULL),
(3854, 'N/A', '53', '22', '19', '2022-11-05 12:10:27', NULL),
(3855, '0', '54', '22', '19', '2022-11-05 12:10:27', NULL),
(3856, '0', '55', '22', '19', '2022-11-05 12:10:27', NULL),
(3857, '[\"none\",\"empty\"]', '56', '22', '19', '2022-11-05 12:10:27', NULL),
(3858, 'N/A', '57', '22', '19', '2022-11-05 12:10:27', NULL),
(3859, '[\"none\",\"empty\"]', '58', '22', '19', '2022-11-05 12:10:27', NULL),
(3860, 'N/A', '59', '22', '19', '2022-11-05 12:10:27', NULL),
(3861, 'N/A', '60', '22', '19', '2022-11-05 12:10:27', NULL),
(3862, '[\"none\",\"empty\"]', '61', '22', '19', '2022-11-05 12:10:27', NULL),
(3863, 'N/A', '62', '22', '19', '2022-11-05 12:10:27', NULL),
(3864, '[\"none\",\"empty\"]', '63', '22', '19', '2022-11-05 12:10:27', NULL),
(3865, 'N/A', '64', '22', '19', '2022-11-05 12:10:27', NULL),
(3866, '[\"none\",\"empty\"]', '65', '22', '19', '2022-11-05 12:10:27', NULL),
(3867, 'N/A', '66', '22', '19', '2022-11-05 12:10:27', NULL),
(3868, '[\"none\",\"empty\"]', '67', '22', '19', '2022-11-05 12:10:27', NULL),
(3869, 'N/A', '68', '22', '19', '2022-11-05 12:10:27', NULL),
(3870, 'N/A', '69', '22', '19', '2022-11-05 12:10:27', NULL),
(3871, 'N/A', '70', '22', '19', '2022-11-05 12:10:27', NULL),
(3872, 'N/A', '80', '22', '19', '2022-11-05 12:10:27', NULL),
(3873, 'N/A', '81', '22', '19', '2022-11-05 12:10:27', NULL),
(3874, 'N/A', '82', '22', '19', '2022-11-05 12:10:27', NULL),
(3875, '[\"none\",\"empty\"]', '83', '22', '19', '2022-11-05 12:10:27', NULL),
(3876, 'N/A', '84', '22', '19', '2022-11-05 12:10:27', NULL),
(3877, '[\"none\",\"empty\"]', '85', '22', '19', '2022-11-05 12:10:27', NULL),
(3878, 'N/A', '86', '22', '19', '2022-11-05 12:10:27', NULL),
(3879, 'N/A', '87', '22', '19', '2022-11-05 12:10:27', NULL),
(3880, 'N/A', '88', '22', '19', '2022-11-05 12:10:27', NULL),
(3881, '0', '89', '22', '19', '2022-11-05 12:10:27', NULL),
(3882, '0', '90', '22', '19', '2022-11-05 12:10:27', NULL),
(3883, '[\"none\",\"empty\"]', '91', '22', '19', '2022-11-05 12:10:27', NULL),
(3884, 'N/A', '92', '22', '19', '2022-11-05 12:10:27', NULL),
(3885, '0', '93', '22', '19', '2022-11-05 12:10:27', NULL),
(3886, '0', '96', '22', '19', '2022-11-05 12:10:27', NULL),
(3887, '0', '97', '22', '19', '2022-11-05 12:10:27', NULL),
(3888, '0', '98', '22', '19', '2022-11-05 12:10:28', NULL),
(3889, '0', '99', '22', '19', '2022-11-05 12:10:28', NULL),
(3890, '0', '100', '22', '19', '2022-11-05 12:10:28', NULL),
(3891, '0', '101', '22', '19', '2022-11-05 12:10:28', NULL),
(3892, '0', '102', '22', '19', '2022-11-05 12:10:28', NULL),
(3893, '0', '103', '22', '19', '2022-11-05 12:10:28', NULL),
(3894, '0', '104', '22', '19', '2022-11-05 12:10:28', NULL),
(3895, '0', '105', '22', '19', '2022-11-05 12:10:28', NULL),
(3896, '0', '106', '22', '19', '2022-11-05 12:10:28', NULL),
(3897, '0', '107', '22', '19', '2022-11-05 12:10:28', NULL),
(3898, '0', '108', '22', '19', '2022-11-05 12:10:28', NULL),
(3899, '0', '109', '22', '19', '2022-11-05 12:10:28', NULL),
(3900, '0', '110', '22', '19', '2022-11-05 12:10:28', NULL),
(3901, '0', '111', '22', '19', '2022-11-05 12:10:28', NULL),
(3902, '0', '112', '22', '19', '2022-11-05 12:10:28', NULL),
(3903, '0', '113', '22', '19', '2022-11-05 12:10:28', NULL),
(3904, '0', '114', '22', '19', '2022-11-05 12:10:28', NULL),
(3905, '0', '115', '22', '19', '2022-11-05 12:10:28', NULL),
(3906, '0', '116', '22', '19', '2022-11-05 12:10:28', NULL),
(3907, '0', '117', '22', '19', '2022-11-05 12:10:28', NULL),
(3908, '0', '118', '22', '19', '2022-11-05 12:10:28', NULL),
(3909, '0', '119', '22', '19', '2022-11-05 12:10:28', NULL),
(3910, '0', '120', '22', '19', '2022-11-05 12:10:28', NULL),
(3911, '0', '121', '22', '19', '2022-11-05 12:10:28', NULL),
(3912, '0', '122', '22', '19', '2022-11-05 12:10:28', NULL),
(3913, '0', '123', '22', '19', '2022-11-05 12:10:28', NULL),
(3914, '0', '124', '22', '19', '2022-11-05 12:10:28', NULL),
(3915, '0', '125', '22', '19', '2022-11-05 12:10:28', NULL),
(3916, '0', '126', '22', '19', '2022-11-05 12:10:28', NULL),
(3917, '0', '127', '22', '19', '2022-11-05 12:10:28', NULL),
(3918, '0', '128', '22', '19', '2022-11-05 12:10:28', NULL),
(3919, '0', '129', '22', '19', '2022-11-05 12:10:28', NULL),
(3920, '0', '130', '22', '19', '2022-11-05 12:10:28', NULL),
(3921, '0', '131', '22', '19', '2022-11-05 12:10:28', NULL),
(3922, '0', '132', '22', '19', '2022-11-05 12:10:28', NULL),
(3923, '0', '133', '22', '19', '2022-11-05 12:10:28', NULL),
(3924, '0', '134', '22', '19', '2022-11-05 12:10:28', NULL),
(3925, '0', '135', '22', '19', '2022-11-05 12:10:28', NULL),
(3926, '0', '136', '22', '19', '2022-11-05 12:10:28', NULL),
(3927, '0', '137', '22', '19', '2022-11-05 12:10:28', NULL),
(3928, '0', '138', '22', '19', '2022-11-05 12:10:28', NULL),
(3929, '0', '139', '22', '19', '2022-11-05 12:10:28', NULL),
(3930, '0', '140', '22', '19', '2022-11-05 12:10:28', NULL),
(3931, '0', '141', '22', '19', '2022-11-05 12:10:28', NULL),
(3932, '0', '142', '22', '19', '2022-11-05 12:10:28', NULL),
(3933, '0', '143', '22', '19', '2022-11-05 12:10:28', NULL),
(3934, '0', '144', '22', '19', '2022-11-05 12:10:28', NULL),
(3935, '0', '145', '22', '19', '2022-11-05 12:10:28', NULL),
(3936, '0', '146', '22', '19', '2022-11-05 12:10:28', NULL),
(3937, '0', '147', '22', '19', '2022-11-05 12:10:28', NULL),
(3938, '0', '148', '22', '19', '2022-11-05 12:10:28', NULL);

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
(10, '2021_05_26_123406_create_settings_table', 1),
(11, '2021_05_28_043043_create_preferences_table', 1),
(12, '2021_05_28_051525_create_preference_user_table', 1),
(13, '2022_09_07_123001_create_surveys_table', 1),
(14, '2022_09_07_172020_create_questions_table', 1),
(15, '2022_09_07_172607_create_answers_table', 1),
(16, '2022_09_11_001905_add_step_to_surveys', 1),
(17, '2022_09_11_001927_add_step_to_questions', 1),
(18, '2022_09_15_074900_create_template_table', 1),
(19, '2022_09_20_181051_add_status_tto_surveys', 1),
(20, '2022_09_24_063314_create_surveystatus_table', 1),
(21, '2022_09_26_183521_create_nren_table', 1),
(22, '2022_10_01_081556_create_saved_table', 1),
(32, '2022_10_30_074259_create_nrenuser', 2);

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
(4, '1', 'ADMIN NET', 'ADMin Network', 'Albania', 'yy', 'adress', 'u@t.ciom', '000', '0899494', '88', '[\"none\",\"Endorsed by Ministry of Education\"]', '[\"not-for profit membership organisation\",\"not-for-profit trust\",\"limited liability company\"]', 'hh', '2022-10-01 12:09:58', '2022-11-05 07:52:37'),
(15, '26', 'SomaliREN', 'N/A', 'Somalia', 'www.somaliren.org', 'N/A', 'EMPTY@GMAIL.COM', 'N/A', 'N/A', '2008', '[\"others\"]', '[\"not-for profit membership organisation\"]', 'Council of Members, Board of Directors and Sectratriat', '2022-10-06 12:03:57', '2022-10-06 12:07:39'),
(16, '28', 'TENET', 'N/A', 'South Africa', 'https://www.tenet.ac.za', 'N/A', 'empty@empty.com', 'N/A', 'N/A', '2000', '[\"others\"]', '[\"not-for profit membership organisation\"]', '26 public universities and six statutory research entities are Members.', '2022-10-06 12:31:44', NULL),
(17, '1', 'Alnet', 'hh', 'Algeria', 'hjhj', 'hh', 'brunodonatelo@gmail.com', '8888', '88', '56', '[\"not answered\"]', '[\"not answered\"]', 'hh', '2022-10-30 06:26:45', '2022-10-30 06:32:28'),
(19, '1', 'fastnet', 'Kenya Network', 'Uganda', 'ket.ug', 'Kàmpalà. City', 'brunodonatelo@gmail.com', '9988', 'ii', '2000', '[\"Endorsed by Ministry of Education\"]', '[\"not-for profit membership organisation\"]', 'jj', '2022-10-30 13:04:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nrenuser`
--

CREATE TABLE `nrenuser` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nrenid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nrenuser`
--

INSERT INTO `nrenuser` (`id`, `userid`, `nrenid`, `created_at`, `updated_at`) VALUES
(1, '26', '16', '2022-10-30 08:50:13', '2022-10-30 09:05:50'),
(2, '27', '4', '2022-10-30 08:56:12', NULL),
(3, '1', '15', '2022-10-30 08:56:42', '2022-10-30 12:05:44'),
(5, '25', '16', '2022-10-30 09:06:12', NULL),
(11, '28', '16', '2022-10-30 14:40:21', NULL),
(12, '32', '19', '2022-10-31 08:59:47', NULL);

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
(1, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Role', '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
(2, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Permission', '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
(3, 1, 1, 1, 1, 1, NULL, NULL, 2, 'User', '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
(4, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Setting', '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
(5, 1, 1, 1, 1, 1, NULL, NULL, 2, 'Preference', '2022-10-03 08:28:21', '2022-10-03 08:28:21');

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
(1, 1, NULL, 'admin/user/rj9bqiCY6oOub9h2g1n6gUXVN1ICTsSXsR5z1m2x.jpg', 1, NULL, NULL, NULL, 'Uganda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03 08:28:21', '2022-10-29 16:10:34'),
(2, 2, 'alex.mwotil', 'admin/user/4dAbFs8wCz1L3ymaemwLSP9WoXwsIbpFW0tIijJI.jpg', 1, NULL, NULL, NULL, 'Uganda', 'The Edge, Makerere University, Kampala', '[\"+256772084725\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-03 11:04:38', '2022-10-03 11:59:12'),
(8, 16, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 10:48:31', '2022-10-04 10:48:31'),
(9, 17, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 10:49:54', '2022-10-04 10:49:54'),
(10, 18, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 10:51:43', '2022-10-04 10:51:43'),
(11, 19, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 10:53:38', '2022-10-04 10:53:38'),
(12, 20, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 10:54:43', '2022-10-04 10:54:43'),
(13, 21, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 10:57:57', '2022-10-04 10:57:57'),
(14, 22, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 11:16:50', '2022-10-04 11:16:50'),
(15, 23, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 11:18:08', '2022-10-04 11:18:08'),
(16, 24, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 11:19:03', '2022-10-04 11:19:03'),
(17, 25, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 11:22:18', '2022-10-04 11:22:18'),
(18, 26, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 11:32:57', '2022-10-04 11:32:57'),
(19, 27, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 11:35:19', '2022-10-04 11:35:19'),
(20, 28, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 11:36:31', '2022-10-04 11:36:31'),
(21, 29, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 11:39:44', '2022-10-04 11:39:44'),
(22, 30, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 11:42:55', '2022-10-04 11:42:55'),
(23, 31, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 11:46:22', '2022-10-04 11:46:22'),
(24, 32, NULL, 'admin/user/wTdJ263jM0qvIWLRRIB4BeoWgaRVchzhhYVXT6qn.jpg', 1, NULL, NULL, NULL, 'Nepal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-30 09:07:16', '2022-10-30 10:46:42');

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
(5, 'user', 'This is an normal user', 1, NULL, NULL);

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
(1, 2, 1, '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
(2, 5, 2, '2022-10-03 11:04:38', '2022-10-03 11:04:38'),
(8, 5, 16, '2022-10-04 10:48:31', '2022-10-04 10:48:31'),
(9, 5, 17, '2022-10-04 10:49:54', '2022-10-04 10:49:54'),
(10, 5, 18, '2022-10-04 10:51:43', '2022-10-04 10:51:43'),
(11, 5, 19, '2022-10-04 10:53:38', '2022-10-04 10:53:38'),
(12, 5, 20, '2022-10-04 10:54:43', '2022-10-04 10:54:43'),
(13, 5, 21, '2022-10-04 10:57:57', '2022-10-04 10:57:57'),
(14, 5, 22, '2022-10-04 11:16:50', '2022-10-04 11:16:50'),
(15, 5, 23, '2022-10-04 11:18:08', '2022-10-04 11:18:08'),
(16, 5, 24, '2022-10-04 11:19:03', '2022-10-04 11:19:03'),
(17, 5, 25, '2022-10-04 11:22:18', '2022-10-04 11:22:18'),
(18, 5, 26, '2022-10-04 11:32:57', '2022-10-04 11:32:57'),
(19, 5, 27, '2022-10-04 11:35:19', '2022-10-04 11:35:19'),
(20, 5, 28, '2022-10-04 11:36:31', '2022-10-04 11:36:31'),
(21, 5, 29, '2022-10-04 11:39:44', '2022-10-04 11:39:44'),
(22, 5, 30, '2022-10-04 11:42:55', '2022-10-04 11:42:55'),
(23, 5, 31, '2022-10-04 11:46:22', '2022-10-04 11:46:22'),
(24, 5, 32, '2022-10-30 09:07:16', '2022-10-30 09:07:16');

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

--
-- Dumping data for table `saved`
--

INSERT INTO `saved` (`id`, `name`, `questionid`, `surveyid`, `userid`, `created_at`, `updated_at`) VALUES
(3146, 'N/A', '1', '22', '19', '2022-11-05 12:08:07', NULL),
(3147, 'N/A', '2', '22', '19', '2022-11-05 12:08:07', NULL),
(3148, 'N/A', '3', '22', '19', '2022-11-05 12:08:07', NULL),
(3149, 'N/A', '4', '22', '19', '2022-11-05 12:08:07', NULL),
(3150, '[\"Not-for-profit membership organisation\",\"Not-for-profit company or trust\"]', '10', '22', '19', '2022-11-05 12:08:07', NULL),
(3151, 'N/A', '11', '22', '19', '2022-11-05 12:08:07', NULL),
(3152, '[\"Board\",\"General Assembly\"]', '12', '22', '19', '2022-11-05 12:08:07', NULL),
(3153, 'N/A', '14', '22', '19', '2022-11-05 12:08:07', NULL),
(3154, 'N/A', '15', '22', '19', '2022-11-05 12:08:07', NULL),
(3155, 'Yes', '16', '22', '19', '2022-11-05 12:08:07', NULL),
(3156, 'No', '17', '22', '19', '2022-11-05 12:08:07', NULL),
(3157, 'Yes', '18', '22', '19', '2022-11-05 12:08:07', NULL),
(3158, 'No', '19', '22', '19', '2022-11-05 12:08:07', NULL),
(3159, '[\"Strategic Plan\",\"Business Plan\"]', '20', '22', '19', '2022-11-05 12:08:07', NULL),
(3160, '0', '21', '22', '19', '2022-11-05 12:08:07', NULL),
(3161, '0', '22', '22', '19', '2022-11-05 12:08:07', NULL),
(3162, '0', '23', '22', '19', '2022-11-05 12:08:07', NULL),
(3163, '0', '24', '22', '19', '2022-11-05 12:08:07', NULL),
(3164, 'N/A', '25', '22', '19', '2022-11-05 12:08:07', NULL),
(3165, 'N/A', '26', '22', '19', '2022-11-05 12:08:07', NULL),
(3166, 'N/A', '27', '22', '19', '2022-11-05 12:08:07', NULL),
(3167, '[\"none\",\"empty\"]', '28', '22', '19', '2022-11-05 12:08:07', NULL),
(3168, 'N/A', '29', '22', '19', '2022-11-05 12:08:07', NULL),
(3169, '[\"none\",\"empty\"]', '31', '22', '19', '2022-11-05 12:08:07', NULL),
(3170, 'N/A', '32', '22', '19', '2022-11-05 12:08:07', NULL),
(3171, 'N/A', '33', '22', '19', '2022-11-05 12:08:07', NULL),
(3172, 'N/A', '34', '22', '19', '2022-11-05 12:08:07', NULL),
(3173, 'N/A', '35', '22', '19', '2022-11-05 12:08:07', NULL),
(3174, '0', '36', '22', '19', '2022-11-05 12:08:07', NULL),
(3175, '0', '37', '22', '19', '2022-11-05 12:08:07', NULL),
(3176, '0', '38', '22', '19', '2022-11-05 12:08:07', NULL),
(3177, '[\"none\",\"empty\"]', '39', '22', '19', '2022-11-05 12:08:07', NULL),
(3178, 'N/A', '41', '22', '19', '2022-11-05 12:08:07', NULL),
(3179, '0', '42', '22', '19', '2022-11-05 12:08:07', NULL),
(3180, '0', '43', '22', '19', '2022-11-05 12:08:07', NULL),
(3181, '[\"none\",\"empty\"]', '50', '22', '19', '2022-11-05 12:08:07', NULL),
(3182, '0', '51', '22', '19', '2022-11-05 12:08:07', NULL),
(3183, '0', '52', '22', '19', '2022-11-05 12:08:07', NULL),
(3184, 'N/A', '53', '22', '19', '2022-11-05 12:08:07', NULL),
(3185, '0', '54', '22', '19', '2022-11-05 12:08:07', NULL),
(3186, '0', '55', '22', '19', '2022-11-05 12:08:07', NULL),
(3187, '[\"none\",\"empty\"]', '56', '22', '19', '2022-11-05 12:08:07', NULL),
(3188, 'N/A', '57', '22', '19', '2022-11-05 12:08:07', NULL),
(3189, '[\"none\",\"empty\"]', '58', '22', '19', '2022-11-05 12:08:07', NULL),
(3190, 'N/A', '59', '22', '19', '2022-11-05 12:08:07', NULL),
(3191, 'N/A', '60', '22', '19', '2022-11-05 12:08:07', NULL),
(3192, '[\"none\",\"empty\"]', '61', '22', '19', '2022-11-05 12:08:07', NULL),
(3193, 'N/A', '62', '22', '19', '2022-11-05 12:08:07', NULL),
(3194, '[\"none\",\"empty\"]', '63', '22', '19', '2022-11-05 12:08:07', NULL),
(3195, 'N/A', '64', '22', '19', '2022-11-05 12:08:07', NULL),
(3196, '[\"none\",\"empty\"]', '65', '22', '19', '2022-11-05 12:08:07', NULL),
(3197, 'N/A', '66', '22', '19', '2022-11-05 12:08:07', NULL),
(3198, '[\"none\",\"empty\"]', '67', '22', '19', '2022-11-05 12:08:07', NULL),
(3199, 'N/A', '68', '22', '19', '2022-11-05 12:08:07', NULL),
(3200, 'N/A', '69', '22', '19', '2022-11-05 12:08:07', NULL),
(3201, 'N/A', '70', '22', '19', '2022-11-05 12:08:07', NULL),
(3202, 'N/A', '80', '22', '19', '2022-11-05 12:08:07', NULL),
(3203, 'N/A', '81', '22', '19', '2022-11-05 12:08:07', NULL),
(3204, 'N/A', '82', '22', '19', '2022-11-05 12:08:07', NULL),
(3205, '[\"none\",\"empty\"]', '83', '22', '19', '2022-11-05 12:08:07', NULL),
(3206, 'N/A', '84', '22', '19', '2022-11-05 12:08:07', NULL),
(3207, '[\"none\",\"empty\"]', '85', '22', '19', '2022-11-05 12:08:07', NULL),
(3208, 'N/A', '86', '22', '19', '2022-11-05 12:08:07', NULL),
(3209, 'N/A', '87', '22', '19', '2022-11-05 12:08:07', NULL),
(3210, 'N/A', '88', '22', '19', '2022-11-05 12:08:07', NULL),
(3211, '0', '89', '22', '19', '2022-11-05 12:08:07', NULL),
(3212, '0', '90', '22', '19', '2022-11-05 12:08:07', NULL),
(3213, '[\"none\",\"empty\"]', '91', '22', '19', '2022-11-05 12:08:07', NULL),
(3214, 'N/A', '92', '22', '19', '2022-11-05 12:08:07', NULL),
(3215, '0', '93', '22', '19', '2022-11-05 12:08:07', NULL),
(3216, '0', '96', '22', '19', '2022-11-05 12:08:07', NULL),
(3217, '0', '97', '22', '19', '2022-11-05 12:08:07', NULL),
(3218, '0', '98', '22', '19', '2022-11-05 12:08:07', NULL),
(3219, '0', '99', '22', '19', '2022-11-05 12:08:07', NULL),
(3220, '0', '100', '22', '19', '2022-11-05 12:08:07', NULL),
(3221, '0', '101', '22', '19', '2022-11-05 12:08:07', NULL),
(3222, '0', '102', '22', '19', '2022-11-05 12:08:07', NULL),
(3223, '0', '103', '22', '19', '2022-11-05 12:08:08', NULL),
(3224, '0', '104', '22', '19', '2022-11-05 12:08:08', NULL),
(3225, '0', '105', '22', '19', '2022-11-05 12:08:08', NULL),
(3226, '0', '106', '22', '19', '2022-11-05 12:08:08', NULL),
(3227, '0', '107', '22', '19', '2022-11-05 12:08:08', NULL),
(3228, '0', '108', '22', '19', '2022-11-05 12:08:08', NULL),
(3229, '0', '109', '22', '19', '2022-11-05 12:08:08', NULL),
(3230, '0', '110', '22', '19', '2022-11-05 12:08:08', NULL),
(3231, '0', '111', '22', '19', '2022-11-05 12:08:08', NULL),
(3232, '0', '112', '22', '19', '2022-11-05 12:08:08', NULL),
(3233, '0', '113', '22', '19', '2022-11-05 12:08:08', NULL),
(3234, '0', '114', '22', '19', '2022-11-05 12:08:08', NULL),
(3235, '0', '115', '22', '19', '2022-11-05 12:08:08', NULL),
(3236, '0', '116', '22', '19', '2022-11-05 12:08:08', NULL),
(3237, '0', '117', '22', '19', '2022-11-05 12:08:08', NULL),
(3238, '0', '118', '22', '19', '2022-11-05 12:08:08', NULL),
(3239, '0', '119', '22', '19', '2022-11-05 12:08:08', NULL),
(3240, '0', '120', '22', '19', '2022-11-05 12:08:08', NULL),
(3241, '0', '121', '22', '19', '2022-11-05 12:08:08', NULL),
(3242, '0', '122', '22', '19', '2022-11-05 12:08:08', NULL),
(3243, '0', '123', '22', '19', '2022-11-05 12:08:08', NULL),
(3244, '0', '124', '22', '19', '2022-11-05 12:08:08', NULL),
(3245, '0', '125', '22', '19', '2022-11-05 12:08:08', NULL),
(3246, '0', '126', '22', '19', '2022-11-05 12:08:08', NULL),
(3247, '0', '127', '22', '19', '2022-11-05 12:08:08', NULL),
(3248, '0', '128', '22', '19', '2022-11-05 12:08:08', NULL),
(3249, '0', '129', '22', '19', '2022-11-05 12:08:08', NULL),
(3250, '0', '130', '22', '19', '2022-11-05 12:08:08', NULL),
(3251, '0', '131', '22', '19', '2022-11-05 12:08:08', NULL),
(3252, '0', '132', '22', '19', '2022-11-05 12:08:08', NULL),
(3253, '0', '133', '22', '19', '2022-11-05 12:08:08', NULL),
(3254, '0', '134', '22', '19', '2022-11-05 12:08:08', NULL),
(3255, '0', '135', '22', '19', '2022-11-05 12:08:08', NULL),
(3256, '0', '136', '22', '19', '2022-11-05 12:08:08', NULL),
(3257, '0', '137', '22', '19', '2022-11-05 12:08:08', NULL),
(3258, '0', '138', '22', '19', '2022-11-05 12:08:08', NULL),
(3259, '0', '139', '22', '19', '2022-11-05 12:08:08', NULL),
(3260, '0', '140', '22', '19', '2022-11-05 12:08:08', NULL),
(3261, '0', '141', '22', '19', '2022-11-05 12:08:08', NULL),
(3262, '0', '142', '22', '19', '2022-11-05 12:08:08', NULL),
(3263, '0', '143', '22', '19', '2022-11-05 12:08:08', NULL),
(3264, '0', '144', '22', '19', '2022-11-05 12:08:08', NULL),
(3265, '0', '145', '22', '19', '2022-11-05 12:08:08', NULL),
(3266, '0', '146', '22', '19', '2022-11-05 12:08:08', NULL),
(3267, '0', '147', '22', '19', '2022-11-05 12:08:08', NULL),
(3268, '0', '148', '22', '19', '2022-11-05 12:08:08', NULL);

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

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `userid`, `title`, `details`, `year`, `start`, `end`, `created_at`, `updated_at`, `step`, `status`) VALUES
(20, '1', 'Online Country Fiche Survey 2021', 'Online Country Fiche Survey 2021', '2021', '2022-10-04', '2022-10-31', '2022-10-04 12:57:08', NULL, 0, 'running'),
(21, '1', '2022 test', 'test', '2022', '2022-11-05', '2022-11-30', '2022-11-05 09:16:50', NULL, 0, 'running'),
(22, '1', 'test three', 'jjdd', '2023', '2022-11-05', '2022-11-04', '2022-11-05 09:40:21', NULL, 0, 'running');

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
(40, '22', '19', 'answered', '2022-11-05 12:10:27', NULL);

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
(1, 'Website', '', 'text', '0', '1', NULL, NULL, 1),
(2, 'When was your NREN? established', '', 'text', '0', '1', NULL, NULL, 1),
(3, 'Mission statement', '', 'textarea', '0', '1', NULL, NULL, 1),
(4, 'Vision Statement:\r\n', 'text', 'textarea', '', '1', NULL, NULL, 1),
(10, '1. Legal entity type (please select as appropriate):', '{\"first\":\"Not-for-profit membership organisation\",\"second\":\"Not-for-profit company or trust\",\"third\":\"Limited liability company\",\"fouth\":\"Government entity\",\"fifth\":\"Other\"}', 'checkbox', '', '1', NULL, NULL, 2),
(11, 'Other (please specify)', '', 'text', '', '', NULL, NULL, 2),
(12, '2. What is your top level of Governance?', '{\"first\":\"Board\",\"second\":\"General Assembly\",\"third\":\"Other\"}', 'checkbox', '', '', NULL, NULL, 2),
(14, 'Other(Please specify)', '', 'text', '', '', NULL, NULL, 2),
(15, '3. What is the composition of the Board or General Assembly?', '', 'text', '', '', NULL, NULL, 2),
(16, '4. Are you officially recognised by your Ministry in charge of higher education? ', '', 'radio', '', '', NULL, NULL, 2),
(17, '5. Are you officially recognised by your Ministry in charge of ICT?', '', 'radio', '', '', NULL, NULL, 2),
(18, '6. Are you licensed by your regulator? ', '', 'radio', '', '', NULL, NULL, 2),
(19, '7. Do you receive and direct funding or grants from your government? ', '', 'radio', '', '', NULL, NULL, 2),
(20, '8. Which of the following documents does your organisation have? (names may vary, select all that apply)', '{\"first\":\"Annual approved budget\",\"second\":\"Strategic Plan\",\"third\":\"Business Plan\",\"fourth\":\"Marketing and communication Plan\",\"fifth\":\"Services Catalogue\",\"sixth\":\"Acceptable Use Policy \",\"seventh\":\"Network architecture plan\",\"eighth\":\"Capacity Building Plan\"}', 'checkbox', '', '', NULL, NULL, 2),
(21, '1.Current number of full time staff(Male)?', '', 'number', '', '', NULL, NULL, 3),
(22, 'Current number of full time staff(Female)?', '', 'number', '', '', NULL, NULL, 3),
(23, '2. Current of vacant positions?', '', 'number', '', '', NULL, NULL, 3),
(24, '3. Expected number of new staff recruited in the coming year?', '', 'number', '', '', NULL, NULL, 3),
(25, '4a. Do you have challenges in recruiting technical staff? (Yes/No)', '', 'radio', '', '', NULL, NULL, 3),
(26, '4b. If yes, please, explain.', '', 'textarea', '', '', NULL, NULL, 3),
(27, '1. Do you operate a national network?', '', 'radio', '', '', NULL, NULL, 4),
(28, '2a. Links in your network are owned by (Check all that apply)', '{\"first\":\"State Operators\",\"second\":\"Private Sector Operators\",\"third\":\"Other (please specify)\"}', 'checkbox', 'optional', '', NULL, NULL, 4),
(29, 'Other(please specify)', '', 'text', 'optional', '', NULL, NULL, 4),
(31, '2b. You acquired the links in your network (Check all that apply)', '{\"first\":\"Through a tender process\",\"second\":\"Provide by a government entity\",\"third\":\"Other (please specify)\"}', 'checkbox', 'optional', '', NULL, NULL, 4),
(32, 'Other(please specify)', '', 'text', 'optional', '', NULL, NULL, 4),
(33, 'How often do you review/upgrade your network?', '', 'text', 'optional', '', NULL, NULL, 4),
(34, 'When was the last major upgrade done?', '', 'text', 'optional', '', NULL, NULL, 4),
(35, 'When is the next planned upgrade?', '', 'text', 'optional', '', NULL, NULL, 4),
(36, 'What is the average capacity of your network backbone (Gbps)?', '', 'number', 'optional', '', NULL, NULL, 4),
(37, 'What is your average price per Mbps/month for connectivity offered to members (in US$)?', '', 'number', 'optional', '', NULL, NULL, 4),
(38, 'How many Points of Presence (PoPs)?', '', 'number', 'optional', '', NULL, NULL, 4),
(39, 'Your network (check all that apply)', '{\"first\":\"Extends to institutions\",\"second\":\"Requires institutions to link to nearest PoP\"}', 'checkbox', 'optional', '', NULL, NULL, 4),
(40, 'Please attached network topology map?', '', 'file', 'optional', '', NULL, NULL, 4),
(41, 'Does you connects directly to both the UbuntuNet Network POP and commercial connectivity providers?', '', 'radio', 'optional', '', NULL, NULL, 4),
(42, 'If yes, please indicate percentage capacity for UbuntuNet Network in %', '', 'number', 'optional', '', NULL, NULL, 4),
(43, 'If yes, please indicate percentage capacity for Commercial providers in %', '', 'number', 'optional', '', NULL, NULL, 4),
(50, '1. Which of the following services do you offer (check all that apply):', '{\"first\":\"DNS services (e.g. domain name translations and pointer records)\",\"second\":\"Network Operations Centre (NOC) services (e.g. traffic analysis and monitoring tools)\",\"third\":\"Cybersecurity services\",\"fourth\":\"eduGAIN\"}', 'checkbox', '', '', NULL, NULL, 5),
(51, ' No. of participant institutions:', '', 'number', '', '', NULL, NULL, 5),
(52, 'No. of eduroam access points:  ', '', 'number', '', '', NULL, NULL, 5),
(53, 'Name', '', 'text', '', '', NULL, NULL, 5),
(54, 'Number of Identify Providers (IdPs)', '', 'number', '', '', NULL, NULL, 5),
(55, 'Number of Service Providers (SPs:)', '', 'number', '', '', NULL, NULL, 5),
(56, 'Content Caches (check all that apply):', '{\"first\":\"Google\",\"second\":\"Facebook\",\"third\":\"Other (please specify)\"}', 'checkbox', '', '', NULL, NULL, 5),
(57, 'Other (please specify)', '', 'text', '', '', NULL, NULL, 5),
(58, 'Learning Management Systems (check all that apply):', '{\"first\":\"Moodle\",\"third\":\"Other (please specify)\"}', 'checkbox', '', '', NULL, NULL, 5),
(59, 'Other (please specify)', '', 'text', '', '', NULL, NULL, 5),
(60, 'Content management services (Please specify)', '', 'textarea', '', '', NULL, NULL, 5),
(61, 'Research enabling tools (check all that apply):', '{\"first\":\"Simulation platforms\",\"second\":\"High Performance Computing\",\"fourth\":\"Repositories\",\"third\":\"Other (please specify)\"}', 'checkbox', '', '', NULL, NULL, 5),
(62, 'Other(Please specify)', '', 'text', '', '', NULL, NULL, 5),
(63, 'Teleconferencing services (check all that apply)', '{\"first\":\"VoIP\",\"second\":\"Video conferencing eg Big Blue Button\",\"third\":\"Other (please specify)\"}', 'checkbox', '', '', NULL, NULL, 5),
(64, 'Other(Please specify)', '', 'text', '', '', NULL, NULL, 5),
(65, 'Data centre services (check all that apply)', '{\"first\":\"Virtual machines\",\"second\":\"Co-location of servers\",\"third\":\"Other (please specify)\"}', 'checkbox', '', '', NULL, NULL, 5),
(66, 'Other(Please specify)', '', 'text', '', '', NULL, NULL, 5),
(67, 'Capacity building services (check all that apply)', '{\"first\":\"Workshops and seminars\",\"second\":\"Direct Engineering Assistance\",\"third\":\"Other (please specify)\"}', 'checkbox', '', '', NULL, NULL, 5),
(68, 'Other(please specify)', '', 'text', '', '', NULL, NULL, 5),
(69, 'Please specify any other service.', '', 'textarea', '', '', NULL, NULL, 5),
(70, '2. Which new services due you plan to bring online in the next one year? ', '', 'textarea', '', '', NULL, NULL, 5),
(80, 'A monopoly. Please state supplier ', '', 'text', '', '', NULL, NULL, 6),
(81, 'Duopoly. Please list suppliers', '', 'textarea', '', '', NULL, NULL, 6),
(82, 'Competition (multiple players). Please list suppliers ', '', 'textarea', '', '', NULL, NULL, 6),
(83, '2. What are the main obstacles to provision of better services to your members (please select all that apply): ', '{\"first\":\"Policy and regulation\",\"second\":\"Lack of awareness among members\",\"third\":\"High cost of bandwidth\",\"fourth\":\"Competition from existing providers \",\"fifth\":\"Other (please specify)\"}', 'checkbox', '', '', NULL, NULL, 6),
(84, 'Other(Please supply)', '', 'text', '', '', NULL, NULL, 6),
(85, 'Who are your main customers: (select all that apply)', '{\"first\":\"Universities and colleges\",\"second\":\"TVETs\",\"third\":\"Research Institutes\",\"fourth\":\"Hospitals\",\"fifth\":\"Secondary schools\",\"sixth\":\"Primary schools\"}', 'checkbox', '', '', NULL, NULL, 6),
(86, 'What is your value proposition to your customers (A value proposition is a definitive expression or statement of the concrete outcome of using your service. It serves to explain to your potential customer WHY they should buy your service in a language that is relevant to and understandable by them. It is a clear statement of tangible results a customer gets from your service.)?', '', 'textarea', '', '', NULL, NULL, 6),
(87, 'How do you interact with your customers?', '', 'textarea', '', '', NULL, NULL, 6),
(88, 'Who are some of your key partners.', '', 'textarea', '', '', NULL, NULL, 6),
(89, 'Operating budget', '', 'number', '', '', NULL, NULL, 6),
(90, 'Investment budget', '', 'number', '', '', NULL, NULL, 6),
(91, 'What are your revenue streams (check all that apply):', '{\"first\":\"Membership fees\",\"second\":\"Government grants\",\"third\":\"Donations\",\"fourth\":\"Connectivity fees\",\"fifth\":\"ees from services\",\"sixth\":\"Other sources (please specify)\"}', 'checkbox', '', '', NULL, NULL, 6),
(92, 'Other(please specify)', '', 'text', '', '', NULL, NULL, 6),
(93, 'Estimated number in the country', '', 'number', '', '', NULL, NULL, 7),
(96, 'Estimate total students and staff', '', 'number', '', '', NULL, NULL, 7),
(97, 'Number of institutions that are members', '', 'number', '', '', NULL, NULL, 7),
(98, 'Number of institutions connected', '', 'number', '', '', NULL, NULL, 7),
(99, 'Average bandwidth (in Mbps) per institution', '', 'number', '', '', NULL, NULL, 7),
(100, 'Number of students and staff connected', '', 'number', '', '', NULL, NULL, 7),
(101, 'Estimated number in the country', '', 'number', '', '', NULL, NULL, 7),
(102, 'Estimate total students and staff', '', 'number', '', '', NULL, NULL, 7),
(103, 'Number of institutions that are members', '', 'number', '', '', NULL, NULL, 7),
(104, 'Number of institutions connected', '', 'number', '', '', NULL, NULL, 7),
(105, 'Average bandwidth (in Mbps) per institution', '', 'number', '', '', NULL, NULL, 7),
(106, 'Number of students and staff connected', '', 'number', '', '', NULL, NULL, 7),
(107, 'Estimated number in the country', '', 'number', '', '', NULL, NULL, 7),
(108, 'Estimate total students and staff', '', 'number', '', '', NULL, NULL, 7),
(109, 'Number of institutions that are members', '', 'number', '', '', NULL, NULL, 7),
(110, 'Number of institutions connected', '', 'number', '', '', NULL, NULL, 7),
(111, 'Average bandwidth (in Mbps) per institution', '', 'number', '', '', NULL, NULL, 7),
(112, 'Number of students and staff connected', '', 'number', '', '', NULL, NULL, 7),
(113, 'Estimated number in the country', '', 'number', '', '', NULL, NULL, 7),
(114, 'Estimate total students and staff', '', 'number', '', '', NULL, NULL, 7),
(115, 'Number of institutions that are members', '', 'number', '', '', NULL, NULL, 7),
(116, 'Number of institutions connected', '', 'number', '', '', NULL, NULL, 7),
(117, 'Average bandwidth (in Mbps) per institution', '', 'number', '', '', NULL, NULL, 7),
(118, 'Number of students and staff connected', '', 'number', '', '', NULL, NULL, 7),
(119, 'Estimated number in the country', '', 'number', '', '', NULL, NULL, 7),
(120, 'Estimate total students and staff', '', 'number', '', '', NULL, NULL, 7),
(121, 'Number of institutions that are members', '', 'number', '', '', NULL, NULL, 7),
(122, 'Number of institutions connected', '', 'number', '', '', NULL, NULL, 7),
(123, 'Average bandwidth (in Mbps) per institution', '', 'number', '', '', NULL, NULL, 7),
(124, 'Number of students and staff connected', '', 'number', '', '', NULL, NULL, 7),
(125, 'Estimated number in the country', '', 'number', '', '', NULL, NULL, 7),
(126, 'Estimate total students and staff', '', 'number', '', '', NULL, NULL, 7),
(127, 'Number of institutions that are members', '', 'number', '', '', NULL, NULL, 7),
(128, 'Number of institutions connected', '', 'number', '', '', NULL, NULL, 7),
(129, 'Average bandwidth (in Mbps) per institution', '', 'number', '', '', NULL, NULL, 7),
(130, 'Number of students and staff connected', '', 'number', '', '', NULL, NULL, 7),
(131, 'Estimated number in the country', '', 'number', '', '', NULL, NULL, 7),
(132, 'Estimate total students and staff', '', 'number', '', '', NULL, NULL, 7),
(133, 'Number of institutions that are members', '', 'number', '', '', NULL, NULL, 7),
(134, 'Number of institutions connected', '', 'number', '', '', NULL, NULL, 7),
(135, 'Average bandwidth (in Mbps) per institution', '', 'number', '', '', NULL, NULL, 7),
(136, 'Number of students and staff connected', '', 'number', '', '', NULL, NULL, 7),
(137, 'Estimated number in the country', '', 'number', '', '', NULL, NULL, 7),
(138, 'Estimate total students and staff', '', 'number', '', '', NULL, NULL, 7),
(139, 'Number of institutions that are members', '', 'number', '', '', NULL, NULL, 7),
(140, 'Number of institutions connected', '', 'number', '', '', NULL, NULL, 7),
(141, 'Average bandwidth (in Mbps) per institution', '', 'number', '', '', NULL, NULL, 7),
(142, 'Number of students and staff connected', '', 'number', '', '', NULL, NULL, 7),
(143, 'Estimated number in the country', '', 'number', '', '', NULL, NULL, 7),
(144, 'Estimate total students and staff', '', 'number', '', '', NULL, NULL, 7),
(145, 'Number of institutions that are members', '', 'number', '', '', NULL, NULL, 7),
(146, 'Number of institutions connected', '', 'number', '', '', NULL, NULL, 7),
(147, 'Average bandwidth (in Mbps) per institution', '', 'number', '', '', NULL, NULL, 7),
(148, 'Number of students and staff connected', '', 'number', '', '', NULL, NULL, 7);

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
(1, 'Admin User', 'admin@admin.com', NULL, '$2y$10$QXnDszrH/9TAmw7wwKB1QeTZUxkKqOFh9P6R8qvxgJiSvMUXNgO/y', 'ETlBopE4eNwAH9hl2LD0l7Nx6GvoU55v1E6WLyXI9XitmXcihCwG20Pf1spM', '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
(2, 'Alex', 'alex.mwotil@ubuntunet.net', NULL, '$2y$10$maZpxGON69aJBi2wSo4uRuND5zs3qZaM043FJSr4MHLIVCYLVLHFa', NULL, '2022-10-03 11:04:38', '2022-10-03 11:04:38'),
(16, 'Solomon Dindi', 's.dindi@maren.ac.mw', NULL, '$2y$10$sSdibmq.u3JKB.p0ebKgBuyCf7wJ9hXPdlTy6P1Bqip3Zk7O02njK', NULL, '2022-10-04 10:48:31', '2022-10-04 10:48:31'),
(17, 'Gregoire Njejimana', 'gregoire.njejimana@gmail.com', NULL, '$2y$10$PckpjGNz1oVoGmsbLF.UNucCN.eU1uTOp43gN/xYr2ZBxNAzE8h2i', NULL, '2022-10-04 10:49:54', '2022-10-04 10:49:54'),
(18, 'Shedden Masupe', 'smasupe@bitri.co.bw', NULL, '$2y$10$F59yokF/410uO1ydEpFya.08msbHdh8Nzkib3B92V6Un14BIZYqi6', NULL, '2022-10-04 10:51:43', '2022-10-04 10:51:43'),
(19, 'Pierre Kasengedia', 'pierre.kasengedia@ista.ac.cd', NULL, '$2y$10$4TFgKiGo45oBYuUvOOLdpuYtoWZ/SyfKX6xEKGgHsUXMpL1d.cLja', NULL, '2022-10-04 10:53:38', '2022-10-04 10:53:38'),
(20, 'Zelalem Asefa', 'zelalem@ethernet.edu.et', NULL, '$2y$10$d1SFY9pK4WYkJ2ukowY.TuXgOrb5kqf/eVSVPBfuW89WtGUXUGC42', NULL, '2022-10-04 10:54:43', '2022-10-04 10:54:43'),
(21, 'Harinaina Ravelomanantsoa', 'harinaina.ravelomanantsoa@irenala.edu.mg', NULL, '$2y$10$SwV9TEy6c6W7XDlWTW9f7eQxDCaFY.4raBh9wWAZNVzMDXOQatBuG', NULL, '2022-10-04 10:57:57', '2022-10-04 10:57:57'),
(22, 'Meoli Kashorda', 'mkashorda@kenet.or.ke', NULL, '$2y$10$7lmei9VrWW6ecwO/ILc3GuEi73HX/L.VHAs4LLrmMKdfbdrDKPvnq', NULL, '2022-10-04 11:16:50', '2022-10-04 11:16:50'),
(23, 'Erminio Jasse', 'erminio.jasse@inage.gov.mz', NULL, '$2y$10$m3Ft47PdAuAfowukVcdZF.wCphbjy.TGWPvS3h61YDAL8kf4mFhYm', NULL, '2022-10-04 11:18:08', '2022-10-04 11:18:08'),
(24, 'Nicholas Mbonimpa', 'ceo@renu.ac.ug', NULL, '$2y$10$1CV.vHJP4sOXCstVijOB.uwKv5ZdHAKaLzGRvhCLG04/HmlfaGJLi', NULL, '2022-10-04 11:19:03', '2022-10-04 11:19:03'),
(25, 'Eugene Karangwa', 'cio@ur.ac.rw', NULL, '$2y$10$sX8LkpXDMXYcWOWXIdZXAudfltVMhgINcBzuC8Judg.yD1dy9tHAy', NULL, '2022-10-04 11:22:18', '2022-10-04 11:22:18'),
(26, 'Abdullahi Hussein', 'abdillahibehi@somaliren.org', NULL, '$2y$10$nZbrtrKGEMOHpIrONfnFW.F7eaXPjXDX56gB3iypfWr/8tmTTDV6y', NULL, '2022-10-04 11:32:57', '2022-10-04 11:32:57'),
(27, 'Samir El Fadir', 'samir.elfadil@gmail.com', NULL, '$2y$10$mJdaOE1nntzpbHhVkq14eOjq5.RkSqhqvBdQiX9bO6pPAAu7OuLHG', NULL, '2022-10-04 11:35:19', '2022-10-05 12:46:09'),
(28, 'Duncan Graeves', 'dbg@tenet.ac.za', NULL, '$2y$10$xWqMh.QpmgexxdSJ2Q8/BO/AbecwvqcQMeIJqRVkdn.WbAF6/YmHm', NULL, '2022-10-04 11:36:31', '2022-10-04 11:36:31'),
(29, 'Steven Lukindo', 'stephen.lukindo@ternet.or.tz', NULL, '$2y$10$8wddNTmetZNfgyUQo/811.fC/hmvudfLsj6AceLHGRXi3TJOQ7Uni', NULL, '2022-10-04 11:39:44', '2022-10-05 09:39:22'),
(30, 'Stein Mkandawire', 'mkandaws@zamren.zm', NULL, '$2y$10$nwe54qPF2uszG6.N9xSBOeh2vC0Dr0m4p5a1JDW90iobpsyT02zgm', NULL, '2022-10-04 11:42:55', '2022-10-04 11:42:55'),
(31, 'Mirriam Chahuruva', 'mpchahuruva@hit.ac.zw', NULL, '$2y$10$vnuZqvk0rXKn7B5vEBT7.OP.euCz6XL/xUobI/b9bICv7ch3weRxC', NULL, '2022-10-04 11:46:22', '2022-10-05 22:53:12'),
(32, 'test', 'test@test.com', NULL, '$2y$10$yyQIj58KPcSCTROFyeOcIOiD8Eri2WCnEzVkesSX3/EgGLj.tVpK.', NULL, '2022-10-30 09:07:16', '2022-10-30 09:07:16');

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
-- Indexes for table `nrenuser`
--
ALTER TABLE `nrenuser`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3939;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `nren`
--
ALTER TABLE `nren`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nrenuser`
--
ALTER TABLE `nrenuser`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `saved`
--
ALTER TABLE `saved`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3269;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `surveystatus`
--
ALTER TABLE `surveystatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
