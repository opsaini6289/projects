-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2024 at 12:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acs_live`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `image`, `description`, `short_description`, `created_at`, `updated_at`) VALUES
(4, 'Advance Control System', '1733042196_123png', 'Advance Control Systems Is An Iso 9001:2015 Certified Organization And\r\nOperates Under Following Division Umbrella:', 'A better way forward manufacturers', '2024-08-20 01:14:17', '2024-12-01 03:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(23, 'omprakash123', 'omprakash@gmail.com', '$2y$10$2m4corsrdu5jVj1YY628GOJAO7D4q6KlycwrAohNBt4SVOs0oGiau', '2024-09-05 22:52:48', '2024-12-01 05:19:22'),
(24, 'omprakash123', 'omparkashsaini6289@gmail.com', '$2y$10$bfbNYdgbTV8qR1twqBDA4.LePFTXZU6lC.pdRnayYmepC93FFkaO6', '2024-09-07 10:24:17', '2024-09-07 10:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `description`, `date`, `created_at`, `updated_at`) VALUES
(5, 'When a business can no longer meet the demands', '1725432324_123jpg', 'Our well-intentioned attempts', '2024-09-04', '2024-08-20 05:43:12', '2024-09-04 01:18:46'),
(7, 'The Scariest Thing About DeepNude ware', '1725432787_123jpg', 'Our well-intentioned attempts', '2024-09-04', '2024-08-20 05:56:51', '2024-09-04 01:23:07'),
(8, 'What Does FaceApp Do With Your Photos?', '1725432858_123jpg', 'Our well-intentioned attempts', '2024-08-20', '2024-08-20 05:59:09', '2024-09-04 01:24:19'),
(10, 'Why You Need to Infuse Your Creative Practice', '1725433020_123jpg', 'Our well-intentioned attempts', '2024-09-04', '2024-09-04 01:27:00', '2024-09-04 01:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `title`, `description`, `short_description`, `image`, `created_at`, `updated_at`) VALUES
(5, 0, 'Trade', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1733042616_123.png', '2024-09-17 10:25:35', '2024-12-01 03:18:50'),
(6, 0, 'Industrial Automation & Control Systems', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '1725879357_123.webp', '2024-08-17 05:08:51', '2024-09-13 05:10:26'),
(8, 0, 'Building Automation & Control Systems', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '1725879377_123.JPG', '2024-08-17 05:10:13', '2024-09-09 10:56:17'),
(9, 0, 'Instruments', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '1725879676_123.jpeg', '2024-08-17 05:11:49', '2024-09-09 11:01:16'),
(10, 0, 'Solar', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '1725879426_123.jpg', '2024-08-17 05:12:58', '2024-09-11 08:12:03'),
(41, 8, 'AHU & HVAC Control Panel', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1725882863_123jpg', '2024-09-05 01:33:32', '2024-09-14 10:24:03'),
(42, 8, 'Chiller VFD Integration & Control Panel', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '1725882975_123jpg', '2024-09-05 01:34:42', '2024-09-14 10:24:27'),
(50, 8, 'Fire Pump Room Control Panel', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them', 'Enterprise Iron’s deep industry experience in operational and technology consulting enables us to identify', '1725883640_123jpg', '2024-09-09 12:07:20', '2024-09-14 10:24:45'),
(51, 8, 'TFA Control Panel', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Enterprise Iron’s deep industry experience in operational and technology consulting enables us to identify.', '1725883769_123png', '2024-09-09 12:09:29', '2024-09-14 10:25:05'),
(52, 8, 'BMS', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Enterprise Iron’s deep industry experience in operational and technology consulting enables us to identify.', '1725883951_123webp', '2024-09-09 12:12:31', '2024-09-14 10:25:41'),
(54, 6, 'Machine automation', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '1726050802_123jpg', '2024-09-11 10:33:22', '2024-09-14 10:21:33'),
(55, 6, 'Process Plant automation', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726051056_123webp', '2024-09-11 10:37:36', '2024-09-14 10:23:00'),
(56, 8, 'Damper & Actuator Control Unit', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726124537_123webp', '2024-09-12 07:02:17', '2024-09-14 10:26:06'),
(57, 8, 'Hotel Room Temp Control & Integration', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726124933_123avif', '2024-09-12 07:08:53', '2024-09-14 10:26:27'),
(58, 8, 'LT Distribution Panel', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726125131_123jpg', '2024-09-12 07:12:11', '2024-09-14 10:26:56'),
(59, 8, 'Basement Ventilation Automation & Control Panel', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726125265_123jpg', '2024-09-12 07:14:25', '2024-09-14 10:27:12'),
(60, 10, 'Solar Pump Controller', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726128055_123webp', '2024-09-12 08:00:55', '2024-09-14 10:29:07'),
(61, 10, 'Solar ACDB', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726128247_123jpg', '2024-09-12 08:04:07', '2024-09-14 10:29:22'),
(62, 10, 'Solar DCDB', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726128371_123webp', '2024-09-12 08:06:11', '2024-09-14 10:29:39'),
(63, 10, 'Solar Plant SCADA Control & Supervision and Automation', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '1726128566_123jpg', '2024-09-12 08:09:26', '2024-09-14 10:30:11'),
(64, 9, 'Flow Meter', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1733046392_123jpg', '2024-09-12 08:13:39', '2024-12-01 04:16:32'),
(65, 9, 'Level Transmitter', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726129618_123jpg', '2024-09-12 08:26:58', '2024-09-14 10:28:09'),
(66, 9, 'Proximity & Photo Electric Sensor', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726129809_123jpg', '2024-09-12 08:30:09', '2024-09-14 10:28:23'),
(67, 9, 'Pressure Transmitter', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726129999_123webp', '2024-09-12 08:33:19', '2024-09-14 10:28:40'),
(72, 5, 'AC Drives', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '1726569370_123webp', '2024-09-17 10:36:10', '2024-09-17 10:36:10'),
(73, 5, 'Industrials Sensors', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '1726569732_123webp', '2024-09-17 10:40:33', '2024-09-17 10:42:12'),
(74, 5, 'Temperature & PID Controllers', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726570152_123webp', '2024-09-17 10:49:12', '2024-09-17 10:49:12'),
(75, 5, 'Human Machine Interface.', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726570328_123webp', '2024-09-17 10:52:08', '2024-09-17 10:52:08'),
(76, 5, 'Digital Counters & Timers', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726570745_123webp', '2024-09-17 10:59:05', '2024-09-17 10:59:05'),
(77, 5, 'Maximum Demand Controller', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '1726570898_123webp', '2024-09-17 11:01:38', '2024-09-17 11:01:38'),
(78, 5, 'APFC Relays', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726570996_123webp', '2024-09-17 11:03:16', '2024-09-17 11:03:16'),
(79, 5, 'Stepper Motor and Stepper Drive', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726571120_123webp', '2024-09-17 11:05:20', '2024-09-17 11:05:20'),
(80, 5, 'Servo Motor & Drive', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726571500_123webp', '2024-09-17 11:11:40', '2024-09-17 11:11:40'),
(81, 5, 'Thermocouples & RTD', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726571622_123webp', '2024-09-17 11:13:42', '2024-09-17 11:13:42'),
(82, 5, 'Solar Pump Controller', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726571723_123webp', '2024-09-17 11:15:22', '2024-09-17 11:15:23'),
(83, 5, 'Solid State Relay (ssr)', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726571906_123webp', '2024-09-17 11:18:26', '2024-09-17 11:18:26'),
(84, 5, 'Limit Swich & Micro Switch', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726572058_123webp', '2024-09-17 11:20:58', '2024-09-17 11:20:58'),
(85, 5, 'Glass Relays & Base', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726572862_123webp', '2024-09-17 11:34:22', '2024-09-17 11:34:22'),
(86, 5, 'Process Controllers', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726573035_123webp', '2024-09-17 11:37:15', '2024-09-17 11:37:15'),
(87, 5, 'Phoenix SPD', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726573118_123webp', '2024-09-17 11:38:38', '2024-09-17 11:38:38'),
(88, 5, 'Proximity Sensor', 'From greenhouses, to coal mines, to offshore and onshore oil & gas rigs, our power generation products are everywhere. We help our customers do their jobs with confidence, knowing they have the turbine experience and expertise of more than a century behind them.', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural.', '1726573411_123webp', '2024-09-17 11:43:31', '2024-09-17 11:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `get_in_touch`
--

CREATE TABLE `get_in_touch` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `just_dial` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `full_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `get_in_touch`
--

