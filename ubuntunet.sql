-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2022 at 06:11 PM
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
(88, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '[]', NULL, 'updated', '2022-10-30 10:45:45', '2022-10-30 10:45:45');

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
(1388, 'Uganda', '1', '20', '24', '2022-10-04 18:58:06', NULL),
(1389, 'THE RESEARCH & EDUCATION NETWORK FOR UGANDA  (RENU)', '2', '20', '24', '2022-10-04 18:58:06', NULL),
(1390, 'www.renu.ac.ug', '3', '20', '24', '2022-10-04 18:58:06', NULL),
(1391, '2006', '4', '20', '24', '2022-10-04 18:58:06', NULL),
(1392, 'Not-for-Profit Company limited by guarantee', '5', '20', '24', '2022-10-04 18:58:06', NULL),
(1393, 'Stage 1: The formation was in 2006 by VCs and EDs of R&E Communities in Uganda\r\nStage 2: 2008-2015 setting up the network\r\nStage 3: 2016 to 2019 Introduction of other services other than connectivity and growing membership.\r\nStage 4: 2020 to 2023 End User focused', '10', '20', '24', '2022-10-04 18:58:06', NULL),
(1394, 'Board of Directors', '11', '20', '24', '2022-10-04 18:58:06', NULL),
(1395, 'Representatives from Universities & Research institutions, Communications Regulator, Research Regulator, Schools, Tertiary and Ministry of Education.', '12', '20', '24', '2022-10-04 18:58:06', NULL),
(1396, 'Mission\r\nRENU’s mission is to facilitate collaboration among Uganda’s Research and Education institutions for knowledge creation, sharing and utilisation, through the provision of advanced networking and other advanced technical services.', '13', '20', '24', '2022-10-04 18:58:06', NULL),
(1397, '37', '14', '20', '24', '2022-10-04 18:58:06', NULL),
(1398, '23', '15', '20', '24', '2022-10-04 18:58:06', NULL),
(1399, 'not clear', '16', '20', '24', '2022-10-04 18:58:06', NULL),
(1400, 'To staff: Acquiring relevant certifications, To RENU: funds to sponsor staff for regional and international conferences and trainings', '17', '20', '24', '2022-10-04 18:58:06', NULL),
(1401, 'YES', '18', '20', '24', '2022-10-04 18:58:06', NULL),
(1402, 'YES', '19', '20', '24', '2022-10-04 18:58:06', NULL),
(1403, 'YES', '20', '20', '24', '2022-10-04 18:58:06', NULL),
(1404, 'N/A', '21', '20', '24', '2022-10-04 18:58:06', NULL),
(1405, 'YES', '22', '20', '24', '2022-10-04 18:58:06', NULL),
(1406, 'Online learning\r\nCybersecurity\r\nResearch Funding\r\nCollaboration, local and global\r\nEnd-user engagement', '23', '20', '24', '2022-10-04 18:58:06', NULL),
(1407, '2009', '24', '20', '24', '2022-10-04 18:58:06', NULL),
(1408, '3940450', '25', '20', '24', '2022-10-04 18:58:06', NULL),
(1409, '2766684', '26', '20', '24', '2022-10-04 18:58:06', NULL),
(1410, 'Autonomous', '27', '20', '24', '2022-10-04 18:58:06', NULL),
(1411, 'Sales revenues', '28', '20', '24', '2022-10-04 18:58:06', NULL),
(1412, 'N/A', '29', '20', '24', '2022-10-04 18:58:06', NULL),
(1413, '31', '30', '20', '24', '2022-10-04 18:58:06', NULL),
(1414, '5100', '31', '20', '24', '2022-10-04 18:58:06', NULL),
(1415, '32', '32', '20', '24', '2022-10-04 18:58:06', NULL),
(1416, '160000', '33', '20', '24', '2022-10-04 18:58:06', NULL),
(1417, '65', '34', '20', '24', '2022-10-04 18:58:06', NULL),
(1418, '310000', '35', '20', '24', '2022-10-04 18:58:06', NULL),
(1419, '31', '36', '20', '24', '2022-10-04 18:58:06', NULL),
(1420, '1700', '37', '20', '24', '2022-10-04 18:58:06', NULL),
(1421, '33', '38', '20', '24', '2022-10-04 18:58:06', NULL),
(1422, '3000', '39', '20', '24', '2022-10-04 18:58:06', NULL),
(1423, '138', '40', '20', '24', '2022-10-04 18:58:06', NULL),
(1424, '83600', '41', '20', '24', '2022-10-04 18:58:06', NULL),
(1425, '18', '42', '20', '24', '2022-10-04 18:58:06', NULL),
(1426, '120', '43', '20', '24', '2022-10-04 18:58:06', NULL),
(1427, '18', '44', '20', '24', '2022-10-04 18:58:06', NULL),
(1428, '20000', '45', '20', '24', '2022-10-04 18:58:06', NULL),
(1429, '243', '46', '20', '24', '2022-10-04 18:58:06', NULL),
(1430, '156000', '47', '20', '24', '2022-10-04 18:58:06', NULL),
(1431, '63', '48', '20', '24', '2022-10-04 18:58:06', NULL),
(1432, '300', '49', '20', '24', '2022-10-04 18:58:06', NULL),
(1433, '64', '50', '20', '24', '2022-10-04 18:58:06', NULL),
(1434, '27000', '51', '20', '24', '2022-10-04 18:58:06', NULL),
(1435, '3000', '52', '20', '24', '2022-10-04 18:58:06', NULL),
(1436, '3000000', '53', '20', '24', '2022-10-04 18:58:06', NULL),
(1437, '7', '54', '20', '24', '2022-10-04 18:58:06', NULL),
(1438, '91.5', '55', '20', '24', '2022-10-04 18:58:06', NULL),
(1439, '7', '56', '20', '24', '2022-10-04 18:58:06', NULL),
(1440, '6500', '57', '20', '24', '2022-10-04 18:58:06', NULL),
(1441, '20000', '58', '20', '24', '2022-10-04 18:58:06', NULL),
(1442, '11000500', '59', '20', '24', '2022-10-04 18:58:06', NULL),
(1443, 'not answered', '60', '20', '24', '2022-10-04 18:58:06', NULL),
(1444, 'not answered', '61', '20', '24', '2022-10-04 18:58:06', NULL),
(1445, 'not answered', '62', '20', '24', '2022-10-04 18:58:06', NULL),
(1446, 'not answered', '63', '20', '24', '2022-10-04 18:58:06', NULL),
(1447, '112', '64', '20', '24', '2022-10-04 18:58:06', NULL),
(1448, 'N/A', '65', '20', '24', '2022-10-04 18:58:06', NULL),
(1449, '6', '66', '20', '24', '2022-10-04 18:58:06', NULL),
(1450, '134', '67', '20', '24', '2022-10-04 18:58:06', NULL),
(1451, '6', '68', '20', '24', '2022-10-04 18:58:06', NULL),
(1452, '340', '69', '20', '24', '2022-10-04 18:58:06', NULL),
(1453, '87', '70', '20', '24', '2022-10-04 18:58:06', NULL),
(1454, '2400', '71', '20', '24', '2022-10-04 18:58:06', NULL),
(1455, '7', '72', '20', '24', '2022-10-04 18:58:06', NULL),
(1456, '100', '73', '20', '24', '2022-10-04 18:58:06', NULL),
(1457, '7', '74', '20', '24', '2022-10-04 18:58:06', NULL),
(1458, '600', '75', '20', '24', '2022-10-04 18:58:06', NULL),
(1459, '500', '76', '20', '24', '2022-10-04 18:58:06', NULL),
(1460, '10000', '77', '20', '24', '2022-10-04 18:58:06', NULL),
(1461, 'not answered', '78', '20', '24', '2022-10-04 18:58:06', NULL),
(1462, 'not answered', '79', '20', '24', '2022-10-04 18:58:06', NULL),
(1463, 'not answered', '80', '20', '24', '2022-10-04 18:58:06', NULL),
(1464, 'not answered', '81', '20', '24', '2022-10-04 18:58:06', NULL),
(1465, 'N/A', '82', '20', '24', '2022-10-04 18:58:06', NULL),
(1466, 'N/A', '83', '20', '24', '2022-10-04 18:58:06', NULL),
(1467, 'Over 500 (excluding schools)', '84', '20', '24', '2022-10-04 18:58:06', NULL),
(1468, 'YES', '85', '20', '24', '2022-10-04 18:58:06', NULL),
(1469, 'Not Online', '86', '20', '24', '2022-10-04 18:58:06', NULL),
(1470, 'Internet access', '87', '20', '24', '2022-10-04 18:58:06', NULL),
(1471, 'Research projects such as those under the Malawi Liverpool Welcome Trust\r\nOnline Education', '88', '20', '24', '2022-10-04 18:58:06', NULL),
(1472, 'Leased Infrastructure', '92', '20', '24', '2022-10-04 18:58:06', NULL),
(1473, 'Procurement through bidding', '93', '20', '24', '2022-10-04 18:58:06', NULL),
(1474, 'Every 6 months', '94', '20', '24', '2022-10-04 18:58:06', NULL),
(1475, 'YES', '96', '20', '24', '2022-10-04 18:58:06', NULL),
(1476, 'YES', '97', '20', '24', '2022-10-04 18:58:06', NULL),
(1477, 'Biggest is 1,700 Mbps and smallest 10 Mbps', '98', '20', '24', '2022-10-04 18:58:06', NULL),
(1478, 'Done by NREN', '104', '20', '24', '2022-10-04 18:58:06', NULL),
(1479, 'Done by NREN', '105', '20', '24', '2022-10-04 18:58:06', NULL),
(1480, 'Done by NREN', '106', '20', '24', '2022-10-04 18:58:06', NULL),
(1481, 'YES', '107', '20', '24', '2022-10-04 18:58:06', NULL),
(1482, 'Small Bandwidth capacity for Institutions\r\nTechnical Capacity of Engineers at Institutions\r\nNetwork equipment in the institutions is of low capacity and in poor state', '108', '20', '24', '2022-10-04 18:58:06', NULL),
(1483, 'YES', '109', '20', '24', '2022-10-04 18:58:06', NULL),
(1484, 'YES', '110', '20', '24', '2022-10-04 18:58:06', NULL),
(1485, 'YES', '111', '20', '24', '2022-10-04 18:58:06', NULL),
(1486, 'not answered', '112', '20', '24', '2022-10-04 18:58:06', NULL),
(1487, 'NREN has a network and is connected to UbuntuNet backbone', '115', '20', '24', '2022-10-04 18:58:06', NULL),
(1488, 'Yes, we do plan to upgrade both Local and International capacity', '116', '20', '24', '2022-10-04 18:58:06', NULL),
(1489, 'RENU Identity Federation, eduroam, Open Source Mirror, Web Conferencing (BBB, ZOOM), RENU Cloud, Moodle-based LMS, Anti-Plagiarism Software, Colocation, Web hosting, Email hosting, connectivity, Cybersecurity, Storage as a Service and others', '117', '20', '24', '2022-10-04 18:58:06', NULL),
(1490, 'Digital library', '118', '20', '24', '2022-10-04 18:58:06', NULL),
(1491, 'YES', '119', '20', '24', '2022-10-04 18:58:06', NULL),
(1492, 'YES', '120', '20', '24', '2022-10-04 18:58:06', NULL),
(1493, 'YES', '121', '20', '24', '2022-10-04 18:58:06', NULL),
(1494, 'not answered', '122', '20', '24', '2022-10-04 18:58:06', NULL),
(1495, 'YES', '123', '20', '24', '2022-10-04 18:58:06', NULL),
(1496, 'YES', '124', '20', '24', '2022-10-04 18:58:06', NULL),
(1497, 'not answered', '125', '20', '24', '2022-10-04 18:58:06', NULL),
(1498, 'African Center of Excellence in Bioinformatics.', '127', '20', '24', '2022-10-04 18:58:06', NULL),
(1499, 'YES', '128', '20', '24', '2022-10-04 18:58:06', NULL),
(1500, 'uixp.co.ug', '129', '20', '24', '2022-10-04 18:58:06', NULL),
(1501, 'NO', '130', '20', '24', '2022-10-04 18:58:06', NULL),
(1502, 'YES', '131', '20', '24', '2022-10-04 18:58:06', NULL),
(1503, 'Competitive', '132', '20', '24', '2022-10-04 18:58:06', NULL),
(1504, 'Very diverse and difficult to simplify', '133', '20', '24', '2022-10-04 18:58:06', NULL),
(1505, '11', '134', '20', '24', '2022-10-04 18:58:06', NULL),
(1506, '54', '135', '20', '24', '2022-10-04 18:58:06', NULL),
(1507, '18000000', '136', '20', '24', '2022-10-04 18:58:06', NULL),
(1508, '6000', '137', '20', '24', '2022-10-04 18:58:06', NULL),
(1509, 'Europe and US', '138', '20', '24', '2022-10-04 18:58:06', NULL),
(1510, 'YES', '139', '20', '24', '2022-10-04 18:58:06', NULL),
(1511, 'NO', '140', '20', '24', '2022-10-04 18:58:06', NULL),
(1512, 'Estimations were made to populate 3.1 especially on the current number of organisations and users especially in government related fields. We would also like that we are informed before the publication is made for our review or comments.How will the NREN Benefit from this survey? or utilized.', '141', '20', '24', '2022-10-04 18:58:06', NULL),
(1513, 'Malawi', '1', '20', '16', '2022-10-05 07:06:15', NULL),
(1514, 'Malawi Research and Education Network (MAREN)', '2', '20', '16', '2022-10-05 07:06:15', NULL),
(1515, 'www.maren.ac.mw', '3', '20', '16', '2022-10-05 07:06:15', NULL),
(1516, '2007', '4', '20', '16', '2022-10-05 07:06:15', NULL),
(1517, 'Limited Liability Company', '5', '20', '16', '2022-10-05 07:06:15', NULL),
(1518, '1. 2005 - 2007: Conception and awareness: the founding institutions held various awareness meetings with various stakeholders including Government, public institutions, private institutions as well as the donor community. This culminated in a consultative stakeholder engagement workshop where the guest of honour was the Minister of Information.\r\n2. 2007 - 2009: consolidation stage: based on mandate that had been drawn from the stakeholder engagement workshop, MAREN moved on to work on the relevant legal instruments to support its existence and operations. A memorandum and articles of association were developed and MAREN was registered as a limited liability company in 2009\r\n3. 2010-2017 Operations: MAREN was expected to become operational immediately it got incorporated. The founding institutions however failed to put together startup funding to (a) setup an operational secretariat (b) procure equipment and fibre circuits to actualise service provision from which revenue would be generated. MAREN therefore remained idle while concentrating on small activities such as providing capacity building through its partners as well as allocating internet number resources and COMODO digital certificates to its member institutions\r\n4. 2018-todate - Operations and Growth stage: With funding from the World Bank under the Digital Malawi Project, MAREN was given seed funding to a tune of US$4million which led to employment of key staff and procurement of equipment and fibre circuits eventually leading to operationalization of the data network. From the data network, MAREN has grown its client base at least 30 institutions consuming about 1.5Gbps capacity. MAREN has also managed to deploy value added services including eduroam, capacity building as well as deployment of campus wifi at 7 sites. Due to the successes registered under phase I of the Digital Malawi Project, MAREN has been allocated an extra US$2.5million to enhance its service provision. MAREN has also been earmarked to benefit from the second phase of the project.', '10', '20', '16', '2022-10-05 07:06:15', NULL),
(1519, 'General Assembly of Members  => Board of Directors => Secretariat', '11', '20', '16', '2022-10-05 07:06:15', NULL),
(1520, 'The Board is elected at the AGM. Board members come from the Universities\' headship (Vice Chancellors, registrars other senior academic administrators)', '12', '20', '16', '2022-10-05 07:06:15', NULL),
(1521, 'The constitution is under review.', '13', '20', '16', '2022-10-05 07:06:15', NULL),
(1522, 'CEO (1), CTO (1), Admin Assistant (1), Network Engineer (1) Business Development Officer (1)', '14', '20', '16', '2022-10-05 07:06:15', NULL),
(1523, 'not answered', '15', '20', '16', '2022-10-05 07:06:15', NULL),
(1524, 'not answered', '16', '20', '16', '2022-10-05 07:06:15', NULL),
(1525, 'not answered', '17', '20', '16', '2022-10-05 07:06:15', NULL),
(1526, 'YES', '18', '20', '16', '2022-10-05 07:06:15', NULL),
(1527, 'NO', '19', '20', '16', '2022-10-05 07:06:15', NULL),
(1528, 'YES', '20', '20', '16', '2022-10-05 07:06:15', NULL),
(1529, 'MAREN does work with its clients to ensure campus network are in good shape but the daily operations are left to institutions themselves.', '21', '20', '16', '2022-10-05 07:06:15', NULL),
(1530, 'YES', '22', '20', '16', '2022-10-05 07:06:15', NULL),
(1531, '1. Service stabilisation \r\n2. Price reductions to compete favourably with commercials \r\n3. Value added service growth\r\n4. Grow client base\r\n5. Increase rate of revenue collection', '23', '20', '16', '2022-10-05 07:06:15', NULL),
(1532, 'founding member', '24', '20', '16', '2022-10-05 07:06:15', NULL),
(1533, '1327294.43', '25', '20', '16', '2022-10-05 07:06:15', NULL),
(1534, '681000', '26', '20', '16', '2022-10-05 07:06:15', NULL),
(1535, 'Currently MAREN relies on donors for capital expenditure including long term IRUs on circuits and heavy equipment. For operational expenses, MAREN is currently capable of paying for such expenses.', '27', '20', '16', '2022-10-05 07:06:15', NULL),
(1536, 'MAREN has been weaned from the Digital Malawi Project recently. Through the Project MAREN was given a grant which led to MAREN\'s operationalisation. At a recent review, MAREN has been given an additional US$2.5million to assist with growth. The additional money will be used for further investments.  MAREN\'s major revenue sources beyond the grants above is bandwidth sales which are charged at cost recovery.', '28', '20', '16', '2022-10-05 07:06:15', NULL),
(1537, 'not answered', '29', '20', '16', '2022-10-05 07:06:15', NULL),
(1538, '20', '30', '20', '16', '2022-10-05 07:06:15', NULL),
(1539, '1595', '31', '20', '16', '2022-10-05 07:06:15', NULL),
(1540, '6', '32', '20', '16', '2022-10-05 07:06:15', NULL),
(1541, '47000', '33', '20', '16', '2022-10-05 07:06:15', NULL),
(1542, '43', '34', '20', '16', '2022-10-05 07:06:15', NULL),
(1543, '120000', '35', '20', '16', '2022-10-05 07:06:15', NULL),
(1544, '2', '36', '20', '16', '2022-10-05 07:06:15', NULL),
(1545, '210', '37', '20', '16', '2022-10-05 07:06:15', NULL),
(1546, '1', '38', '20', '16', '2022-10-05 07:06:15', NULL),
(1547, '95', '39', '20', '16', '2022-10-05 07:06:15', NULL),
(1548, '60', '40', '20', '16', '2022-10-05 07:06:15', NULL),
(1549, '30000', '41', '20', '16', '2022-10-05 07:06:15', NULL),
(1550, '5', '42', '20', '16', '2022-10-05 07:06:15', NULL),
(1551, '100', '43', '20', '16', '2022-10-05 07:06:15', NULL),
(1552, 'not answered', '44', '20', '16', '2022-10-05 07:06:15', NULL),
(1553, '2000', '45', '20', '16', '2022-10-05 07:06:15', NULL),
(1554, '36', '46', '20', '16', '2022-10-05 07:06:15', NULL),
(1555, '8000', '47', '20', '16', '2022-10-05 07:06:15', NULL),
(1556, '-', '48', '20', '16', '2022-10-05 07:06:15', NULL),
(1557, '-', '49', '20', '16', '2022-10-05 07:06:15', NULL),
(1558, '-', '50', '20', '16', '2022-10-05 07:06:15', NULL),
(1559, '-', '51', '20', '16', '2022-10-05 07:06:15', NULL),
(1560, '-', '52', '20', '16', '2022-10-05 07:06:15', NULL),
(1561, '-', '53', '20', '16', '2022-10-05 07:06:15', NULL),
(1562, '-', '54', '20', '16', '2022-10-05 07:06:15', NULL),
(1563, '-', '55', '20', '16', '2022-10-05 07:06:15', NULL),
(1564, '-', '56', '20', '16', '2022-10-05 07:06:15', NULL),
(1565, '-', '57', '20', '16', '2022-10-05 07:06:15', NULL),
(1566, '-', '58', '20', '16', '2022-10-05 07:06:15', NULL),
(1567, '-', '59', '20', '16', '2022-10-05 07:06:15', NULL),
(1568, '-', '60', '20', '16', '2022-10-05 07:06:15', NULL),
(1569, '-', '61', '20', '16', '2022-10-05 07:06:15', NULL),
(1570, '-', '62', '20', '16', '2022-10-05 07:06:15', NULL),
(1571, '-', '63', '20', '16', '2022-10-05 07:06:15', NULL),
(1572, '-', '64', '20', '16', '2022-10-05 07:06:15', NULL),
(1573, '-', '65', '20', '16', '2022-10-05 07:06:15', NULL),
(1574, '-', '66', '20', '16', '2022-10-05 07:06:15', NULL),
(1575, '-', '67', '20', '16', '2022-10-05 07:06:15', NULL),
(1576, '-', '68', '20', '16', '2022-10-05 07:06:15', NULL),
(1577, '-', '69', '20', '16', '2022-10-05 07:06:15', NULL),
(1578, '-', '70', '20', '16', '2022-10-05 07:06:15', NULL),
(1579, '-', '71', '20', '16', '2022-10-05 07:06:15', NULL),
(1580, '-', '72', '20', '16', '2022-10-05 07:06:15', NULL),
(1581, '-', '73', '20', '16', '2022-10-05 07:06:15', NULL),
(1582, '-', '74', '20', '16', '2022-10-05 07:06:15', NULL),
(1583, '-', '75', '20', '16', '2022-10-05 07:06:15', NULL),
(1584, '-', '76', '20', '16', '2022-10-05 07:06:15', NULL),
(1585, '-', '77', '20', '16', '2022-10-05 07:06:15', NULL),
(1586, 'not answered', '78', '20', '16', '2022-10-05 07:06:15', NULL),
(1587, '-', '79', '20', '16', '2022-10-05 07:06:15', NULL),
(1588, '-', '80', '20', '16', '2022-10-05 07:06:15', NULL),
(1589, '-', '81', '20', '16', '2022-10-05 07:06:15', NULL),
(1590, '-', '82', '20', '16', '2022-10-05 07:06:15', NULL),
(1591, '-', '83', '20', '16', '2022-10-05 07:06:15', NULL),
(1592, 'Teacher Training colleges', '84', '20', '16', '2022-10-05 07:06:15', NULL),
(1593, 'YES', '85', '20', '16', '2022-10-05 07:06:15', NULL),
(1594, 'not answered', '86', '20', '16', '2022-10-05 07:06:15', NULL),
(1595, 'Internet Services', '87', '20', '16', '2022-10-05 07:06:15', NULL),
(1596, 'Research projects such as those under the Malawi Liverpool Welcome Trust\r\nOnline Education', '88', '20', '16', '2022-10-05 07:06:15', NULL),
(1597, 'Leased Infrastructure', '92', '20', '16', '2022-10-05 07:06:15', NULL),
(1598, 'Tender process under the Digital Malawi Project', '93', '20', '16', '2022-10-05 07:06:16', NULL),
(1599, 'not answered', '94', '20', '16', '2022-10-05 07:06:16', NULL),
(1600, 'NO', '96', '20', '16', '2022-10-05 07:06:16', NULL),
(1601, 'YES', '97', '20', '16', '2022-10-05 07:06:16', NULL),
(1602, '80Mbps', '98', '20', '16', '2022-10-05 07:06:16', NULL),
(1603, 'Done by NREN', '104', '20', '16', '2022-10-05 07:06:16', NULL),
(1604, 'Done by NREN', '105', '20', '16', '2022-10-05 07:06:16', NULL),
(1605, 'Done by NREN', '106', '20', '16', '2022-10-05 07:06:16', NULL),
(1606, 'YES', '107', '20', '16', '2022-10-05 07:06:16', NULL),
(1607, 'Poor LAN designs and limited equipment on campus networks', '108', '20', '16', '2022-10-05 07:06:16', NULL),
(1608, 'YES', '109', '20', '16', '2022-10-05 07:06:16', NULL),
(1609, 'NO', '110', '20', '16', '2022-10-05 07:06:16', NULL),
(1610, 'NO', '111', '20', '16', '2022-10-05 07:06:16', NULL),
(1611, '2022', '112', '20', '16', '2022-10-05 07:06:16', NULL),
(1612, 'NREN has a network and is connected to UbuntuNet backbone', '115', '20', '16', '2022-10-05 07:06:16', NULL),
(1613, '1. Upgrade International capacity through a provider other than UbuntuNet to provide infrastrutire redundancy\r\n2. Upgrade local circuits through ESCOM to provide infrastructure redundancy', '116', '20', '16', '2022-10-05 07:06:16', NULL),
(1614, 'Eduroam\r\nDNS\r\nCloud servers', '117', '20', '16', '2022-10-05 07:06:16', NULL),
(1615, 'Edugain\r\nEducation Management Systems\r\nDigital Library\r\nLearning management systems', '118', '20', '16', '2022-10-05 07:06:16', NULL),
(1616, 'NO', '119', '20', '16', '2022-10-05 07:06:16', NULL),
(1617, 'NO', '120', '20', '16', '2022-10-05 07:06:16', NULL),
(1618, 'NO', '121', '20', '16', '2022-10-05 07:06:16', NULL),
(1619, 'Yes', '122', '20', '16', '2022-10-05 07:06:16', NULL),
(1620, 'NO', '123', '20', '16', '2022-10-05 07:06:16', NULL),
(1621, 'NO', '124', '20', '16', '2022-10-05 07:06:16', NULL),
(1622, 'Not yet', '125', '20', '16', '2022-10-05 07:06:16', NULL),
(1623, 'None so far', '127', '20', '16', '2022-10-05 07:06:16', NULL),
(1624, 'YES', '128', '20', '16', '2022-10-05 07:06:16', NULL),
(1625, 'www.mispa.org.mw', '129', '20', '16', '2022-10-05 07:06:16', NULL),
(1626, 'NO', '130', '20', '16', '2022-10-05 07:06:16', NULL),
(1627, 'YES', '131', '20', '16', '2022-10-05 07:06:16', NULL),
(1628, 'Competitive', '132', '20', '16', '2022-10-05 07:06:16', NULL),
(1629, '100', '133', '20', '16', '2022-10-05 07:06:16', NULL),
(1630, '6', '134', '20', '16', '2022-10-05 07:06:16', NULL),
(1631, '15', '135', '20', '16', '2022-10-05 07:06:16', NULL),
(1632, '60000', '136', '20', '16', '2022-10-05 07:06:16', NULL),
(1633, '2500', '137', '20', '16', '2022-10-05 07:06:16', NULL),
(1634, 'South Africa, United Kingdom, Japan', '138', '20', '16', '2022-10-05 07:06:16', NULL),
(1635, 'NO', '139', '20', '16', '2022-10-05 07:06:16', NULL),
(1636, 'NO', '140', '20', '16', '2022-10-05 07:06:16', NULL),
(1637, 'Need to assist MAREN with capacity building on networks, and online teaching and learning systems.', '141', '20', '16', '2022-10-05 07:06:16', NULL),
(1638, 'Kenya', '1', '20', '22', '2022-10-05 09:04:07', NULL),
(1639, 'KENET', '2', '20', '22', '2022-10-05 09:04:07', NULL),
(1640, 'https://www.kenet.or.ke', '3', '20', '22', '2022-10-05 09:04:07', NULL),
(1641, '2000', '4', '20', '22', '2022-10-05 09:04:07', NULL),
(1642, 'Incorporated as a not-for-profit Trust under the Kenya Trust (Perpetual succession) Deed Cap. 164', '5', '20', '22', '2022-10-05 09:04:07', NULL),
(1643, 'Stage 1 (2000 - 2004) - formation stage with limited Internet services through commercial provider; initial radio last mile links to anchor universities\r\nStage 2 (2005-2008) - Initial setup of the VSAT gateway and registration of ASN. Participation in African Universities bandwidth consortium. Used leased lines from uplink traffic and satellite downlink. \r\nStage 3 (2009 - 2013) - Expansion of terrestrial national network connecting initial 55 campuses and data centers using a Government / World bank grant of $22.5 million. Migration to 100% undersea cable capacity via IRU to London and Amsterdam. \r\nStage 4 (2014-2021) - Expansion of national network using dark fiber and managed leased lines. Upgrade of international L2 circuits to 20 Gb/s. Development of community cloud research & education services. Engagement of researchers through catalytic faculty grants', '10', '20', '22', '2022-10-05 09:04:07', NULL),
(1644, 'Two-level governance structure with Board of Trustees assisted by a Management Board (see https://www.kenet.or.ke/content/governance )', '11', '20', '22', '2022-10-05 09:04:07', NULL),
(1645, 'Board of Trustees with 13 Trustees - 7 Vice Chancellors of Public (4) and private universities (3); CEO of a member research institute; Principal Secretary, Ministry of Education; CEO, ICT regulatory authority; Principal of a Member Tertiary college; 2 independent trustees drawn from the private sector.', '12', '20', '22', '2022-10-05 09:04:07', NULL),
(1646, '1. Trust Deed 2000\r\n2. First Supplemental Trust Deed 2013\r\n3. Second Supplemental Trust Deed 2020\r\n4. Board Charter 2019\r\n5. Membership Charter 2019\r\n6. Strategic Plan 2016 - 2021 - Transformation of education and research using ICT services', '13', '20', '22', '2022-10-05 09:04:07', NULL),
(1647, '40 (as of January 2022)', '14', '20', '22', '2022-10-05 09:04:07', NULL),
(1648, '40', '15', '20', '22', '2022-10-05 09:04:07', NULL),
(1649, 'Chief Business Development officer, Chief Operations Officer, HR manager, Procurement manager, Communications Officer, Director of Research', '16', '20', '22', '2022-10-05 09:04:07', NULL),
(1650, 'Business development, HR training, Cybersecurity, Applications Development, Big data and Data Services, Cloud Infrastructure and research services', '17', '20', '22', '2022-10-05 09:04:07', NULL),
(1651, 'YES', '18', '20', '22', '2022-10-05 09:04:07', NULL),
(1652, 'YES', '19', '20', '22', '2022-10-05 09:04:07', NULL),
(1653, 'YES', '20', '20', '22', '2022-10-05 09:04:07', NULL),
(1654, 'not answered', '21', '20', '22', '2022-10-05 09:04:07', NULL),
(1655, 'YES', '22', '20', '22', '2022-10-05 09:04:07', NULL),
(1656, 'Five Thematic areas:\r\n1. Connectivity Services (includes development and expansion of national broadband infrastructure and data center)\r\n2. Enterprise services \r\n3. Educational Technology services (for faculty and students)\r\n4. Research services (provided by KENET cloud)\r\n5. Institutional capacity development - includes financial sustainability, visibility and data services )', '23', '20', '22', '2022-10-05 09:04:07', NULL),
(1657, 'Founder member - 2005', '24', '20', '22', '2022-10-05 09:04:07', NULL),
(1658, '10566235', '25', '20', '22', '2022-10-05 09:04:07', NULL),
(1659, '2680500', '26', '20', '22', '2022-10-05 09:04:07', NULL),
(1660, 'KENET is 100% sustained by member institutions through services subscriptions. The members include universities (anchor institutions), research institutes, tertiary colleges, hospitals and affiliate institution. The two main services are Internet connectivity services, community cloud services and capacity development\r\n\r\nIn addition, KENET attracts research and capacity development grants from donors and partners  - USAID (2000-2002), Rockefeller Foundation (2006 - 2010). Ford Foundation (2006-2009), FCDO (2020); Google Infrastructure grant (2012), Google Capacity development (2012-2016); NSRC training grants', '27', '20', '22', '2022-10-05 09:04:07', NULL),
(1661, '1. Internet connectivity services\r\n2. Enterprise services\r\n3. Budget support by members through equipment and office space\r\n4. research and capacity development grants', '28', '20', '22', '2022-10-05 09:04:07', NULL),
(1662, 'Commercial model with competitive pricing models; community Internet prices based are geographical location agnostic but depend of price bands based on capacity', '29', '20', '22', '2022-10-05 09:04:07', NULL),
(1663, '68', '30', '20', '22', '2022-10-05 09:04:07', NULL),
(1664, '500', '31', '20', '22', '2022-10-05 09:04:07', NULL),
(1665, '68', '32', '20', '22', '2022-10-05 09:04:07', NULL),
(1666, '750000', '33', '20', '22', '2022-10-05 09:04:07', NULL),
(1667, '74', '34', '20', '22', '2022-10-05 09:04:07', NULL),
(1668, '760000', '35', '20', '22', '2022-10-05 09:04:07', NULL),
(1669, '15', '36', '20', '22', '2022-10-05 09:04:07', NULL),
(1670, '130', '37', '20', '22', '2022-10-05 09:04:07', NULL),
(1671, '20', '38', '20', '22', '2022-10-05 09:04:07', NULL),
(1672, '10000', '39', '20', '22', '2022-10-05 09:04:07', NULL),
(1673, '30', '40', '20', '22', '2022-10-05 09:04:07', NULL),
(1674, '15000', '41', '20', '22', '2022-10-05 09:04:07', NULL),
(1675, '60', '42', '20', '22', '2022-10-05 09:04:07', NULL),
(1676, '30', '43', '20', '22', '2022-10-05 09:04:07', NULL),
(1677, '60', '44', '20', '22', '2022-10-05 09:04:07', NULL),
(1678, '150000', '45', '20', '22', '2022-10-05 09:04:07', NULL),
(1679, '200', '46', '20', '22', '2022-10-05 09:04:07', NULL),
(1680, '50000', '47', '20', '22', '2022-10-05 09:04:07', NULL),
(1681, '5', '48', '20', '22', '2022-10-05 09:04:07', NULL),
(1682, '20', '49', '20', '22', '2022-10-05 09:04:07', NULL),
(1683, '-', '50', '20', '22', '2022-10-05 09:04:07', NULL),
(1684, '6000', '51', '20', '22', '2022-10-05 09:04:07', NULL),
(1685, '1000', '52', '20', '22', '2022-10-05 09:04:07', NULL),
(1686, '3000000', '53', '20', '22', '2022-10-05 09:04:07', NULL),
(1687, '20', '54', '20', '22', '2022-10-05 09:04:07', NULL),
(1688, '10', '55', '20', '22', '2022-10-05 09:04:07', NULL),
(1689, '-', '56', '20', '22', '2022-10-05 09:04:07', NULL),
(1690, '10000', '57', '20', '22', '2022-10-05 09:04:07', NULL),
(1691, '30000', '58', '20', '22', '2022-10-05 09:04:07', NULL),
(1692, '5000000', '59', '20', '22', '2022-10-05 09:04:07', NULL),
(1693, '2', '60', '20', '22', '2022-10-05 09:04:07', NULL),
(1694, '100', '61', '20', '22', '2022-10-05 09:04:07', NULL),
(1695, '2', '62', '20', '22', '2022-10-05 09:04:07', NULL),
(1696, '1000', '63', '20', '22', '2022-10-05 09:04:07', NULL),
(1697, '5', '64', '20', '22', '2022-10-05 09:04:07', NULL),
(1698, '5000', '65', '20', '22', '2022-10-05 09:04:07', NULL),
(1699, '8', '66', '20', '22', '2022-10-05 09:04:07', NULL),
(1700, '200', '67', '20', '22', '2022-10-05 09:04:07', NULL),
(1701, '8', '68', '20', '22', '2022-10-05 09:04:07', NULL),
(1702, '10000', '69', '20', '22', '2022-10-05 09:04:07', NULL),
(1703, '300', '70', '20', '22', '2022-10-05 09:04:07', NULL),
(1704, '500000', '71', '20', '22', '2022-10-05 09:04:07', NULL),
(1705, '18', '72', '20', '22', '2022-10-05 09:04:07', NULL),
(1706, '10', '73', '20', '22', '2022-10-05 09:04:07', NULL),
(1707, '-', '74', '20', '22', '2022-10-05 09:04:07', NULL),
(1708, '-', '75', '20', '22', '2022-10-05 09:04:07', NULL),
(1709, '-', '76', '20', '22', '2022-10-05 09:04:07', NULL),
(1710, '-', '77', '20', '22', '2022-10-05 09:04:07', NULL),
(1711, 'N/A', '78', '20', '22', '2022-10-05 09:04:07', NULL),
(1712, 'N/A', '79', '20', '22', '2022-10-05 09:04:07', NULL),
(1713, 'N/A', '80', '20', '22', '2022-10-05 09:04:07', NULL),
(1714, 'N/A', '81', '20', '22', '2022-10-05 09:04:07', NULL),
(1715, 'N/A', '82', '20', '22', '2022-10-05 09:04:07', NULL),
(1716, 'N/A', '83', '20', '22', '2022-10-05 09:04:07', NULL),
(1717, 'N/A', '84', '20', '22', '2022-10-05 09:04:07', NULL),
(1718, 'YES', '85', '20', '22', '2022-10-05 09:04:07', NULL),
(1719, 'not answered', '86', '20', '22', '2022-10-05 09:04:07', NULL),
(1720, 'Learning management systems, research,  entertainment, communications, cloud services, banking', '87', '20', '22', '2022-10-05 09:04:07', NULL),
(1721, '1. Dissemination of Earth Observation Data from Remote Sensing facilities\r\n2. EUMETCast Terrestrial \r\n3. Astronomy - Square Kilometer Array Project', '88', '20', '22', '2022-10-05 09:04:07', NULL),
(1722, 'KENET-owned network', '92', '20', '22', '2022-10-05 09:04:07', NULL),
(1723, 'Tender process', '93', '20', '22', '2022-10-05 09:04:07', NULL),
(1724, 'Upgrade of core network routers in 2021. Upgrade and renewal on an ongoing basis. Key upgrade is increase in fiber-based inter-PoP links and last mile dark fiber links in 2022-2023', '94', '20', '22', '2022-10-05 09:04:07', NULL),
(1725, 'YES', '96', '20', '22', '2022-10-05 09:04:07', NULL),
(1726, 'YES', '97', '20', '22', '2022-10-05 09:04:07', NULL),
(1727, '40 Gb/s total leased lines includes backbone + last mile leased lines', '98', '20', '22', '2022-10-05 09:04:07', NULL),
(1728, 'Done by NREN', '104', '20', '22', '2022-10-05 09:04:07', NULL),
(1729, 'Done by NREN', '105', '20', '22', '2022-10-05 09:04:07', NULL),
(1730, 'Done by NREN', '106', '20', '22', '2022-10-05 09:04:07', NULL),
(1731, 'YES', '107', '20', '22', '2022-10-05 09:04:07', NULL),
(1732, '- Limited WiFi coverage\r\n- Need to upgrade the backbone campus networks to 10 Gb/s or 100 Gb/s \r\n- Lack of competent campus network engineers', '108', '20', '22', '2022-10-05 09:04:07', NULL),
(1733, 'YES', '109', '20', '22', '2022-10-05 09:04:07', NULL),
(1734, 'YES', '110', '20', '22', '2022-10-05 09:04:07', NULL),
(1735, 'NO', '111', '20', '22', '2022-10-05 09:04:07', NULL),
(1736, 'N/A', '112', '20', '22', '2022-10-05 09:04:07', NULL),
(1737, 'NREN has a network and is connected to UbuntuNet backbone', '115', '20', '22', '2022-10-05 09:04:07', NULL),
(1738, '- KENET has just upgraded its core network routers in 2021\r\n- KENET plans to upgrade the core network equipment to 100 Gb/s in 2022-2024\r\n- KENET plans to upgrade Inter-PoP links to 10 Gb/s or 100 Gb/s using leased dark fiber \r\n- KENET plans to replace all access routers to capacity of at least  multiple 1 Gb/s ports for all university and research institutes and tertiary colleges and to multiple-10 Gb/s ports for all the large universities', '116', '20', '22', '2022-10-05 09:04:07', NULL),
(1739, '1. eduroam (NRO since 2014)\r\n2. Identity Federation (rafiki.ke and federation.ke) to be operationalized by March 2022\r\n3. Web conferencing platform based on open source BigBlueButton - https://conference.ke )\r\n4. Community research & education cloud that provides computational and storage resources for faculty and researchers - https://vlab.ac.ke )\r\n5. Software appliances available to faculty, researchers and graduate students - R Studio, Jupyter Notebooks, Python, Octave \r\n6. SSL certificates through UA CoMoDo\r\n7. Operational Certification Authority \r\n8. Research Productivity and benchmarking services using Elsevier SciVal \r\n9. Infrastructure as a Service \r\n10. High Performance Computing services through the Center for High Performance Computing in South Africa', '117', '20', '22', '2022-10-05 09:04:07', NULL),
(1740, '1. ORCID consortium services\r\n2. Open WiFi as a Service \r\n3. LMS as a Service for small educational institutions \r\n4. Mobile APN services for faculty and staff to support remote working \r\n5. Faculty capacity development in AI and data science \r\n6. Online cybersecurity awareness training', '118', '20', '22', '2022-10-05 09:04:07', NULL),
(1741, 'YES', '119', '20', '22', '2022-10-05 09:04:07', NULL),
(1742, 'YES', '120', '20', '22', '2022-10-05 09:04:07', NULL),
(1743, 'NO', '121', '20', '22', '2022-10-05 09:04:07', NULL),
(1744, 'not answered', '122', '20', '22', '2022-10-05 09:04:08', NULL),
(1745, 'NO', '123', '20', '22', '2022-10-05 09:04:08', NULL),
(1746, 'NO', '124', '20', '22', '2022-10-05 09:04:08', NULL),
(1747, 'Not aware of any concrete plans for national HPC', '125', '20', '22', '2022-10-05 09:04:08', NULL),
(1748, '1. LMS content for member institutions\r\n2. Institutional repositories hosted within KENET network or KENET data center \r\n3. E-readiness survey benchmarking data (latest 2015 for Universities) 2019 to be published on e-readiness portal in 2022\r\n4. Annual core data for 2016 - 2021 collected and analyzed; to be published in 2022 and used in benchmarking tool \r\n5. Annual engineering and computer science departmental data for 2016 and 2019 collected and analyzed; to be published in 2022', '127', '20', '22', '2022-10-05 09:04:08', NULL),
(1749, 'YES', '128', '20', '22', '2022-10-05 09:04:08', NULL),
(1750, 'https://portal.kixp.or.ke', '129', '20', '22', '2022-10-05 09:04:08', NULL),
(1751, 'NO', '130', '20', '22', '2022-10-05 09:04:08', NULL),
(1752, 'YES', '131', '20', '22', '2022-10-05 09:04:08', NULL),
(1753, 'Competitive', '132', '20', '22', '2022-10-05 09:04:08', NULL),
(1754, 'L3 - $2 per Mb/s per month for 10 Gb/s capacity; L2 $2 per Mb/s per month for 10 Gb/s circuit', '133', '20', '22', '2022-10-05 09:04:08', NULL),
(1755, '39', '134', '20', '22', '2022-10-05 09:04:08', NULL),
(1756, '36', '135', '20', '22', '2022-10-05 09:04:08', NULL),
(1757, '600000', '136', '20', '22', '2022-10-05 09:04:08', NULL),
(1758, '10000', '137', '20', '22', '2022-10-05 09:04:08', NULL),
(1759, 'Top 15 - USA, UK, South Africa, Germany, Uganda, Canada, China, Netherlands, Australia, Switzerland, Tanzania, Nigeria, France, India, Ethiopia', '138', '20', '22', '2022-10-05 09:04:08', NULL),
(1760, 'NO', '139', '20', '22', '2022-10-05 09:04:08', NULL),
(1761, 'NO', '140', '20', '22', '2022-10-05 09:04:08', NULL),
(1762, '- Support in legal as the NREN of Kenya. An NREN is not yet defined in any Kenya laws. \r\n- Survey focused only on universities and research institutes. KENET provides to a growing the tertiary colleges, hospitals and critical government institutions affiliated to R & E institutions\r\n- KENET is licensed to build and operate network interconnecting educational and research institutions, teaching hospitals. That includes schools', '141', '20', '22', '2022-10-05 09:04:08', NULL),
(1763, 'Zambia', '1', '20', '30', '2022-10-05 09:31:33', NULL),
(1764, 'Zambia Research and Education Network (ZAMREN)', '2', '20', '30', '2022-10-05 09:31:33', NULL),
(1765, 'www.zamren.zm', '3', '20', '30', '2022-10-05 09:31:33', NULL),
(1766, 'not answered', '4', '20', '30', '2022-10-05 09:31:33', NULL),
(1767, 'not answered', '5', '20', '30', '2022-10-05 09:31:33', NULL),
(1768, 'not answered', '10', '20', '30', '2022-10-05 09:31:33', NULL),
(1769, 'not answered', '11', '20', '30', '2022-10-05 09:31:33', NULL),
(1770, 'not answered', '12', '20', '30', '2022-10-05 09:31:33', NULL),
(1771, 'not answered', '13', '20', '30', '2022-10-05 09:31:33', NULL),
(1772, 'not answered', '14', '20', '30', '2022-10-05 09:31:33', NULL),
(1773, 'not answered', '15', '20', '30', '2022-10-05 09:31:33', NULL),
(1774, 'not answered', '16', '20', '30', '2022-10-05 09:31:33', NULL),
(1775, 'not answered', '17', '20', '30', '2022-10-05 09:31:33', NULL),
(1776, 'YES', '18', '20', '30', '2022-10-05 09:31:33', NULL),
(1777, 'YES', '19', '20', '30', '2022-10-05 09:31:33', NULL),
(1778, 'not answered', '20', '20', '30', '2022-10-05 09:31:33', NULL),
(1779, 'not answered', '21', '20', '30', '2022-10-05 09:31:33', NULL),
(1780, 'YES', '22', '20', '30', '2022-10-05 09:31:33', NULL),
(1781, 'not answered', '23', '20', '30', '2022-10-05 09:31:33', NULL),
(1782, 'not answered', '24', '20', '30', '2022-10-05 09:31:33', NULL),
(1783, 'not answered', '25', '20', '30', '2022-10-05 09:31:33', NULL),
(1784, 'not answered', '26', '20', '30', '2022-10-05 09:31:33', NULL),
(1785, 'not answered', '27', '20', '30', '2022-10-05 09:31:33', NULL),
(1786, 'not answered', '28', '20', '30', '2022-10-05 09:31:33', NULL),
(1787, 'not answered', '29', '20', '30', '2022-10-05 09:31:33', NULL),
(1788, 'not answered', '30', '20', '30', '2022-10-05 09:31:33', NULL),
(1789, 'not answered', '31', '20', '30', '2022-10-05 09:31:33', NULL),
(1790, 'not answered', '32', '20', '30', '2022-10-05 09:31:33', NULL),
(1791, 'not answered', '33', '20', '30', '2022-10-05 09:31:33', NULL),
(1792, 'not answered', '34', '20', '30', '2022-10-05 09:31:33', NULL),
(1793, 'not answered', '35', '20', '30', '2022-10-05 09:31:33', NULL),
(1794, 'not answered', '36', '20', '30', '2022-10-05 09:31:33', NULL),
(1795, 'not answered', '37', '20', '30', '2022-10-05 09:31:33', NULL),
(1796, 'not answered', '38', '20', '30', '2022-10-05 09:31:33', NULL),
(1797, 'not answered', '39', '20', '30', '2022-10-05 09:31:33', NULL),
(1798, 'not answered', '40', '20', '30', '2022-10-05 09:31:33', NULL),
(1799, 'not answered', '41', '20', '30', '2022-10-05 09:31:33', NULL),
(1800, 'not answered', '42', '20', '30', '2022-10-05 09:31:33', NULL),
(1801, 'not answered', '43', '20', '30', '2022-10-05 09:31:33', NULL),
(1802, 'not answered', '44', '20', '30', '2022-10-05 09:31:33', NULL),
(1803, 'not answered', '45', '20', '30', '2022-10-05 09:31:33', NULL),
(1804, 'not answered', '46', '20', '30', '2022-10-05 09:31:33', NULL),
(1805, 'not answered', '47', '20', '30', '2022-10-05 09:31:33', NULL),
(1806, 'not answered', '48', '20', '30', '2022-10-05 09:31:33', NULL),
(1807, 'not answered', '49', '20', '30', '2022-10-05 09:31:33', NULL),
(1808, 'not answered', '50', '20', '30', '2022-10-05 09:31:33', NULL),
(1809, 'not answered', '51', '20', '30', '2022-10-05 09:31:33', NULL),
(1810, 'not answered', '52', '20', '30', '2022-10-05 09:31:33', NULL),
(1811, 'not answered', '53', '20', '30', '2022-10-05 09:31:33', NULL),
(1812, 'not answered', '54', '20', '30', '2022-10-05 09:31:33', NULL),
(1813, 'not answered', '55', '20', '30', '2022-10-05 09:31:33', NULL),
(1814, 'not answered', '56', '20', '30', '2022-10-05 09:31:33', NULL),
(1815, 'not answered', '57', '20', '30', '2022-10-05 09:31:33', NULL),
(1816, 'not answered', '58', '20', '30', '2022-10-05 09:31:33', NULL),
(1817, 'not answered', '59', '20', '30', '2022-10-05 09:31:33', NULL),
(1818, 'not answered', '60', '20', '30', '2022-10-05 09:31:33', NULL),
(1819, 'not answered', '61', '20', '30', '2022-10-05 09:31:33', NULL),
(1820, 'not answered', '62', '20', '30', '2022-10-05 09:31:33', NULL),
(1821, 'not answered', '63', '20', '30', '2022-10-05 09:31:33', NULL),
(1822, 'not answered', '64', '20', '30', '2022-10-05 09:31:33', NULL),
(1823, 'not answered', '65', '20', '30', '2022-10-05 09:31:33', NULL),
(1824, 'not answered', '66', '20', '30', '2022-10-05 09:31:33', NULL),
(1825, 'not answered', '67', '20', '30', '2022-10-05 09:31:33', NULL),
(1826, 'not answered', '68', '20', '30', '2022-10-05 09:31:33', NULL),
(1827, 'not answered', '69', '20', '30', '2022-10-05 09:31:33', NULL),
(1828, 'not answered', '70', '20', '30', '2022-10-05 09:31:33', NULL),
(1829, 'not answered', '71', '20', '30', '2022-10-05 09:31:33', NULL),
(1830, 'not answered', '72', '20', '30', '2022-10-05 09:31:33', NULL),
(1831, 'not answered', '73', '20', '30', '2022-10-05 09:31:33', NULL),
(1832, 'not answered', '74', '20', '30', '2022-10-05 09:31:33', NULL),
(1833, 'not answered', '75', '20', '30', '2022-10-05 09:31:33', NULL),
(1834, 'not answered', '76', '20', '30', '2022-10-05 09:31:33', NULL),
(1835, 'not answered', '77', '20', '30', '2022-10-05 09:31:33', NULL),
(1836, 'not answered', '78', '20', '30', '2022-10-05 09:31:33', NULL),
(1837, 'not answered', '79', '20', '30', '2022-10-05 09:31:33', NULL),
(1838, 'not answered', '80', '20', '30', '2022-10-05 09:31:33', NULL),
(1839, 'not answered', '81', '20', '30', '2022-10-05 09:31:33', NULL),
(1840, 'not answered', '82', '20', '30', '2022-10-05 09:31:33', NULL),
(1841, 'not answered', '83', '20', '30', '2022-10-05 09:31:33', NULL),
(1842, 'not answered', '84', '20', '30', '2022-10-05 09:31:33', NULL),
(1843, 'not answered', '85', '20', '30', '2022-10-05 09:31:33', NULL),
(1844, 'not answered', '86', '20', '30', '2022-10-05 09:31:33', NULL),
(1845, 'not answered', '87', '20', '30', '2022-10-05 09:31:33', NULL),
(1846, 'not answered', '88', '20', '30', '2022-10-05 09:31:33', NULL),
(1847, 'not answered', '92', '20', '30', '2022-10-05 09:31:33', NULL),
(1848, 'not answered', '93', '20', '30', '2022-10-05 09:31:33', NULL),
(1849, 'not answered', '94', '20', '30', '2022-10-05 09:31:33', NULL),
(1850, 'not answered', '96', '20', '30', '2022-10-05 09:31:33', NULL),
(1851, 'not answered', '97', '20', '30', '2022-10-05 09:31:33', NULL),
(1852, 'not answered', '98', '20', '30', '2022-10-05 09:31:33', NULL),
(1853, 'Done by NREN', '104', '20', '30', '2022-10-05 09:31:33', NULL),
(1854, 'Done by NREN', '105', '20', '30', '2022-10-05 09:31:33', NULL),
(1855, 'Done by NREN', '106', '20', '30', '2022-10-05 09:31:33', NULL),
(1856, 'not answered', '107', '20', '30', '2022-10-05 09:31:33', NULL),
(1857, 'not answered', '108', '20', '30', '2022-10-05 09:31:33', NULL),
(1858, 'not answered', '109', '20', '30', '2022-10-05 09:31:33', NULL),
(1859, 'not answered', '110', '20', '30', '2022-10-05 09:31:33', NULL),
(1860, 'not answered', '111', '20', '30', '2022-10-05 09:31:33', NULL),
(1861, 'not answered', '112', '20', '30', '2022-10-05 09:31:33', NULL),
(1862, 'NREN has a network and is connected to UbuntuNet backbone', '115', '20', '30', '2022-10-05 09:31:33', NULL),
(1863, 'not answered', '116', '20', '30', '2022-10-05 09:31:33', NULL),
(1864, 'not answered', '117', '20', '30', '2022-10-05 09:31:33', NULL),
(1865, 'not answered', '118', '20', '30', '2022-10-05 09:31:33', NULL),
(1866, 'not answered', '119', '20', '30', '2022-10-05 09:31:33', NULL),
(1867, 'not answered', '120', '20', '30', '2022-10-05 09:31:33', NULL),
(1868, 'not answered', '121', '20', '30', '2022-10-05 09:31:33', NULL),
(1869, 'not answered', '122', '20', '30', '2022-10-05 09:31:33', NULL),
(1870, 'not answered', '123', '20', '30', '2022-10-05 09:31:33', NULL),
(1871, 'not answered', '124', '20', '30', '2022-10-05 09:31:33', NULL),
(1872, 'not answered', '125', '20', '30', '2022-10-05 09:31:33', NULL),
(1873, 'not answered', '127', '20', '30', '2022-10-05 09:31:33', NULL),
(1874, 'not answered', '128', '20', '30', '2022-10-05 09:31:33', NULL),
(1875, 'not answered', '129', '20', '30', '2022-10-05 09:31:33', NULL),
(1876, 'NO', '130', '20', '30', '2022-10-05 09:31:33', NULL),
(1877, 'NO', '131', '20', '30', '2022-10-05 09:31:33', NULL),
(1878, 'Monopoly', '132', '20', '30', '2022-10-05 09:31:33', NULL),
(1879, 'not answered', '133', '20', '30', '2022-10-05 09:31:33', NULL),
(1880, 'not answered', '134', '20', '30', '2022-10-05 09:31:33', NULL),
(1881, 'not answered', '135', '20', '30', '2022-10-05 09:31:33', NULL),
(1882, 'not answered', '136', '20', '30', '2022-10-05 09:31:33', NULL),
(1883, 'not answered', '137', '20', '30', '2022-10-05 09:31:33', NULL),
(1884, 'not answered', '138', '20', '30', '2022-10-05 09:31:33', NULL),
(1885, 'not answered', '139', '20', '30', '2022-10-05 09:31:33', NULL),
(1886, 'not answered', '140', '20', '30', '2022-10-05 09:31:33', NULL),
(1887, 'not answered', '141', '20', '30', '2022-10-05 09:31:33', NULL),
(1888, 'TANZANIA', '1', '20', '29', '2022-10-05 10:59:14', NULL),
(1889, 'TANZANIA EDUCATION AND RESEARCH NETWORK', '2', '20', '29', '2022-10-05 10:59:14', NULL),
(1890, 'www.ternet.or.tz', '3', '20', '29', '2022-10-05 10:59:14', NULL),
(1891, '2008', '4', '20', '29', '2022-10-05 10:59:14', NULL),
(1892, 'Public Trust registered-NGO', '5', '20', '29', '2022-10-05 10:59:14', NULL),
(1893, 'ESTABLISHEMENT OF TRUST REGISTRATION AND  TRUSTEE  BOARD\r\nSECRETARIAT OFFICE WITH FULLTIME CEO \r\nCompetent fulltime staffs  ( Technical and Administration)\r\nDevelopment of Office sections and departments \r\nOwning Network infrastructures with more than 40 members connected \r\nBeyond connectivity Strategy developed \r\nApplication license for Internet service provision under Tanzania Communication Regulatory Authority obtained', '10', '20', '29', '2022-10-05 10:59:14', NULL),
(1894, 'cEO, CTO, COO, Network team, Security team, Network team, Cloud team , system team', '11', '20', '29', '2022-10-05 10:59:14', NULL),
(1895, 'Government agency, private and public Institutions', '12', '20', '29', '2022-10-05 10:59:14', NULL),
(1896, 'https://www.ternet.or.tz/about/about', '13', '20', '29', '2022-10-05 10:59:14', NULL),
(1897, 'not answered', '14', '20', '29', '2022-10-05 10:59:14', NULL),
(1898, '20', '15', '20', '29', '2022-10-05 10:59:14', NULL),
(1899, 'not answered', '16', '20', '29', '2022-10-05 10:59:14', NULL),
(1900, '1', '17', '20', '29', '2022-10-05 10:59:14', NULL),
(1901, 'YES', '18', '20', '29', '2022-10-05 10:59:14', NULL),
(1902, 'YES', '19', '20', '29', '2022-10-05 10:59:14', NULL),
(1903, 'YES', '20', '20', '29', '2022-10-05 10:59:14', NULL),
(1904, 'Training\r\nDirect Engineering Assistance', '21', '20', '29', '2022-10-05 10:59:14', NULL),
(1905, 'YES', '22', '20', '29', '2022-10-05 10:59:14', NULL),
(1906, 'Training\r\nDirect Engineering Assistance', '23', '20', '29', '2022-10-05 10:59:14', NULL),
(1907, '2008', '24', '20', '29', '2022-10-05 10:59:14', NULL),
(1908, '552810.03', '25', '20', '29', '2022-10-05 10:59:14', NULL),
(1909, '595793.2459', '26', '20', '29', '2022-10-05 10:59:14', NULL),
(1910, 'autonomous', '27', '20', '29', '2022-10-05 10:59:14', NULL),
(1911, 'member subscriptions and annual fees, bandwidth sales and software services', '28', '20', '29', '2022-10-05 10:59:14', NULL),
(1912, 'not answered', '29', '20', '29', '2022-10-05 10:59:14', NULL),
(1913, '21', '30', '20', '29', '2022-10-05 10:59:14', NULL),
(1914, '900', '31', '20', '29', '2022-10-05 10:59:14', NULL),
(1915, '48', '32', '20', '29', '2022-10-05 10:59:14', NULL),
(1916, '102308', '33', '20', '29', '2022-10-05 10:59:14', NULL),
(1917, '200', '34', '20', '29', '2022-10-05 10:59:14', NULL),
(1918, '930072', '35', '20', '29', '2022-10-05 10:59:14', NULL),
(1919, '2', '36', '20', '29', '2022-10-05 10:59:14', NULL),
(1920, '20', '37', '20', '29', '2022-10-05 10:59:14', NULL),
(1921, '4', '38', '20', '29', '2022-10-05 10:59:14', NULL),
(1922, '40650', '39', '20', '29', '2022-10-05 10:59:14', NULL),
(1923, 'not answered', '40', '20', '29', '2022-10-05 10:59:14', NULL),
(1924, 'not answered', '41', '20', '29', '2022-10-05 10:59:14', NULL),
(1925, 'not answered', '42', '20', '29', '2022-10-05 10:59:14', NULL),
(1926, 'not answered', '43', '20', '29', '2022-10-05 10:59:14', NULL),
(1927, 'not answered', '44', '20', '29', '2022-10-05 10:59:14', NULL),
(1928, 'not answered', '45', '20', '29', '2022-10-05 10:59:14', NULL),
(1929, '25', '46', '20', '29', '2022-10-05 10:59:14', NULL),
(1930, 'not answered', '47', '20', '29', '2022-10-05 10:59:14', NULL),
(1931, '1', '48', '20', '29', '2022-10-05 10:59:14', NULL),
(1932, '10', '49', '20', '29', '2022-10-05 10:59:14', NULL),
(1933, '1', '50', '20', '29', '2022-10-05 10:59:14', NULL),
(1934, 'N/A', '51', '20', '29', '2022-10-05 10:59:14', NULL),
(1935, 'N/A', '52', '20', '29', '2022-10-05 10:59:14', NULL),
(1936, 'N/A', '53', '20', '29', '2022-10-05 10:59:14', NULL),
(1937, 'not answered', '54', '20', '29', '2022-10-05 10:59:14', NULL),
(1938, 'not answered', '55', '20', '29', '2022-10-05 10:59:14', NULL),
(1939, 'not answered', '56', '20', '29', '2022-10-05 10:59:14', NULL),
(1940, 'not answered', '57', '20', '29', '2022-10-05 10:59:14', NULL),
(1941, 'not answered', '58', '20', '29', '2022-10-05 10:59:14', NULL),
(1942, 'not answered', '59', '20', '29', '2022-10-05 10:59:14', NULL),
(1943, 'N/A', '60', '20', '29', '2022-10-05 10:59:14', NULL),
(1944, 'N/A', '61', '20', '29', '2022-10-05 10:59:14', NULL),
(1945, 'N/A', '62', '20', '29', '2022-10-05 10:59:14', NULL),
(1946, 'N/A', '63', '20', '29', '2022-10-05 10:59:14', NULL),
(1947, 'N/A', '64', '20', '29', '2022-10-05 10:59:14', NULL),
(1948, 'N/A', '65', '20', '29', '2022-10-05 10:59:14', NULL),
(1949, '1', '66', '20', '29', '2022-10-05 10:59:14', NULL),
(1950, '100', '67', '20', '29', '2022-10-05 10:59:14', NULL),
(1951, '1', '68', '20', '29', '2022-10-05 10:59:14', NULL),
(1952, '500', '69', '20', '29', '2022-10-05 10:59:14', NULL),
(1953, 'N/A', '70', '20', '29', '2022-10-05 10:59:14', NULL),
(1954, 'N/A', '71', '20', '29', '2022-10-05 10:59:14', NULL),
(1955, '2', '72', '20', '29', '2022-10-05 10:59:14', NULL),
(1956, '230', '73', '20', '29', '2022-10-05 10:59:14', NULL),
(1957, '2', '74', '20', '29', '2022-10-05 10:59:14', NULL),
(1958, 'N/A', '75', '20', '29', '2022-10-05 10:59:14', NULL),
(1959, 'N/A', '76', '20', '29', '2022-10-05 10:59:14', NULL);
INSERT INTO `answers` (`id`, `name`, `questionid`, `surveyid`, `userid`, `created_at`, `updated_at`) VALUES
(1960, 'N/A', '77', '20', '29', '2022-10-05 10:59:14', NULL),
(1961, '1', '78', '20', '29', '2022-10-05 10:59:14', NULL),
(1962, '20', '79', '20', '29', '2022-10-05 10:59:14', NULL),
(1963, '1', '80', '20', '29', '2022-10-05 10:59:14', NULL),
(1964, 'N/A', '81', '20', '29', '2022-10-05 10:59:14', NULL),
(1965, 'N/A', '82', '20', '29', '2022-10-05 10:59:14', NULL),
(1966, 'N/A', '83', '20', '29', '2022-10-05 10:59:14', NULL),
(1967, '200 plus', '84', '20', '29', '2022-10-05 10:59:14', NULL),
(1968, 'YES', '85', '20', '29', '2022-10-05 10:59:14', NULL),
(1969, 'not answered', '86', '20', '29', '2022-10-05 10:59:14', NULL),
(1970, 'Education and research services', '87', '20', '29', '2022-10-05 10:59:14', NULL),
(1971, 'Student roaming project', '88', '20', '29', '2022-10-05 10:59:14', NULL),
(1972, 'State owned', '92', '20', '29', '2022-10-05 10:59:14', NULL),
(1973, 'State provision', '93', '20', '29', '2022-10-05 10:59:14', NULL),
(1974, 'We have reviewed', '94', '20', '29', '2022-10-05 10:59:14', NULL),
(1975, 'NO', '96', '20', '29', '2022-10-05 10:59:14', NULL),
(1976, 'YES', '97', '20', '29', '2022-10-05 10:59:14', NULL),
(1977, '15USD', '98', '20', '29', '2022-10-05 10:59:14', NULL),
(1978, 'Done by NREN', '104', '20', '29', '2022-10-05 10:59:14', NULL),
(1979, 'Done by NREN', '105', '20', '29', '2022-10-05 10:59:14', NULL),
(1980, 'Done by telecommunications operator', '106', '20', '29', '2022-10-05 10:59:14', NULL),
(1981, 'YES', '107', '20', '29', '2022-10-05 10:59:14', NULL),
(1982, 'No issues', '108', '20', '29', '2022-10-05 10:59:14', NULL),
(1983, 'YES', '109', '20', '29', '2022-10-05 10:59:14', NULL),
(1984, 'YES', '110', '20', '29', '2022-10-05 10:59:14', NULL),
(1985, 'NO', '111', '20', '29', '2022-10-05 10:59:14', NULL),
(1986, 'not answered', '112', '20', '29', '2022-10-05 10:59:14', NULL),
(1987, 'NREN has a network and is connected to UbuntuNet backbone', '115', '20', '29', '2022-10-05 10:59:14', NULL),
(1988, 'We\'re expecting to upgrade our capacity from 450Mbps to 5Gbps depends on with local market and country procurement policy to public institutions', '116', '20', '29', '2022-10-05 10:59:14', NULL),
(1989, 'Eduroam, Mail service, cloud service, e-meeting software as service, E-registry software as service', '117', '20', '29', '2022-10-05 10:59:14', NULL),
(1990, 'Not yet planned', '118', '20', '29', '2022-10-05 10:59:14', NULL),
(1991, 'NO', '119', '20', '29', '2022-10-05 10:59:14', NULL),
(1992, 'YES', '120', '20', '29', '2022-10-05 10:59:14', NULL),
(1993, 'NO', '121', '20', '29', '2022-10-05 10:59:14', NULL),
(1994, 'Yes , we have a plan to connect to National Data center, preliminary  process has stated', '122', '20', '29', '2022-10-05 10:59:14', NULL),
(1995, 'YES', '123', '20', '29', '2022-10-05 10:59:14', NULL),
(1996, 'NO', '124', '20', '29', '2022-10-05 10:59:14', NULL),
(1997, 'Yes', '125', '20', '29', '2022-10-05 10:59:14', NULL),
(1998, 'Repository ( dspace ) and central Repository connected to at least 30 Universities', '127', '20', '29', '2022-10-05 10:59:14', NULL),
(1999, 'YES', '128', '20', '29', '2022-10-05 10:59:14', NULL),
(2000, 'http://tix.or.tz/peers.html', '129', '20', '29', '2022-10-05 10:59:14', NULL),
(2001, 'NO', '130', '20', '29', '2022-10-05 10:59:14', NULL),
(2002, 'YES', '131', '20', '29', '2022-10-05 10:59:14', NULL),
(2003, 'Competitive', '132', '20', '29', '2022-10-05 10:59:14', NULL),
(2004, '6usd/Mbps/month', '133', '20', '29', '2022-10-05 10:59:14', NULL),
(2005, '47', '134', '20', '29', '2022-10-05 10:59:14', NULL),
(2006, '70', '135', '20', '29', '2022-10-05 10:59:14', NULL),
(2007, '246366', '136', '20', '29', '2022-10-05 10:59:14', NULL),
(2008, '20', '137', '20', '29', '2022-10-05 10:59:14', NULL),
(2009, '10', '138', '20', '29', '2022-10-05 10:59:14', NULL),
(2010, 'NO', '139', '20', '29', '2022-10-05 10:59:14', NULL),
(2011, 'YES', '140', '20', '29', '2022-10-05 10:59:14', NULL),
(2012, 'Please share with us this output questionnaire,\r\nIt is not easy to get the accurate  data since most of the  data are not public available. TERNET is doing more effort to gather these data, so that to have at least 70% accurate in future. We\'re looking forward to  conduct e-redness survey for 2022/2023 subject of availability of funds', '141', '20', '29', '2022-10-05 10:59:14', NULL),
(2013, 'Sudan', '1', '20', '27', '2022-10-05 13:20:07', NULL),
(2014, 'Sudanese Research and Education Network  (SudREN)', '2', '20', '27', '2022-10-05 13:20:07', NULL),
(2015, 'http://sudren.edu.sd/index.php', '3', '20', '27', '2022-10-05 13:20:07', NULL),
(2016, '2004', '4', '20', '27', '2022-10-05 13:20:07', NULL),
(2017, 'From 2010 to 2017, the Sudanese Research and Education Network (SudREN) has been a membership-controlled organization, with a board elected by its member institutions.  In 2017, SudREN was taken by the government and eventually became a governmental organization that adheres to regulations and laws limitations of the government.    In August 2021, the National Higher Education Council of Sudan held a General Assembly meeting in participation of the Vice-Chancellors and presidents of all public and private universities who are considered SudREN\'s owners.   The recommendation of the General assembly was to establish an institutional and governance framework for SudREN by registering it as an NGO or a non-profit company. The General Assembly formed a steering committee to design and implement a plan for SudREN\'s revival and to establish SudREN\'s agenda forward in its early stages of new formation.', '5', '20', '27', '2022-10-05 13:20:07', NULL),
(2018, '- 2004-2009 was a library project that connected the 27 public universities in one network with a frame relay technology and provided Internet service and library services.\r\n- 2007 Joined UbuntuNet Alliance and started participating in all its events and activities.\r\n-  2010 registered as an NGO under the ambarella of the Association of Sudanese Universities. It Opened its membership to include private universities, colleges, and research centers. \r\n-2010 Joined AfricaConnect Project as one of the NREN partners ( but not connected)\r\n-2011 celebrated the connectivity of its members to the optical fiber network owned by private telecoms .\r\n- 2012 Developed it polices such as the Human Resources Manual, its financial regulations, and its Acceptable Use Policy.\r\n-2011 developed its business plan and managed to make its revenue and purchased large amounts of Internet capacity (STM-1) with reduction in cost which was  fifth the commercial prices provided by the Telecom Companies to individual institutions.\r\n-2012 Appointed its 13 full-time staff both technical and managerial.\r\n2012  Worked with AfriNIC and secured its Autonomous Systems Numbers (ASNs) and a big range of\r\nindependent IP address space (V4 and v6) with support from AAU and Ubuntunet Alliance. \r\n- 2012 joined ASREN and started to participate in all its events and activities.\r\n2014  completed its IPv6 preparation and announced its prefixes to the world taking the next step in IP Addressing.\r\n\r\n- 2013 -2017 provided specialized, targeted value-added services that universities and research institutions require including, hosting the content of universities, cloud storage & video conference systems, providing access to free library resources based on its own IP addresses distributed to its members, in addition to preparing plans for providing federated authentication and authorization schemes.  \r\n2017 number of member institutions reached 103 members. The total bandwidth consumed reached 4 STM-1. According to the World Bank Report (2015), SudREN was an operational NREN.', '10', '20', '27', '2022-10-05 13:20:07', NULL),
(2019, 'There is an ongoing process to restablish a governance model for SudREN.', '11', '20', '27', '2022-10-05 13:20:07', NULL),
(2020, 'Ongoing process to restablishing an institutional and governance framework for SudREN by registering it as an independent agency with its own Board of Directors', '12', '20', '27', '2022-10-05 13:20:07', NULL),
(2021, 'Ongoing processes', '13', '20', '27', '2022-10-05 13:20:07', NULL),
(2022, '(2010-2017) there were 13 full time staff with 9 qualified engineers.   (2017-to present) SudREN has no administrative or operational structure because it is managed by the IT Unit of the Ministry of Higher Education with only one qualified engineer.   There are plans for  setting up and staffing of a Secretariat by appointing a CEO and qualified staff', '14', '20', '27', '2022-10-05 13:20:07', NULL),
(2023, 'Only one engineer', '15', '20', '27', '2022-10-05 13:20:07', NULL),
(2024, 'Nil', '16', '20', '27', '2022-10-05 13:20:07', NULL),
(2025, 'Nil', '17', '20', '27', '2022-10-05 13:20:07', NULL),
(2026, 'YES', '18', '20', '27', '2022-10-05 13:20:07', NULL),
(2027, 'YES', '19', '20', '27', '2022-10-05 13:20:07', NULL),
(2028, 'YES', '20', '20', '27', '2022-10-05 13:20:07', NULL),
(2029, 'not answered', '21', '20', '27', '2022-10-05 13:20:07', NULL),
(2030, 'NO', '22', '20', '27', '2022-10-05 13:20:07', NULL),
(2031, 'There are plans to revive SudREN.', '23', '20', '27', '2022-10-05 13:20:07', NULL),
(2032, '2007', '24', '20', '27', '2022-10-05 13:20:07', NULL),
(2033, 'Nil', '25', '20', '27', '2022-10-05 13:20:07', NULL),
(2034, 'Nil', '26', '20', '27', '2022-10-05 13:20:07', NULL),
(2035, 'From 2010-to 2017, SudREN has used two sources of funding: government funding to build infrastructure and connectivity, and service charges to member institutions to cover the cost of operation.  As a broker, SudREN purchased large internet capacity with a fifth of the price of Telecom companies to individual institutions. SudREN provided similar capacities at much lower prices to member institutions and avoided competition with telecom companies by providing a suite of specialized added-value services to its members. SudREN’s revenue was based on the difference between the price of Mbps bought from companies and prices sold to universities.\r\nFrom 2017 to the present, There was no business model as all operations adhere to government financial regulations.', '27', '20', '27', '2022-10-05 13:20:07', NULL),
(2036, 'Currently, it adheres to the government financial regulations', '28', '20', '27', '2022-10-05 13:20:07', NULL),
(2037, 'not answered', '29', '20', '27', '2022-10-05 13:20:07', NULL),
(2038, '93', '30', '20', '27', '2022-10-05 13:20:07', NULL),
(2039, '7', '31', '20', '27', '2022-10-05 13:20:07', NULL),
(2040, '93', '32', '20', '27', '2022-10-05 13:20:07', NULL),
(2041, '500000', '33', '20', '27', '2022-10-05 13:20:07', NULL),
(2042, '95', '34', '20', '27', '2022-10-05 13:20:07', NULL),
(2043, '80000', '35', '20', '27', '2022-10-05 13:20:07', NULL),
(2044, '10', '36', '20', '27', '2022-10-05 13:20:07', NULL),
(2045, '3', '37', '20', '27', '2022-10-05 13:20:07', NULL),
(2046, '10', '38', '20', '27', '2022-10-05 13:20:07', NULL),
(2047, '1000', '39', '20', '27', '2022-10-05 13:20:07', NULL),
(2048, '20', '40', '20', '27', '2022-10-05 13:20:07', NULL),
(2049, '2000', '41', '20', '27', '2022-10-05 13:20:07', NULL),
(2050, 'not answered', '42', '20', '27', '2022-10-05 13:20:07', NULL),
(2051, 'not answered', '43', '20', '27', '2022-10-05 13:20:07', NULL),
(2052, 'not answered', '44', '20', '27', '2022-10-05 13:20:07', NULL),
(2053, 'not answered', '45', '20', '27', '2022-10-05 13:20:07', NULL),
(2054, '50', '46', '20', '27', '2022-10-05 13:20:07', NULL),
(2055, '5000', '47', '20', '27', '2022-10-05 13:20:07', NULL),
(2056, 'not answered', '48', '20', '27', '2022-10-05 13:20:07', NULL),
(2057, 'not answered', '49', '20', '27', '2022-10-05 13:20:07', NULL),
(2058, 'not answered', '50', '20', '27', '2022-10-05 13:20:07', NULL),
(2059, 'not answered', '51', '20', '27', '2022-10-05 13:20:07', NULL),
(2060, '2000', '52', '20', '27', '2022-10-05 13:20:07', NULL),
(2061, '10000', '53', '20', '27', '2022-10-05 13:20:07', NULL),
(2062, 'not answered', '54', '20', '27', '2022-10-05 13:20:07', NULL),
(2063, 'not answered', '55', '20', '27', '2022-10-05 13:20:07', NULL),
(2064, 'not answered', '56', '20', '27', '2022-10-05 13:20:07', NULL),
(2065, 'not answered', '57', '20', '27', '2022-10-05 13:20:07', NULL),
(2066, '2000', '58', '20', '27', '2022-10-05 13:20:07', NULL),
(2067, '10000', '59', '20', '27', '2022-10-05 13:20:07', NULL),
(2068, 'not answered', '60', '20', '27', '2022-10-05 13:20:07', NULL),
(2069, 'not answered', '61', '20', '27', '2022-10-05 13:20:07', NULL),
(2070, 'not answered', '62', '20', '27', '2022-10-05 13:20:07', NULL),
(2071, 'not answered', '63', '20', '27', '2022-10-05 13:20:07', NULL),
(2072, '100', '64', '20', '27', '2022-10-05 13:20:07', NULL),
(2073, '1000', '65', '20', '27', '2022-10-05 13:20:07', NULL),
(2074, 'not answered', '66', '20', '27', '2022-10-05 13:20:07', NULL),
(2075, 'not answered', '67', '20', '27', '2022-10-05 13:20:07', NULL),
(2076, 'not answered', '68', '20', '27', '2022-10-05 13:20:07', NULL),
(2077, 'not answered', '69', '20', '27', '2022-10-05 13:20:07', NULL),
(2078, '100', '70', '20', '27', '2022-10-05 13:20:07', NULL),
(2079, '1000', '71', '20', '27', '2022-10-05 13:20:07', NULL),
(2080, 'not answered', '72', '20', '27', '2022-10-05 13:20:07', NULL),
(2081, 'not answered', '73', '20', '27', '2022-10-05 13:20:07', NULL),
(2082, 'not answered', '74', '20', '27', '2022-10-05 13:20:07', NULL),
(2083, 'not answered', '75', '20', '27', '2022-10-05 13:20:07', NULL),
(2084, '100', '76', '20', '27', '2022-10-05 13:20:07', NULL),
(2085, '1000', '77', '20', '27', '2022-10-05 13:20:07', NULL),
(2086, 'not answered', '78', '20', '27', '2022-10-05 13:20:07', NULL),
(2087, 'not answered', '79', '20', '27', '2022-10-05 13:20:07', NULL),
(2088, 'not answered', '80', '20', '27', '2022-10-05 13:20:07', NULL),
(2089, 'not answered', '81', '20', '27', '2022-10-05 13:20:07', NULL),
(2090, '100', '82', '20', '27', '2022-10-05 13:20:07', NULL),
(2091, '1000', '83', '20', '27', '2022-10-05 13:20:07', NULL),
(2092, '30', '84', '20', '27', '2022-10-05 13:20:07', NULL),
(2093, 'YES', '85', '20', '27', '2022-10-05 13:20:07', NULL),
(2094, 'Not accessible online', '86', '20', '27', '2022-10-05 13:20:07', NULL),
(2095, 'Internet Service and connectivity', '87', '20', '27', '2022-10-05 13:20:07', NULL),
(2096, 'Africa City of Technology (ACT) in Sudan has a High-Performance Computing center and it has been connected to SudREN since 2015, but there are no plans for optimum usage by researchers in Sudan.', '88', '20', '27', '2022-10-05 13:20:07', NULL),
(2097, 'Two private telecommunications operator', '92', '20', '27', '2022-10-05 13:20:07', NULL),
(2098, 'State provision ( not sure of the question)', '93', '20', '27', '2022-10-05 13:20:07', NULL),
(2099, 'Unknown due to political situation in Sudan', '94', '20', '27', '2022-10-05 13:20:07', NULL),
(2100, 'NO', '96', '20', '27', '2022-10-05 13:20:07', NULL),
(2101, 'YES', '97', '20', '27', '2022-10-05 13:20:07', NULL),
(2102, 'Total of 4 STM-1 (  600 Mbps)', '98', '20', '27', '2022-10-05 13:20:07', NULL),
(2103, 'Done by NREN', '104', '20', '27', '2022-10-05 13:20:07', NULL),
(2104, 'Done by NREN', '105', '20', '27', '2022-10-05 13:20:07', NULL),
(2105, 'Done by NREN', '106', '20', '27', '2022-10-05 13:20:07', NULL),
(2106, 'YES', '107', '20', '27', '2022-10-05 13:20:07', NULL),
(2107, 'Yes, for the past ten years there have been successful efforts that assisted some public universities in establishing their campus networks.  The project was funded by the government via the Universal Fund.', '108', '20', '27', '2022-10-05 13:20:07', NULL),
(2108, 'NO', '109', '20', '27', '2022-10-05 13:20:07', NULL),
(2109, 'NO', '110', '20', '27', '2022-10-05 13:20:07', NULL),
(2110, 'NO', '111', '20', '27', '2022-10-05 13:20:07', NULL),
(2111, 'SudREN was partner of AfricaConnect Project 2. It payed part of its participation fees.  But failed to pay in full.', '112', '20', '27', '2022-10-05 13:20:07', NULL),
(2112, 'NREN has a network, but is not connected to the UbuntuNet backbone', '115', '20', '27', '2022-10-05 13:20:07', NULL),
(2113, 'Will share the plans soon.', '116', '20', '27', '2022-10-05 13:20:07', NULL),
(2114, '- Internet Service and connectivity- \r\n-  Hosting the content of  some universities\r\n-  cloud storage \r\n-  video conference systems\r\n- Access to free library resources based on its own IP addresses distributed to its members,', '117', '20', '27', '2022-10-05 13:20:07', NULL),
(2115, '- Federated authentication and authorization schemes. \r\n- Eudroam and EduCause projects', '118', '20', '27', '2022-10-05 13:20:07', NULL),
(2116, 'NO', '119', '20', '27', '2022-10-05 13:20:07', NULL),
(2117, 'YES', '120', '20', '27', '2022-10-05 13:20:07', NULL),
(2118, 'NO', '121', '20', '27', '2022-10-05 13:20:07', NULL),
(2119, 'Not planned because the national data center was not reliable .  May be in the future it will be connected.', '122', '20', '27', '2022-10-05 13:20:07', NULL),
(2120, 'NO', '123', '20', '27', '2022-10-05 13:20:07', NULL),
(2121, 'NO', '124', '20', '27', '2022-10-05 13:20:07', NULL),
(2122, 'Yes there are plans for the HPC', '125', '20', '27', '2022-10-05 13:20:07', NULL),
(2123, 'Library content and Access to commercial library resources via EIFL (eilf.net) agreements.', '127', '20', '27', '2022-10-05 13:20:07', NULL),
(2124, 'YES', '128', '20', '27', '2022-10-05 13:20:07', NULL),
(2125, 'http://www.sixp.sd/index', '129', '20', '27', '2022-10-05 13:20:07', NULL),
(2126, 'NO', '130', '20', '27', '2022-10-05 13:20:07', NULL),
(2127, 'YES', '131', '20', '27', '2022-10-05 13:20:07', NULL),
(2128, 'Duopoly', '132', '20', '27', '2022-10-05 13:20:07', NULL),
(2129, '10 USD/Mbps/month ( not sure of the figure)', '133', '20', '27', '2022-10-05 13:20:07', NULL),
(2130, '36', '134', '20', '27', '2022-10-05 13:20:07', NULL),
(2131, '12', '135', '20', '27', '2022-10-05 13:20:07', NULL),
(2132, '800', '136', '20', '27', '2022-10-05 13:20:07', NULL),
(2133, '10', '137', '20', '27', '2022-10-05 13:20:07', NULL),
(2134, 'China, France, Italya, South Africa,', '138', '20', '27', '2022-10-05 13:20:07', NULL),
(2135, 'NO', '139', '20', '27', '2022-10-05 13:20:07', NULL),
(2136, 'NO', '140', '20', '27', '2022-10-05 13:20:07', NULL),
(2137, 'We are working on a project with a goal to establish sustainable funding that enables SudREN to realize its mission of bridging the digital divide and enabling universal education, high-impact research, and economic development.  Funds for the renovation of the network and building its data center will be sought from grants and donors’ support.  The operational expenses will be covered by service charges from member institutions. A robust business plan will be developed to meet these goals.', '141', '20', '27', '2022-10-05 13:20:07', NULL),
(2138, 'Mozambique', '1', '20', '23', '2022-10-05 13:38:34', NULL),
(2139, 'MoRENet', '2', '20', '23', '2022-10-05 13:38:34', NULL),
(2140, 'https://morenet.ac.mz/', '3', '20', '23', '2022-10-05 13:38:34', NULL),
(2141, '2005', '4', '20', '23', '2022-10-05 13:38:34', NULL),
(2142, 'Not-for-Profit Organization', '5', '20', '23', '2022-10-05 13:38:34', NULL),
(2143, '•	Network infrastructure establishment in its three segments: international links, backbone, last mile;\r\n•	Network expansion with national coverage, now present in all 11 provinces of the country; \r\n•	MoRENet\'s advocacy actions as a national initiative, now recognized by the Central Government;\r\n•	Recognition of MoRENet\'s actions at Government level, which became part of the Government\'s national plans and strategies: Broadband Strategy, National Strategy for the Information Society, Five-Year Government Program, among others;\r\n•	Establishment and empowerment of MoRENet\'s team of professionals, which resulted in such dedication and commitment that allowed for remarkable growth and expansion of the network and services to national coverage;\r\n•	Implementation of essential and value-added services in the network (connectivity, Eduroam, CSIRT, HPC, colocation, ...), which are indispensable for education and research institutions;\r\n•	Establishing a training services unit (MoRENet Academy) and conducting training programs nationally and internationally, including talent discovery programs and ICT competition;\r\n•	Establishment of the academy\'s CSIRT and cyber security services unit that assists institutions that have been benefiting from MoRENet services and partners;\r\n•	Elaboration of guiding documents and operational instruments for MoRENet’s activities: MoRENet\'s Business Model, MoRENet\'s Strategic Plan 2018-2025, Annual plans and reports, and others; \r\n•	Implementation of the MoRENet sustainability model which included the introduction of service fee charging;\r\n•	Implementation of supporting measures to mitigate the covid-19 pandemic effects in the educational institutions, with the provision of platforms and services to support learning processes: web and video conference platforms, LMS and Moodle, bandwidth, hosting services, resources for online and blended learning, subsidized mobile data packages from national operators, among others.', '10', '20', '23', '2022-10-05 13:38:34', NULL),
(2144, 'N/A', '11', '20', '23', '2022-10-05 13:38:34', NULL),
(2145, 'N/A', '12', '20', '23', '2022-10-05 13:38:34', NULL),
(2146, 'N/A', '13', '20', '23', '2022-10-05 13:38:34', NULL),
(2147, '09 -- Acting CEO, CTE, Areas Managers: MoRENet Academy, Finance and Administrative, Services, Cyber Security, Network and Infraestrutura, Systems and Applications, HPC', '14', '20', '23', '2022-10-05 13:38:34', NULL),
(2148, '6', '15', '20', '23', '2022-10-05 13:38:34', NULL),
(2149, '24', '16', '20', '23', '2022-10-05 13:38:34', NULL),
(2150, '33', '17', '20', '23', '2022-10-05 13:38:34', NULL),
(2151, 'YES', '18', '20', '23', '2022-10-05 13:38:34', NULL),
(2152, 'YES', '19', '20', '23', '2022-10-05 13:38:34', NULL),
(2153, 'YES', '20', '20', '23', '2022-10-05 13:38:34', NULL),
(2154, 'not answered', '21', '20', '23', '2022-10-05 13:38:34', NULL),
(2155, 'YES', '22', '20', '23', '2022-10-05 13:38:34', NULL),
(2156, 'MoRENet Strategic Plan 2018-2025, composed of 10 strategic focus (SF):\r\n•	SF1: Infrastructure and Data Communication Network\r\n•	SF2: Development of Communication Services\r\n•	SF3: Development of Content Services\r\n•	SF4: Extension of the Network to Cover TVET Institutions\r\n•	SF5: Network, Data and Information Security Services\r\n•	SF6: High Performance Computing Services (HPC)\r\n•	SF7: Governance and Management\r\n•	SF8: Training, Promotion, and Outreach Services\r\n•	SF9: Cooperation, Partnerships and Collaboration\r\n•	SF10: Financial and Economic Sustainability', '23', '20', '23', '2022-10-05 13:38:34', NULL),
(2157, '2005 (founding member)', '24', '20', '23', '2022-10-05 13:38:34', NULL),
(2158, 'N/A', '25', '20', '23', '2022-10-05 13:38:34', NULL),
(2159, 'N/A', '26', '20', '23', '2022-10-05 13:38:34', NULL),
(2160, 'MoRENet\'s Business Model recommends three sources of funding to cover investment and operating expenses:\r\n1. Own revenues (service fee)\r\n2. State funds and \r\n3. External donations and subsidies (cooperation Partners)', '27', '20', '23', '2022-10-05 13:38:34', NULL),
(2161, 'Mixed: own sales revenues, state subsidiary and external funding', '28', '20', '23', '2022-10-05 13:38:34', NULL),
(2162, 'Commercial model based on defined service fee: 60 USD/Mbps/month', '29', '20', '23', '2022-10-05 13:38:34', NULL),
(2163, '88', '30', '20', '23', '2022-10-05 13:38:34', NULL),
(2164, '58', '31', '20', '23', '2022-10-05 13:38:34', NULL),
(2165, 'not answered', '32', '20', '23', '2022-10-05 13:38:34', NULL),
(2166, 'not answered', '33', '20', '23', '2022-10-05 13:38:34', NULL),
(2167, 'not answered', '34', '20', '23', '2022-10-05 13:38:34', NULL),
(2168, 'not answered', '35', '20', '23', '2022-10-05 13:38:34', NULL),
(2169, '56', '36', '20', '23', '2022-10-05 13:38:34', NULL),
(2170, '114', '37', '20', '23', '2022-10-05 13:38:34', NULL),
(2171, 'not answered', '38', '20', '23', '2022-10-05 13:38:34', NULL),
(2172, 'not answered', '39', '20', '23', '2022-10-05 13:38:34', NULL),
(2173, 'not answered', '40', '20', '23', '2022-10-05 13:38:34', NULL),
(2174, 'not answered', '41', '20', '23', '2022-10-05 13:38:34', NULL),
(2175, '34', '42', '20', '23', '2022-10-05 13:38:34', NULL),
(2176, '20', '43', '20', '23', '2022-10-05 13:38:34', NULL),
(2177, 'not answered', '44', '20', '23', '2022-10-05 13:38:34', NULL),
(2178, 'not answered', '45', '20', '23', '2022-10-05 13:38:34', NULL),
(2179, 'not answered', '46', '20', '23', '2022-10-05 13:38:34', NULL),
(2180, 'not answered', '47', '20', '23', '2022-10-05 13:38:34', NULL),
(2181, '2', '48', '20', '23', '2022-10-05 13:38:34', NULL),
(2182, '30', '49', '20', '23', '2022-10-05 13:38:34', NULL),
(2183, 'not answered', '50', '20', '23', '2022-10-05 13:38:34', NULL),
(2184, 'not answered', '51', '20', '23', '2022-10-05 13:38:34', NULL),
(2185, 'not answered', '52', '20', '23', '2022-10-05 13:38:34', NULL),
(2186, 'not answered', '53', '20', '23', '2022-10-05 13:38:34', NULL),
(2187, 'not answered', '54', '20', '23', '2022-10-05 13:38:34', NULL),
(2188, 'not answered', '55', '20', '23', '2022-10-05 13:38:34', NULL),
(2189, 'not answered', '56', '20', '23', '2022-10-05 13:38:34', NULL),
(2190, 'not answered', '57', '20', '23', '2022-10-05 13:38:34', NULL),
(2191, 'not answered', '58', '20', '23', '2022-10-05 13:38:34', NULL),
(2192, 'not answered', '59', '20', '23', '2022-10-05 13:38:34', NULL),
(2193, '2', '60', '20', '23', '2022-10-05 13:38:34', NULL),
(2194, '15', '61', '20', '23', '2022-10-05 13:38:34', NULL),
(2195, 'not answered', '62', '20', '23', '2022-10-05 13:38:34', NULL),
(2196, 'not answered', '63', '20', '23', '2022-10-05 13:38:34', NULL),
(2197, 'not answered', '64', '20', '23', '2022-10-05 13:38:34', NULL),
(2198, 'not answered', '65', '20', '23', '2022-10-05 13:38:34', NULL),
(2199, 'not answered', '66', '20', '23', '2022-10-05 13:38:34', NULL),
(2200, 'not answered', '67', '20', '23', '2022-10-05 13:38:34', NULL),
(2201, 'not answered', '68', '20', '23', '2022-10-05 13:38:34', NULL),
(2202, 'not answered', '69', '20', '23', '2022-10-05 13:38:34', NULL),
(2203, 'not answered', '70', '20', '23', '2022-10-05 13:38:34', NULL),
(2204, 'not answered', '71', '20', '23', '2022-10-05 13:38:34', NULL),
(2205, '2', '72', '20', '23', '2022-10-05 13:38:34', NULL),
(2206, '35', '73', '20', '23', '2022-10-05 13:38:34', NULL),
(2207, 'not answered', '74', '20', '23', '2022-10-05 13:38:34', NULL),
(2208, 'not answered', '75', '20', '23', '2022-10-05 13:38:34', NULL),
(2209, 'not answered', '76', '20', '23', '2022-10-05 13:38:34', NULL),
(2210, 'not answered', '77', '20', '23', '2022-10-05 13:38:34', NULL),
(2211, 'not answered', '78', '20', '23', '2022-10-05 13:38:34', NULL),
(2212, 'not answered', '79', '20', '23', '2022-10-05 13:38:34', NULL),
(2213, 'not answered', '80', '20', '23', '2022-10-05 13:38:34', NULL),
(2214, 'not answered', '81', '20', '23', '2022-10-05 13:38:34', NULL),
(2215, 'not answered', '82', '20', '23', '2022-10-05 13:38:34', NULL),
(2216, 'not answered', '83', '20', '23', '2022-10-05 13:38:34', NULL),
(2217, '87', '84', '20', '23', '2022-10-05 13:38:34', NULL),
(2218, 'YES', '85', '20', '23', '2022-10-05 13:38:34', NULL),
(2219, 'not answered', '86', '20', '23', '2022-10-05 13:38:34', NULL),
(2220, 'Connectivity - internet access', '87', '20', '23', '2022-10-05 13:38:34', NULL),
(2221, 'High Performance Computing, Learning Management System (LMS)', '88', '20', '23', '2022-10-05 13:38:34', NULL),
(2222, 'NREN', '92', '20', '23', '2022-10-05 13:38:34', NULL),
(2223, 'NREN tender process', '93', '20', '23', '2022-10-05 13:38:34', NULL),
(2224, '2025', '94', '20', '23', '2022-10-05 13:38:34', NULL),
(2225, 'YES', '96', '20', '23', '2022-10-05 13:38:34', NULL),
(2226, 'YES', '97', '20', '23', '2022-10-05 13:38:34', NULL),
(2227, '67 Mbps', '98', '20', '23', '2022-10-05 13:38:34', NULL),
(2228, 'Done by NREN', '104', '20', '23', '2022-10-05 13:38:34', NULL),
(2229, 'Done by NREN', '105', '20', '23', '2022-10-05 13:38:34', NULL),
(2230, 'Done by NREN', '106', '20', '23', '2022-10-05 13:38:34', NULL),
(2231, 'YES', '107', '20', '23', '2022-10-05 13:38:34', NULL),
(2232, 'not answered', '108', '20', '23', '2022-10-05 13:38:34', NULL),
(2233, 'YES', '109', '20', '23', '2022-10-05 13:38:34', NULL),
(2234, 'not answered', '110', '20', '23', '2022-10-05 13:38:34', NULL),
(2235, 'YES', '111', '20', '23', '2022-10-05 13:38:34', NULL),
(2236, 'not answered', '112', '20', '23', '2022-10-05 13:38:34', NULL),
(2237, 'NREN has a network and is connected to UbuntuNet backbone', '115', '20', '23', '2022-10-05 13:38:34', NULL),
(2238, '1. Planning to upgrade the international bandwidth to 60 Gbps\r\n2. Plan to upgrade the backbone to bandwidth to 1 Gbps\r\n3. Upgrade the international capacity by joining the AmLight SACS submarine cable project', '116', '20', '23', '2022-10-05 13:38:34', NULL),
(2239, '•	Connectivity (including Internet access)\r\n•	DNS services \r\n•	Mail services\r\n•	Network Operations Centre (NOC) \r\n•	Cybersecurity services\r\n•	High Performance Computing \r\n•	eduroam \r\n•	ID Federation (CAF-Moz)\r\n•	Content Caches (Google, Facebook)\r\n•	Content management services (Moodle)\r\n•	Teleconferencing services (web and video services)\r\n•	Data centre services (virtual machines, co-location of servers)\r\n•	Capacity building services', '117', '20', '23', '2022-10-05 13:38:34', NULL),
(2240, '•	Cloud services\r\n•	MOOC platform', '118', '20', '23', '2022-10-05 13:38:34', NULL),
(2241, 'YES', '119', '20', '23', '2022-10-05 13:38:34', NULL),
(2242, 'YES', '120', '20', '23', '2022-10-05 13:38:34', NULL),
(2243, 'YES', '121', '20', '23', '2022-10-05 13:38:34', NULL),
(2244, 'not answered', '122', '20', '23', '2022-10-05 13:38:34', NULL),
(2245, 'YES', '123', '20', '23', '2022-10-05 13:38:34', NULL),
(2246, 'not answered', '124', '20', '23', '2022-10-05 13:38:34', NULL),
(2247, 'not answered', '125', '20', '23', '2022-10-05 13:38:34', NULL),
(2248, 'LMS, Moodle', '127', '20', '23', '2022-10-05 13:38:34', NULL),
(2249, 'YES', '128', '20', '23', '2022-10-05 13:38:34', NULL),
(2250, 'https://mozix.org.mz/', '129', '20', '23', '2022-10-05 13:38:34', NULL),
(2251, 'NO', '130', '20', '23', '2022-10-05 13:38:34', NULL),
(2252, 'NO', '131', '20', '23', '2022-10-05 13:38:34', NULL),
(2253, 'Competitive', '132', '20', '23', '2022-10-05 13:38:34', NULL),
(2254, 'no info', '133', '20', '23', '2022-10-05 13:38:34', NULL),
(2255, '22', '134', '20', '23', '2022-10-05 13:38:34', NULL),
(2256, '31', '135', '20', '23', '2022-10-05 13:38:34', NULL),
(2257, 'not answered', '136', '20', '23', '2022-10-05 13:38:34', NULL),
(2258, 'not answered', '137', '20', '23', '2022-10-05 13:38:34', NULL),
(2259, '-', '138', '20', '23', '2022-10-05 13:38:34', NULL),
(2260, 'YES', '139', '20', '23', '2022-10-05 13:38:34', NULL),
(2261, 'YES', '140', '20', '23', '2022-10-05 13:38:34', NULL),
(2262, 'Not', '141', '20', '23', '2022-10-05 13:38:34', NULL),
(2263, 'Zimbabwe', '1', '20', '31', '2022-10-05 23:27:23', NULL),
(2264, 'ZIMREN', '2', '20', '31', '2022-10-05 23:27:23', NULL),
(2265, 'ZIMREN', '3', '20', '31', '2022-10-05 23:27:23', NULL),
(2266, 'not answered', '4', '20', '31', '2022-10-05 23:27:23', NULL),
(2267, 'not answered', '5', '20', '31', '2022-10-05 23:27:23', NULL),
(2268, 'not answered', '10', '20', '31', '2022-10-05 23:27:23', NULL),
(2269, 'not answered', '11', '20', '31', '2022-10-05 23:27:23', NULL),
(2270, 'not answered', '12', '20', '31', '2022-10-05 23:27:23', NULL),
(2271, 'not answered', '13', '20', '31', '2022-10-05 23:27:23', NULL),
(2272, 'not answered', '14', '20', '31', '2022-10-05 23:27:23', NULL),
(2273, 'not answered', '15', '20', '31', '2022-10-05 23:27:23', NULL),
(2274, 'not answered', '16', '20', '31', '2022-10-05 23:27:23', NULL),
(2275, 'not answered', '17', '20', '31', '2022-10-05 23:27:23', NULL),
(2276, 'not answered', '18', '20', '31', '2022-10-05 23:27:23', NULL),
(2277, 'not answered', '19', '20', '31', '2022-10-05 23:27:23', NULL),
(2278, 'not answered', '20', '20', '31', '2022-10-05 23:27:23', NULL),
(2279, 'not answered', '21', '20', '31', '2022-10-05 23:27:23', NULL),
(2280, 'not answered', '22', '20', '31', '2022-10-05 23:27:23', NULL),
(2281, 'not answered', '23', '20', '31', '2022-10-05 23:27:23', NULL),
(2282, 'not answered', '24', '20', '31', '2022-10-05 23:27:23', NULL),
(2283, 'not answered', '25', '20', '31', '2022-10-05 23:27:23', NULL),
(2284, 'not answered', '26', '20', '31', '2022-10-05 23:27:23', NULL),
(2285, 'not answered', '27', '20', '31', '2022-10-05 23:27:23', NULL),
(2286, 'not answered', '28', '20', '31', '2022-10-05 23:27:23', NULL),
(2287, 'not answered', '29', '20', '31', '2022-10-05 23:27:23', NULL),
(2288, 'not answered', '30', '20', '31', '2022-10-05 23:27:23', NULL),
(2289, 'not answered', '31', '20', '31', '2022-10-05 23:27:23', NULL),
(2290, 'not answered', '32', '20', '31', '2022-10-05 23:27:23', NULL),
(2291, 'not answered', '33', '20', '31', '2022-10-05 23:27:23', NULL),
(2292, 'not answered', '34', '20', '31', '2022-10-05 23:27:23', NULL),
(2293, 'not answered', '35', '20', '31', '2022-10-05 23:27:23', NULL),
(2294, 'not answered', '36', '20', '31', '2022-10-05 23:27:23', NULL),
(2295, 'not answered', '37', '20', '31', '2022-10-05 23:27:23', NULL),
(2296, 'not answered', '38', '20', '31', '2022-10-05 23:27:23', NULL),
(2297, 'not answered', '39', '20', '31', '2022-10-05 23:27:23', NULL),
(2298, 'not answered', '40', '20', '31', '2022-10-05 23:27:23', NULL),
(2299, 'not answered', '41', '20', '31', '2022-10-05 23:27:23', NULL),
(2300, 'not answered', '42', '20', '31', '2022-10-05 23:27:23', NULL),
(2301, 'not answered', '43', '20', '31', '2022-10-05 23:27:23', NULL),
(2302, 'not answered', '44', '20', '31', '2022-10-05 23:27:23', NULL),
(2303, 'not answered', '45', '20', '31', '2022-10-05 23:27:23', NULL),
(2304, 'not answered', '46', '20', '31', '2022-10-05 23:27:23', NULL),
(2305, 'not answered', '47', '20', '31', '2022-10-05 23:27:23', NULL),
(2306, 'not answered', '48', '20', '31', '2022-10-05 23:27:23', NULL),
(2307, 'not answered', '49', '20', '31', '2022-10-05 23:27:23', NULL),
(2308, 'not answered', '50', '20', '31', '2022-10-05 23:27:23', NULL),
(2309, 'not answered', '51', '20', '31', '2022-10-05 23:27:23', NULL),
(2310, 'not answered', '52', '20', '31', '2022-10-05 23:27:23', NULL),
(2311, 'not answered', '53', '20', '31', '2022-10-05 23:27:23', NULL),
(2312, 'not answered', '54', '20', '31', '2022-10-05 23:27:23', NULL),
(2313, 'not answered', '55', '20', '31', '2022-10-05 23:27:23', NULL),
(2314, 'not answered', '56', '20', '31', '2022-10-05 23:27:23', NULL),
(2315, 'not answered', '57', '20', '31', '2022-10-05 23:27:23', NULL),
(2316, 'not answered', '58', '20', '31', '2022-10-05 23:27:23', NULL),
(2317, 'not answered', '59', '20', '31', '2022-10-05 23:27:23', NULL),
(2318, 'not answered', '60', '20', '31', '2022-10-05 23:27:23', NULL),
(2319, 'not answered', '61', '20', '31', '2022-10-05 23:27:23', NULL),
(2320, 'not answered', '62', '20', '31', '2022-10-05 23:27:23', NULL),
(2321, 'not answered', '63', '20', '31', '2022-10-05 23:27:23', NULL),
(2322, 'not answered', '64', '20', '31', '2022-10-05 23:27:23', NULL),
(2323, 'not answered', '65', '20', '31', '2022-10-05 23:27:23', NULL),
(2324, 'not answered', '66', '20', '31', '2022-10-05 23:27:23', NULL),
(2325, 'not answered', '67', '20', '31', '2022-10-05 23:27:23', NULL),
(2326, 'not answered', '68', '20', '31', '2022-10-05 23:27:23', NULL),
(2327, 'not answered', '69', '20', '31', '2022-10-05 23:27:23', NULL),
(2328, 'not answered', '70', '20', '31', '2022-10-05 23:27:23', NULL),
(2329, 'not answered', '71', '20', '31', '2022-10-05 23:27:23', NULL),
(2330, 'not answered', '72', '20', '31', '2022-10-05 23:27:23', NULL),
(2331, 'not answered', '73', '20', '31', '2022-10-05 23:27:23', NULL),
(2332, 'not answered', '74', '20', '31', '2022-10-05 23:27:23', NULL),
(2333, 'not answered', '75', '20', '31', '2022-10-05 23:27:23', NULL),
(2334, 'not answered', '76', '20', '31', '2022-10-05 23:27:23', NULL),
(2335, 'not answered', '77', '20', '31', '2022-10-05 23:27:23', NULL),
(2336, 'not answered', '78', '20', '31', '2022-10-05 23:27:23', NULL),
(2337, 'not answered', '79', '20', '31', '2022-10-05 23:27:23', NULL),
(2338, 'not answered', '80', '20', '31', '2022-10-05 23:27:23', NULL),
(2339, 'not answered', '81', '20', '31', '2022-10-05 23:27:23', NULL),
(2340, 'not answered', '82', '20', '31', '2022-10-05 23:27:23', NULL),
(2341, 'not answered', '83', '20', '31', '2022-10-05 23:27:23', NULL),
(2342, 'not answered', '84', '20', '31', '2022-10-05 23:27:23', NULL),
(2343, 'not answered', '85', '20', '31', '2022-10-05 23:27:23', NULL),
(2344, 'not answered', '86', '20', '31', '2022-10-05 23:27:23', NULL),
(2345, 'not answered', '87', '20', '31', '2022-10-05 23:27:23', NULL),
(2346, 'not answered', '88', '20', '31', '2022-10-05 23:27:23', NULL),
(2347, 'not answered', '92', '20', '31', '2022-10-05 23:27:23', NULL),
(2348, 'not answered', '93', '20', '31', '2022-10-05 23:27:23', NULL),
(2349, 'not answered', '94', '20', '31', '2022-10-05 23:27:23', NULL),
(2350, 'not answered', '96', '20', '31', '2022-10-05 23:27:23', NULL),
(2351, 'not answered', '97', '20', '31', '2022-10-05 23:27:23', NULL),
(2352, 'not answered', '98', '20', '31', '2022-10-05 23:27:23', NULL),
(2353, 'Done by NREN', '104', '20', '31', '2022-10-05 23:27:23', NULL),
(2354, 'Done by NREN', '105', '20', '31', '2022-10-05 23:27:23', NULL),
(2355, 'Done by NREN', '106', '20', '31', '2022-10-05 23:27:23', NULL),
(2356, 'not answered', '107', '20', '31', '2022-10-05 23:27:23', NULL),
(2357, 'not answered', '108', '20', '31', '2022-10-05 23:27:23', NULL),
(2358, 'not answered', '109', '20', '31', '2022-10-05 23:27:23', NULL),
(2359, 'not answered', '110', '20', '31', '2022-10-05 23:27:23', NULL),
(2360, 'not answered', '111', '20', '31', '2022-10-05 23:27:23', NULL),
(2361, 'not answered', '112', '20', '31', '2022-10-05 23:27:23', NULL),
(2362, 'NREN has a network and is connected to UbuntuNet backbone', '115', '20', '31', '2022-10-05 23:27:23', NULL),
(2363, 'not answered', '116', '20', '31', '2022-10-05 23:27:23', NULL),
(2364, 'not answered', '117', '20', '31', '2022-10-05 23:27:23', NULL),
(2365, 'not answered', '118', '20', '31', '2022-10-05 23:27:23', NULL),
(2366, 'not answered', '119', '20', '31', '2022-10-05 23:27:23', NULL),
(2367, 'not answered', '120', '20', '31', '2022-10-05 23:27:23', NULL),
(2368, 'not answered', '121', '20', '31', '2022-10-05 23:27:23', NULL),
(2369, 'not answered', '122', '20', '31', '2022-10-05 23:27:23', NULL),
(2370, 'not answered', '123', '20', '31', '2022-10-05 23:27:23', NULL),
(2371, 'not answered', '124', '20', '31', '2022-10-05 23:27:23', NULL),
(2372, 'not answered', '125', '20', '31', '2022-10-05 23:27:23', NULL),
(2373, 'not answered', '127', '20', '31', '2022-10-05 23:27:23', NULL),
(2374, 'not answered', '128', '20', '31', '2022-10-05 23:27:23', NULL),
(2375, 'not answered', '129', '20', '31', '2022-10-05 23:27:23', NULL),
(2376, 'NO', '130', '20', '31', '2022-10-05 23:27:23', NULL),
(2377, 'NO', '131', '20', '31', '2022-10-05 23:27:23', NULL),
(2378, 'Monopoly', '132', '20', '31', '2022-10-05 23:27:23', NULL),
(2379, 'not answered', '133', '20', '31', '2022-10-05 23:27:23', NULL),
(2380, 'not answered', '134', '20', '31', '2022-10-05 23:27:23', NULL),
(2381, 'not answered', '135', '20', '31', '2022-10-05 23:27:23', NULL),
(2382, 'not answered', '136', '20', '31', '2022-10-05 23:27:23', NULL),
(2383, 'not answered', '137', '20', '31', '2022-10-05 23:27:23', NULL),
(2384, 'not answered', '138', '20', '31', '2022-10-05 23:27:23', NULL),
(2385, 'not answered', '139', '20', '31', '2022-10-05 23:27:23', NULL),
(2386, 'not answered', '140', '20', '31', '2022-10-05 23:27:23', NULL),
(2387, 'not answered', '141', '20', '31', '2022-10-05 23:27:23', NULL),
(2388, 'MADAGASCAR', '1', '20', '21', '2022-10-06 00:32:37', NULL),
(2389, 'i RENALA', '2', '20', '21', '2022-10-06 00:32:37', NULL),
(2390, 'https://www.irenala.edu.mg', '3', '20', '21', '2022-10-06 00:32:37', NULL),
(2391, '07th June 2012', '4', '20', '21', '2022-10-06 00:32:37', NULL),
(2392, 'Non-profit organization', '5', '20', '21', '2022-10-06 00:32:37', NULL),
(2393, '29 members / 24 connected members\r\n\r\n7 national STM1 / 3 international STM1', '10', '20', '21', '2022-10-06 00:32:37', NULL),
(2394, 'General Assembly / Board / Operational Unit', '11', '20', '21', '2022-10-06 00:32:37', NULL),
(2395, 'General Assembly : 2 Ministries / 6 Universities / 3 Higher institute of technology/ Research centers / Private Institution', '12', '20', '21', '2022-10-06 00:32:37', NULL),
(2396, 'https://www.irenala.edu.mg/images/irenala-association/statut-irenala.pdf', '13', '20', '21', '2022-10-06 00:32:37', NULL),
(2397, 'not answered', '14', '20', '21', '2022-10-06 00:32:37', NULL),
(2398, '3', '15', '20', '21', '2022-10-06 00:32:37', NULL),
(2399, 'Community manager', '16', '20', '21', '2022-10-06 00:32:37', NULL),
(2400, 'Capacity building of network administrators of member institutions', '17', '20', '21', '2022-10-06 00:32:37', NULL),
(2401, 'YES', '18', '20', '21', '2022-10-06 00:32:37', NULL),
(2402, 'NO', '19', '20', '21', '2022-10-06 00:32:37', NULL),
(2403, 'YES', '20', '20', '21', '2022-10-06 00:32:37', NULL),
(2404, 'not answered', '21', '20', '21', '2022-10-06 00:32:37', NULL),
(2405, 'YES', '22', '20', '21', '2022-10-06 00:32:37', NULL),
(2406, 'Member support for their digital development\r\nInternational development', '23', '20', '21', '2022-10-06 00:32:37', NULL),
(2407, '2014', '24', '20', '21', '2022-10-06 00:32:37', NULL),
(2408, 'Waiting for the general assembly', '25', '20', '21', '2022-10-06 00:32:37', NULL),
(2409, 'Waiting for the general assembly', '26', '20', '21', '2022-10-06 00:32:37', NULL),
(2410, 'Need for subsidies', '27', '20', '21', '2022-10-06 00:32:37', NULL),
(2411, 'Membership dues', '28', '20', '21', '2022-10-06 00:32:37', NULL),
(2412, 'not answered', '29', '20', '21', '2022-10-06 00:32:37', NULL),
(2413, '11', '30', '20', '21', '2022-10-06 00:32:37', NULL),
(2414, '554', '31', '20', '21', '2022-10-06 00:32:37', NULL),
(2415, '13', '32', '20', '21', '2022-10-06 00:32:37', NULL),
(2416, '-', '33', '20', '21', '2022-10-06 00:32:37', NULL),
(2417, '-', '34', '20', '21', '2022-10-06 00:32:37', NULL),
(2418, '-', '35', '20', '21', '2022-10-06 00:32:37', NULL),
(2419, '10', '36', '20', '21', '2022-10-06 00:32:38', NULL),
(2420, '170', '37', '20', '21', '2022-10-06 00:32:38', NULL),
(2421, '11', '38', '20', '21', '2022-10-06 00:32:38', NULL),
(2422, '-', '39', '20', '21', '2022-10-06 00:32:38', NULL),
(2423, '-', '40', '20', '21', '2022-10-06 00:32:38', NULL),
(2424, '-', '41', '20', '21', '2022-10-06 00:32:38', NULL),
(2425, '1', '42', '20', '21', '2022-10-06 00:32:38', NULL),
(2426, '25', '43', '20', '21', '2022-10-06 00:32:38', NULL),
(2427, '3', '44', '20', '21', '2022-10-06 00:32:38', NULL),
(2428, '-', '45', '20', '21', '2022-10-06 00:32:38', NULL),
(2429, '-', '46', '20', '21', '2022-10-06 00:32:38', NULL),
(2430, '-', '47', '20', '21', '2022-10-06 00:32:38', NULL),
(2431, 'not answered', '48', '20', '21', '2022-10-06 00:32:38', NULL),
(2432, '-', '49', '20', '21', '2022-10-06 00:32:38', NULL),
(2433, '-', '50', '20', '21', '2022-10-06 00:32:38', NULL),
(2434, '-', '51', '20', '21', '2022-10-06 00:32:38', NULL),
(2435, '-', '52', '20', '21', '2022-10-06 00:32:38', NULL),
(2436, '-', '53', '20', '21', '2022-10-06 00:32:38', NULL),
(2437, 'not answered', '54', '20', '21', '2022-10-06 00:32:38', NULL),
(2438, '-', '55', '20', '21', '2022-10-06 00:32:38', NULL),
(2439, '-', '56', '20', '21', '2022-10-06 00:32:38', NULL),
(2440, '-', '57', '20', '21', '2022-10-06 00:32:38', NULL),
(2441, '-', '58', '20', '21', '2022-10-06 00:32:38', NULL),
(2442, '-', '59', '20', '21', '2022-10-06 00:32:38', NULL),
(2443, 'not answered', '60', '20', '21', '2022-10-06 00:32:38', NULL),
(2444, '-', '61', '20', '21', '2022-10-06 00:32:38', NULL),
(2445, '-', '62', '20', '21', '2022-10-06 00:32:38', NULL),
(2446, '-', '63', '20', '21', '2022-10-06 00:32:38', NULL),
(2447, '-', '64', '20', '21', '2022-10-06 00:32:38', NULL),
(2448, '-', '65', '20', '21', '2022-10-06 00:32:38', NULL),
(2449, 'not answered', '66', '20', '21', '2022-10-06 00:32:38', NULL),
(2450, '-', '67', '20', '21', '2022-10-06 00:32:38', NULL),
(2451, '-', '68', '20', '21', '2022-10-06 00:32:38', NULL),
(2452, '-', '69', '20', '21', '2022-10-06 00:32:38', NULL),
(2453, '-', '70', '20', '21', '2022-10-06 00:32:38', NULL),
(2454, '-', '71', '20', '21', '2022-10-06 00:32:38', NULL),
(2455, '2', '72', '20', '21', '2022-10-06 00:32:38', NULL),
(2456, '34', '73', '20', '21', '2022-10-06 00:32:38', NULL),
(2457, '2', '74', '20', '21', '2022-10-06 00:32:38', NULL),
(2458, '-', '75', '20', '21', '2022-10-06 00:32:38', NULL),
(2459, '-', '76', '20', '21', '2022-10-06 00:32:38', NULL),
(2460, '-', '77', '20', '21', '2022-10-06 00:32:38', NULL),
(2461, 'not answered', '78', '20', '21', '2022-10-06 00:32:38', NULL),
(2462, '-', '79', '20', '21', '2022-10-06 00:32:38', NULL),
(2463, '-', '80', '20', '21', '2022-10-06 00:32:38', NULL),
(2464, '-', '81', '20', '21', '2022-10-06 00:32:38', NULL),
(2465, '-', '82', '20', '21', '2022-10-06 00:32:38', NULL),
(2466, '-', '83', '20', '21', '2022-10-06 00:32:38', NULL),
(2467, 'About 10', '84', '20', '21', '2022-10-06 00:32:38', NULL),
(2468, 'YES', '85', '20', '21', '2022-10-06 00:32:38', NULL),
(2469, 'https://www.irenala.edu.mg/espace-utilisateur/l-agrement-irenala', '86', '20', '21', '2022-10-06 00:32:38', NULL),
(2470, 'internet', '87', '20', '21', '2022-10-06 00:32:38', NULL),
(2471, 'Digitization of administrative information\r\nAC3 Project', '88', '20', '21', '2022-10-06 00:32:38', NULL),
(2472, 'State', '92', '20', '21', '2022-10-06 00:32:38', NULL),
(2473, 'IRU for 25 years', '93', '20', '21', '2022-10-06 00:32:38', NULL),
(2474, 'In 2019, the Ministry of Higher Education and Scientific Research signed a new agreement with TELMA to upgrade the flow of i RENALA', '94', '20', '21', '2022-10-06 00:32:38', NULL),
(2475, 'NO', '96', '20', '21', '2022-10-06 00:32:38', NULL),
(2476, 'NO', '97', '20', '21', '2022-10-06 00:32:38', NULL),
(2477, 'not answered', '98', '20', '21', '2022-10-06 00:32:38', NULL),
(2478, 'Done by NREN', '104', '20', '21', '2022-10-06 00:32:38', NULL),
(2479, 'Done by NREN', '105', '20', '21', '2022-10-06 00:32:38', NULL),
(2480, 'Done by NREN', '106', '20', '21', '2022-10-06 00:32:38', NULL),
(2481, 'YES', '107', '20', '21', '2022-10-06 00:32:38', NULL),
(2482, 'i RENALA members are not aware of the importance of the NREN. Only the connection is mainly used', '108', '20', '21', '2022-10-06 00:32:38', NULL),
(2483, 'YES', '109', '20', '21', '2022-10-06 00:32:38', NULL),
(2484, 'NO', '110', '20', '21', '2022-10-06 00:32:38', NULL),
(2485, 'YES', '111', '20', '21', '2022-10-06 00:32:38', NULL),
(2486, 'Waiting for funding', '112', '20', '21', '2022-10-06 00:32:38', NULL),
(2487, 'NREN has a network, but is not connected to the UbuntuNet backbone', '115', '20', '21', '2022-10-06 00:32:38', NULL),
(2488, 'Renewal and expansion of the computer park to be able to offer more services to members', '116', '20', '21', '2022-10-06 00:32:38', NULL),
(2489, 'Collaboration : NextCloud\r\nCommunication : BigBlueButton : Jabber\r\nConnectiviy : IPv4 & IPv6\r\nE-learning : Moodle / MadaRevues / UNT\r\nManagement : PGI Cocktail / Odoo / Digital work environment via Moodle\r\nHosting :  Mail / Websites\r\nIdentit y :  LDAP\r\nSecurity : SMTP / Antivirus & Antispam / DNS / Cache DNS (resolver) / Monitoring', '117', '20', '21', '2022-10-06 00:32:38', NULL),
(2490, 'Currently, i RENALA develops services according to the demand of its members', '118', '20', '21', '2022-10-06 00:32:38', NULL),
(2491, 'NO', '119', '20', '21', '2022-10-06 00:32:38', NULL),
(2492, 'NO', '120', '20', '21', '2022-10-06 00:32:38', NULL),
(2493, 'NO', '121', '20', '21', '2022-10-06 00:32:38', NULL),
(2494, 'Not for the moment', '122', '20', '21', '2022-10-06 00:32:38', NULL),
(2495, 'NO', '123', '20', '21', '2022-10-06 00:32:38', NULL),
(2496, 'not answered', '124', '20', '21', '2022-10-06 00:32:38', NULL),
(2497, 'not answered', '125', '20', '21', '2022-10-06 00:32:38', NULL),
(2498, 'Theses, educational resources, scientific resources, ...', '127', '20', '21', '2022-10-06 00:32:38', NULL),
(2499, 'YES', '128', '20', '21', '2022-10-06 00:32:38', NULL),
(2500, 'Not available for now : https://www.mgix.mg', '129', '20', '21', '2022-10-06 00:32:38', NULL),
(2501, 'YES', '130', '20', '21', '2022-10-06 00:32:38', NULL),
(2502, 'NO', '131', '20', '21', '2022-10-06 00:32:38', NULL),
(2503, 'Monopoly', '132', '20', '21', '2022-10-06 00:32:38', NULL),
(2504, '-', '133', '20', '21', '2022-10-06 00:32:38', NULL),
(2505, '6', '134', '20', '21', '2022-10-06 00:32:38', NULL),
(2506, 'not answered', '135', '20', '21', '2022-10-06 00:32:38', NULL),
(2507, 'not answered', '136', '20', '21', '2022-10-06 00:32:38', NULL),
(2508, 'not answered', '137', '20', '21', '2022-10-06 00:32:38', NULL),
(2509, 'Europe / Africa', '138', '20', '21', '2022-10-06 00:32:38', NULL),
(2510, 'YES', '139', '20', '21', '2022-10-06 00:32:38', NULL),
(2511, 'YES', '140', '20', '21', '2022-10-06 00:32:38', NULL),
(2512, '-', '141', '20', '21', '2022-10-06 00:32:38', NULL),
(2513, 'Burundi', '1', '20', '17', '2022-10-06 01:14:12', NULL),
(2514, 'BERNET', '2', '20', '17', '2022-10-06 01:14:12', NULL),
(2515, 'gnjejimana@gmail.com', '3', '20', '17', '2022-10-06 01:14:12', NULL),
(2516, '2014', '4', '20', '17', '2022-10-06 01:14:12', NULL),
(2517, 'BERNET is a non-profit Association, ASBL.', '5', '20', '17', '2022-10-06 01:14:12', NULL),
(2518, 'July - October 2014: BERNET was a project involving 14 institutions- Universities and Higher Institutes.\r\nNovember 2014 to present: BERNET is an Association with 15 public and private institutions.\r\nSo far we have managed to connect 6 institutions thanks to UbuntuNet Alliance Internet facility.  Others are on the waiting list.', '10', '20', '17', '2022-10-06 01:14:12', NULL),
(2519, 'General Assembly, Executive Committee, a part time personnel such as a CEO and an engineer.', '11', '20', '17', '2022-10-06 01:14:12', NULL),
(2520, 'G.A. made of 15 Institutions; 5 members of the Executive Committee, a CEO and an Engineer.', '12', '20', '17', '2022-10-06 01:14:12', NULL),
(2521, 'Yes, BERNET is managed thanks to Statutes. The NREN mission is mainly to provide affordable, efficient, reliable  internet connection as well as fast bandwidth to public and private universities, higher institutions and research institutes.', '13', '20', '17', '2022-10-06 01:14:12', NULL);
INSERT INTO `answers` (`id`, `name`, `questionid`, `surveyid`, `userid`, `created_at`, `updated_at`) VALUES
(2522, 'For the time being a part time CEO and an engineer working under the guidance of the President of the Executive Committee who is the Rector of the University of Burundi.', '14', '20', '17', '2022-10-06 01:14:12', NULL),
(2523, 'We are in the process of recruiting a full time personnel.', '15', '20', '17', '2022-10-06 01:14:12', NULL),
(2524, 'Funding to recruit full time personnel such as a CEO, an engineer, a secretary-accountant, renting a big office, payment of arrears for connection and contributions.', '16', '20', '17', '2022-10-06 01:14:12', NULL),
(2525, 'Training our various engineers working for the Institutions members on the basis of the programmes offered by UbuntuNet Alliance.', '17', '20', '17', '2022-10-06 01:14:12', NULL),
(2526, 'YES', '18', '20', '17', '2022-10-06 01:14:12', NULL),
(2527, 'YES', '19', '20', '17', '2022-10-06 01:14:12', NULL),
(2528, 'YES', '20', '20', '17', '2022-10-06 01:14:12', NULL),
(2529, 'Plans of involving more institutions and research institutes as soon as possible if funds allow it. For the time being Burundi has 47 public and private higher institutions.', '21', '20', '17', '2022-10-06 01:14:12', NULL),
(2530, 'NO', '22', '20', '17', '2022-10-06 01:14:12', NULL),
(2531, 'It is being drafted.', '23', '20', '17', '2022-10-06 01:14:12', NULL),
(2532, '28 October 2014', '24', '20', '17', '2022-10-06 01:14:12', NULL),
(2533, 'No budget so far', '25', '20', '17', '2022-10-06 01:14:12', NULL),
(2534, 'None', '26', '20', '17', '2022-10-06 01:14:12', NULL),
(2535, 'Need for subsidies to set it up', '27', '20', '17', '2022-10-06 01:14:12', NULL),
(2536, 'One-time funding of ADB for the partial down payment of the Africa Connect 2 connection project. Promise from the World Bank to fund some of our activities for 5 years.', '28', '20', '17', '2022-10-06 01:14:12', NULL),
(2537, 'BERNET is a non-profit organization.', '29', '20', '17', '2022-10-06 01:14:12', NULL),
(2538, '14', '30', '20', '17', '2022-10-06 01:14:12', NULL),
(2539, '10', '31', '20', '17', '2022-10-06 01:14:12', NULL),
(2540, '15', '32', '20', '17', '2022-10-06 01:14:12', NULL),
(2541, '40000', '33', '20', '17', '2022-10-06 01:14:12', NULL),
(2542, '47', '34', '20', '17', '2022-10-06 01:14:12', NULL),
(2543, 'not available', '35', '20', '17', '2022-10-06 01:14:12', NULL),
(2544, '1', '36', '20', '17', '2022-10-06 01:14:12', NULL),
(2545, '10', '37', '20', '17', '2022-10-06 01:14:12', NULL),
(2546, '1', '38', '20', '17', '2022-10-06 01:14:12', NULL),
(2547, '30', '39', '20', '17', '2022-10-06 01:14:12', NULL),
(2548, '10', '40', '20', '17', '2022-10-06 01:14:12', NULL),
(2549, 'not available', '41', '20', '17', '2022-10-06 01:14:12', NULL),
(2550, 'not answered', '42', '20', '17', '2022-10-06 01:14:12', NULL),
(2551, 'not answered', '43', '20', '17', '2022-10-06 01:14:12', NULL),
(2552, 'not answered', '44', '20', '17', '2022-10-06 01:14:12', NULL),
(2553, 'not answered', '45', '20', '17', '2022-10-06 01:14:12', NULL),
(2554, 'not answered', '46', '20', '17', '2022-10-06 01:14:12', NULL),
(2555, 'not answered', '47', '20', '17', '2022-10-06 01:14:12', NULL),
(2556, 'not answered', '48', '20', '17', '2022-10-06 01:14:12', NULL),
(2557, 'not answered', '49', '20', '17', '2022-10-06 01:14:12', NULL),
(2558, 'not answered', '50', '20', '17', '2022-10-06 01:14:12', NULL),
(2559, 'not answered', '51', '20', '17', '2022-10-06 01:14:12', NULL),
(2560, 'not answered', '52', '20', '17', '2022-10-06 01:14:12', NULL),
(2561, 'not answered', '53', '20', '17', '2022-10-06 01:14:12', NULL),
(2562, 'not answered', '54', '20', '17', '2022-10-06 01:14:12', NULL),
(2563, 'not answered', '55', '20', '17', '2022-10-06 01:14:12', NULL),
(2564, 'not answered', '56', '20', '17', '2022-10-06 01:14:12', NULL),
(2565, 'not answered', '57', '20', '17', '2022-10-06 01:14:12', NULL),
(2566, 'not answered', '58', '20', '17', '2022-10-06 01:14:12', NULL),
(2567, 'not answered', '59', '20', '17', '2022-10-06 01:14:12', NULL),
(2568, 'not answered', '60', '20', '17', '2022-10-06 01:14:12', NULL),
(2569, 'not answered', '61', '20', '17', '2022-10-06 01:14:12', NULL),
(2570, 'not answered', '62', '20', '17', '2022-10-06 01:14:12', NULL),
(2571, 'not answered', '63', '20', '17', '2022-10-06 01:14:12', NULL),
(2572, 'not answered', '64', '20', '17', '2022-10-06 01:14:12', NULL),
(2573, 'not answered', '65', '20', '17', '2022-10-06 01:14:12', NULL),
(2574, 'not answered', '66', '20', '17', '2022-10-06 01:14:12', NULL),
(2575, 'not answered', '67', '20', '17', '2022-10-06 01:14:12', NULL),
(2576, 'not answered', '68', '20', '17', '2022-10-06 01:14:12', NULL),
(2577, 'not answered', '69', '20', '17', '2022-10-06 01:14:12', NULL),
(2578, 'not answered', '70', '20', '17', '2022-10-06 01:14:12', NULL),
(2579, 'not answered', '71', '20', '17', '2022-10-06 01:14:12', NULL),
(2580, 'not answered', '72', '20', '17', '2022-10-06 01:14:12', NULL),
(2581, 'not answered', '73', '20', '17', '2022-10-06 01:14:12', NULL),
(2582, 'not answered', '74', '20', '17', '2022-10-06 01:14:12', NULL),
(2583, 'not answered', '75', '20', '17', '2022-10-06 01:14:12', NULL),
(2584, 'not answered', '76', '20', '17', '2022-10-06 01:14:12', NULL),
(2585, 'not answered', '77', '20', '17', '2022-10-06 01:14:12', NULL),
(2586, 'not answered', '78', '20', '17', '2022-10-06 01:14:12', NULL),
(2587, 'not answered', '79', '20', '17', '2022-10-06 01:14:12', NULL),
(2588, 'not answered', '80', '20', '17', '2022-10-06 01:14:12', NULL),
(2589, 'not answered', '81', '20', '17', '2022-10-06 01:14:12', NULL),
(2590, 'not answered', '82', '20', '17', '2022-10-06 01:14:12', NULL),
(2591, 'not answered', '83', '20', '17', '2022-10-06 01:14:12', NULL),
(2592, '41', '84', '20', '17', '2022-10-06 01:14:12', NULL),
(2593, 'NO', '85', '20', '17', '2022-10-06 01:14:12', NULL),
(2594, 'not answered', '86', '20', '17', '2022-10-06 01:14:12', NULL),
(2595, 'Internet connection', '87', '20', '17', '2022-10-06 01:14:12', NULL),
(2596, 'E-learning, zoom sessions, e-library, etc.', '88', '20', '17', '2022-10-06 01:14:12', NULL),
(2597, 'NREN', '92', '20', '17', '2022-10-06 01:14:12', NULL),
(2598, 'BERNET was launched by the IT Ministry', '93', '20', '17', '2022-10-06 01:14:12', NULL),
(2599, 'As soon as we get funds', '94', '20', '17', '2022-10-06 01:14:12', NULL),
(2600, 'NO', '96', '20', '17', '2022-10-06 01:14:12', NULL),
(2601, 'YES', '97', '20', '17', '2022-10-06 01:14:12', NULL),
(2602, '500', '98', '20', '17', '2022-10-06 01:14:12', NULL),
(2603, 'Done by NREN', '104', '20', '17', '2022-10-06 01:14:12', NULL),
(2604, 'Done by NREN', '105', '20', '17', '2022-10-06 01:14:12', NULL),
(2605, 'Done by NREN', '106', '20', '17', '2022-10-06 01:14:12', NULL),
(2606, 'YES', '107', '20', '17', '2022-10-06 01:14:12', NULL),
(2607, 'Setting up hot spots\r\nLowering the cost of mgbt/s\r\nPower cuts', '108', '20', '17', '2022-10-06 01:14:12', NULL),
(2608, 'YES', '109', '20', '17', '2022-10-06 01:14:12', NULL),
(2609, 'YES', '110', '20', '17', '2022-10-06 01:14:12', NULL),
(2610, 'YES', '111', '20', '17', '2022-10-06 01:14:12', NULL),
(2611, 'not answered', '112', '20', '17', '2022-10-06 01:14:12', NULL),
(2612, 'NREN has a network and is connected to UbuntuNet backbone', '115', '20', '17', '2022-10-06 01:14:12', NULL),
(2613, 'Connecting more academic and research institutions.', '116', '20', '17', '2022-10-06 01:14:12', NULL),
(2614, 'Internet services: email, research, zoom sessions.', '117', '20', '17', '2022-10-06 01:14:12', NULL),
(2615, 'Eduroam, e-library, etc.', '118', '20', '17', '2022-10-06 01:14:12', NULL),
(2616, 'YES', '119', '20', '17', '2022-10-06 01:14:12', NULL),
(2617, 'NO', '120', '20', '17', '2022-10-06 01:14:12', NULL),
(2618, 'NO', '121', '20', '17', '2022-10-06 01:14:12', NULL),
(2619, 'So far, no', '122', '20', '17', '2022-10-06 01:14:12', NULL),
(2620, 'NO', '123', '20', '17', '2022-10-06 01:14:12', NULL),
(2621, 'NO', '124', '20', '17', '2022-10-06 01:14:12', NULL),
(2622, 'So far, no', '125', '20', '17', '2022-10-06 01:14:12', NULL),
(2623, 'Databases', '127', '20', '17', '2022-10-06 01:14:12', NULL),
(2624, 'YES', '128', '20', '17', '2022-10-06 01:14:12', NULL),
(2625, 'Yes', '129', '20', '17', '2022-10-06 01:14:12', NULL),
(2626, 'NO', '130', '20', '17', '2022-10-06 01:14:12', NULL),
(2627, 'NO', '131', '20', '17', '2022-10-06 01:14:12', NULL),
(2628, 'Competitive', '132', '20', '17', '2022-10-06 01:14:12', NULL),
(2629, 'The information is not available', '133', '20', '17', '2022-10-06 01:14:12', NULL),
(2630, '5', '134', '20', '17', '2022-10-06 01:14:12', NULL),
(2631, '40', '135', '20', '17', '2022-10-06 01:14:12', NULL),
(2632, '85', '136', '20', '17', '2022-10-06 01:14:12', NULL),
(2633, '3000', '137', '20', '17', '2022-10-06 01:14:12', NULL),
(2634, 'not answered', '138', '20', '17', '2022-10-06 01:14:12', NULL),
(2635, 'YES', '139', '20', '17', '2022-10-06 01:14:12', NULL),
(2636, 'YES', '140', '20', '17', '2022-10-06 01:14:12', NULL),
(2637, 'BERNET needs more financial support to provide more services available at UbuntuNet Alliance. We also need full time personnel. We are hoping that with the financial assistance of the World Bank in July we will be able to recruit the needed personnel. We also think that the price of the mgbt/s is still high. Can you please lower it ? Thanks in advance.', '141', '20', '17', '2022-10-06 01:14:12', NULL),
(2638, 'Ethiopia', '1', '20', '20', '2022-10-06 11:02:59', NULL),
(2639, 'Ethiopian Education and Research Network (EthERNet)', '2', '20', '20', '2022-10-06 11:02:59', NULL),
(2640, 'https://ethernet.edu.et/', '3', '20', '20', '2022-10-06 11:02:59', NULL),
(2641, '2017', '4', '20', '20', '2022-10-06 11:02:59', NULL),
(2642, 'Governmental, is owned by the Ministry of Education', '5', '20', '20', '2022-10-06 11:02:59', NULL),
(2643, 'not answered', '10', '20', '20', '2022-10-06 11:02:59', NULL),
(2644, 'CEO, CTO, COO, Network team, Security team, Network team, Cloud team , system team', '11', '20', '20', '2022-10-06 11:02:59', NULL),
(2645, 'governed by the government', '12', '20', '20', '2022-10-06 11:02:59', NULL),
(2646, 'Ethiopian Education and Research Network (EthERNet) was launched to build and deliver highly interconnected and high performance networks for Universities and other Educational and Research Institutions in Ethiopia. More specifically, EthERNet was aimed to build and deliver high performance networking that connected these institutions with each other and similar institutions in the world, and by doing this to enable them to share educational resources and collaborate both within Ethiopia and globally.', '13', '20', '20', '2022-10-06 11:02:59', NULL),
(2647, 'not answered', '14', '20', '20', '2022-10-06 11:02:59', NULL),
(2648, '18', '15', '20', '20', '2022-10-06 11:02:59', NULL),
(2649, 'To design, implement, installing and testing higher education network infrastructures, software development and web hosting service', '16', '20', '20', '2022-10-06 11:02:59', NULL),
(2650, 'Cloud Architect and Design  (boot camp) and Network Architecture and Design, BGP, IS-IS', '17', '20', '20', '2022-10-06 11:02:59', NULL),
(2651, 'NO', '18', '20', '20', '2022-10-06 11:02:59', NULL),
(2652, 'YES', '19', '20', '20', '2022-10-06 11:02:59', NULL),
(2653, 'YES', '20', '20', '20', '2022-10-06 11:02:59', NULL),
(2654, 'not answered', '21', '20', '20', '2022-10-06 11:02:59', NULL),
(2655, 'YES', '22', '20', '20', '2022-10-06 11:02:59', NULL),
(2656, 'National High Performance Computing Center for Education and Research\r\nNational digital repository of Ethiopia for all higher education institutions \r\nNational Digital Library for all Ethiopian Higher education institutions\r\nVideo Conferencing System for Governmental Higher Education \r\nEthiopian Journals Online all  Ethiopian Higher education institutions\r\ncPanel web hosting service for  Governmental Higher Education', '23', '20', '20', '2022-10-06 11:02:59', NULL),
(2657, 'February 2017', '24', '20', '20', '2022-10-06 11:02:59', NULL),
(2658, '4200000', '25', '20', '20', '2022-10-06 11:02:59', NULL),
(2659, 'ICT infrastructure for Higher Education Institutions', '26', '20', '20', '2022-10-06 11:02:59', NULL),
(2660, 'Target Customer', '27', '20', '20', '2022-10-06 11:02:59', NULL),
(2661, 'Government', '28', '20', '20', '2022-10-06 11:02:59', NULL),
(2662, 'not answered', '29', '20', '20', '2022-10-06 11:02:59', NULL),
(2663, '36', '30', '20', '20', '2022-10-06 11:02:59', NULL),
(2664, '10000', '31', '20', '20', '2022-10-06 11:02:59', NULL),
(2665, '-', '32', '20', '20', '2022-10-06 11:02:59', NULL),
(2666, '51', '33', '20', '20', '2022-10-06 11:02:59', NULL),
(2667, '90000', '34', '20', '20', '2022-10-06 11:02:59', NULL),
(2668, 'not answered', '35', '20', '20', '2022-10-06 11:02:59', NULL),
(2669, 'not answered', '36', '20', '20', '2022-10-06 11:02:59', NULL),
(2670, 'not answered', '37', '20', '20', '2022-10-06 11:02:59', NULL),
(2671, 'not answered', '38', '20', '20', '2022-10-06 11:02:59', NULL),
(2672, 'not answered', '39', '20', '20', '2022-10-06 11:02:59', NULL),
(2673, 'not answered', '40', '20', '20', '2022-10-06 11:02:59', NULL),
(2674, 'not answered', '41', '20', '20', '2022-10-06 11:02:59', NULL),
(2675, 'not answered', '42', '20', '20', '2022-10-06 11:02:59', NULL),
(2676, 'not answered', '43', '20', '20', '2022-10-06 11:02:59', NULL),
(2677, 'not answered', '44', '20', '20', '2022-10-06 11:02:59', NULL),
(2678, 'not answered', '45', '20', '20', '2022-10-06 11:02:59', NULL),
(2679, 'not answered', '46', '20', '20', '2022-10-06 11:02:59', NULL),
(2680, 'not answered', '47', '20', '20', '2022-10-06 11:02:59', NULL),
(2681, 'not answered', '48', '20', '20', '2022-10-06 11:02:59', NULL),
(2682, 'not answered', '49', '20', '20', '2022-10-06 11:02:59', NULL),
(2683, 'not answered', '50', '20', '20', '2022-10-06 11:02:59', NULL),
(2684, 'not answered', '51', '20', '20', '2022-10-06 11:02:59', NULL),
(2685, 'not answered', '52', '20', '20', '2022-10-06 11:02:59', NULL),
(2686, 'not answered', '53', '20', '20', '2022-10-06 11:02:59', NULL),
(2687, 'not answered', '54', '20', '20', '2022-10-06 11:02:59', NULL),
(2688, 'not answered', '55', '20', '20', '2022-10-06 11:02:59', NULL),
(2689, 'not answered', '56', '20', '20', '2022-10-06 11:02:59', NULL),
(2690, 'not answered', '57', '20', '20', '2022-10-06 11:02:59', NULL),
(2691, 'not answered', '58', '20', '20', '2022-10-06 11:02:59', NULL),
(2692, 'not answered', '59', '20', '20', '2022-10-06 11:02:59', NULL),
(2693, 'not answered', '60', '20', '20', '2022-10-06 11:02:59', NULL),
(2694, 'not answered', '61', '20', '20', '2022-10-06 11:02:59', NULL),
(2695, 'not answered', '62', '20', '20', '2022-10-06 11:02:59', NULL),
(2696, 'not answered', '63', '20', '20', '2022-10-06 11:02:59', NULL),
(2697, 'not answered', '64', '20', '20', '2022-10-06 11:02:59', NULL),
(2698, 'not answered', '65', '20', '20', '2022-10-06 11:02:59', NULL),
(2699, 'not answered', '66', '20', '20', '2022-10-06 11:02:59', NULL),
(2700, 'not answered', '67', '20', '20', '2022-10-06 11:02:59', NULL),
(2701, 'not answered', '68', '20', '20', '2022-10-06 11:02:59', NULL),
(2702, 'not answered', '69', '20', '20', '2022-10-06 11:02:59', NULL),
(2703, 'not answered', '70', '20', '20', '2022-10-06 11:02:59', NULL),
(2704, 'not answered', '71', '20', '20', '2022-10-06 11:02:59', NULL),
(2705, 'not answered', '72', '20', '20', '2022-10-06 11:02:59', NULL),
(2706, 'not answered', '73', '20', '20', '2022-10-06 11:02:59', NULL),
(2707, 'not answered', '74', '20', '20', '2022-10-06 11:02:59', NULL),
(2708, 'not answered', '75', '20', '20', '2022-10-06 11:02:59', NULL),
(2709, 'not answered', '76', '20', '20', '2022-10-06 11:02:59', NULL),
(2710, 'not answered', '77', '20', '20', '2022-10-06 11:02:59', NULL),
(2711, 'not answered', '78', '20', '20', '2022-10-06 11:02:59', NULL),
(2712, 'not answered', '79', '20', '20', '2022-10-06 11:02:59', NULL),
(2713, 'not answered', '80', '20', '20', '2022-10-06 11:02:59', NULL),
(2714, 'not answered', '81', '20', '20', '2022-10-06 11:02:59', NULL),
(2715, 'not answered', '82', '20', '20', '2022-10-06 11:02:59', NULL),
(2716, 'not answered', '83', '20', '20', '2022-10-06 11:02:59', NULL),
(2717, '36 higher education/ universities', '84', '20', '20', '2022-10-06 11:02:59', NULL),
(2718, 'NO', '85', '20', '20', '2022-10-06 11:02:59', NULL),
(2719, 'not answered', '86', '20', '20', '2022-10-06 11:02:59', NULL),
(2720, 'To provide Internet connectivity centrally  for higher education/ Universities', '87', '20', '20', '2022-10-06 11:02:59', NULL),
(2721, 'Hyperconverged infrastructure (HCI)\r\nHigh Performance Computing (HPC)\r\nInternational Internet Connectivity', '88', '20', '20', '2022-10-06 11:02:59', NULL),
(2722, 'It owned by the Ministry of Education', '92', '20', '20', '2022-10-06 11:02:59', NULL),
(2723, 'state provisio', '93', '20', '20', '2022-10-06 11:02:59', NULL),
(2724, 'Network connectivity for 40 TVET and 30 university and upgrading backbone network', '94', '20', '20', '2022-10-06 11:02:59', NULL),
(2725, 'YES', '96', '20', '20', '2022-10-06 11:02:59', NULL),
(2726, 'YES', '97', '20', '20', '2022-10-06 11:02:59', NULL),
(2727, '10G', '98', '20', '20', '2022-10-06 11:02:59', NULL),
(2728, 'Done by NREN', '104', '20', '20', '2022-10-06 11:02:59', NULL),
(2729, 'Done by NREN', '105', '20', '20', '2022-10-06 11:02:59', NULL),
(2730, 'Done by NREN', '106', '20', '20', '2022-10-06 11:02:59', NULL),
(2731, 'NO', '107', '20', '20', '2022-10-06 11:02:59', NULL),
(2732, 'Resource and connectivity fee', '108', '20', '20', '2022-10-06 11:02:59', NULL),
(2733, 'NO', '109', '20', '20', '2022-10-06 11:02:59', NULL),
(2734, 'NO', '110', '20', '20', '2022-10-06 11:02:59', NULL),
(2735, 'YES', '111', '20', '20', '2022-10-06 11:02:59', NULL),
(2736, 'not answered', '112', '20', '20', '2022-10-06 11:02:59', NULL),
(2737, 'NREN has a network, but is not connected to the UbuntuNet backbone', '115', '20', '20', '2022-10-06 11:02:59', NULL),
(2738, 'upgrading 51 universities router and  backbone network', '116', '20', '20', '2022-10-06 11:02:59', NULL),
(2739, 'Eduroam\r\nIdentity Federation\r\nMail\r\nNational Academic Digital Repository of Ethiopia\r\nNational Academic Digital Library of Ethiopia\r\ncPanel', '117', '20', '20', '2022-10-06 11:02:59', NULL),
(2740, 'Central Database for all Higher Education /universities Students and teachers', '118', '20', '20', '2022-10-06 11:02:59', NULL),
(2741, 'YES', '119', '20', '20', '2022-10-06 11:02:59', NULL),
(2742, 'YES', '120', '20', '20', '2022-10-06 11:02:59', NULL),
(2743, 'NO', '121', '20', '20', '2022-10-06 11:02:59', NULL),
(2744, 'no', '122', '20', '20', '2022-10-06 11:02:59', NULL),
(2745, 'YES', '123', '20', '20', '2022-10-06 11:02:59', NULL),
(2746, 'not answered', '124', '20', '20', '2022-10-06 11:02:59', NULL),
(2747, 'not answered', '125', '20', '20', '2022-10-06 11:02:59', NULL),
(2748, 'National Academic Digital Repository of Ethiopia\r\nNational Academic Digital Library of Ethiopia\r\nEthiopian Journals \r\nHigher Education Information management System', '127', '20', '20', '2022-10-06 11:02:59', NULL),
(2749, 'NO', '128', '20', '20', '2022-10-06 11:02:59', NULL),
(2750, 'not answered', '129', '20', '20', '2022-10-06 11:02:59', NULL),
(2751, 'NO', '130', '20', '20', '2022-10-06 11:03:00', NULL),
(2752, 'NO', '131', '20', '20', '2022-10-06 11:03:00', NULL),
(2753, 'Monopoly', '132', '20', '20', '2022-10-06 11:03:00', NULL),
(2754, '40000', '133', '20', '20', '2022-10-06 11:03:00', NULL),
(2755, '51', '134', '20', '20', '2022-10-06 11:03:00', NULL),
(2756, '83', '135', '20', '20', '2022-10-06 11:03:00', NULL),
(2757, '30000000', '136', '20', '20', '2022-10-06 11:03:00', NULL),
(2758, '4500', '137', '20', '20', '2022-10-06 11:03:00', NULL),
(2759, '11', '138', '20', '20', '2022-10-06 11:03:00', NULL),
(2760, 'YES', '139', '20', '20', '2022-10-06 11:03:00', NULL),
(2761, 'YES', '140', '20', '20', '2022-10-06 11:03:00', NULL),
(2762, 'No have  any comment', '141', '20', '20', '2022-10-06 11:03:00', NULL),
(2763, 'Somalia', '1', '20', '26', '2022-10-06 12:15:06', NULL),
(2764, 'SomaliREN', '2', '20', '26', '2022-10-06 12:15:06', NULL),
(2765, 'www.somaliren.org', '3', '20', '26', '2022-10-06 12:15:06', NULL),
(2766, '2008', '4', '20', '26', '2022-10-06 12:15:06', NULL),
(2767, 'Somali Research and Education Network is a non-profit membership-based organization mandated to build and deploy e-infrastructures for research and education.', '5', '20', '26', '2022-10-06 12:15:06', NULL),
(2768, '- Founding of SomaliREN August 2008 by 6 universities\r\n- SomaliREN joins the UbuntuNet Alliance November 2009\r\n- ASREN welcomes SomaliREN as a member December 2011\r\n- Signing of AfricaConnect 2 Agreement November 2015\r\n- Activation of connectivity services July 2018\r\n- now 24 members strong', '10', '20', '26', '2022-10-06 12:15:06', NULL),
(2769, 'Council of Members, Board of Directors and Sectratriat', '11', '20', '26', '2022-10-06 12:15:06', NULL),
(2770, 'BoD 7 elected members by all memebr institutions and council members', '12', '20', '26', '2022-10-06 12:15:06', NULL),
(2771, 'SomaliREN mission can be found here https://somaliren.org/our-strategy/', '13', '20', '26', '2022-10-06 12:15:06', NULL),
(2772, 'All', '14', '20', '26', '2022-10-06 12:15:07', NULL),
(2773, 'NA', '15', '20', '26', '2022-10-06 12:15:07', NULL),
(2774, 'NA', '16', '20', '26', '2022-10-06 12:15:07', NULL),
(2775, 'NA', '17', '20', '26', '2022-10-06 12:15:07', NULL),
(2776, 'YES', '18', '20', '26', '2022-10-06 12:15:07', NULL),
(2777, 'YES', '19', '20', '26', '2022-10-06 12:15:07', NULL),
(2778, 'YES', '20', '20', '26', '2022-10-06 12:15:07', NULL),
(2779, 'not answered', '21', '20', '26', '2022-10-06 12:15:07', NULL),
(2780, 'YES', '22', '20', '26', '2022-10-06 12:15:07', NULL),
(2781, 'N/A', '23', '20', '26', '2022-10-06 12:15:07', NULL),
(2782, '2009', '24', '20', '26', '2022-10-06 12:15:07', NULL),
(2783, 'not answered', '25', '20', '26', '2022-10-06 12:15:07', NULL),
(2784, 'not answered', '26', '20', '26', '2022-10-06 12:15:07', NULL),
(2785, 'not answered', '27', '20', '26', '2022-10-06 12:15:07', NULL),
(2786, 'not answered', '28', '20', '26', '2022-10-06 12:15:07', NULL),
(2787, 'not answered', '29', '20', '26', '2022-10-06 12:15:07', NULL),
(2788, 'not answered', '30', '20', '26', '2022-10-06 12:15:07', NULL),
(2789, 'not answered', '31', '20', '26', '2022-10-06 12:15:07', NULL),
(2790, 'not answered', '32', '20', '26', '2022-10-06 12:15:07', NULL),
(2791, 'not answered', '33', '20', '26', '2022-10-06 12:15:07', NULL),
(2792, 'not answered', '34', '20', '26', '2022-10-06 12:15:07', NULL),
(2793, 'not answered', '35', '20', '26', '2022-10-06 12:15:07', NULL),
(2794, 'not answered', '36', '20', '26', '2022-10-06 12:15:07', NULL),
(2795, 'not answered', '37', '20', '26', '2022-10-06 12:15:07', NULL),
(2796, 'not answered', '38', '20', '26', '2022-10-06 12:15:07', NULL),
(2797, 'not answered', '39', '20', '26', '2022-10-06 12:15:07', NULL),
(2798, 'not answered', '40', '20', '26', '2022-10-06 12:15:07', NULL),
(2799, 'not answered', '41', '20', '26', '2022-10-06 12:15:07', NULL),
(2800, 'not answered', '42', '20', '26', '2022-10-06 12:15:07', NULL),
(2801, 'not answered', '43', '20', '26', '2022-10-06 12:15:07', NULL),
(2802, 'not answered', '44', '20', '26', '2022-10-06 12:15:07', NULL),
(2803, 'not answered', '45', '20', '26', '2022-10-06 12:15:07', NULL),
(2804, 'not answered', '46', '20', '26', '2022-10-06 12:15:07', NULL),
(2805, 'not answered', '47', '20', '26', '2022-10-06 12:15:07', NULL),
(2806, 'not answered', '48', '20', '26', '2022-10-06 12:15:07', NULL),
(2807, 'not answered', '49', '20', '26', '2022-10-06 12:15:07', NULL),
(2808, 'not answered', '50', '20', '26', '2022-10-06 12:15:07', NULL),
(2809, 'not answered', '51', '20', '26', '2022-10-06 12:15:07', NULL),
(2810, 'not answered', '52', '20', '26', '2022-10-06 12:15:07', NULL),
(2811, 'not answered', '53', '20', '26', '2022-10-06 12:15:07', NULL),
(2812, 'not answered', '54', '20', '26', '2022-10-06 12:15:07', NULL),
(2813, 'not answered', '55', '20', '26', '2022-10-06 12:15:07', NULL),
(2814, 'not answered', '56', '20', '26', '2022-10-06 12:15:07', NULL),
(2815, 'not answered', '57', '20', '26', '2022-10-06 12:15:07', NULL),
(2816, 'not answered', '58', '20', '26', '2022-10-06 12:15:07', NULL),
(2817, 'not answered', '59', '20', '26', '2022-10-06 12:15:07', NULL),
(2818, 'not answered', '60', '20', '26', '2022-10-06 12:15:07', NULL),
(2819, 'not answered', '61', '20', '26', '2022-10-06 12:15:07', NULL),
(2820, 'not answered', '62', '20', '26', '2022-10-06 12:15:07', NULL),
(2821, 'not answered', '63', '20', '26', '2022-10-06 12:15:07', NULL),
(2822, 'not answered', '64', '20', '26', '2022-10-06 12:15:07', NULL),
(2823, 'not answered', '65', '20', '26', '2022-10-06 12:15:07', NULL),
(2824, 'not answered', '66', '20', '26', '2022-10-06 12:15:07', NULL),
(2825, 'not answered', '67', '20', '26', '2022-10-06 12:15:07', NULL),
(2826, 'not answered', '68', '20', '26', '2022-10-06 12:15:07', NULL),
(2827, 'not answered', '69', '20', '26', '2022-10-06 12:15:07', NULL),
(2828, 'not answered', '70', '20', '26', '2022-10-06 12:15:07', NULL),
(2829, 'not answered', '71', '20', '26', '2022-10-06 12:15:07', NULL),
(2830, 'not answered', '72', '20', '26', '2022-10-06 12:15:07', NULL),
(2831, 'not answered', '73', '20', '26', '2022-10-06 12:15:07', NULL),
(2832, 'not answered', '74', '20', '26', '2022-10-06 12:15:07', NULL),
(2833, 'not answered', '75', '20', '26', '2022-10-06 12:15:07', NULL),
(2834, 'not answered', '76', '20', '26', '2022-10-06 12:15:07', NULL),
(2835, 'not answered', '77', '20', '26', '2022-10-06 12:15:07', NULL),
(2836, 'not answered', '78', '20', '26', '2022-10-06 12:15:07', NULL),
(2837, 'not answered', '79', '20', '26', '2022-10-06 12:15:07', NULL),
(2838, 'not answered', '80', '20', '26', '2022-10-06 12:15:07', NULL),
(2839, 'not answered', '81', '20', '26', '2022-10-06 12:15:07', NULL),
(2840, 'not answered', '82', '20', '26', '2022-10-06 12:15:07', NULL),
(2841, 'not answered', '83', '20', '26', '2022-10-06 12:15:07', NULL),
(2842, 'not answered', '84', '20', '26', '2022-10-06 12:15:07', NULL),
(2843, 'not answered', '85', '20', '26', '2022-10-06 12:15:07', NULL),
(2844, 'not answered', '86', '20', '26', '2022-10-06 12:15:07', NULL),
(2845, 'not answered', '87', '20', '26', '2022-10-06 12:15:07', NULL),
(2846, 'not answered', '88', '20', '26', '2022-10-06 12:15:07', NULL),
(2847, 'not answered', '92', '20', '26', '2022-10-06 12:15:07', NULL),
(2848, 'not answered', '93', '20', '26', '2022-10-06 12:15:07', NULL),
(2849, 'not answered', '94', '20', '26', '2022-10-06 12:15:07', NULL),
(2850, 'not answered', '96', '20', '26', '2022-10-06 12:15:07', NULL),
(2851, 'not answered', '97', '20', '26', '2022-10-06 12:15:07', NULL),
(2852, 'not answered', '98', '20', '26', '2022-10-06 12:15:07', NULL),
(2853, 'Done by NREN', '104', '20', '26', '2022-10-06 12:15:07', NULL),
(2854, 'Done by NREN', '105', '20', '26', '2022-10-06 12:15:07', NULL),
(2855, 'Done by NREN', '106', '20', '26', '2022-10-06 12:15:07', NULL),
(2856, 'not answered', '107', '20', '26', '2022-10-06 12:15:07', NULL),
(2857, 'not answered', '108', '20', '26', '2022-10-06 12:15:07', NULL),
(2858, 'not answered', '109', '20', '26', '2022-10-06 12:15:07', NULL),
(2859, 'not answered', '110', '20', '26', '2022-10-06 12:15:07', NULL),
(2860, 'not answered', '111', '20', '26', '2022-10-06 12:15:07', NULL),
(2861, 'not answered', '112', '20', '26', '2022-10-06 12:15:07', NULL),
(2862, 'NREN has a network and is connected to UbuntuNet backbone', '115', '20', '26', '2022-10-06 12:15:07', NULL),
(2863, 'not answered', '116', '20', '26', '2022-10-06 12:15:07', NULL),
(2864, 'not answered', '117', '20', '26', '2022-10-06 12:15:07', NULL),
(2865, 'not answered', '118', '20', '26', '2022-10-06 12:15:07', NULL),
(2866, 'not answered', '119', '20', '26', '2022-10-06 12:15:07', NULL),
(2867, 'not answered', '120', '20', '26', '2022-10-06 12:15:07', NULL),
(2868, 'not answered', '121', '20', '26', '2022-10-06 12:15:07', NULL),
(2869, 'not answered', '122', '20', '26', '2022-10-06 12:15:07', NULL),
(2870, 'not answered', '123', '20', '26', '2022-10-06 12:15:07', NULL),
(2871, 'not answered', '124', '20', '26', '2022-10-06 12:15:07', NULL),
(2872, 'not answered', '125', '20', '26', '2022-10-06 12:15:07', NULL),
(2873, 'not answered', '127', '20', '26', '2022-10-06 12:15:07', NULL),
(2874, 'not answered', '128', '20', '26', '2022-10-06 12:15:07', NULL),
(2875, 'not answered', '129', '20', '26', '2022-10-06 12:15:07', NULL),
(2876, 'NO', '130', '20', '26', '2022-10-06 12:15:07', NULL),
(2877, 'NO', '131', '20', '26', '2022-10-06 12:15:07', NULL),
(2878, 'Monopoly', '132', '20', '26', '2022-10-06 12:15:07', NULL),
(2879, 'not answered', '133', '20', '26', '2022-10-06 12:15:07', NULL),
(2880, 'not answered', '134', '20', '26', '2022-10-06 12:15:07', NULL),
(2881, 'not answered', '135', '20', '26', '2022-10-06 12:15:07', NULL),
(2882, 'not answered', '136', '20', '26', '2022-10-06 12:15:07', NULL),
(2883, 'not answered', '137', '20', '26', '2022-10-06 12:15:07', NULL),
(2884, 'not answered', '138', '20', '26', '2022-10-06 12:15:07', NULL),
(2885, 'not answered', '139', '20', '26', '2022-10-06 12:15:07', NULL),
(2886, 'not answered', '140', '20', '26', '2022-10-06 12:15:07', NULL),
(2887, 'not answered', '141', '20', '26', '2022-10-06 12:15:07', NULL),
(2888, 'South Africa', '1', '20', '28', '2022-10-06 13:34:39', NULL),
(2889, 'Tertiary Education and Research Network of South Africa (TENET). See supplementary note 1 on the nature of the South African NREN system.', '2', '20', '28', '2022-10-06 13:34:39', NULL),
(2890, 'https://www.tenet.ac.za', '3', '20', '28', '2022-10-06 13:34:39', NULL),
(2891, 'TENET was established in 2000.', '4', '20', '28', '2022-10-06 13:34:39', NULL),
(2892, 'Non-profit company incorporated under South African company law.', '5', '20', '28', '2022-10-06 13:34:39', NULL),
(2893, 'Initially an outsourcing operation, during a period of monopoly incumbency. (2000-2007). Thereafter a tripartite collaboration with two commercial providers (2009-2012) during which a collaboration with the South African State was developed. Since 2013 TENET has controlled and operated the entire network and its related services.', '10', '20', '28', '2022-10-06 13:34:39', NULL),
(2894, 'Member entities acting in General Meeting appoint the Board of Directors.', '11', '20', '28', '2022-10-06 13:34:39', NULL),
(2895, '26 public universities and six statutory research entities are Members.', '12', '20', '28', '2022-10-06 13:34:39', NULL),
(2896, 'TENET provides internetworking and related services to public higher education and research entities.', '13', '20', '28', '2022-10-06 13:34:39', NULL),
(2897, 'not answered', '14', '20', '28', '2022-10-06 13:34:39', NULL),
(2898, '25', '15', '20', '28', '2022-10-06 13:34:39', NULL),
(2899, 'not answered', '16', '20', '28', '2022-10-06 13:34:39', NULL),
(2900, '2', '17', '20', '28', '2022-10-06 13:34:39', NULL),
(2901, 'YES', '18', '20', '28', '2022-10-06 13:34:39', NULL),
(2902, 'NO', '19', '20', '28', '2022-10-06 13:34:39', NULL),
(2903, 'YES', '20', '20', '28', '2022-10-06 13:34:39', NULL),
(2904, 'not answered', '21', '20', '28', '2022-10-06 13:34:39', NULL),
(2905, 'YES', '22', '20', '28', '2022-10-06 13:34:39', NULL),
(2906, 'Managed transition, in collaboration with public higher education and research bodies, to an entity providing a rich suite of digital services and solutions to the sector that we serve. This may be a virtual organisation, or may be designed as a single legal entity.', '23', '20', '28', '2022-10-06 13:34:39', NULL),
(2907, '2006(founding member)', '24', '20', '28', '2022-10-06 13:34:39', NULL),
(2908, '8.5M', '25', '20', '28', '2022-10-06 13:34:39', NULL),
(2909, '6M', '26', '20', '28', '2022-10-06 13:34:39', NULL),
(2910, 'TENET provides services and recovers the costs of delivery. We also manage projects funded by State entities, again on a cost recovery basis.', '27', '20', '28', '2022-10-06 13:34:39', NULL),
(2911, 'Fees for services/project administration, and interest on investments', '28', '20', '28', '2022-10-06 13:34:39', NULL),
(2912, 'not answered', '29', '20', '28', '2022-10-06 13:34:39', NULL),
(2913, '26', '30', '20', '28', '2022-10-06 13:34:39', NULL),
(2914, '10000', '31', '20', '28', '2022-10-06 13:34:39', NULL),
(2915, '26', '32', '20', '28', '2022-10-06 13:34:39', NULL),
(2916, '1.5m', '33', '20', '28', '2022-10-06 13:34:39', NULL),
(2917, '26', '34', '20', '28', '2022-10-06 13:34:39', NULL),
(2918, 'unknown', '35', '20', '28', '2022-10-06 13:34:39', NULL),
(2919, '23', '36', '20', '28', '2022-10-06 13:34:39', NULL),
(2920, '10000', '37', '20', '28', '2022-10-06 13:34:39', NULL),
(2921, '6', '38', '20', '28', '2022-10-06 13:34:39', NULL),
(2922, 'unknown', '39', '20', '28', '2022-10-06 13:34:39', NULL),
(2923, 'unknown', '40', '20', '28', '2022-10-06 13:34:39', NULL),
(2924, 'unknown', '41', '20', '28', '2022-10-06 13:34:39', NULL),
(2925, 'not answered', '42', '20', '28', '2022-10-06 13:34:39', NULL),
(2926, 'unknown', '43', '20', '28', '2022-10-06 13:34:39', NULL),
(2927, 'unknown', '44', '20', '28', '2022-10-06 13:34:39', NULL),
(2928, 'unknown', '45', '20', '28', '2022-10-06 13:34:39', NULL),
(2929, 'unknown', '46', '20', '28', '2022-10-06 13:34:39', NULL),
(2930, 'unknown', '47', '20', '28', '2022-10-06 13:34:39', NULL),
(2931, 'not answered', '48', '20', '28', '2022-10-06 13:34:39', NULL),
(2932, 'not answered', '49', '20', '28', '2022-10-06 13:34:39', NULL),
(2933, 'unknown', '50', '20', '28', '2022-10-06 13:34:39', NULL),
(2934, 'unknown', '51', '20', '28', '2022-10-06 13:34:39', NULL),
(2935, 'unknown', '52', '20', '28', '2022-10-06 13:34:39', NULL),
(2936, 'unknown', '53', '20', '28', '2022-10-06 13:34:39', NULL),
(2937, 'not answered', '54', '20', '28', '2022-10-06 13:34:39', NULL),
(2938, 'unknown', '55', '20', '28', '2022-10-06 13:34:39', NULL),
(2939, 'unknown', '56', '20', '28', '2022-10-06 13:34:39', NULL),
(2940, 'unknown', '57', '20', '28', '2022-10-06 13:34:39', NULL),
(2941, 'unknown', '58', '20', '28', '2022-10-06 13:34:39', NULL),
(2942, 'unknown', '59', '20', '28', '2022-10-06 13:34:39', NULL),
(2943, '1', '60', '20', '28', '2022-10-06 13:34:39', NULL),
(2944, '1000', '61', '20', '28', '2022-10-06 13:34:39', NULL),
(2945, 'unknown', '62', '20', '28', '2022-10-06 13:34:39', NULL),
(2946, 'unknown', '63', '20', '28', '2022-10-06 13:34:39', NULL),
(2947, 'unknown', '64', '20', '28', '2022-10-06 13:34:39', NULL),
(2948, 'unknown', '65', '20', '28', '2022-10-06 13:34:39', NULL),
(2949, 'not answered', '66', '20', '28', '2022-10-06 13:34:39', NULL),
(2950, 'unknown', '67', '20', '28', '2022-10-06 13:34:39', NULL),
(2951, 'unknown', '68', '20', '28', '2022-10-06 13:34:39', NULL),
(2952, 'unknown', '69', '20', '28', '2022-10-06 13:34:39', NULL),
(2953, 'unknown', '70', '20', '28', '2022-10-06 13:34:39', NULL),
(2954, 'unknown', '71', '20', '28', '2022-10-06 13:34:39', NULL),
(2955, 'not answered', '72', '20', '28', '2022-10-06 13:34:39', NULL),
(2956, 'unknown', '73', '20', '28', '2022-10-06 13:34:39', NULL),
(2957, 'unknown', '74', '20', '28', '2022-10-06 13:34:39', NULL),
(2958, 'unknown', '75', '20', '28', '2022-10-06 13:34:39', NULL),
(2959, 'unknown', '76', '20', '28', '2022-10-06 13:34:39', NULL),
(2960, 'unknown', '77', '20', '28', '2022-10-06 13:34:39', NULL),
(2961, 'not answered', '78', '20', '28', '2022-10-06 13:34:39', NULL),
(2962, 'unknown', '79', '20', '28', '2022-10-06 13:34:39', NULL),
(2963, 'unknown', '80', '20', '28', '2022-10-06 13:34:39', NULL),
(2964, 'unknown', '81', '20', '28', '2022-10-06 13:34:39', NULL),
(2965, 'unknown', '82', '20', '28', '2022-10-06 13:34:39', NULL),
(2966, 'unknown', '83', '20', '28', '2022-10-06 13:34:39', NULL),
(2967, 'No large entities are unconnected. Other qualifying entities are entitled to join at any time. The number of potential entities is unknown and unknowable.', '84', '20', '28', '2022-10-06 13:34:39', NULL),
(2968, 'YES', '85', '20', '28', '2022-10-06 13:34:39', NULL),
(2969, 'https://www.tenet.ac.za/downloads/acceptable-use-policy', '86', '20', '28', '2022-10-06 13:34:39', NULL),
(2970, 'Research and education', '87', '20', '28', '2022-10-06 13:34:39', NULL),
(2971, 'Square Kilometre Array, CERN affiliates, VLBI, South African Large Telescope, various genomic and proteomic research projects', '88', '20', '28', '2022-10-06 13:34:39', NULL),
(2972, 'Rights of use reside with the two NREN partners, SANReN and TENET. These rights arise from IRU and long term lease agreements with commercial and state providers.', '92', '20', '28', '2022-10-06 13:34:39', NULL),
(2973, 'Typically tender or RFP.', '93', '20', '28', '2022-10-06 13:34:39', NULL),
(2974, 'An upgrade has just been completed. The next upgrade will be to metro fibre structures starting this year.', '94', '20', '28', '2022-10-06 13:34:39', NULL),
(2975, 'YES', '96', '20', '28', '2022-10-06 13:34:39', NULL),
(2976, 'YES', '97', '20', '28', '2022-10-06 13:34:39', NULL),
(2977, '10 to 100 Gbps', '98', '20', '28', '2022-10-06 13:34:39', NULL),
(2978, 'Done by NREN', '104', '20', '28', '2022-10-06 13:34:39', NULL),
(2979, 'Done by NREN', '105', '20', '28', '2022-10-06 13:34:39', NULL),
(2980, 'Done by NREN', '106', '20', '28', '2022-10-06 13:34:39', NULL),
(2981, 'YES', '107', '20', '28', '2022-10-06 13:34:39', NULL),
(2982, 'Power reliability', '108', '20', '28', '2022-10-06 13:34:39', NULL),
(2983, 'NO', '109', '20', '28', '2022-10-06 13:34:39', NULL),
(2984, 'NO', '110', '20', '28', '2022-10-06 13:34:39', NULL),
(2985, 'YES', '111', '20', '28', '2022-10-06 13:34:39', NULL),
(2986, 'Question is unclear. If it relates to transit and peering, we secure these directly in London, Amsterdam and Florida, and provide UbuntuNet with transit in London and Amsterdam.', '112', '20', '28', '2022-10-06 13:34:39', NULL),
(2987, 'NREN has a network and is connected to UbuntuNet backbone', '115', '20', '28', '2022-10-06 13:34:39', NULL),
(2988, 'Our most important upgrade is unfortunately still confidential.', '116', '20', '28', '2022-10-06 13:34:39', NULL),
(2989, 'In addition to bandwidth provisioning, we directly deliver eduroam, identity federation, eduVPN, IPv4 and IPv6 LIR, management of the academic CC TLD (ac.za), access to an OXP that we operate, content mirrors. Through partnerships we provide an ORCID consortium and a CSIRT. Through commercfial arrangement we provide a certification service, Figshare, and Zoom.', '117', '20', '28', '2022-10-06 13:34:39', NULL),
(2990, 'This depends entirely on demand. Most probably it will be in the public higher education shared services space.', '118', '20', '28', '2022-10-06 13:34:39', NULL),
(2991, 'YES', '119', '20', '28', '2022-10-06 13:34:39', NULL),
(2992, 'YES', '120', '20', '28', '2022-10-06 13:34:39', NULL),
(2993, 'YES', '121', '20', '28', '2022-10-06 13:34:39', NULL),
(2994, 'not answered', '122', '20', '28', '2022-10-06 13:34:39', NULL),
(2995, 'YES', '123', '20', '28', '2022-10-06 13:34:39', NULL),
(2996, 'YES', '124', '20', '28', '2022-10-06 13:34:39', NULL),
(2997, 'not answered', '125', '20', '28', '2022-10-06 13:34:39', NULL),
(2998, 'See for example mirror.ac.za. dirisa.ac.za, nicis.ac.za', '127', '20', '28', '2022-10-06 13:34:39', NULL),
(2999, 'YES', '128', '20', '28', '2022-10-06 13:34:39', NULL),
(3000, 'There are several. See for example https://www.napafrica.net and https://www.inx.net.za.', '129', '20', '28', '2022-10-06 13:34:39', NULL),
(3001, 'NO', '130', '20', '28', '2022-10-06 13:34:39', NULL),
(3002, 'YES', '131', '20', '28', '2022-10-06 13:34:39', NULL),
(3003, 'Competitive', '132', '20', '28', '2022-10-06 13:34:39', NULL),
(3004, '8900 per 100 Gbps per month', '133', '20', '28', '2022-10-06 13:34:39', NULL),
(3005, '26', '134', '20', '28', '2022-10-06 13:34:39', NULL),
(3006, '35', '135', '20', '28', '2022-10-06 13:34:39', NULL),
(3007, '1700000', '136', '20', '28', '2022-10-06 13:34:39', NULL),
(3008, '35000', '137', '20', '28', '2022-10-06 13:34:39', NULL),
(3009, 'Not known. Probably anglophone and European countries, on previous evicence.', '138', '20', '28', '2022-10-06 13:34:39', NULL),
(3010, 'YES', '139', '20', '28', '2022-10-06 13:34:39', NULL),
(3011, 'YES', '140', '20', '28', '2022-10-06 13:34:39', NULL),
(3012, 'Note 1: the South African NREN is a system rather than a single entity, arising from a long-standing collaboration between TENET and the Council for Scientific and Industrial Research, through its National Integrated Cyberinfrastructure System, funded by the national Department of Science and Innovation. TENET operates the NREN and is responsible for contractual relationships, service operation, and service delivery and support. Some initiatives are joint (e.g. the CSIRT). Both parties deploy infrastructure, though the bulk is secured by the SANReN directorate in the NICIS.', '141', '20', '28', '2022-10-06 13:34:39', NULL);

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
(4, '1', 'ADMIN NET', 'ADMin Network', 'Albania', 'yy', 'adress', 'u@t.ciom', '000', '00', '88', '[\"none\",\"Endorsed by Ministry of Education\"]', '[\"not-for profit membership organisation\",\"not-for-profit trust\",\"limited liability company\"]', 'hh', '2022-10-01 12:09:58', '2022-10-29 23:10:04'),
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
(9, '23', 'NOT ASSIGNED', '2022-10-30 14:36:50', NULL),
(10, '17', 'NOT ASSIGNED', '2022-10-30 14:37:02', NULL),
(11, '28', '16', '2022-10-30 14:40:21', NULL);

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
(1081, 'Malawi', '1', '19', '2', '2022-10-03 11:55:08', NULL),
(1082, 'UbuntuNet Alliance for Research and Education Networking', '2', '19', '2', '2022-10-03 11:55:08', NULL),
(1083, 'https://ubuntunet.net/', '7', '19', '2', '2022-10-03 11:55:08', NULL),
(1084, 'not answered', '9', '19', '2', '2022-10-03 11:55:08', NULL),
(1085, 'not answered', '10', '19', '2', '2022-10-03 11:55:08', NULL),
(1086, 'not answered', '11', '19', '2', '2022-10-03 11:55:08', NULL),
(1087, 'not answered', '12', '19', '2', '2022-10-03 11:55:08', NULL),
(1088, 'not answered', '13', '19', '2', '2022-10-03 11:55:08', NULL),
(1089, 'not answered', '14', '19', '2', '2022-10-03 11:55:08', NULL),
(1090, 'not answered', '15', '19', '2', '2022-10-03 11:55:08', NULL),
(1091, 'not answered', '16', '19', '2', '2022-10-03 11:55:08', NULL),
(1092, 'not answered', '17', '19', '2', '2022-10-03 11:55:08', NULL),
(1093, 'not answered', '18', '19', '2', '2022-10-03 11:55:08', NULL),
(1094, 'not answered', '19', '19', '2', '2022-10-03 11:55:08', NULL),
(1095, 'not answered', '20', '19', '2', '2022-10-03 11:55:08', NULL),
(1096, 'not answered', '21', '19', '2', '2022-10-03 11:55:08', NULL),
(1097, 'not answered', '22', '19', '2', '2022-10-03 11:55:08', NULL),
(1098, 'not answered', '23', '19', '2', '2022-10-03 11:55:08', NULL),
(1099, 'not answered', '24', '19', '2', '2022-10-03 11:55:08', NULL),
(1100, 'not answered', '25', '19', '2', '2022-10-03 11:55:08', NULL),
(1101, 'not answered', '26', '19', '2', '2022-10-03 11:55:08', NULL),
(1102, 'not answered', '27', '19', '2', '2022-10-03 11:55:08', NULL),
(1103, 'not answered', '28', '19', '2', '2022-10-03 11:55:08', NULL),
(1104, 'not answered', '29', '19', '2', '2022-10-03 11:55:08', NULL),
(1105, 'not answered', '30', '19', '2', '2022-10-03 11:55:08', NULL),
(1106, 'not answered', '31', '19', '2', '2022-10-03 11:55:08', NULL),
(1107, 'not answered', '32', '19', '2', '2022-10-03 11:55:08', NULL),
(1108, 'not answered', '33', '19', '2', '2022-10-03 11:55:08', NULL),
(1109, 'not answered', '34', '19', '2', '2022-10-03 11:55:08', NULL),
(1110, 'not answered', '35', '19', '2', '2022-10-03 11:55:08', NULL),
(1111, 'not answered', '36', '19', '2', '2022-10-03 11:55:08', NULL),
(1112, 'not answered', '37', '19', '2', '2022-10-03 11:55:08', NULL),
(1113, 'not answered', '38', '19', '2', '2022-10-03 11:55:08', NULL),
(1114, 'not answered', '39', '19', '2', '2022-10-03 11:55:08', NULL),
(1115, 'not answered', '40', '19', '2', '2022-10-03 11:55:08', NULL),
(1116, 'not answered', '41', '19', '2', '2022-10-03 11:55:08', NULL),
(1117, 'not answered', '42', '19', '2', '2022-10-03 11:55:08', NULL),
(1118, 'not answered', '43', '19', '2', '2022-10-03 11:55:08', NULL),
(1119, 'not answered', '44', '19', '2', '2022-10-03 11:55:08', NULL),
(1120, 'not answered', '45', '19', '2', '2022-10-03 11:55:08', NULL),
(1121, 'not answered', '46', '19', '2', '2022-10-03 11:55:08', NULL),
(1122, 'not answered', '47', '19', '2', '2022-10-03 11:55:08', NULL),
(1123, 'not answered', '48', '19', '2', '2022-10-03 11:55:08', NULL),
(1124, 'not answered', '49', '19', '2', '2022-10-03 11:55:08', NULL),
(1125, 'not answered', '50', '19', '2', '2022-10-03 11:55:08', NULL),
(1126, 'not answered', '51', '19', '2', '2022-10-03 11:55:08', NULL),
(1127, 'not answered', '52', '19', '2', '2022-10-03 11:55:08', NULL),
(1128, 'not answered', '53', '19', '2', '2022-10-03 11:55:08', NULL),
(1129, 'not answered', '54', '19', '2', '2022-10-03 11:55:08', NULL),
(1130, 'not answered', '55', '19', '2', '2022-10-03 11:55:08', NULL),
(1131, 'not answered', '56', '19', '2', '2022-10-03 11:55:08', NULL),
(1132, 'not answered', '57', '19', '2', '2022-10-03 11:55:08', NULL),
(1133, 'not answered', '58', '19', '2', '2022-10-03 11:55:08', NULL),
(1134, 'not answered', '59', '19', '2', '2022-10-03 11:55:08', NULL),
(1135, 'not answered', '60', '19', '2', '2022-10-03 11:55:08', NULL),
(1136, 'not answered', '61', '19', '2', '2022-10-03 11:55:08', NULL),
(1137, 'not answered', '62', '19', '2', '2022-10-03 11:55:08', NULL),
(1138, 'not answered', '63', '19', '2', '2022-10-03 11:55:08', NULL),
(1139, 'not answered', '64', '19', '2', '2022-10-03 11:55:08', NULL),
(1140, 'not answered', '65', '19', '2', '2022-10-03 11:55:08', NULL),
(1141, 'not answered', '66', '19', '2', '2022-10-03 11:55:08', NULL),
(1142, 'not answered', '67', '19', '2', '2022-10-03 11:55:08', NULL),
(1143, 'not answered', '68', '19', '2', '2022-10-03 11:55:08', NULL),
(1144, 'not answered', '69', '19', '2', '2022-10-03 11:55:08', NULL),
(1145, 'not answered', '70', '19', '2', '2022-10-03 11:55:08', NULL),
(1146, 'not answered', '71', '19', '2', '2022-10-03 11:55:08', NULL),
(1147, 'not answered', '72', '19', '2', '2022-10-03 11:55:08', NULL),
(1148, 'not answered', '73', '19', '2', '2022-10-03 11:55:08', NULL),
(1149, 'not answered', '74', '19', '2', '2022-10-03 11:55:08', NULL),
(1150, 'not answered', '75', '19', '2', '2022-10-03 11:55:08', NULL),
(1151, 'not answered', '76', '19', '2', '2022-10-03 11:55:08', NULL),
(1152, 'not answered', '77', '19', '2', '2022-10-03 11:55:08', NULL),
(1153, 'not answered', '78', '19', '2', '2022-10-03 11:55:08', NULL),
(1154, 'not answered', '79', '19', '2', '2022-10-03 11:55:08', NULL),
(1155, 'not answered', '80', '19', '2', '2022-10-03 11:55:08', NULL),
(1156, 'not answered', '81', '19', '2', '2022-10-03 11:55:08', NULL),
(1157, 'not answered', '82', '19', '2', '2022-10-03 11:55:08', NULL),
(1158, 'not answered', '83', '19', '2', '2022-10-03 11:55:08', NULL),
(1159, 'not answered', '84', '19', '2', '2022-10-03 11:55:08', NULL),
(1160, 'not answered', '85', '19', '2', '2022-10-03 11:55:08', NULL),
(1161, 'not answered', '86', '19', '2', '2022-10-03 11:55:08', NULL),
(1162, 'not answered', '87', '19', '2', '2022-10-03 11:55:08', NULL),
(1163, 'not answered', '88', '19', '2', '2022-10-03 11:55:08', NULL),
(1164, 'not answered', '92', '19', '2', '2022-10-03 11:55:08', NULL),
(1165, 'not answered', '93', '19', '2', '2022-10-03 11:55:08', NULL),
(1166, 'not answered', '94', '19', '2', '2022-10-03 11:55:08', NULL),
(1167, 'not answered', '96', '19', '2', '2022-10-03 11:55:08', NULL),
(1168, 'not answered', '97', '19', '2', '2022-10-03 11:55:08', NULL),
(1169, 'Done by NREN', '98', '19', '2', '2022-10-03 11:55:08', NULL),
(1170, 'Done by NREN', '99', '19', '2', '2022-10-03 11:55:08', NULL),
(1171, 'Done by NREN', '106', '19', '2', '2022-10-03 11:55:08', NULL),
(1172, 'not answered', '107', '19', '2', '2022-10-03 11:55:08', NULL),
(1173, 'not answered', '108', '19', '2', '2022-10-03 11:55:08', NULL),
(1174, 'not answered', '109', '19', '2', '2022-10-03 11:55:08', NULL),
(1175, 'not answered', '110', '19', '2', '2022-10-03 11:55:08', NULL),
(1176, 'not answered', '111', '19', '2', '2022-10-03 11:55:08', NULL),
(1177, 'NREN has a network and is connected to UbuntuNet backbone', '115', '19', '2', '2022-10-03 11:55:08', NULL),
(1178, 'not answered', '116', '19', '2', '2022-10-03 11:55:08', NULL),
(1179, 'not answered', '117', '19', '2', '2022-10-03 11:55:08', NULL),
(1180, 'not answered', '118', '19', '2', '2022-10-03 11:55:08', NULL),
(1181, 'not answered', '119', '19', '2', '2022-10-03 11:55:08', NULL),
(1182, 'not answered', '120', '19', '2', '2022-10-03 11:55:08', NULL),
(1183, 'not answered', '121', '19', '2', '2022-10-03 11:55:08', NULL),
(1184, 'not answered', '122', '19', '2', '2022-10-03 11:55:08', NULL),
(1185, 'not answered', '123', '19', '2', '2022-10-03 11:55:08', NULL),
(1186, 'not answered', '124', '19', '2', '2022-10-03 11:55:08', NULL),
(1187, 'not answered', '125', '19', '2', '2022-10-03 11:55:08', NULL),
(1188, 'not answered', '126', '19', '2', '2022-10-03 11:55:08', NULL),
(1189, 'NO', '130', '19', '2', '2022-10-03 11:55:08', NULL),
(1190, 'NO', '131', '19', '2', '2022-10-03 11:55:08', NULL),
(1191, 'Monopoly', '132', '19', '2', '2022-10-03 11:55:08', NULL),
(1192, 'not answered', '133', '19', '2', '2022-10-03 11:55:08', NULL),
(1193, 'not answered', '134', '19', '2', '2022-10-03 11:55:08', NULL),
(1194, 'not answered', '135', '19', '2', '2022-10-03 11:55:08', NULL),
(1195, 'not answered', '136', '19', '2', '2022-10-03 11:55:08', NULL),
(1196, 'not answered', '137', '19', '2', '2022-10-03 11:55:08', NULL),
(1197, 'not answered', '138', '19', '2', '2022-10-03 11:55:08', NULL),
(1198, 'not answered', '139', '19', '2', '2022-10-03 11:55:08', NULL),
(1199, 'not answered', '140', '19', '2', '2022-10-03 11:55:08', NULL),
(1200, 'not answered', '141', '19', '2', '2022-10-03 11:55:08', NULL);

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
(20, '1', 'Online Country Fiche Survey 2021', 'Online Country Fiche Survey 2021', '2021', '2022-10-04', '2022-10-31', '2022-10-04 12:57:08', NULL, 0, 'running');

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
(18, '20', '24', 'answered', '2022-10-04 18:58:06', NULL),
(19, '20', '16', 'answered', '2022-10-05 07:06:15', NULL),
(20, '20', '22', 'answered', '2022-10-05 09:04:07', NULL),
(21, '20', '30', 'answered', '2022-10-05 09:31:33', NULL),
(22, '20', '29', 'answered', '2022-10-05 10:59:14', NULL),
(23, '20', '27', 'answered', '2022-10-05 13:20:07', NULL),
(24, '20', '23', 'answered', '2022-10-05 13:38:34', NULL),
(25, '20', '31', 'answered', '2022-10-05 23:27:23', NULL),
(26, '20', '21', 'answered', '2022-10-06 00:32:37', NULL),
(27, '20', '17', 'answered', '2022-10-06 01:14:12', NULL),
(28, '20', '20', 'answered', '2022-10-06 11:02:59', NULL),
(29, '20', '26', 'answered', '2022-10-06 12:15:06', NULL),
(30, '20', '28', 'answered', '2022-10-06 13:34:39', NULL);

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
(3, 'Website', '', 'text', '0', '1', NULL, NULL, 1),
(4, 'When was your NREN established?', '', 'text', '0', '', NULL, NULL, 2),
(5, 'What is the type of legal structure of your NREN?', '', 'text', '', '', NULL, NULL, 2),
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
(24, 'When did your NREN become a member of UbuntuNet Alliance?', '', 'text', '0', '1', NULL, NULL, 2),
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
(98, 'if Yes, what is the planned average bandwith of the leases lines', '', 'text', '', '', NULL, NULL, 5),
(104, 'Who does infrastructure, equipment and services supervision for the NREN?', '{\"first\":\"Done by NREN\",\"second\":\"Done by telecommunications operator\",\"third\":\"Other\",\"fourth\":\"No answer\"}', 'single', '', '', NULL, NULL, 5),
(105, 'Who does and administration of equipment and supervision tools, ticketing, modification implementation for the NREN?', '{\"first\":\"Done by NREN\",\"second\":\"Done by telecommunications operator\",\"third\":\"Other\",\"fourth\":\"No answer\"}', 'single', '', '', NULL, NULL, 5),
(106, 'Who does network maintenance for the NREN?', '{\"first\":\"Done by NREN\",\"second\":\"Done by telecommunications operator\",\"third\":\"Other\",\"fourth\":\"No answer\"}', 'single', '', '', NULL, NULL, 5),
(107, 'Campus networks enable end to end services to find users', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 5),
(108, 'Main issues', '', 'textarea', '', '', NULL, NULL, 5),
(109, 'The NREN financially participates into AfricaConnect 3', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 5),
(110, 'The NREN is connected through AfricaConnect 3', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 5),
(111, 'NREN has a Transit contract with a telecommunications operator', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 5),
(112, 'Planned connection date', '', 'text', '', '', NULL, NULL, 5),
(115, ' Does your NREN currently get connectivity services from UbuntuNet Alliance?\r\n', '{\"first\":\"NREN has a network and is connected to UbuntuNet backbone\",\"second\":\"NREN has a network, but is not connected to the UbuntuNet backbone\",\"third\":\"NREN does not yet have a network\"}', 'single', '', '', NULL, NULL, 5),
(116, 'Can you share any network developments/upgrades plans that your NREN has', '', 'textarea', '', '', NULL, NULL, 5),
(117, ' List any Deployed and operational services that your NREN has.', '', 'textarea', '', '', NULL, NULL, 6),
(118, 'What other services does your NREN plan to develop?', '', 'textarea', '', '', NULL, NULL, 6),
(119, ' Does your NREN have a CERT?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 6),
(120, 'Is there an existing national Datacenter in your country?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 6),
(121, 'Does your NREN connect to the Datacenter?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 6),
(122, 'If NREN is not connected to national Datacenter, is it planned?', '', 'text', '', '', NULL, NULL, 6),
(123, 'Existence of national High Performance Computing?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 6),
(124, 'HPC connected to the NREN?', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 6),
(125, 'If NO, Are thre any plans for HPC?', '', 'text', '', '', NULL, NULL, 6),
(127, 'Examples of content available on the NREN', '', 'textarea', '', '', NULL, NULL, 6),
(128, 'Existing Internet Exchange Point (IXP) in the country', '{\"zero\":\"not answered\",\"first\":\"YES\",\"second\":\"NO\"}', 'single', '', '', NULL, NULL, 7),
(129, 'Url', '', 'url', '', '', NULL, NULL, 7),
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
(1, 'Admin User', 'admin@admin.com', NULL, '$2y$10$QXnDszrH/9TAmw7wwKB1QeTZUxkKqOFh9P6R8qvxgJiSvMUXNgO/y', 'x88YN5Fzns7hab0huXiEHfi7zNI9jrr9LAo8qwyKMF3hkDk7fHdLPJGleFEj', '2022-10-03 08:28:21', '2022-10-03 08:28:21'),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3013;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1201;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `surveystatus`
--
ALTER TABLE `surveystatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

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
