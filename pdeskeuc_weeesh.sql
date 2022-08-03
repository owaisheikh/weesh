-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2018 at 06:39 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdeskeuc_weeesh`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `id_user_profile` int(10) UNSIGNED NOT NULL,
  `id_list_row` int(11) NOT NULL,
  `date_booking` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_state_booking` int(11) DEFAULT NULL,
  `notes` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_user_profile`, `id_list_row`, `date_booking`, `id_state_booking`, `notes`) VALUES
(12, 12, 28, '2018-01-16 15:18:21', 1, NULL),
(13, 9, 22, '2018-07-19 22:12:46', 1, NULL),
(14, 9, 36, '2018-10-17 21:40:40', 1, NULL),
(15, 9, 26, '2018-10-17 21:41:42', 1, NULL),
(16, 9, 13, '2018-11-22 19:37:51', 1, NULL),
(17, 9, 17, '2018-11-22 19:37:56', 1, NULL),
(18, 9, 19, '2018-11-22 19:38:11', 1, NULL),
(19, 50, 41, '2018-12-08 18:33:55', 1, NULL),
(20, 50, 42, '2018-12-10 21:09:11', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id_city` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id_city`, `id_country`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cosenza', '2017-12-10 11:56:51', '2017-12-10 11:56:51');

-- --------------------------------------------------------

--
-- Table structure for table `city_language`
--

CREATE TABLE `city_language` (
  `id_city_language` int(11) NOT NULL,
  `id_city` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id_country` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id_country`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Italia', '2017-12-10 11:56:18', '2017-12-10 11:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `country_language`
--

CREATE TABLE `country_language` (
  `id_country_language` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `friendship`
--

CREATE TABLE `friendship` (
  `id_friendship` int(11) NOT NULL,
  `id_user_profile_by` int(10) UNSIGNED NOT NULL,
  `id_user_profile_to` int(10) UNSIGNED NOT NULL,
  `date_from` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_to` date NOT NULL DEFAULT '2999-12-31',
  `notes` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friendship`
--

INSERT INTO `friendship` (`id_friendship`, `id_user_profile_by`, `id_user_profile_to`, `date_from`, `date_to`, `notes`) VALUES
(6, 12, 9, '2017-12-31 08:34:48', '2999-12-31', NULL),
(7, 9, 11, '2017-12-31 10:29:34', '2999-12-31', NULL),
(8, 12, 11, '2017-12-31 10:29:41', '2999-12-31', NULL),
(9, 15, 9, '2018-01-02 18:12:29', '2999-12-31', NULL),
(10, 16, 9, '2018-01-02 19:06:10', '2999-12-31', NULL),
(11, 9, 13, '2018-01-02 20:54:59', '2999-12-31', NULL),
(12, 10, 13, '2018-01-02 20:55:04', '2999-12-31', NULL),
(13, 12, 13, '2018-01-02 20:55:15', '2999-12-31', NULL),
(15, 12, 10, '2018-01-03 08:59:22', '2999-12-31', NULL),
(16, 20, 9, '2018-01-04 17:27:59', '2999-12-31', NULL),
(23, 9, 23, '2018-01-08 10:59:21', '2999-12-31', NULL),
(24, 25, 9, '2018-01-08 17:31:22', '2999-12-31', NULL),
(25, 26, 10, '2018-01-10 18:24:31', '2999-12-31', NULL),
(26, 9, 26, '2018-01-10 18:52:47', '2999-12-31', NULL),
(27, 12, 14, '2018-01-10 20:50:38', '2999-12-31', NULL),
(28, 9, 14, '2018-01-10 20:51:16', '2999-12-31', NULL),
(29, 26, 13, '2018-01-10 20:55:43', '2999-12-31', NULL),
(30, 14, 13, '2018-01-10 20:55:54', '2999-12-31', NULL),
(31, 14, 11, '2018-01-10 21:11:11', '2999-12-31', NULL),
(32, 23, 13, '2018-01-11 15:23:28', '2999-12-31', NULL),
(33, 21, 9, '2018-01-14 22:18:26', '2999-12-31', NULL),
(34, 9, 10, '2018-01-14 22:23:01', '2999-12-31', NULL),
(35, 14, 10, '2018-01-14 22:23:06', '2999-12-31', NULL),
(36, 9, 19, '2018-01-15 14:44:26', '2999-12-31', NULL),
(37, 23, 19, '2018-01-15 14:44:34', '2999-12-31', NULL),
(38, 19, 13, '2018-01-15 16:13:57', '2999-12-31', NULL),
(39, 19, 12, '2018-01-15 17:11:47', '2999-12-31', NULL),
(40, 14, 23, '2018-01-16 13:38:39', '2999-12-31', NULL),
(41, 12, 23, '2018-01-16 13:38:41', '2999-12-31', NULL),
(42, 12, 29, '2018-01-31 13:08:16', '2999-12-31', NULL),
(43, 9, 29, '2018-01-31 13:08:44', '2999-12-31', NULL),
(44, 19, 14, '2018-03-03 21:55:33', '2999-12-31', NULL),
(45, 30, 14, '2018-03-03 21:55:34', '2999-12-31', NULL),
(46, 30, 9, '2018-03-03 22:02:27', '2999-12-31', NULL),
(47, 30, 12, '2018-03-06 21:53:37', '2999-12-31', NULL),
(48, 31, 9, '2018-03-14 17:06:43', '2999-12-31', NULL),
(49, 32, 9, '2018-03-14 20:11:56', '2999-12-31', NULL),
(50, 23, 10, '2018-05-28 10:35:50', '2999-12-31', NULL),
(51, 19, 10, '2018-05-28 10:35:55', '2999-12-31', NULL),
(52, 31, 10, '2018-05-28 10:35:57', '2999-12-31', NULL),
(53, 9, 46, '2018-11-25 15:15:25', '2999-12-31', NULL),
(54, 47, 9, '2018-11-25 15:26:35', '2999-12-31', NULL),
(55, 44, 9, '2018-11-25 15:52:09', '2999-12-31', NULL),
(56, 9, 45, '2018-11-26 11:33:26', '2999-12-31', NULL),
(57, 46, 50, '2018-11-26 18:37:32', '2999-12-31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fs_request`
--