INSERT INTO `get_in_touch` (`id`, `website`, `phone`, `whatsapp`, `just_dial`, `linkedin`, `email`, `address`, `full_address`, `created_at`, `updated_at`) VALUES
(1, NULL, '9166147430', '9166147430', 'advance control systems', 'advance control systems', 'advancecontrolsys@gmail.com', 'Karishna Ji Mandir Ke Pass, Jhariya Mori Churu  (331001) Rajasthan, India', '182(D), O-Phase, 1st Block, Narayan  Vihar Ajmer Road, Jaipur (302026)  Rajasthan, India', '2024-08-20 03:22:00', '2024-09-16 07:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `index_forms`
--

CREATE TABLE `index_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `datetime` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `persons` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `index_forms`
--

INSERT INTO `index_forms` (`id`, `name`, `email`, `datetime`, `mobile`, `persons`, `categories`, `description`, `created_at`, `updated_at`) VALUES
(12, 'op saini', 'azimdeveloper146@gmail.com', '2024-08-22', '12345567890', '2', '2', 'wwwwwwwww', '2024-08-22 06:51:36', '2024-08-22 06:51:36'),
(37, NULL, NULL, NULL, NULL, '1', '1', NULL, '2024-08-26 01:26:38', '2024-08-26 01:26:38');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_17_122204_create_abouts_table', 2),
(5, '2024_08_20_081038_create_packages_table', 3),
(6, '2024_08_20_095944_create_blogs_table', 4),
(7, '2024_08_22_093153_create_tours_table', 5),
(8, '2024_08_22_112041_create_index_forms_table', 6),
(9, '2024_08_23_103518_create_admin_table', 7),
(10, '2024_08_24_053432_create_admins_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('omparkashsaini6289@gmail.com', 'ZVMAn72uOsJTuBncEluRotiePOUwN4sLfqBMRUmFdXC3PmYPYfmejsSsKcL5', '2024-12-01 05:18:22'),
('sameerali4822@gmail.com', 'xNFhMqODhLR0FecdHqVlOozsWRJzEvdwYT7FbBdoQUtRyBfI0cmw31RoHALn', '2024-08-28 05:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `cat_id` varchar(250) DEFAULT NULL,
  `sub_cat_id` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `status` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cat_id`, `sub_cat_id`, `title`, `name`, `image`, `short_description`, `description`, `status`, `created_at`, `updated_at`) VALUES
(12, '6', '54', 'Energy Monitorings', 'Energy Monitorings', '1726051611_123webp', 'dfd', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-11 10:46:51', '2024-12-01 04:22:24'),
(13, '6', '54', 'PLC & HMI Control Panel', 'PLC & HMI Control Panel', '1726051957_123jpg', 'dssdf', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-11 10:52:37', '2024-09-11 10:52:37'),
(14, '6', '54', 'Servo Drive & Control Panel', 'Servo Drive & Control Panel', '1726052047_123webp', 'fdsfds', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-11 10:54:07', '2024-09-11 10:54:07'),
(15, '6', '54', 'VFD Control Panel', 'VFD Control Panel', '1726052299_123jpg', 'fdsf', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-11 10:58:19', '2024-09-11 10:58:19'),
(16, '6', '54', 'MCC Starter Control Panel', 'MCC Starter Control Panel', '1726052399_123jpg', 'fsdf', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-11 10:59:59', '2024-09-11 10:59:59'),
(19, '6', '55', 'SCADA Control & Supervision System', 'SCADA Control & Supervision System', '1726116364_123png', 'dfd', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-12 04:46:04', '2024-09-12 04:46:04'),
(20, '6', '55', 'APFC Control Panel', 'APFC Control Panel', '1726116486_123jpg', 'dfdsf', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-12 04:48:06', '2024-09-12 04:48:06'),
(21, '6', '55', 'DG AMF & Load Sharing Panel', 'DG AMF & Load Sharing Panel', '1726116666_123jpg', 'fds', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-12 04:51:06', '2024-09-12 04:51:06'),
(22, '6', '55', 'DG Synchronization Panel', 'DG Synchronization Panel', '1726116834_123jpg', 'fdsf', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-12 04:53:20', '2024-09-12 04:53:54'),
(23, '6', '55', 'LT Distribution Panel', 'LT Distribution Panel', '1726117413_123jpg', 'dfdsf', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-12 05:03:33', '2024-09-12 05:03:33'),
(24, '6', '55', 'LV Distribution Panel', 'LV Distribution Panel', '1726117528_123jpg', 'sdsf', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-12 05:05:28', '2024-09-12 05:05:28'),
(25, '6', '55', 'HT Panel', 'HT Panel', '1726117651_123jpg', 'dfsf', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-12 05:07:31', '2024-09-12 05:07:31'),
(26, '6', '55', 'RMU', 'RMU', '1726117749_123png', 'fdsf', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-12 05:09:09', '2024-09-12 05:09:09'),
(27, '8', '41', 'DOL/Star-delta Starter Panel', 'DOL/Star-delta Starter Panel', '1726125644_123webp', 'dfdsf', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-12 07:20:44', '2024-09-12 07:20:44'),
(28, '8', '41', 'VFD & PLC Control Panel', 'VFD & PLC Control Panel', '1726125785_123png', 'dfds', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-12 07:23:05', '2024-09-12 07:23:05'),
(29, '9', '64', 'Air Flow Meter', 'Air Flow Meter', '1726129200_123png', 'dsf', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-12 08:20:00', '2024-09-12 08:20:00'),
(30, '9', '64', 'Liquid Flow Meter', 'Liquid Flow Meter', '1726129365_123png', 'fds', 'Petroleum refiners, fuel transport and end-user sales at gas stations. the gas industry, including natural', '0', '2024-09-12 08:22:45', '2024-09-12 08:22:45'),
(31, '8', '57', NULL, NULL, '1726145806_123jpg', 'Rty', 'Gujj', '0', '2024-09-12 12:56:46', '2024-09-12 12:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `title`, `image`, `description`, `short_description`, `created_at`, `updated_at`) VALUES
(1, 'Application Engineering', '1726292897_123jpg', 'An application engineer works with clients and a company\'s research and development team, which are usually based in another country. They typically work on products that have a global audience, such as software applications.', 'An application engineer works with clients and a company\'s research and development team, which are usually based in another country.', '2024-09-13 11:23:02', '2024-09-14 06:02:07'),
(2, 'Annual Maintenance Contract (AMC)', '1726292938_123jpg', 'An Annual Maintenance Contract (AMC) is an agreement between your organization and a service provider for the repair and upkeep of property owned by your organization.', 'An Annual Maintenance Contract (AMC) is an agreement between your organization and a service provider', '2024-09-13 12:10:15', '2024-09-14 06:05:07'),
(3, 'Electrical Contract Project (SITC)', '1726292955_123jpg', 'The electrical subcontractor or electrical contract that you draft needs to provide a variety of legal protections for your jobs, and it also needs to define the contractor and client relationship.', 'The electrical contract that you draft needs to provide a variety of legal protections for your jobs', '2024-09-13 12:11:29', '2024-09-14 06:08:09'),
(4, 'EPC Projects', '1726294532_123png', 'Engineering, Procurement, and Construction EPC is a particular form of contracting arrangement used in some industries where the EPC Contractor is made responsible for all the activities from design', 'Engineering, Procurement, and Construction EPC is a particular form of contracting arrangement.', '2024-09-13 12:12:15', '2024-09-14 06:15:32'),
(5, 'Retro-Fit Jobs', '1726292998_123jpg', 'Retrofit is the process of making a series of planned changes to an existing building, to improve the energy efficiency and overall well-being of the building. As well as enhance the quality of life for the people that reside there.', 'Retrofit is the process of making a series of planned changes to an existing building.', '2024-09-13 12:12:56', '2024-09-14 06:19:48'),
(6, 'Energy & APFC Management', '1726295108_123jpg', 'APFC panels, or Automatic Power Factor Correction panels, are essential electrical control systems designed to manage and enhance the power factor of a facility’s electrical network.', 'APFC panels, or Automatic Power Factor Correction panels, are essential electrical control systems.', '2024-09-13 12:13:42', '2024-09-14 06:25:08'),
(7, 'Basement Ventilation Automation', '1726907024_123jpg', 'The electrical subcontractor or electrical contract that you draft needs to provide a variety of legal protections for your jobs, and it also needs to define the contractor and client relationship.', 'An Annual Maintenance Contract (AMC) is an agreement between your organization and a service provider', '2024-09-21 08:23:44', '2024-09-21 08:24:54'),
(8, 'Smart Parking Automation', '1726907304_123jpg', 'Smart Parking Automation is an agreement between your organization and a service provider for the repair and upkeep of property owned by your organization.', 'The electrical subcontractor or electrical contract that you draft needs to provide a variety of legal protections for your jobs, and it also needs to define the contractor and client relationship.', '2024-09-21 08:28:24', '2024-09-21 08:28:24'),
(9, 'Kitchen Ventilation Automation', '1726907554_123jpg', 'Owing to our domain expertise, we offer our clients a range of kitchen exhaust system that are technically designed for commercial kitchen, industries etc. Our systems include Fume Exhaust Line, Hood & Filters, Ducting and Supply Line. These systems are used to guide waste exhaust gases away from a controlled combustion inside an engine or stove. Manufactured in accordance with international quality standards, these systems are known for better performance, corrosion resistance and longer working life.', 'Manufactured in accordance with international quality standards, these systems are known for better performance, corrosion resistance and longer working life.', '2024-09-21 08:32:34', '2024-09-21 08:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('aPTzdqsT4erLJdzENNKnJfIpTlYHkXD5N9wDIOub', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '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', 1725613164);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(23, 'dfdsfsds', '1733041626_123jpg', 'dfdssadsad', '2024-12-01 02:51:19', '2024-12-01 02:57:06'),
(24, 'dfdsf', '1733041331_123jpg', 'dsfs', '2024-12-01 02:52:11', '2024-12-01 02:52:11'),
(25, 'dfds', '1733041347_123png', 'dfsf', '2024-12-01 02:52:27', '2024-12-01 02:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Flow Metter', '1733043322_123jpg', '2024-09-03 23:59:37', '2024-12-01 03:25:22'),
(9, 'HAVC', '1726300598_123jpg', '2024-09-04 00:33:20', '2024-09-14 07:56:38'),
(10, 'VCB pannel', '1726300711_123webp', '2024-09-04 00:44:17', '2024-09-14 07:58:32'),
(11, 'Pressure Transmitter', '1726300811_123webp', '2024-09-04 00:46:17', '2024-09-14 08:00:11'),
(12, 'VFD & PLC Control Panel', '1726301328_123png', '2024-09-14 08:05:38', '2024-09-14 08:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `get_in_touch`
--
ALTER TABLE `get_in_touch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_forms`
--
ALTER TABLE `index_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `get_in_touch`
--
ALTER TABLE `get_in_touch`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `index_forms`
--
ALTER TABLE `index_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