CREATE TABLE `fs_request` (
  `id_fs_request` int(11) NOT NULL,
  `id_user_profile_by` int(10) UNSIGNED NOT NULL,
  `id_user_profile_to` int(10) UNSIGNED NOT NULL,
  `date_request` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_fs_request_state` int(11) NOT NULL DEFAULT '0',
  `date_change_state` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user_profile_changed_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_request`
--

INSERT INTO `fs_request` (`id_fs_request`, `id_user_profile_by`, `id_user_profile_to`, `date_request`, `id_fs_request_state`, `date_change_state`, `id_user_profile_changed_by`) VALUES
(2, 10, 13, '2017-12-30 20:58:12', 1, '2018-01-02 20:55:04', 10),
(3, 12, 9, '2017-12-30 23:32:12', 1, '2017-12-31 08:34:48', 12),
(4, 12, 10, '2017-12-30 23:32:17', 1, '2018-01-03 08:59:22', 12),
(5, 12, 13, '2017-12-30 23:32:22', 1, '2018-01-02 20:55:15', 12),
(6, 12, 11, '2017-12-30 23:32:30', 1, '2017-12-31 10:29:41', 12),
(8, 9, 13, '2017-12-31 09:36:00', 1, '2018-01-02 20:54:59', 9),
(9, 9, 11, '2017-12-31 09:36:01', 1, '2017-12-31 10:29:34', 9),
(11, 12, 14, '2017-12-31 09:47:47', 1, '2018-01-10 20:50:38', 12),
(12, 15, 9, '2018-01-02 15:23:46', 1, '2018-01-02 18:12:29', 15),
(13, 16, 9, '2018-01-02 19:35:55', 1, '2018-01-02 19:06:10', 16),
(15, 20, 9, '2018-01-04 18:27:10', 1, '2018-01-04 17:27:59', 20),
(24, 12, 16, '2018-01-07 18:37:52', 0, '2018-01-07 17:37:52', 12),
(26, 9, 22, '2018-01-07 21:17:35', 0, '2018-01-07 20:17:35', 9),
(27, 9, 23, '2018-01-07 21:17:39', 1, '2018-01-08 10:59:21', 9),
(29, 9, 14, '2018-01-08 12:56:33', 1, '2018-01-10 20:51:16', 9),
(31, 25, 9, '2018-01-08 18:30:40', 1, '2018-01-08 17:31:22', 25),
(32, 26, 10, '2018-01-09 19:29:15', 1, '2018-01-10 18:24:31', 26),
(33, 26, 13, '2018-01-09 19:29:27', 1, '2018-01-10 20:55:43', 26),
(34, 9, 26, '2018-01-09 19:47:38', 1, '2018-01-10 18:52:47', 9),
(35, 26, 28, '2018-01-10 19:52:53', 0, '2018-01-10 18:52:53', 26),
(36, 26, 27, '2018-01-10 19:52:59', 0, '2018-01-10 18:52:59', 26),
(37, 14, 10, '2018-01-10 21:50:58', 1, '2018-01-14 22:23:06', 14),
(38, 14, 13, '2018-01-10 21:51:08', 1, '2018-01-10 20:55:54', 14),
(39, 14, 11, '2018-01-10 21:51:12', 1, '2018-01-10 21:11:11', 14),
(40, 14, 23, '2018-01-10 21:51:26', 1, '2018-01-16 13:38:39', 14),
(42, 12, 25, '2018-01-10 21:51:46', 0, '2018-01-10 20:51:46', 12),
(43, 23, 19, '2018-01-11 14:34:31', 1, '2018-01-15 14:44:34', 23),
(44, 23, 10, '2018-01-11 14:34:33', 1, '2018-05-28 10:35:50', 23),
(45, 23, 13, '2018-01-11 14:34:34', 1, '2018-01-11 15:23:28', 23),
(46, 23, 11, '2018-01-11 14:34:36', 0, '2018-01-11 13:34:36', 23),
(47, 23, 24, '2018-01-11 14:34:37', 0, '2018-01-11 13:34:37', 23),
(48, 23, 15, '2018-01-11 14:34:38', 0, '2018-01-11 13:34:38', 23),
(49, 23, 28, '2018-01-11 14:34:39', 0, '2018-01-11 13:34:39', 23),
(50, 23, 20, '2018-01-11 14:34:41', 0, '2018-01-11 13:34:41', 23),
(51, 23, 16, '2018-01-11 14:34:52', 0, '2018-01-11 13:34:52', 23),
(53, 9, 10, '2018-01-14 20:58:44', 1, '2018-01-14 22:23:01', 9),
(57, 21, 9, '2018-01-14 23:17:07', 1, '2018-01-14 22:18:26', 21),
(58, 9, 19, '2018-01-15 14:04:28', 1, '2018-01-15 14:44:26', 9),
(61, 19, 10, '2018-01-15 15:44:39', 1, '2018-05-28 10:35:55', 19),
(62, 19, 13, '2018-01-15 15:44:41', 1, '2018-01-15 16:13:57', 19),
(63, 19, 24, '2018-01-15 15:44:43', 0, '2018-01-15 14:44:43', 19),
(64, 19, 14, '2018-01-15 15:44:50', 1, '2018-03-03 21:55:33', 19),
(65, 19, 11, '2018-01-15 15:44:53', 0, '2018-01-15 14:44:53', 19),
(66, 19, 12, '2018-01-15 15:44:57', 1, '2018-01-15 17:11:47', 19),
(67, 19, 20, '2018-01-15 16:09:16', 0, '2018-01-15 15:09:16', 19),
(68, 12, 24, '2018-01-15 18:11:53', 0, '2018-01-15 17:11:53', 12),
(69, 12, 23, '2018-01-15 18:16:38', 1, '2018-01-16 13:38:41', 12),
(70, 12, 29, '2018-01-31 13:33:31', 1, '2018-01-31 13:08:16', 12),
(71, 9, 29, '2018-01-31 13:46:57', 1, '2018-01-31 13:08:44', 9),
(73, 9, 24, '2018-02-20 18:44:46', 0, '2018-02-20 17:44:46', 9),
(74, 30, 9, '2018-03-03 22:51:54', 1, '2018-03-03 22:02:27', 30),
(75, 30, 14, '2018-03-03 22:51:59', 1, '2018-03-03 21:55:34', 30),
(76, 30, 12, '2018-03-03 22:52:04', 1, '2018-03-06 21:53:37', 30),
(77, 30, 23, '2018-03-03 22:52:11', 0, '2018-03-03 21:52:11', 30),
(78, 31, 19, '2018-03-14 18:05:02', 0, '2018-03-14 17:05:02', 31),
(79, 31, 10, '2018-03-14 18:05:09', 1, '2018-05-28 10:35:57', 31),
(80, 31, 9, '2018-03-14 18:05:14', 1, '2018-03-14 17:06:43', 31),
(81, 31, 20, '2018-03-14 18:05:21', 0, '2018-03-14 17:05:21', 31),
(82, 32, 9, '2018-03-14 21:10:58', 1, '2018-03-14 20:11:56', 32),
(83, 9, 34, '2018-11-22 23:46:41', 0, '2018-11-22 22:46:41', 9),
(84, 9, 36, '2018-11-22 23:46:44', 0, '2018-11-22 22:46:44', 9),
(85, 9, 35, '2018-11-22 23:46:48', 0, '2018-11-22 22:46:48', 9),
(87, 9, 40, '2018-11-24 01:05:50', 0, '2018-11-24 00:05:50', 9),
(88, 9, 41, '2018-11-24 01:05:51', 0, '2018-11-24 00:05:51', 9),
(89, 9, 45, '2018-11-25 15:55:11', 1, '2018-11-26 11:33:26', 9),
(90, 44, 9, '2018-11-25 15:57:40', 1, '2018-11-25 15:52:09', 44),
(91, 9, 39, '2018-11-25 16:09:18', 0, '2018-11-25 15:09:18', 9),
(92, 9, 46, '2018-11-25 16:10:49', 1, '2018-11-25 15:15:25', 9),
(93, 47, 9, '2018-11-25 16:19:53', 1, '2018-11-25 15:26:35', 47),
(94, 46, 50, '2018-11-26 19:37:08', 1, '2018-11-26 18:37:32', 46),
(95, 52, 46, '2018-11-29 19:59:33', 0, '2018-11-29 14:59:33', 52);

--
-- Triggers `fs_request`
--
DELIMITER $$
CREATE TRIGGER `change_fs_state` BEFORE UPDATE ON `fs_request` FOR EACH ROW begin
     IF (OLD.`id_fs_request_state`=0 AND NEW.`id_fs_request_state`=1 ) THEN
     	INSERT INTO `friendship`(`id_user_profile_by`, `id_user_profile_to`) 
        VALUES ( NEW.`id_user_profile_by`, NEW.`id_user_profile_to` );   
        
        SET NEW.DATE_CHANGE_STATE = NOW();
        
    END IF;
    
    IF(OLD.`id_fs_request_state`=0 AND NEW.`id_fs_request_state`=2) THEN
    	SET NEW.DATE_CHANGE_STATE = NOW();
    END IF;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fs_request_state`
--

CREATE TABLE `fs_request_state` (
  `id_fs_request_state` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_request_state`
--

INSERT INTO `fs_request_state` (`id_fs_request_state`, `name`, `date_created_at`) VALUES
(0, 'NEW', '2017-12-08 15:53:10'),
(1, 'ACCEPTED', '2017-12-08 15:53:10'),
(2, 'RIFIUTED', '2017-12-08 15:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `fs_request_state_language`
--

CREATE TABLE `fs_request_state_language` (
  `id_fs_request_state` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id_language` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id_language`, `name`, `created_at`) VALUES
(1, 'ITALIAN', '2017-12-08 11:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `list_privacies`
--

CREATE TABLE `list_privacies` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `list_privacy`
--

CREATE TABLE `list_privacy` (
  `id_list_privacy` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_privacy`
--

INSERT INTO `list_privacy` (`id_list_privacy`, `name`, `created_at`, `updated_at`) VALUES
(1, 'pubblica', '2017-12-10 11:53:32', '2017-12-10 11:53:32'),
(2, 'privata', '2017-12-10 11:53:32', '2017-12-10 11:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `list_privacy_language`
--

CREATE TABLE `list_privacy_language` (
  `id_list_privacy_language` int(11) NOT NULL,
  `id_list_privacy` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `list_row`
--

CREATE TABLE `list_row` (
  `id_list_row` int(11) NOT NULL,
  `id_list` int(11) NOT NULL,
  `object` varchar(255) NOT NULL,
  `link_web` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user_profile_creator` int(10) UNSIGNED NOT NULL,
  `id_list_privacy` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` text,
  `shop` text,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_row`
--

INSERT INTO `list_row` (`id_list_row`, `id_list`, `object`, `link_web`, `created_at`, `id_user_profile_creator`, `id_list_privacy`, `updated_at`, `image`, `shop`, `brand`, `model`, `price`) VALUES
(3, 12, 'Timberland', NULL, '2017-12-18 14:22:36', 10, 2, '2017-12-18 14:22:36', NULL, NULL, NULL, NULL, NULL),
(6, 13, 'Biglietto', 'Ccc', '2017-12-23 16:22:27', 10, 2, '2017-12-23 16:22:27', NULL, NULL, NULL, NULL, NULL),
(7, 14, 'Macchina fotografica istantanea', 'https://www.google.it/amp/s/www.guidafisco.it/amp/contributo-ivs-dipendenti-autonomi-1369', '2017-12-23 20:42:48', 12, 2, '2017-12-23 20:43:19', NULL, NULL, NULL, NULL, NULL),
(8, 14, 'Collana tiffany', 'Www.aafa.it', '2017-12-23 20:44:13', 12, 2, '2017-12-23 20:44:13', NULL, NULL, NULL, NULL, NULL),
(13, 16, 'Lg q8', NULL, '2017-12-24 13:54:15', 13, 1, '2017-12-24 13:54:15', NULL, NULL, NULL, NULL, NULL),
(16, 9, 'Acqua Fontenoce', NULL, '2017-12-24 13:58:02', 9, 2, '2017-12-24 13:58:02', NULL, NULL, NULL, NULL, NULL),
(17, 16, 'Custodia huawei p9', 'Custodia Huawei P9, Ringke [FUSION] Assorbimento urti TPU Goccia Protezione, Premio Chiaro Forte Indietro [Antistatico][Resistente Ai Graffi] per Huaw https://www.amazon.it/dp/B01ETVUF3M/ref=cm_sw_r_cp_apap_OpMhwDAP7FY7s', '2017-12-24 14:02:50', 13, 1, '2017-12-24 14:03:05', NULL, NULL, NULL, NULL, NULL),
(19, 14, 'Occhiali da sole', NULL, '2017-12-30 22:33:49', 12, 2, '2017-12-30 22:33:49', NULL, NULL, NULL, NULL, NULL),
(20, 19, 'Test', 'Test.com', '2018-01-02 18:35:34', 16, 2, '2018-01-02 18:37:26', NULL, NULL, NULL, NULL, NULL),
(22, 22, 'Mouse', NULL, '2018-01-07 19:58:31', 23, 1, '2018-01-07 19:58:31', NULL, NULL, NULL, NULL, NULL),
(25, 27, 'Compound hoyt  pro force black out', 'http://www.arcoefrecce.it/armeria/articoli/31599-compound-hoyt-pro-force-black-out.aspx', '2018-01-10 20:56:04', 14, 2, '2018-01-10 20:56:40', NULL, NULL, NULL, NULL, NULL),
(26, 28, 'Pc', NULL, '2018-01-10 21:01:34', 14, 2, '2018-01-10 21:01:34', NULL, NULL, NULL, NULL, NULL),
(27, 28, 'Coltello svizzero', 'https://www.google.it/search?q=coltellino+svizzero+victorinox&prmd=sivn&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjqj_PDpc7YAhWIOBQKHRaRDE8Q_AUIEigC&biw=360&bih=524#', '2018-01-10 21:02:41', 14, 2, '2018-01-10 21:03:18', NULL, NULL, NULL, NULL, NULL),
(28, 9, 'Telefono Nokia N8000', NULL, '2018-01-16 14:13:15', 9, 1, '2018-01-16 14:13:15', NULL, NULL, NULL, NULL, NULL),
(30, 14, 'trolley', NULL, '2018-02-03 15:29:16', 12, 2, '2018-02-03 15:29:16', NULL, NULL, NULL, NULL, NULL),
(31, 30, 'Planetaria', NULL, '2018-03-03 21:51:28', 30, 1, '2018-03-03 21:51:28', NULL, NULL, NULL, NULL, NULL),
(32, 14, 'viaggio in sud america', NULL, '2018-03-06 21:54:09', 12, 2, '2018-03-06 21:54:09', NULL, NULL, NULL, NULL, NULL),
(34, 41, 'Libro', NULL, '2018-05-28 13:40:39', 10, 2, '2018-05-28 13:40:39', NULL, NULL, NULL, NULL, NULL),
(35, 41, 'Corso inglese', NULL, '2018-05-28 13:41:13', 10, 2, '2018-05-28 13:41:13', NULL, NULL, NULL, NULL, NULL),
(36, 41, 'Vestito', NULL, '2018-05-28 13:41:44', 10, 2, '2018-05-28 13:41:44', NULL, NULL, NULL, NULL, NULL),
(37, 41, 'Macchina fotografica', NULL, '2018-05-28 13:42:05', 10, 2, '2018-05-28 13:42:05', NULL, NULL, NULL, NULL, NULL),
(39, 44, 'charger', NULL, '2018-11-25 15:20:40', 46, 1, '2018-11-25 15:20:40', NULL, NULL, NULL, NULL, NULL),
(40, 44, 'laptop', NULL, '2018-11-26 18:24:28', 46, 1, '2018-11-26 18:24:28', NULL, NULL, NULL, NULL, NULL),
(41, 45, 'party poppers', NULL, '2018-11-26 18:26:31', 46, 1, '2018-11-26 18:26:31', NULL, NULL, NULL, NULL, NULL),
(42, 45, 'Colthes', NULL, '2018-11-26 18:26:48', 46, 1, '2018-11-26 18:26:48', NULL, NULL, NULL, NULL, NULL),
(43, 46, 'Coat', 'nvnvnv nvnvnvnmbvvnm', '2018-11-26 18:36:37', 50, 1, '2018-12-10 06:40:13', NULL, NULL, NULL, NULL, NULL),
(44, 46, 'Shoes', NULL, '2018-11-26 18:36:49', 50, 1, '2018-11-26 18:36:49', NULL, NULL, NULL, NULL, NULL),
(45, 48, 'Colthes', NULL, '2018-12-02 22:21:58', 61, 1, '2018-12-02 22:21:58', NULL, NULL, NULL, NULL, NULL),
(46, 48, 'Coat', NULL, '2018-12-02 22:22:46', 61, 1, '2018-12-02 22:22:46', NULL, NULL, NULL, NULL, NULL),
(47, 49, 'party poppers', NULL, '2018-12-03 01:21:32', 61, 1, '2018-12-03 01:21:32', NULL, NULL, NULL, NULL, NULL),
(48, 50, 'Coat', NULL, '2018-12-03 19:34:58', 61, 2, '2018-12-03 19:34:58', NULL, NULL, NULL, NULL, NULL),
(49, 52, 'party poppers', NULL, '2018-12-07 13:52:35', 66, 1, '2018-12-07 13:52:35', NULL, NULL, NULL, NULL, NULL);

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
(3, '2017_12_10_143447_create_list_privacies_table', 2),
(4, '2018_11_30_014504_create_profiles_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('gallomaf@libero.it', '$2y$10$N.PSPcZtTD8f9YpUXLxsA.dVvuaTso/Rc7HjlrUtXGPXgJyseKdX.', '2017-12-10 09:08:38'),
('qureshi.ahmad981@gmail.com', '$2y$10$4tNpcgNroIgLxCwQf368CuAfn.wLgegYOmnu7aUGpMnChcCmnmtb2', '2018-12-11 09:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'uploads/avatar/1543678276IMG_8480.JPG', 45, '2018-12-01 02:18:25', '2018-12-01 10:31:16'),
(2, 'uploads/avatar/avatar.png', 47, '2018-12-01 10:53:40', '2018-12-01 10:53:40'),
(3, 'uploads/avatar/avatar.png', 48, '2018-12-01 10:56:13', '2018-12-01 10:56:13'),
(4, 'uploads/avatar/1543680656IMG_8480.JPG', 50, '2018-12-01 11:10:30', '2018-12-01 11:10:56'),
(5, 'uploads/avatar/avatar.png', 50, '2018-12-01 11:10:56', '2018-12-01 11:10:56'),
(6, 'uploads/avatar/avatar', 52, '2018-12-01 11:26:01', '2018-12-01 11:26:01'),
(7, 'uploads/avatar/avatar.png', 53, '2018-12-01 11:27:45', '2018-12-01 11:27:45'),
(8, 'uploads/avatar/1543681772IMG_8580.JPG', 54, '2018-12-01 11:28:51', '2018-12-01 11:29:32'),
(9, 'uploads/avatar/avatar.png', 57, '2018-12-04 20:44:03', '2018-12-04 20:44:03'),
(10, 'uploads/avatar/avatar.png', 58, '2018-12-04 20:56:58', '2018-12-04 20:56:58'),
(11, 'uploads/avatar/1544217151IMG_8455.JPG', 59, '2018-12-05 10:57:43', '2018-12-07 16:12:31'),
(12, 'uploads/avatar/avatar.png', 60, '2018-12-05 11:03:26', '2018-12-05 11:03:26'),
(13, 'uploads/avatar/1544218898IMG_8455.JPG', 61, '2018-12-07 16:16:54', '2018-12-07 16:41:38'),
(14, 'uploads/avatar/1544533772pp.jpg', 42, NULL, '2018-12-11 08:09:32'),
(15, 'uploads/avatar/1544722205pp.jpg', 62, '2018-12-13 12:27:11', '2018-12-13 12:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `state_booking`
--

CREATE TABLE `state_booking` (
  `id_state_booking` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `state_booking`
--

INSERT INTO `state_booking` (`id_state_booking`, `name`, `created_at`) VALUES
(1, 'BOOKED', '2017-12-30 20:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `state_booking_language`
--

CREATE TABLE `state_booking_language` (
  `id_state_booking_language` int(11) NOT NULL,
  `id_state_booking` int(11) NOT NULL,
  `id_language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `provider`, `provider_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Francesco Massimo', 'Gallo', 'gallomaf@libero.it', '', '', '$2y$10$JAYAbAn5AEN0lBVoLDWoe.u0kF5V5leDmwn/TjLNXyXlAtYNShrJq', 'zBcyasVYhfLlep3bDybPg8javSPdpRnPOEyEidVnhK4FsiUn3ynoMclrj3zu', '2017-12-10 09:04:24', '2017-12-10 09:04:24'),
(2, 'Bina Sara', 'Mollo', 'saramollo@gmail.com', '', '', '$2y$10$wPzobMen6bu7gVKRwNJCK.LExmReLEzn456eXUfaA2LB6FBnbjTTq', 'BOQ1yf9sJAAmJP4xWRZBS2Aoe55SiF6PazdRtkPj3CDRce0sIbxGvJPE9x8B', '2017-12-11 21:26:00', '2018-05-28 08:35:02'),
(3, 'Domenico', 'Calipari', 'domenico.calipari.86@gmail.com', '', '', '$2y$10$k8pFQLGEH0YNAR..L8xAOuYKZWpWnwmO52M0wbocgGnxX7PDwHoNa', NULL, '2017-12-17 12:33:18', '2017-12-17 12:33:18'),
(4, 'Maria Nunzia', 'Gallo', 'gmarianunzia@gmail.com', '', '', '$2y$10$Ow99hR/dk6Su39943RoenOuwXpTxBTzI5C9MnsaBUToIfJsgHdA.2', 'hkAUioBQ5qu8TV2MucdaG9XiAGj5bhKiKANDB9r7py5j0u3znxsLCMWvFbni', '2017-12-23 19:39:28', '2017-12-23 19:39:28'),
(5, 'Carmela', 'Mollo', 'carmelamollo@gmail.com', '', '', '$2y$10$5RgOFNIWMqaLM5yL3ziCBOHZIq6hu61ht7o94F/EmRGGW6xgF68yq', NULL, '2017-12-24 12:49:37', '2017-12-24 12:49:37'),
(6, 'Giuseppe', 'Gallo', 'g.gallo92@libero.it', '', '', '$2y$10$bmN5K8hKarCiMFvlC/4G3u8Z7WyhJA2q7m6wEGERvVCNjDmIH/c0S', 'QGKcuiCXwobcfWNQLO68TcIXYDsccd76TXHKJPUAkw2qIFQMcChRadzCtzCi', '2017-12-31 06:38:38', '2018-01-10 19:48:17'),
(7, 'Gianluca', 'De Rose', 'gianlucaderose75@gmail.com', '', '', '$2y$10$iUyxDd1r/h1cvUv1WUbbH.cEFAYUMrHcFiKJSBL65jmQH5azrMIuu', NULL, '2018-01-02 13:21:47', '2018-01-02 13:21:47'),
(8, 'Valerio', 'Trotta', 'voxvale@hotmail.com', '', '', '$2y$10$ajI9MlDQ2CMgRkXjzVIrkOH8VMuaxrKvSexC7YybF9llsUDh3nTk2', NULL, '2018-01-02 17:34:42', '2018-01-02 17:34:42'),
(11, 'Achille', 'Costabile', 'achillecostabile85@gmail.com', '', '', '$2y$10$f3LLosWMI4oxPjI45a2Qk.YN1X1JEhAGj7ItHt.3e9QqFbk7anxSa', '8yJD4tqF2x5aIIaF5IxC19ofZ5464qs0PLgdR0msVvcDLjpSkmIdsR8Ger5s', '2018-01-03 14:36:18', '2018-01-03 14:36:18'),
(12, 'giulio', 'guardasole', 'giuliosole91@hotmail.it', '', '', '$2y$10$.6D9V1sNrij0ZXVfrSGia.UtwwafuA3PUPWsqT8aLeR9vBJxc4XMm', 'zPh0GgqdFDfngMWLquYD1YTWskAfPjExgRCmRzmoDQGSAuhsLo02pzk0l6tw', '2018-01-04 16:26:21', '2018-01-04 16:26:21'),
(13, 'Utente', 'Prova', 'prova@weeesh.com', '', '', '$2y$10$8H1.HzhknxcEJCZAOKvEveHOFzhiMim0fCL4UOhd37Z8g./GG/MGi', 'UjNn4izwcUPk09Xc5Wx4aSzaeBNXam3iz24NqVqVTlV2rlP4D9bZU31y6JRH', '2018-01-07 08:11:36', '2018-01-07 08:11:36'),
(14, 'Rossana', 'Caputo', 'Rossanya@libero.it', '', '', '$2y$10$fZJQ.yIdFPZgv.R77kchteiUtU.M24DwLWu.5ph2APDLpawnGoc4q', NULL, '2018-01-07 18:53:45', '2018-01-07 18:53:45'),
(15, 'Salvatore', 'Pandolfi', 'salvpan@gmail.com', '', '', '$2y$10$yA0S9YMTzVDdM1cdlVA3mewjHgyEp1umNBMYxbUEtXkgkI5/QHeFS', NULL, '2018-01-07 18:57:31', '2018-01-07 18:57:31'),
(16, 'Fabiola', 'Spagnuolo', 'believeit@hotmail.it', '', '', '$2y$10$akglZTnZBunva3y/BMc7p.0GNh04AfPyPQHYPf5NeQGJs5gWnn6vS', NULL, '2018-01-08 11:46:02', '2018-01-08 11:46:02'),
(17, 'GIUSEPPE PALMIRO', 'OLIVETO', 'ogp@hotmail.it', '', '', '$2y$10$.5YiW8eTwuciY9RnHQX0tOra4U2z9rSkksdaNBcBACHQFs1ixxwKK', NULL, '2018-01-08 16:30:13', '2018-01-08 16:30:13'),
(18, 'Martina', 'Paternò', 'martinapate27@gmail.com', '', '', '$2y$10$8g1GhgW9TmNQp27GKg8sDOZCiRanJSsMe.hHYVYMfFQUvBAzABEVa', 'gEakGSlDgW0kaEXO6iS8dn1hgIqs0AyGrv0yu9bUB68NljWfZ5b11CzEp0jD', '2018-01-09 17:28:56', '2018-01-09 17:28:56'),
(19, 'Mariaroberta', 'Chiarelli', 'mrobertachy@gmail.com', '', '', '$2y$10$r88z7aqJt/j4HiaZr9gCt.DpUbMB0AFXW0skHDa3RPckmapCrDkeW', NULL, '2018-01-10 08:52:24', '2018-01-10 08:52:24'),
(20, 'Giorgia', 'Fede', '96fede.giorgia@gmail.com', '', '', '$2y$10$/gVxwHQ3buAnQco2tJDUiOQPsyZw6AswXGlgNCuzqJk3QNYC2pJcS', NULL, '2018-01-10 09:21:54', '2018-01-10 09:21:54'),
(21, 'Rachele', 'Mura', 'rachelemura75@gmail.com', '', '', '$2y$10$zBLUK7zK9QweRL.f5DDa2e4J5/0OOUo8M6tCt96mCtwiWCTXaZJoO', NULL, '2018-01-31 10:54:38', '2018-01-31 10:54:38'),
(22, 'Francesca', 'Bloise', 'francescabloise.90@gmail.com', '', '', '$2y$10$SfMiLn2Ty7sj3aeEaVMs5.sRQu3IrcXZ2NKVVn7i5Vq.86tdJ3SOC', NULL, '2018-03-03 20:49:53', '2018-03-03 20:49:53'),
(23, 'Stefania', 'Aloise', 'stefi.1986@libero.it', '', '', '$2y$10$FrCIZfeFwQXxGPtnKsc0JOgYTa8lhNzAfj6vPOcgDOkugaOK6I0Qy', 'OZBieXDNMJEcJNvjjSjStYM9IsvGQqw2uawNkGP6eRygkRgMR4spnWPQmxfI', '2018-03-14 16:04:25', '2018-03-14 16:04:25'),
(24, 'Luigi', 'Bloise', 'bloise.luigi@gmail.com', '', '', '$2y$10$P73IT/XI2YxYv6KBJ/XbfOOInUS1bVN/8AQ4f6zoy9Unqi/uMokZO', NULL, '2018-03-14 18:32:45', '2018-03-14 18:32:45'),
(25, 'SEOspork', 'SitesporkLD', 'miekisimpna2013@seocdvig.ru', '', '', '$2y$10$s7Sx0G8BKKzP6wEq1orcX.nSqT.bZAmpUik6cSFUJruWIW8tZfdFS', NULL, '2018-06-23 16:50:29', '2018-06-23 16:50:29'),
(26, 'GaiverGek', 'GaiverGekDV', 'pafka@op.pl', '', '', '$2y$10$X6U6G6dq37ezoim73dsMRulJL.nxfln9XPnNvo8OHFUGVpxb1DKhK', NULL, '2018-09-02 06:29:15', '2018-09-02 06:29:15'),
(27, 'Red Hat', 'redhat125', 'red.hat125@outlook.com', '', '', '$2y$10$LiZ3PzMHWO/0JAkffUST8eh5nSiMWbUtEfD98NL1a8D5YUt/NGjbO', NULL, '2018-11-22 18:53:33', '2018-11-22 18:53:33'),
(28, 'Ashbeel', 'Joseph', 'ashbeeljoseph35@gmail.com', '', '', '$2y$10$jnJ.q0GPHwaNwYA/fg94HemHmSn4PYmyoKYM4Yjs3ZH8lZbxZwgqK', NULL, '2018-11-22 19:26:30', '2018-11-22 19:26:30'),
(29, 'Test', 'Test', 'test@mm.com', '', '', '$2y$10$cl8FxdQpgYzRekWRYBd/f.eNkMi/r1CxGmVNXxkyzqd0tplFdkhmi', NULL, '2018-11-23 01:27:12', '2018-11-23 01:27:12'),
(30, 'sunita', 'thakur', '2sunita20@gmail.com', '', '', '$2y$10$WT.wz4chlWARPGDsGlXcc.40oFqB4vXUVN0jWm9CGaZBnRA0RL6r.', NULL, '2018-11-23 05:29:55', '2018-11-23 05:29:55'),
(31, 'a', 'k', 'aziz.kanwal141@gmail.com', '', '', '$2y$10$PUxDLYfCtldVOcFxR/YVb.pOastUz1MzCnGVDt0qaDnhoUsdk5DBa', NULL, '2018-11-23 05:59:13', '2018-11-23 05:59:13'),
(32, 'alex', 'zakharyk', 'i@it-by.com', '', '', '$2y$10$u0SjXAiu5noOx3Bxi04JzOt9rjjV6TCAz/w8SBfkMqJ9X49bmuPeu', NULL, '2018-11-23 07:28:13', '2018-11-23 07:28:13'),
(33, 'aziz', 'K', 'a.k@mailinator.com', '', '', '$2y$10$U4pFjBQ7rjFskDtrRgbceuTZOcLj5bK7L0CwRl9K5vTnANhC4dTBO', NULL, '2018-11-23 08:45:52', '2018-11-23 08:45:52'),
(34, 'Pragati', 'Pragati', 'pragati@clerisysolutions.com', '', '', '$2y$10$QtvKkuMPzpVgbUvfYh5b7OK59BAosliykEhaBlIrglyo1f6rwchvu', NULL, '2018-11-23 11:13:12', '2018-11-23 11:13:12'),
(35, 'SEOspork', 'SitesporkLD', 'narcissovplaton@mail.ru', '', '', '$2y$10$pmKTTr9XuRjok9OuPZxHj.hiUsQqNAMWvB9DvEUGBmB0XywoJ28ou', NULL, '2018-11-24 01:21:33', '2018-11-24 01:21:33'),
(36, 'Rishabh', 'rishabh', 'rish.aryal@gmail.com', '', '', '$2y$10$HULveg5r/4yfyHpnZHf/reTr1ouvYTeXKXnEVgx8oMcZWpraCqJdu', NULL, '2018-11-25 13:50:24', '2018-11-25 13:50:24'),
(37, 'David', 'Martirosyan', 'david1994martirosyan@gmail.com', '', '', '$2y$10$BgEqVsXQpl0OZfGv6DwB4eMmZql4rtdacWNo4swfE9xDOHcMfe0F.', NULL, '2018-11-25 13:52:03', '2018-11-25 13:52:03'),
(38, 'anees', 'malik', 'malik.anees96@gmail.com', '', '', '$2y$10$wlKMGyaAPS66dKwT9Qf31ubqvzYPiYKR1CxkmS2qdME7YehvmmdYu', 'prMomKqoYVOJkp4dQpkymOeD1uBikpn9OZUHDiGZemYUuaTWeBsfEREcNKi3', '2018-11-25 14:09:03', '2018-11-25 14:09:03'),
(39, 'Juan', 'Palencia', 'juanchopalen@gmail.com', '', '', '$2y$10$kZJhNLOscPuHKUTRIghu9O/NhPwB43NWLl6.HIDgSvmHFsdsJNCBS', NULL, '2018-11-25 14:19:10', '2018-11-25 14:19:10'),
(40, 'ahmed', 'khattab', 'khattab17@gmail.com', '', '', '$2y$10$W9LIgdVLFLABh2eUMsSKhuJi4s3h6fMZ0WiaukqP2JTVepK5TagAe', NULL, '2018-11-25 20:26:27', '2018-11-25 20:26:27'),
(41, 'Saad', 'Siddiqii', 's.studentsiddiqui@gmail.com', '', '', '$2y$10$thOQahx9mKi6AbjUB6uIR.EU7L9au5sj3pSilzxS1xF5LDboom2nq', NULL, '2018-11-26 09:02:11', '2018-11-26 09:02:11'),
(42, 'Muhammad Ahmad Qureshii', 'ahmad', 'qureshi.ahmad981@gmail.com', '', '', '$2y$10$6e9C9q7yA69NyJqLZmqGu.Dj3w3RLm2BKs1cr06j6585dvLaHyb3S', 'f3f3HtxVj495BHU0a7taFX5vzLBOJVsb1xpSxZO5IbpoOUVcH1cgfglIwiXT', '2018-11-26 17:32:59', '2018-12-10 11:04:33'),
(43, 'Ahmad Hassan', 'Bahhir', 'Ahmadh_1@mail.com', '', '', '$2y$10$V9eCxmRfNwiXWu0FJ8mXV.Ijs1NLS5/xbprKim6/5N4XUn7hRJn9K', '3NT64lZhUPY2F3X2GQqUcpKRAPxzpvmvcEjUuKZKvZkmog7hzoKjyM8EE2Ln', '2018-11-28 04:24:13', '2018-11-28 04:24:13'),
(44, 'Abubakar Qureshi', 'abubakar', 'abubakarqureshi75@yahoo.com', '', '', '$2y$10$tU6YHrT.4kVWKbVnwS8ex.WWzLJslEWIkm8hyBr4.oQNVwWhCZR8G', NULL, '2018-11-29 09:56:40', '2018-11-29 09:56:40'),
(45, 'Hassan Bro', 'niazi', 'niazi@gmail.com', '', '', '$2y$10$UYmeGDJNCAL/GCJbB2MBXOJFGYoncWH8pGuTfL2RLM1rNA2ITHYvy', 'TJ8ACln1fFpPXp9WUnXV9LEhxWx01EyYjN2QhixUqX9wodCFzArZyvYXoLXd', '2018-11-29 21:12:39', '2018-12-01 10:31:16'),
(46, 'Bilal Cheema', 'bilal', 'bilal@gmail.com', '', '', '$2y$10$Co/2BcC9gIvlggik3z8o2.U1z6bisWVT/0iPUQU1TCMUZRAgJxC/G', NULL, '2018-12-01 10:47:47', '2018-12-01 10:47:47'),
(47, 'Saad Khan', 'saad', 'saad@gmail.com', '', '', '$2y$10$frkgEmHGOZlGTWiqlQ1WaeyiBu15n6br8r0hKEHqddZVhuXhZ8Rqu', NULL, '2018-12-01 10:53:40', '2018-12-01 10:53:40'),
(48, 'yaruq', 'yaruq111', 'yaruq@gmail.com', '', '', '$2y$10$l0Q1h9ObXyAGFYhPUgXMb.q2WgBsGqsRd.MsGeYwxHRQKhmFnojPG', 'oaVe74pWFG3KNSniS6ZYNInhYIm8Nr2OxKAKK3jN6ZtGQe469xWzxr3xLzeh', '2018-12-01 10:56:13', '2018-12-01 10:56:13'),
(49, 'arsan', 'arsaln', 'araslan@gmail.com', '', '', '$2y$10$pnYKDu/9biS42oPX5RODv.5cixdDJDw3lYoIyvbXeqFzCKnM2Urci', 'IEKx1DFHOPzmOPdMFpyOQHdmjS17NQj5GJDpNgLgHCYxpM3TwQT7ffeFdzsW', '2018-12-01 10:59:55', '2018-12-01 10:59:55'),
(50, 'usama', 'usama', 'usama@gmail.com', '', '', '$2y$10$dkewBWAKTO3cJWiVT25VDuP9RlZZ4cUnOp30Ct5qgZfi2JaLkYkxy', 'm8R2paR9j9OVJmhzetPLJVsXy5FDG9MWqN3RSfPbIORqvyy9agSD9dch0Xnq', '2018-12-01 11:08:03', '2018-12-01 11:08:03'),
(51, 'test', 'test', 'test111@gmail.com', '', '', '$2y$10$rip06D2xJrPxYg6rrY.Qqui9HLSxYdXYcOdc3Vcq/ChsXZf0/zWRu', 'F08NU5NKDqrcgZUdV24gDqfbG8wh4VPvEt69zTnf2nkDCy5mxUliUfWPI7sF', '2018-12-01 11:12:34', '2018-12-01 11:12:34'),
(52, 'test11111', 'test111111', 'testess1@gmial.com', '', '', '$2y$10$LNfy0HJPr1hDs5ACzx8U0O4ZYyCrzit.ayweMOa5WqbZJcqCeDWEK', 'FkiRYBw07YLSb8z01cr7RS1E1AKAAfyaDtaMfNna3b6SPCrtai1CP4eGVPJY', '2018-12-01 11:26:01', '2018-12-01 11:26:01'),
(53, 'Qasim', 'motta', 'motta@gmail.com', '', '', '$2y$10$xvC9vMtDWDxs1vqz9yJ5/eSvu.SjQewk3jpzNe4wRDo9L3kPPgoqG', 'eGaeR0Y6QT1XVMBIKXpdW1cBasL2TD8TAKEIuEHhxN52oSxKxKo3r4uXclXw', '2018-12-01 11:27:45', '2018-12-01 11:27:45'),
(54, 'bilal cheems', 'cheema', 'bilalcheema@gmail.com', '', '', '$2y$10$avPEqMk09ialJPBnnPWd2etzKGAP0ND3CauzVMEyVsulblFDOrOze', NULL, '2018-12-01 11:28:50', '2018-12-01 11:29:32'),
(56, 'Hamza Ishtiaq', NULL, 'bitf13a066@gmail.com', 'google', '108712230880562445519', 'null', 'ObV6LSlcLBgl5Vj61nulOrkfG6VkkvZKsjkcwzJ0vUV7XakpkRaHmkCopUSF', '2018-12-04 19:13:33', '2018-12-04 20:42:22'),
(57, 'Muhammad Ahmad Qureshi', NULL, 'bitf13a066@pucit.edu.pk', 'google', '116643613567351868351', 'null', 'XlINQLzikCZunuTsyNCAUidberdcEgWIlEo3Ev7d31J02UXBUjRjc7RkeAIy', '2018-12-04 20:44:03', '2018-12-04 20:44:22'),
(58, 'Ahsan Imtiaz', 'Imtiaz', 'imtiaz@gmail.com', NULL, NULL, '$2y$10$dneqm.iBnk7ajeUx4bPF8.5ysXRwwYGA5qIQRN0zMls10geIrnJ2O', NULL, '2018-12-04 20:56:58', '2018-12-04 20:57:11'),
(59, 'Fatima Umar', 'demo', 'demohhasdhasd@gmail.com', NULL, NULL, '$2y$10$hnZzePMpfz8lGyGiVtOEou7Wdp6ZVSbDJw4BFOAPMHhMMNV0dMv.S', 'GdJ4cHnRSFjmpp16NLPfW2pw432i9hotqSVE9gPmON4777Q2MM1k6WzZGTcn', '2018-12-05 10:57:43', '2018-12-07 16:12:31'),
(60, 'ibrahim', 'rana', 'rana@gmail.com', NULL, NULL, '$2y$10$VwhlltKK9Y2Nm5uM1cQCSOyUYKI/JM0YSYYjViOY6SbWHlP8zVbbi', 'VTeYVAnuRnU3D6aq35kvqC5AbSHgnCyBxUNPrZqvmcqMxCYLbUk6oSyjtDBr', '2018-12-05 11:03:26', '2018-12-05 11:03:26'),
(61, 'Jawad Parachaaaaa', 'usman111', 'usmanbhae@gmail.com', NULL, NULL, '$2y$10$KFE6KWB1XVsQif651sXGduTBIC/ODDI/USLKY8k3FYKOEoGpPHIiG', 'WPu1Wx6oY4LZE5CxCXWOPluZhWBHRJmbDbBoWLHDOdlGzR1sEdwwtCbfgogA', '2018-12-07 16:16:54', '2018-12-07 17:01:46'),
(62, 'Muzamil Ashfaq', 'Ashfaq', 'muzamil@gmail.com', NULL, NULL, '$2y$10$pMOhqC/6VB53138HM125qe3zBwifNB.dAb63YNUhb4Lnv.UPrMs5C', NULL, '2018-12-13 12:27:10', '2018-12-13 12:28:12');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `insert_user_profile` AFTER INSERT ON `users` FOR EACH ROW insert into user_profile(id_user, name, surname) values (new.id, new.name, new.surname)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id_user_profile` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id_user_profile`, `id_user`, `name`, `surname`, `date_of_birth`, `photo`, `address`, `id_city`, `id_language`, `created_at`, `updated_at`) VALUES
(9, 1, 'Francesco Massimo', 'Gallo', NULL, NULL, NULL, NULL, NULL, '2017-12-10 13:54:03', '2017-12-10 13:54:03'),
(10, 2, 'Bina Sara ', 'Mollo', NULL, NULL, NULL, NULL, NULL, '2017-12-11 23:26:00', '2017-12-11 23:26:00'),
(11, 3, 'Domenico', 'Calipari', NULL, NULL, NULL, NULL, NULL, '2017-12-17 14:33:18', '2017-12-17 14:33:18'),
(12, 4, 'Maria Nunzia', 'Gallo', NULL, NULL, NULL, NULL, NULL, '2017-12-23 21:39:28', '2017-12-23 21:39:28'),
(13, 5, 'Carmela', 'Mollo', NULL, NULL, NULL, NULL, NULL, '2017-12-24 14:49:37', '2017-12-24 14:49:37'),
(14, 6, 'Giuseppe', 'Gallo', NULL, NULL, NULL, NULL, NULL, '2017-12-31 08:38:38', '2017-12-31 08:38:38'),
(15, 7, 'Gianluca', 'De Rose', NULL, NULL, NULL, NULL, NULL, '2018-01-02 15:21:47', '2018-01-02 15:21:47'),
(16, 8, 'Valerio', 'Trotta', NULL, NULL, NULL, NULL, NULL, '2018-01-02 19:34:42', '2018-01-02 19:34:42'),
(19, 11, 'Achille', 'Costabile', NULL, NULL, NULL, NULL, NULL, '2018-01-03 16:36:18', '2018-01-03 16:36:18'),
(20, 12, 'giulio', 'guardasole', NULL, NULL, NULL, NULL, NULL, '2018-01-04 18:26:21', '2018-01-04 18:26:21'),
(21, 13, 'Utente', 'Prova', NULL, NULL, NULL, NULL, NULL, '2018-01-07 10:11:36', '2018-01-07 10:11:36'),
(22, 14, 'Rossana', 'Caputo', NULL, NULL, NULL, NULL, NULL, '2018-01-07 20:53:45', '2018-01-07 20:53:45'),
(23, 15, 'Salvatore', 'Pandolfi', NULL, NULL, NULL, NULL, NULL, '2018-01-07 20:57:31', '2018-01-07 20:57:31'),
(24, 16, 'Fabiola', 'Spagnuolo', NULL, NULL, NULL, NULL, NULL, '2018-01-08 13:46:02', '2018-01-08 13:46:02'),
(25, 17, 'GIUSEPPE PALMIRO', 'OLIVETO', NULL, NULL, NULL, NULL, NULL, '2018-01-08 18:30:13', '2018-01-08 18:30:13'),
(26, 18, 'Martina', 'Paternò', NULL, NULL, NULL, NULL, NULL, '2018-01-09 19:28:56', '2018-01-09 19:28:56'),
(27, 19, 'Mariaroberta', 'Chiarelli', NULL, NULL, NULL, NULL, NULL, '2018-01-10 10:52:24', '2018-01-10 10:52:24'),
(28, 20, 'Giorgia', 'Fede', NULL, NULL, NULL, NULL, NULL, '2018-01-10 11:21:54', '2018-01-10 11:21:54'),
(29, 21, 'Rachele', 'Mura', NULL, NULL, NULL, NULL, NULL, '2018-01-31 12:54:38', '2018-01-31 12:54:38'),
(30, 22, 'Francesca', 'Bloise', NULL, NULL, NULL, NULL, NULL, '2018-03-03 22:49:53', '2018-03-03 22:49:53'),
(31, 23, 'Stefania', 'Aloise', NULL, NULL, NULL, NULL, NULL, '2018-03-14 18:04:25', '2018-03-14 18:04:25'),
(32, 24, 'Luigi', 'Bloise', NULL, NULL, NULL, NULL, NULL, '2018-03-14 20:32:45', '2018-03-14 20:32:45'),
(33, 25, 'SEOspork', 'SitesporkLD', NULL, NULL, NULL, NULL, NULL, '2018-06-23 20:50:29', '2018-06-23 20:50:29'),
(34, 26, 'GaiverGek', 'GaiverGekDV', NULL, NULL, NULL, NULL, NULL, '2018-09-02 10:29:15', '2018-09-02 10:29:15'),
(35, 27, 'Red Hat', 'redhat125', NULL, NULL, NULL, NULL, NULL, '2018-11-22 20:53:33', '2018-11-22 20:53:33'),
(36, 28, 'Ashbeel', 'Joseph', NULL, NULL, NULL, NULL, NULL, '2018-11-22 21:26:30', '2018-11-22 21:26:30'),
(37, 29, 'Test', 'Test', NULL, NULL, NULL, NULL, NULL, '2018-11-23 03:27:12', '2018-11-23 03:27:12'),
(38, 30, 'sunita', 'thakur', NULL, NULL, NULL, NULL, NULL, '2018-11-23 07:29:55', '2018-11-23 07:29:55'),
(39, 31, 'a', 'k', NULL, NULL, NULL, NULL, NULL, '2018-11-23 07:59:13', '2018-11-23 07:59:13'),
(40, 32, 'alex', 'zakharyk', NULL, NULL, NULL, NULL, NULL, '2018-11-23 09:28:13', '2018-11-23 09:28:13'),
(41, 33, 'aziz', 'K', NULL, NULL, NULL, NULL, NULL, '2018-11-23 10:45:52', '2018-11-23 10:45:52'),
(42, 34, 'Pragati', 'Pragati', NULL, NULL, NULL, NULL, NULL, '2018-11-23 13:13:12', '2018-11-23 13:13:12'),
(43, 35, 'SEOspork', 'SitesporkLD', NULL, NULL, NULL, NULL, NULL, '2018-11-24 03:21:33', '2018-11-24 03:21:33'),
(44, 36, 'Rishabh', 'rishabh', NULL, NULL, NULL, NULL, NULL, '2018-11-25 15:50:24', '2018-11-25 15:50:24'),
(45, 37, 'David', 'Martirosyan', NULL, NULL, NULL, NULL, NULL, '2018-11-25 15:52:03', '2018-11-25 15:52:03'),
(46, 38, 'anees', 'malik', NULL, NULL, NULL, NULL, NULL, '2018-11-25 16:09:03', '2018-11-25 16:09:03'),
(47, 39, 'Juan', 'Palencia', NULL, NULL, NULL, NULL, NULL, '2018-11-25 16:19:10', '2018-11-25 16:19:10'),
(48, 40, 'ahmed', 'khattab', NULL, NULL, NULL, NULL, NULL, '2018-11-25 22:26:27', '2018-11-25 22:26:27'),
(49, 41, 'Saad', 'Siddiqii', NULL, NULL, NULL, NULL, NULL, '2018-11-26 11:02:11', '2018-11-26 11:02:11'),
(50, 42, 'Muhammad Ahmad Qureshi', 'ahmad', NULL, NULL, NULL, NULL, NULL, '2018-11-26 19:32:59', '2018-11-26 19:32:59'),
(51, 43, 'Ahmad Hassan', 'Bahhir', NULL, NULL, NULL, NULL, NULL, '2018-11-28 06:24:13', '2018-11-28 06:24:13'),
(52, 44, 'Abubakar Qureshi', 'abubakar', NULL, NULL, NULL, NULL, NULL, '2018-11-29 19:56:40', '2018-11-29 19:56:40'),
(53, 45, 'Hassan Khan', 'niazi', NULL, NULL, NULL, NULL, NULL, '2018-11-30 07:12:40', '2018-11-30 07:12:40'),
(54, 46, 'Bilal Cheema', 'bilal', NULL, NULL, NULL, NULL, NULL, '2018-12-01 20:47:47', '2018-12-01 20:47:47'),
(55, 47, 'Saad Khan', 'saad', NULL, NULL, NULL, NULL, NULL, '2018-12-01 20:53:40', '2018-12-01 20:53:40'),
(56, 48, 'yaruq', 'yaruq111', NULL, NULL, NULL, NULL, NULL, '2018-12-01 20:56:13', '2018-12-01 20:56:13'),
(57, 49, 'arsan', 'arsaln', NULL, NULL, NULL, NULL, NULL, '2018-12-01 20:59:55', '2018-12-01 20:59:55'),
(58, 50, 'usama', 'usama', NULL, NULL, NULL, NULL, NULL, '2018-12-01 21:08:03', '2018-12-01 21:08:03'),
(59, 51, 'test', 'test', NULL, NULL, NULL, NULL, NULL, '2018-12-01 21:12:34', '2018-12-01 21:12:34'),
(60, 52, 'test11111', 'test111111', NULL, NULL, NULL, NULL, NULL, '2018-12-01 21:26:01', '2018-12-01 21:26:01'),
(61, 53, 'Qasim', 'motta', NULL, NULL, NULL, NULL, NULL, '2018-12-01 21:27:45', '2018-12-01 21:27:45'),
(62, 54, 'bilal', 'cheema', NULL, NULL, NULL, NULL, NULL, '2018-12-01 21:28:50', '2018-12-01 21:28:50'),
(63, 56, 'Sports World', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-05 05:13:33', '2018-12-05 05:13:33'),
(64, 57, 'Muhammad Ahmad Qureshi', NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-05 06:44:03', '2018-12-05 06:44:03'),
(65, 58, 'Ahsan', 'Imtiaz', NULL, NULL, NULL, NULL, NULL, '2018-12-05 06:56:58', '2018-12-05 06:56:58'),
(66, 59, 'test', 'demo', NULL, NULL, NULL, NULL, NULL, '2018-12-05 20:57:43', '2018-12-05 20:57:43'),
(67, 60, 'ibrahim', 'rana', NULL, NULL, NULL, NULL, NULL, '2018-12-05 21:03:26', '2018-12-05 21:03:26'),
(68, 61, 'Usman bhae', 'usman111', NULL, NULL, NULL, NULL, NULL, '2018-12-08 02:16:54', '2018-12-08 02:16:54'),
(69, 62, 'Muzamil', 'Ashfaq', NULL, NULL, NULL, NULL, NULL, '2018-12-13 22:27:11', '2018-12-13 22:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `wlist`
--

CREATE TABLE `wlist` (
  `id_list` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `id_user_profile_creator` int(10) UNSIGNED NOT NULL,
  `date_valide_from` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_valide_to` datetime NOT NULL DEFAULT '2099-12-31 00:00:00',
  `id_list_privacy` int(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wlist`
--

INSERT INTO `wlist` (`id_list`, `name`, `id_user_profile_creator`, `date_valide_from`, `date_valide_to`, `id_list_privacy`, `created_at`, `updated_at`) VALUES
(9, 'Pasqua 2018', 9, '2017-12-16 03:14:55', '2099-12-31 00:00:00', 1, '2017-12-16 02:14:55', '2017-12-24 13:58:44'),
(11, 'acquisti', 11, '2017-12-17 14:33:45', '2099-12-31 00:00:00', 2, '2017-12-17 13:33:45', '2017-12-17 13:33:45'),
(12, 'Scarpe', 10, '2017-12-18 15:21:52', '2099-12-31 00:00:00', 2, '2017-12-18 14:21:52', '2017-12-18 14:21:52'),
(13, 'Viaggio', 10, '2017-12-23 16:58:50', '2099-12-31 00:00:00', 2, '2017-12-23 15:58:50', '2017-12-23 15:58:50'),
(14, 'Regalo 30', 12, '2017-12-23 21:39:45', '2099-12-31 00:00:00', 2, '2017-12-23 20:39:45', '2017-12-23 20:39:45'),
(16, 'Tecnologia', 13, '2017-12-24 14:50:25', '2099-12-31 00:00:00', 1, '2017-12-24 13:50:25', '2017-12-24 13:50:51'),
(18, 'Mimmo', 15, '2018-01-02 15:22:45', '2099-12-31 00:00:00', 1, '2018-01-02 14:22:45', '2018-01-02 14:22:45'),
(19, 'Valerio list', 16, '2018-01-02 19:35:18', '2099-12-31 00:00:00', 2, '2018-01-02 18:35:18', '2018-01-02 18:35:18'),
(20, 'a', 20, '2018-01-04 18:26:46', '2099-12-31 00:00:00', 1, '2018-01-04 17:26:46', '2018-01-04 17:26:46'),
(21, 'Rossana', 22, '2018-01-07 20:54:31', '2099-12-31 00:00:00', 1, '2018-01-07 19:54:31', '2018-01-07 19:54:31'),
(22, 'Compleanno', 23, '2018-01-07 20:57:56', '2099-12-31 00:00:00', 1, '2018-01-07 19:57:56', '2018-01-07 19:57:56'),
(23, 'Fabiola', 24, '2018-01-08 13:46:17', '2099-12-31 00:00:00', 2, '2018-01-08 12:46:17', '2018-01-08 12:46:17'),
(24, 'COMPLEANNO 2018', 25, '2018-01-08 18:31:18', '2099-12-31 00:00:00', 2, '2018-01-08 17:31:18', '2018-01-08 17:31:18'),
(26, 'Mariaroberta', 27, '2018-01-10 10:52:42', '2099-12-31 00:00:00', 2, '2018-01-10 09:52:42', '2018-01-10 09:52:42'),
(27, 'Svago', 14, '2018-01-10 21:52:35', '2099-12-31 00:00:00', 2, '2018-01-10 20:52:35', '2018-01-10 20:52:35'),
(28, 'Compleanno', 14, '2018-01-10 21:57:13', '2099-12-31 00:00:00', 2, '2018-01-10 20:57:13', '2018-01-10 20:57:13'),
(29, 'Make up', 26, '2018-01-11 00:21:39', '2099-12-31 00:00:00', 2, '2018-01-10 23:21:39', '2018-01-10 23:21:39'),
(30, 'Cucina', 30, '2018-03-03 22:50:25', '2099-12-31 00:00:00', 1, '2018-03-03 21:50:25', '2018-03-03 21:50:25'),
(31, 'Francesco', 32, '2018-03-14 21:09:50', '2099-12-31 00:00:00', 2, '2018-03-14 20:09:50', '2018-03-14 20:09:50'),
(32, 'Francesco', 32, '2018-03-14 21:15:03', '2099-12-31 00:00:00', 2, '2018-03-14 20:15:03', '2018-03-14 20:15:03'),
(41, 'Compleanno', 10, '2018-05-28 15:40:21', '2099-12-31 00:00:00', 2, '2018-05-28 13:40:21', '2018-05-28 13:40:21'),
(42, 'Lista di prova', 9, '2018-06-02 16:26:56', '2018-07-01 00:00:00', 1, '2018-06-02 14:26:56', '2018-06-02 14:26:56'),
(43, 'Red Hat', 35, '2018-11-22 20:54:12', '2018-11-22 00:00:00', 2, '2018-11-22 19:54:12', '2018-11-22 19:54:12'),
(44, 'anees', 46, '2018-11-25 16:13:23', '2018-12-19 00:00:00', 1, '2018-11-25 15:13:23', '2018-11-25 15:13:23'),
(45, 'Birthday', 46, '2018-11-26 19:25:40', '2018-11-27 00:00:00', 1, '2018-11-26 18:25:40', '2018-11-26 18:25:40'),
(46, 'Wedding', 50, '2018-11-26 19:34:53', '2019-01-01 00:00:00', 1, '2018-11-26 18:34:53', '2018-11-26 18:34:53'),
(47, 'wedding', 52, '2018-11-29 20:02:50', '2018-10-12 00:00:00', 2, '2018-11-29 15:02:50', '2018-11-29 15:02:50'),
(48, 'wedding', 61, '2018-12-03 03:20:39', '2019-12-31 00:00:00', 2, '2018-12-02 22:20:39', '2018-12-02 22:23:51'),
(49, 'Birthday', 61, '2018-12-03 06:20:43', '2018-12-04 00:00:00', 1, '2018-12-03 01:20:43', '2018-12-03 01:20:43'),
(50, 'Php Laravel', 61, '2018-12-04 00:34:18', '2019-11-11 00:00:00', 1, '2018-12-03 19:34:18', '2018-12-03 19:34:18'),
(51, 'jkhasdda', 64, '2018-12-05 06:44:50', '2020-02-06 00:00:00', 1, '2018-12-05 01:44:50', '2018-12-05 01:44:50'),
(52, 'Party', 66, '2018-12-07 18:51:08', '2019-01-01 00:00:00', 1, '2018-12-07 13:51:08', '2018-12-07 13:51:08'),
(57, 'test toastr 123', 68, '2018-12-08 03:17:32', '2019-01-01 00:00:00', 2, '2018-12-07 22:17:32', '2018-12-07 22:32:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`),
  ADD KEY `fk_booking_user_profile` (`id_user_profile`),
  ADD KEY `fk_booking_list_row` (`id_list_row`),
  ADD KEY `fk_booking_state_booking` (`id_state_booking`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id_city`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fk_city_country` (`id_country`);

--
-- Indexes for table `city_language`
--
ALTER TABLE `city_language`
  ADD PRIMARY KEY (`id_city_language`),
  ADD UNIQUE KEY `uk_city_lauguage` (`id_city`,`id_language`),
  ADD KEY `fk_city_language_language` (`id_language`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id_country`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `country_language`
--
ALTER TABLE `country_language`
  ADD PRIMARY KEY (`id_country_language`),
  ADD UNIQUE KEY `uk_country_lauguage` (`id_country`,`id_language`),
  ADD KEY `fk_country_language_language` (`id_language`);

--
-- Indexes for table `friendship`
--
ALTER TABLE `friendship`
  ADD PRIMARY KEY (`id_friendship`),
  ADD UNIQUE KEY `uk_friendship` (`id_user_profile_by`,`id_user_profile_to`,`date_from`,`date_to`),
  ADD KEY `fk_friendship_user_profile_to` (`id_user_profile_to`);

--
-- Indexes for table `fs_request`
--
ALTER TABLE `fs_request`
  ADD PRIMARY KEY (`id_fs_request`),
  ADD KEY `fk_fs_request_user_profile_by` (`id_user_profile_by`),
  ADD KEY `fk_fs_request_user_profile_to` (`id_user_profile_to`),
  ADD KEY `fk_fs_request_user_profile_changed_by` (`id_user_profile_changed_by`),
  ADD KEY `fk_fs_request_fs_r_s` (`id_fs_request_state`);

--
-- Indexes for table `fs_request_state`
--
ALTER TABLE `fs_request_state`
  ADD PRIMARY KEY (`id_fs_request_state`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `fs_request_state_language`
--
ALTER TABLE `fs_request_state_language`
  ADD PRIMARY KEY (`id_fs_request_state`,`id_language`),
  ADD KEY `fs_request_state_language_language` (`id_language`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id_language`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `list_privacies`
--
ALTER TABLE `list_privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_privacy`
--
ALTER TABLE `list_privacy`
  ADD PRIMARY KEY (`id_list_privacy`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `list_privacy_language`
--
ALTER TABLE `list_privacy_language`
  ADD PRIMARY KEY (`id_list_privacy_language`),
  ADD UNIQUE KEY `uk_list_privacy_language` (`id_list_privacy`,`id_language`),
  ADD KEY `fk_list_privacy_language_language` (`id_language`);

--
-- Indexes for table `list_row`
--
ALTER TABLE `list_row`
  ADD PRIMARY KEY (`id_list_row`),
  ADD KEY `fk_list_row_list` (`id_list`),
  ADD KEY `fk_list_row_list_privacy` (`id_list_privacy`),
  ADD KEY `fk_list_row_user` (`id_user_profile_creator`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_booking`
--
ALTER TABLE `state_booking`
  ADD PRIMARY KEY (`id_state_booking`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `state_booking_language`
--
ALTER TABLE `state_booking_language`
  ADD PRIMARY KEY (`id_state_booking_language`),
  ADD UNIQUE KEY `uk_state_booking_language` (`id_state_booking`,`id_language`),
  ADD KEY `fk_state_booking_language_language` (`id_language`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id_user_profile`),
  ADD KEY `fk_user_profile_user` (`id_user`),
  ADD KEY `fk_user_profile_city` (`id_city`),
  ADD KEY `fk_user_profile_language` (`id_language`);

--
-- Indexes for table `wlist`
--
ALTER TABLE `wlist`
  ADD PRIMARY KEY (`id_list`),
  ADD UNIQUE KEY `uk_wlist_name_profile` (`name`,`id_user_profile_creator`,`date_valide_from`,`date_valide_to`),
  ADD KEY `fk_list_list_privacy` (`id_list_privacy`),
  ADD KEY `fk_list_user` (`id_user_profile_creator`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city_language`
--
ALTER TABLE `city_language`
  MODIFY `id_city_language` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country_language`
--
ALTER TABLE `country_language`
  MODIFY `id_country_language` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friendship`
--
ALTER TABLE `friendship`
  MODIFY `id_friendship` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `fs_request`
--
ALTER TABLE `fs_request`
  MODIFY `id_fs_request` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id_language` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `list_privacies`
--
ALTER TABLE `list_privacies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list_privacy`
--
ALTER TABLE `list_privacy`
  MODIFY `id_list_privacy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `list_privacy_language`
--
ALTER TABLE `list_privacy_language`
  MODIFY `id_list_privacy_language` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list_row`
--
ALTER TABLE `list_row`
  MODIFY `id_list_row` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `state_booking_language`
--
ALTER TABLE `state_booking_language`
  MODIFY `id_state_booking_language` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id_user_profile` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `wlist`
--
ALTER TABLE `wlist`
  MODIFY `id_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `fk_booking_list_row` FOREIGN KEY (`id_list_row`) REFERENCES `list_row` (`id_list_row`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_booking_state_booking` FOREIGN KEY (`id_state_booking`) REFERENCES `state_booking` (`id_state_booking`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_booking_user_profile` FOREIGN KEY (`id_user_profile`) REFERENCES `user_profile` (`id_user_profile`) ON DELETE NO ACTION;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_city_country` FOREIGN KEY (`id_country`) REFERENCES `country` (`id_country`) ON DELETE NO ACTION;

--
-- Constraints for table `city_language`
--
ALTER TABLE `city_language`
  ADD CONSTRAINT `fk_city_language_city` FOREIGN KEY (`id_city`) REFERENCES `city` (`id_city`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_city_language_language` FOREIGN KEY (`id_language`) REFERENCES `language` (`id_language`) ON DELETE NO ACTION;

--
-- Constraints for table `country_language`
--
ALTER TABLE `country_language`
  ADD CONSTRAINT `fk_country_language_country` FOREIGN KEY (`id_country`) REFERENCES `country` (`id_country`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_country_language_language` FOREIGN KEY (`id_language`) REFERENCES `language` (`id_language`) ON DELETE NO ACTION;

--
-- Constraints for table `friendship`
--
ALTER TABLE `friendship`
  ADD CONSTRAINT `fk_friendship_user_profile_by` FOREIGN KEY (`id_user_profile_by`) REFERENCES `user_profile` (`id_user_profile`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_friendship_user_profile_to` FOREIGN KEY (`id_user_profile_to`) REFERENCES `user_profile` (`id_user_profile`) ON DELETE NO ACTION;

--
-- Constraints for table `fs_request`
--
ALTER TABLE `fs_request`
  ADD CONSTRAINT `fk_fs_request_fs_r_s` FOREIGN KEY (`id_fs_request_state`) REFERENCES `fs_request_state` (`id_fs_request_state`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_fs_request_user_profile_by` FOREIGN KEY (`id_user_profile_by`) REFERENCES `user_profile` (`id_user_profile`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_fs_request_user_profile_changed_by` FOREIGN KEY (`id_user_profile_changed_by`) REFERENCES `user_profile` (`id_user_profile`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_fs_request_user_profile_to` FOREIGN KEY (`id_user_profile_to`) REFERENCES `user_profile` (`id_user_profile`) ON DELETE NO ACTION;

--
-- Constraints for table `fs_request_state_language`
--
ALTER TABLE `fs_request_state_language`
  ADD CONSTRAINT `fs_request_state_language_language` FOREIGN KEY (`id_language`) REFERENCES `language` (`id_language`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fs_request_state_language_request_state` FOREIGN KEY (`id_fs_request_state`) REFERENCES `fs_request_state` (`id_fs_request_state`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `list_privacy_language`
--
ALTER TABLE `list_privacy_language`
  ADD CONSTRAINT `fk_list_privacy_language_language` FOREIGN KEY (`id_language`) REFERENCES `language` (`id_language`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_list_privacy_language_list_privacy` FOREIGN KEY (`id_list_privacy`) REFERENCES `list_privacy` (`id_list_privacy`) ON DELETE NO ACTION;

--
-- Constraints for table `list_row`
--
ALTER TABLE `list_row`
  ADD CONSTRAINT `fk_list_row_list` FOREIGN KEY (`id_list`) REFERENCES `wlist` (`id_list`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_list_row_list_privacy` FOREIGN KEY (`id_list_privacy`) REFERENCES `list_privacy` (`id_list_privacy`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_list_row_user` FOREIGN KEY (`id_user_profile_creator`) REFERENCES `user_profile` (`id_user_profile`) ON DELETE NO ACTION;

--
-- Constraints for table `state_booking_language`
--
ALTER TABLE `state_booking_language`
  ADD CONSTRAINT `fk_state_booking_language_language` FOREIGN KEY (`id_language`) REFERENCES `language` (`id_language`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_state_booking_language_state_booking` FOREIGN KEY (`id_state_booking`) REFERENCES `state_booking` (`id_state_booking`) ON DELETE NO ACTION;

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `fk_user_profile_city` FOREIGN KEY (`id_city`) REFERENCES `city` (`id_city`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_user_profile_language` FOREIGN KEY (`id_language`) REFERENCES `language` (`id_language`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_user_profile_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `wlist`
--
ALTER TABLE `wlist`
  ADD CONSTRAINT `fk_list_list_privacy` FOREIGN KEY (`id_list_privacy`) REFERENCES `list_privacy` (`id_list_privacy`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_list_user` FOREIGN KEY (`id_user_profile_creator`) REFERENCES `user_profile` (`id_user_profile`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
