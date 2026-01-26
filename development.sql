-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 26, 2026 at 10:17 AM
-- Server version: 10.4.34-MariaDB-1:10.4.34+maria~ubu2004
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `my-shop-vendure`
--
CREATE DATABASE IF NOT EXISTS `my-shop-vendure` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `my-shop-vendure`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `fullName` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `streetLine1` varchar(255) NOT NULL,
  `streetLine2` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(255) NOT NULL DEFAULT '',
  `postalCode` varchar(255) NOT NULL DEFAULT '',
  `phoneNumber` varchar(255) NOT NULL DEFAULT '',
  `defaultShippingAddress` tinyint(4) NOT NULL DEFAULT 0,
  `defaultBillingAddress` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`createdAt`, `updatedAt`, `deletedAt`, `firstName`, `lastName`, `emailAddress`, `id`, `userId`) VALUES
('2026-01-16 18:12:17.152833', '2026-01-16 18:12:17.152833', NULL, 'Super', 'Admin', 'superadmin', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `mimeType` varchar(255) NOT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `fileSize` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `focalPoint` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`createdAt`, `updatedAt`, `name`, `type`, `mimeType`, `width`, `height`, `fileSize`, `source`, `preview`, `focalPoint`, `id`) VALUES
('2026-01-16 18:12:36.687324', '2026-01-16 18:12:36.687324', 'derick-david-409858-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 44525, 'source/b6/derick-david-409858-unsplash.jpg', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, 1),
('2026-01-16 18:12:42.207457', '2026-01-16 18:12:42.207457', 'kelly-sikkema-685291-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 47714, 'source/5a/kelly-sikkema-685291-unsplash.jpg', 'preview/b8/kelly-sikkema-685291-unsplash__preview.jpg', NULL, 2),
('2026-01-16 18:12:43.230624', '2026-01-16 18:12:43.230624', 'oscar-ivan-esquivel-arteaga-687447-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1071, 76870, 'source/0b/oscar-ivan-esquivel-arteaga-687447-unsplash.jpg', 'preview/a1/oscar-ivan-esquivel-arteaga-687447-unsplash__preview.jpg', NULL, 3),
('2026-01-16 18:12:43.700907', '2026-01-16 18:12:43.700907', 'daniel-korpai-1302051-unsplash.jpg', 'IMAGE', 'image/jpeg', 1280, 1600, 201064, 'source/28/daniel-korpai-1302051-unsplash.jpg', 'preview/d2/daniel-korpai-1302051-unsplash__preview.jpg', NULL, 4),
('2026-01-16 18:12:44.276697', '2026-01-16 18:12:44.276697', 'alexandru-acea-686569-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 71196, 'source/e8/alexandru-acea-686569-unsplash.jpg', 'preview/9c/alexandru-acea-686569-unsplash__preview.jpg', NULL, 5),
('2026-01-16 18:12:45.083688', '2026-01-16 18:12:45.083688', 'liam-briese-1128307-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 120523, 'source/2e/liam-briese-1128307-unsplash.jpg', 'preview/58/liam-briese-1128307-unsplash__preview.jpg', NULL, 6),
('2026-01-16 18:12:46.433309', '2026-01-16 18:12:46.433309', 'florian-olivo-1166419-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 73904, 'source/63/florian-olivo-1166419-unsplash.jpg', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, 7),
('2026-01-16 18:12:47.977220', '2026-01-16 18:12:47.977220', 'vincent-botta-736919-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 87075, 'source/59/vincent-botta-736919-unsplash.jpg', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, 8),
('2026-01-16 18:12:49.923038', '2026-01-16 18:12:49.923038', 'juan-gomez-674574-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1060, 60470, 'source/b8/juan-gomez-674574-unsplash.jpg', 'preview/09/juan-gomez-674574-unsplash__preview.jpg', NULL, 9),
('2026-01-16 18:12:50.373890', '2026-01-16 18:12:50.373890', 'thomas-q-1229169-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 94113, 'source/86/thomas-q-1229169-unsplash.jpg', 'preview/7b/thomas-q-1229169-unsplash__preview.jpg', NULL, 10),
('2026-01-16 18:12:50.728955', '2026-01-16 18:12:50.728955', 'adam-birkett-239153-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 17676, 'source/3c/adam-birkett-239153-unsplash.jpg', 'preview/64/adam-birkett-239153-unsplash__preview.jpg', NULL, 11),
('2026-01-16 18:12:51.159147', '2026-01-16 18:12:51.159147', 'eniko-kis-663725-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 42943, 'source/1d/eniko-kis-663725-unsplash.jpg', 'preview/b5/eniko-kis-663725-unsplash__preview.jpg', NULL, 12),
('2026-01-16 18:12:51.752472', '2026-01-16 18:12:51.752472', 'brandi-redd-104140-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1110, 91458, 'source/21/brandi-redd-104140-unsplash.jpg', 'preview/9b/brandi-redd-104140-unsplash__preview.jpg', NULL, 13),
('2026-01-16 18:12:52.201121', '2026-01-16 18:12:52.201121', 'jonathan-talbert-697262-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 103011, 'source/69/jonathan-talbert-697262-unsplash.jpg', 'preview/3c/jonathan-talbert-697262-unsplash__preview.jpg', NULL, 14),
('2026-01-16 18:12:52.674868', '2026-01-16 18:12:52.674868', 'zoltan-tasi-423051-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 49099, 'source/92/zoltan-tasi-423051-unsplash.jpg', 'preview/21/zoltan-tasi-423051-unsplash__preview.jpg', NULL, 15),
('2026-01-16 18:12:53.124993', '2026-01-16 18:12:53.124993', 'jakob-owens-274337-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 213089, 'source/cf/jakob-owens-274337-unsplash.jpg', 'preview/5b/jakob-owens-274337-unsplash__preview.jpg', NULL, 16),
('2026-01-16 18:12:53.571010', '2026-01-16 18:12:53.571010', 'patrick-brinksma-663044-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 190811, 'source/0f/patrick-brinksma-663044-unsplash.jpg', 'preview/bc/patrick-brinksma-663044-unsplash__preview.jpg', NULL, 17),
('2026-01-16 18:12:54.020848', '2026-01-16 18:12:54.020848', 'chuttersnap-324234-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1068, 118442, 'source/df/chuttersnap-324234-unsplash.jpg', 'preview/95/chuttersnap-324234-unsplash__preview.jpg', NULL, 18),
('2026-01-16 18:12:54.489880', '2026-01-16 18:12:54.489880', 'robert-shunev-528016-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 36204, 'source/9e/robert-shunev-528016-unsplash.jpg', 'preview/9d/robert-shunev-528016-unsplash__preview.jpg', NULL, 19),
('2026-01-16 18:12:54.874669', '2026-01-16 18:12:54.874669', 'alexander-andrews-260988-unsplash.jpg', 'IMAGE', 'image/jpeg', 1050, 1600, 65460, 'source/f8/alexander-andrews-260988-unsplash.jpg', 'preview/ef/alexander-andrews-260988-unsplash__preview.jpg', NULL, 20),
('2026-01-16 18:12:55.365035', '2026-01-16 18:12:55.365035', 'mikkel-bech-748940-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1130, 62785, 'source/29/mikkel-bech-748940-unsplash.jpg', 'preview/2f/mikkel-bech-748940-unsplash__preview.jpg', NULL, 21),
('2026-01-16 18:12:56.001049', '2026-01-16 18:12:56.001049', 'stoica-ionela-530966-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 50995, 'source/b1/stoica-ionela-530966-unsplash.jpg', 'preview/34/stoica-ionela-530966-unsplash__preview.jpg', NULL, 22),
('2026-01-16 18:12:56.644950', '2026-01-16 18:12:56.644950', 'neonbrand-428982-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1332, 169677, 'source/3c/neonbrand-428982-unsplash.jpg', 'preview/4f/neonbrand-428982-unsplash__preview.jpg', NULL, 23),
('2026-01-16 18:12:57.134479', '2026-01-16 18:12:57.134479', 'michael-guite-571169-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 240247, 'source/ab/michael-guite-571169-unsplash.jpg', 'preview/96/michael-guite-571169-unsplash__preview.jpg', NULL, 24),
('2026-01-16 18:12:58.186877', '2026-01-16 18:12:58.186877', 'max-tarkhov-737999-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1280, 192508, 'source/ed/max-tarkhov-737999-unsplash.jpg', 'preview/35/max-tarkhov-737999-unsplash__preview.jpg', NULL, 25),
('2026-01-16 18:12:58.926954', '2026-01-16 18:12:58.926954', 'nik-shuliahin-619349-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1020, 130437, 'source/87/nik-shuliahin-619349-unsplash.jpg', 'preview/d6/nik-shuliahin-619349-unsplash__preview.jpg', NULL, 26),
('2026-01-16 18:13:00.092766', '2026-01-16 18:13:00.092766', 'ben-hershey-574483-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1070, 77118, 'source/f3/ben-hershey-574483-unsplash.jpg', 'preview/30/ben-hershey-574483-unsplash__preview.jpg', NULL, 27),
('2026-01-16 18:13:00.650817', '2026-01-16 18:13:00.650817', 'tommy-bebo-600358-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 262335, 'source/ac/tommy-bebo-600358-unsplash.jpg', 'preview/0f/tommy-bebo-600358-unsplash__preview.jpg', NULL, 28),
('2026-01-16 18:13:00.972742', '2026-01-16 18:13:00.972742', 'chuttersnap-584518-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1068, 76330, 'source/20/chuttersnap-584518-unsplash.jpg', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, 29),
('2026-01-16 18:13:02.819541', '2026-01-16 18:13:02.819541', 'imani-clovis-234736-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 99111, 'source/de/imani-clovis-234736-unsplash.jpg', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, 30),
('2026-01-16 18:13:05.050267', '2026-01-16 18:13:05.050267', 'xavier-teo-469050-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 167599, 'source/5c/xavier-teo-469050-unsplash.jpg', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, 31),
('2026-01-16 18:13:14.586312', '2026-01-16 18:13:14.586312', 'thomas-serer-420833-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1223, 78999, 'source/55/thomas-serer-420833-unsplash.jpg', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, 32),
('2026-01-16 18:13:17.547913', '2026-01-16 18:13:17.547913', 'nikolai-chernichenko-1299748-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 56282, 'source/01/nikolai-chernichenko-1299748-unsplash.jpg', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, 33),
('2026-01-16 18:13:18.905620', '2026-01-16 18:13:18.905620', 'mitch-lensink-256007-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 154988, 'source/2b/mitch-lensink-256007-unsplash.jpg', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, 34),
('2026-01-16 18:13:22.173119', '2026-01-16 18:13:22.173119', 'charles-deluvio-695736-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 54419, 'source/92/charles-deluvio-695736-unsplash.jpg', 'preview/78/charles-deluvio-695736-unsplash__preview.jpg', NULL, 35),
('2026-01-16 18:13:22.729160', '2026-01-16 18:13:22.729160', 'natalia-y-345738-unsplash.jpg', 'IMAGE', 'image/jpeg', 900, 1600, 97819, 'source/17/natalia-y-345738-unsplash.jpg', 'preview/14/natalia-y-345738-unsplash__preview.jpg', NULL, 36),
('2026-01-16 18:13:23.085205', '2026-01-16 18:13:23.085205', 'alex-rodriguez-santibanez-200278-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 176280, 'source/ff/alex-rodriguez-santibanez-200278-unsplash.jpg', 'preview/5b/alex-rodriguez-santibanez-200278-unsplash__preview.jpg', NULL, 37),
('2026-01-16 18:13:23.300372', '2026-01-16 18:13:23.300372', 'silvia-agrasar-227575-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1063, 119654, 'source/d5/silvia-agrasar-227575-unsplash.jpg', 'preview/29/silvia-agrasar-227575-unsplash__preview.jpg', NULL, 38),
('2026-01-16 18:13:23.561581', '2026-01-16 18:13:23.561581', 'caleb-george-536388-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 184968, 'source/f0/caleb-george-536388-unsplash.jpg', 'preview/6d/caleb-george-536388-unsplash__preview.jpg', NULL, 39),
('2026-01-16 18:13:23.757430', '2026-01-16 18:13:23.757430', 'annie-spratt-78044-unsplash.jpg', 'IMAGE', 'image/jpeg', 1115, 1600, 173536, 'source/f1/annie-spratt-78044-unsplash.jpg', 'preview/81/annie-spratt-78044-unsplash__preview.jpg', NULL, 40),
('2026-01-16 18:13:23.979771', '2026-01-16 18:13:23.979771', 'zoltan-kovacs-642412-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 72752, 'source/e3/zoltan-kovacs-642412-unsplash.jpg', 'preview/88/zoltan-kovacs-642412-unsplash__preview.jpg', NULL, 41),
('2026-01-16 18:13:24.186414', '2026-01-16 18:13:24.186414', 'mark-tegethoff-667351-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 79857, 'source/e6/mark-tegethoff-667351-unsplash.jpg', 'preview/f3/mark-tegethoff-667351-unsplash__preview.jpg', NULL, 42),
('2026-01-16 18:13:24.407506', '2026-01-16 18:13:24.407506', 'vincent-liu-525429-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 77358, 'source/10/vincent-liu-525429-unsplash.jpg', 'preview/44/vincent-liu-525429-unsplash__preview.jpg', NULL, 43),
('2026-01-16 18:13:24.774717', '2026-01-16 18:13:24.774717', 'neslihan-gunaydin-3493-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 152486, 'source/01/neslihan-gunaydin-3493-unsplash.jpg', 'preview/7d/neslihan-gunaydin-3493-unsplash__preview.jpg', NULL, 44),
('2026-01-16 18:13:24.959797', '2026-01-16 18:13:24.959797', 'florian-klauer-14840-unsplash.jpg', 'IMAGE', 'image/jpeg', 800, 1200, 17149, 'source/a9/florian-klauer-14840-unsplash.jpg', 'preview/ef/florian-klauer-14840-unsplash__preview.jpg', NULL, 45),
('2026-01-16 18:13:25.241565', '2026-01-16 18:13:25.241565', 'nathan-fertig-249917-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 113855, 'source/68/nathan-fertig-249917-unsplash.jpg', 'preview/69/nathan-fertig-249917-unsplash__preview.jpg', NULL, 46),
('2026-01-16 18:13:25.561469', '2026-01-16 18:13:25.561469', 'paul-weaver-1120584-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 65612, 'source/14/paul-weaver-1120584-unsplash.jpg', 'preview/3e/paul-weaver-1120584-unsplash__preview.jpg', NULL, 47),
('2026-01-16 18:13:25.947426', '2026-01-16 18:13:25.947426', 'pierre-chatel-innocenti-483198-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 32036, 'source/39/pierre-chatel-innocenti-483198-unsplash.jpg', 'preview/5f/pierre-chatel-innocenti-483198-unsplash__preview.jpg', NULL, 48),
('2026-01-16 18:13:26.219121', '2026-01-16 18:13:26.219121', 'abel-y-costa-716024-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 103392, 'source/46/abel-y-costa-716024-unsplash.jpg', 'preview/40/abel-y-costa-716024-unsplash__preview.jpg', NULL, 49),
('2026-01-16 18:13:26.530232', '2026-01-16 18:13:26.530232', 'kari-shea-398668-unsplash.jpg', 'IMAGE', 'image/jpeg', 1048, 1500, 181352, 'source/4f/kari-shea-398668-unsplash.jpg', 'preview/3b/kari-shea-398668-unsplash__preview.jpg', NULL, 50),
('2026-01-16 18:13:26.878439', '2026-01-16 18:13:26.878439', 'andres-jasso-220776-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1104, 100927, 'source/f1/andres-jasso-220776-unsplash.jpg', 'preview/09/andres-jasso-220776-unsplash__preview.jpg', NULL, 51),
('2026-01-16 18:13:27.166823', '2026-01-16 18:13:27.166823', 'ruslan-bardash-351288-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 47113, 'source/95/ruslan-bardash-351288-unsplash.jpg', 'preview/d0/ruslan-bardash-351288-unsplash__preview.jpg', NULL, 52),
('2026-01-16 18:13:27.578432', '2026-01-16 18:13:27.578432', 'benjamin-voros-310026-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 218391, 'source/7a/benjamin-voros-310026-unsplash.jpg', 'preview/72/benjamin-voros-310026-unsplash__preview.jpg', NULL, 53),
('2026-01-16 18:13:27.971252', '2026-01-16 18:13:27.971252', 'jean-philippe-delberghe-1400011-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 64529, 'source/94/jean-philippe-delberghe-1400011-unsplash.jpg', 'preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, 54);

-- --------------------------------------------------------

--
-- Table structure for table `asset_channels_channel`
--

CREATE TABLE `asset_channels_channel` (
  `assetId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_channels_channel`
--

INSERT INTO `asset_channels_channel` (`assetId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Table structure for table `asset_tags_tag`
--

CREATE TABLE `asset_tags_tag` (
  `assetId` int(11) NOT NULL,
  `tagId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authentication_method`
--

CREATE TABLE `authentication_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `identifier` varchar(255) DEFAULT NULL,
  `passwordHash` varchar(255) DEFAULT NULL,
  `verificationToken` varchar(255) DEFAULT NULL,
  `passwordResetToken` varchar(255) DEFAULT NULL,
  `identifierChangeToken` varchar(255) DEFAULT NULL,
  `pendingIdentifier` varchar(255) DEFAULT NULL,
  `strategy` varchar(255) DEFAULT NULL,
  `externalIdentifier` varchar(255) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authentication_method`
--

INSERT INTO `authentication_method` (`createdAt`, `updatedAt`, `identifier`, `passwordHash`, `verificationToken`, `passwordResetToken`, `identifierChangeToken`, `pendingIdentifier`, `strategy`, `externalIdentifier`, `metadata`, `id`, `type`, `userId`) VALUES
('2026-01-16 18:12:17.099149', '2026-01-16 18:12:17.000000', 'superadmin', '$2b$12$i/ETIogxcBQlwmcOWfldp.uwLptFQictmiibUmaA8qLjQIpbVK/9u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NativeAuthenticationMethod', 1),
('2026-01-16 18:30:24.715286', '2026-01-16 18:31:27.205358', 'chungchi300@hotmail.com', '$2b$12$uM9PDaJXUCbiaKuh41ycWudnxypxWTtJ5aNtnKxPqRB8P0oI1pQuq', 'MjAyNi0wMS0xNlQxMDozMDoyNC43NTla_2LJWEWL6K2SF29TR', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NativeAuthenticationMethod', 2);

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `defaultLanguageCode` varchar(255) NOT NULL,
  `availableLanguageCodes` text DEFAULT NULL,
  `defaultCurrencyCode` varchar(255) NOT NULL,
  `availableCurrencyCodes` text DEFAULT NULL,
  `trackInventory` tinyint(4) NOT NULL DEFAULT 1,
  `outOfStockThreshold` int(11) NOT NULL DEFAULT 0,
  `pricesIncludeTax` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `sellerId` int(11) DEFAULT NULL,
  `defaultTaxZoneId` int(11) DEFAULT NULL,
  `defaultShippingZoneId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`createdAt`, `updatedAt`, `code`, `token`, `description`, `defaultLanguageCode`, `availableLanguageCodes`, `defaultCurrencyCode`, `availableCurrencyCodes`, `trackInventory`, `outOfStockThreshold`, `pricesIncludeTax`, `id`, `sellerId`, `defaultTaxZoneId`, `defaultShippingZoneId`) VALUES
('2026-01-16 18:12:16.017366', '2026-01-16 18:12:36.000000', '__default_channel__', 'x1w99uwyu9lg02gln9m', '', 'en', 'en', 'USD', 'USD', 1, 0, 0, 1, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `isRoot` tinyint(4) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL,
  `isPrivate` tinyint(4) NOT NULL DEFAULT 0,
  `filters` text NOT NULL,
  `inheritFilters` tinyint(4) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `featuredAssetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`createdAt`, `updatedAt`, `isRoot`, `position`, `isPrivate`, `filters`, `inheritFilters`, `id`, `parentId`, `featuredAssetId`) VALUES
('2026-01-16 18:13:31.872883', '2026-01-16 18:13:31.872883', 1, 0, 0, '[]', 1, 1, NULL, NULL),
('2026-01-16 18:13:31.969858', '2026-01-16 18:13:31.969858', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[1]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 2, 1, 16),
('2026-01-16 18:13:32.268301', '2026-01-16 18:13:32.268301', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[2]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 3, 2, 5),
('2026-01-16 18:13:32.573272', '2026-01-16 18:13:32.573272', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[9]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 4, 2, 12),
('2026-01-16 18:13:32.742804', '2026-01-16 18:13:32.742804', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[30]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 5, 1, 47),
('2026-01-16 18:13:32.933541', '2026-01-16 18:13:32.933541', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[34]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 6, 5, 46),
('2026-01-16 18:13:33.130085', '2026-01-16 18:13:33.130085', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[31]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 7, 5, 37),
('2026-01-16 18:13:33.371102', '2026-01-16 18:13:33.371102', 0, 3, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[17]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 8, 1, 24),
('2026-01-16 18:13:33.662449', '2026-01-16 18:13:33.662449', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[18]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 9, 8, 23),
('2026-01-16 18:13:33.873953', '2026-01-16 18:13:33.873953', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[23]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 1, 10, 8, 32);

-- --------------------------------------------------------

--
-- Table structure for table `collection_asset`
--

CREATE TABLE `collection_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `collectionId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collection_asset`
--

INSERT INTO `collection_asset` (`createdAt`, `updatedAt`, `assetId`, `position`, `collectionId`, `id`) VALUES
('2026-01-16 18:13:32.127846', '2026-01-16 18:13:32.127846', 16, 0, 2, 1),
('2026-01-16 18:13:32.364183', '2026-01-16 18:13:32.364183', 5, 0, 3, 2),
('2026-01-16 18:13:32.624801', '2026-01-16 18:13:32.624801', 12, 0, 4, 3),
('2026-01-16 18:13:32.803643', '2026-01-16 18:13:32.803643', 47, 0, 5, 4),
('2026-01-16 18:13:32.991777', '2026-01-16 18:13:32.991777', 46, 0, 6, 5),
('2026-01-16 18:13:33.188423', '2026-01-16 18:13:33.188423', 37, 0, 7, 6),
('2026-01-16 18:13:33.468109', '2026-01-16 18:13:33.468109', 24, 0, 8, 7),
('2026-01-16 18:13:33.747447', '2026-01-16 18:13:33.747447', 23, 0, 9, 8),
('2026-01-16 18:13:33.958408', '2026-01-16 18:13:33.958408', 32, 0, 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `collection_channels_channel`
--

CREATE TABLE `collection_channels_channel` (
  `collectionId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collection_channels_channel`
--

INSERT INTO `collection_channels_channel` (`collectionId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `collection_closure`
--

CREATE TABLE `collection_closure` (
  `id_ancestor` int(11) NOT NULL,
  `id_descendant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collection_closure`
--

INSERT INTO `collection_closure` (`id_ancestor`, `id_descendant`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 2),
(2, 3),
(2, 4),
(3, 3),
(4, 4),
(5, 5),
(5, 6),
(5, 7),
(6, 6),
(7, 7),
(8, 8),
(8, 9),
(8, 10),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `collection_product_variants_product_variant`
--

CREATE TABLE `collection_product_variants_product_variant` (
  `collectionId` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collection_product_variants_product_variant`
--

INSERT INTO `collection_product_variants_product_variant` (`collectionId`, `productVariantId`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(5, 67),
(5, 68),
(5, 69),
(5, 70),
(5, 71),
(5, 72),
(5, 73),
(5, 74),
(5, 75),
(5, 76),
(5, 77),
(5, 78),
(5, 79),
(5, 80),
(5, 81),
(5, 82),
(5, 83),
(5, 84),
(5, 85),
(5, 86),
(5, 87),
(5, 88),
(6, 75),
(6, 77),
(6, 78),
(6, 79),
(6, 80),
(6, 81),
(6, 82),
(6, 83),
(6, 84),
(6, 85),
(6, 86),
(6, 87),
(6, 88),
(7, 67),
(7, 68),
(7, 69),
(7, 70),
(7, 71),
(7, 72),
(7, 73),
(7, 74),
(7, 76),
(8, 35),
(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(8, 41),
(8, 42),
(8, 43),
(8, 44),
(8, 45),
(8, 46),
(8, 47),
(8, 48),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54),
(8, 55),
(8, 56),
(8, 57),
(8, 58),
(8, 59),
(8, 60),
(8, 61),
(8, 62),
(8, 63),
(8, 64),
(8, 65),
(8, 66),
(9, 35),
(9, 36),
(9, 37),
(9, 38),
(9, 39),
(9, 40),
(9, 41),
(9, 42),
(10, 43),
(10, 44),
(10, 45),
(10, 46),
(10, 47),
(10, 48),
(10, 49),
(10, 50),
(10, 51),
(10, 52),
(10, 53),
(10, 54),
(10, 55),
(10, 56),
(10, 57),
(10, 58),
(10, 59),
(10, 60),
(10, 61),
(10, 62),
(10, 63),
(10, 64),
(10, 65),
(10, 66);

-- --------------------------------------------------------

--
-- Table structure for table `collection_translation`
--

CREATE TABLE `collection_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collection_translation`
--

INSERT INTO `collection_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `slug`, `description`, `id`, `baseId`) VALUES
('2026-01-16 18:13:31.791922', '2026-01-16 18:13:32.000000', 'en', 'Electronics', 'electronics', '', 1, 2),
('2026-01-16 18:13:31.827013', '2026-01-16 18:13:31.000000', 'en', '__root_collection__', '__root_collection__', 'The root of the Collection tree.', 2, 1),
('2026-01-16 18:13:32.201094', '2026-01-16 18:13:32.000000', 'en', 'Computers', 'computers', '', 3, 3),
('2026-01-16 18:13:32.493772', '2026-01-16 18:13:32.000000', 'en', 'Camera & Photo', 'camera-photo', '', 4, 4),
('2026-01-16 18:13:32.707788', '2026-01-16 18:13:32.000000', 'en', 'Home & Garden', 'home-garden', '', 5, 5),
('2026-01-16 18:13:32.882558', '2026-01-16 18:13:32.000000', 'en', 'Furniture', 'furniture', '', 6, 6),
('2026-01-16 18:13:33.059613', '2026-01-16 18:13:33.000000', 'en', 'Plants', 'plants', '', 7, 7),
('2026-01-16 18:13:33.276666', '2026-01-16 18:13:33.000000', 'en', 'Sports & Outdoor', 'sports-outdoor', '', 8, 8),
('2026-01-16 18:13:33.575444', '2026-01-16 18:13:33.000000', 'en', 'Equipment', 'equipment', '', 9, 9),
('2026-01-16 18:13:33.821007', '2026-01-16 18:13:33.000000', 'en', 'Footwear', 'footwear', '', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`createdAt`, `updatedAt`, `deletedAt`, `title`, `firstName`, `lastName`, `phoneNumber`, `emailAddress`, `id`, `userId`) VALUES
('2026-01-16 18:30:24.250701', '2026-01-16 18:30:24.000000', NULL, '', 'Jeff', 'chung', '', 'chungchi300@hotmail.com', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer_channels_channel`
--

CREATE TABLE `customer_channels_channel` (
  `customerId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_channels_channel`
--

INSERT INTO `customer_channels_channel` (`customerId`, `channelId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE `customer_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`createdAt`, `updatedAt`, `name`, `id`) VALUES
('2026-01-16 18:34:13.971517', '2026-01-16 18:34:13.971517', '店长', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups_customer_group`
--

CREATE TABLE `customer_groups_customer_group` (
  `customerId` int(11) NOT NULL,
  `customerGroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups_customer_group`
--

INSERT INTO `customer_groups_customer_group` (`customerId`, `customerGroupId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `facet`
--

CREATE TABLE `facet` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `isPrivate` tinyint(4) NOT NULL DEFAULT 0,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facet`
--

INSERT INTO `facet` (`createdAt`, `updatedAt`, `isPrivate`, `code`, `id`) VALUES
('2026-01-16 18:12:36.803598', '2026-01-16 18:12:36.803598', 0, 'category', 1),
('2026-01-16 18:12:37.035370', '2026-01-16 18:12:37.035370', 0, 'brand', 2),
('2026-01-16 18:13:01.218944', '2026-01-16 18:13:01.218944', 0, 'color', 3),
('2026-01-16 18:13:22.358543', '2026-01-16 18:13:22.358543', 0, 'plant-type', 4);

-- --------------------------------------------------------

--
-- Table structure for table `facet_channels_channel`
--

CREATE TABLE `facet_channels_channel` (
  `facetId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facet_channels_channel`
--

INSERT INTO `facet_channels_channel` (`facetId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `facet_translation`
--

CREATE TABLE `facet_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facet_translation`
--

INSERT INTO `facet_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2026-01-16 18:12:36.780730', '2026-01-16 18:12:36.000000', 'en', 'category', 1, 1),
('2026-01-16 18:12:37.011462', '2026-01-16 18:12:37.000000', 'en', 'brand', 2, 2),
('2026-01-16 18:13:01.176574', '2026-01-16 18:13:01.000000', 'en', 'color', 3, 3),
('2026-01-16 18:13:22.333728', '2026-01-16 18:13:22.000000', 'en', 'plant type', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `facet_value`
--

CREATE TABLE `facet_value` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `facetId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facet_value`
--

INSERT INTO `facet_value` (`createdAt`, `updatedAt`, `code`, `id`, `facetId`) VALUES
('2026-01-16 18:12:36.879664', '2026-01-16 18:12:36.879664', 'electronics', 1, 1),
('2026-01-16 18:12:36.952441', '2026-01-16 18:12:36.952441', 'computers', 2, 1),
('2026-01-16 18:12:37.124089', '2026-01-16 18:12:37.124089', 'apple', 3, 2),
('2026-01-16 18:12:43.303312', '2026-01-16 18:12:43.303312', 'logitech', 4, 2),
('2026-01-16 18:12:43.782023', '2026-01-16 18:12:43.782023', 'samsung', 5, 2),
('2026-01-16 18:12:45.149551', '2026-01-16 18:12:45.149551', 'corsair', 6, 2),
('2026-01-16 18:12:46.565807', '2026-01-16 18:12:46.565807', 'admi', 7, 2),
('2026-01-16 18:12:48.051728', '2026-01-16 18:12:48.051728', 'seagate', 8, 2),
('2026-01-16 18:12:51.250890', '2026-01-16 18:12:51.250890', 'photo', 9, 1),
('2026-01-16 18:12:51.357969', '2026-01-16 18:12:51.357969', 'polaroid', 10, 2),
('2026-01-16 18:12:51.804892', '2026-01-16 18:12:51.804892', 'nikkon', 11, 2),
('2026-01-16 18:12:52.258203', '2026-01-16 18:12:52.258203', 'agfa', 12, 2),
('2026-01-16 18:12:52.735118', '2026-01-16 18:12:52.735118', 'manfrotto', 13, 2),
('2026-01-16 18:12:53.170663', '2026-01-16 18:12:53.170663', 'kodak', 14, 2),
('2026-01-16 18:12:53.644549', '2026-01-16 18:12:53.644549', 'sony', 15, 2),
('2026-01-16 18:12:54.980995', '2026-01-16 18:12:54.980995', 'rolleiflex', 16, 2),
('2026-01-16 18:12:55.445671', '2026-01-16 18:12:55.445671', 'sports-outdoor', 17, 1),
('2026-01-16 18:12:55.554197', '2026-01-16 18:12:55.554197', 'equipment', 18, 1),
('2026-01-16 18:12:55.623603', '2026-01-16 18:12:55.623603', 'pinarello', 19, 2),
('2026-01-16 18:12:56.083913', '2026-01-16 18:12:56.083913', 'everlast', 20, 2),
('2026-01-16 18:12:59.017618', '2026-01-16 18:12:59.017618', 'nike', 21, 2),
('2026-01-16 18:13:00.165189', '2026-01-16 18:13:00.165189', 'wilson', 22, 2),
('2026-01-16 18:13:01.035822', '2026-01-16 18:13:01.035822', 'footwear', 23, 1),
('2026-01-16 18:13:01.119127', '2026-01-16 18:13:01.119127', 'adidas', 24, 2),
('2026-01-16 18:13:01.322402', '2026-01-16 18:13:01.322402', 'blue', 25, 3),
('2026-01-16 18:13:01.401462', '2026-01-16 18:13:01.401462', 'pink', 26, 3),
('2026-01-16 18:13:02.879265', '2026-01-16 18:13:02.879265', 'black', 27, 3),
('2026-01-16 18:13:05.167740', '2026-01-16 18:13:05.167740', 'white', 28, 3),
('2026-01-16 18:13:19.051258', '2026-01-16 18:13:19.051258', 'converse', 29, 2),
('2026-01-16 18:13:22.227263', '2026-01-16 18:13:22.227263', 'home-garden', 30, 1),
('2026-01-16 18:13:22.291628', '2026-01-16 18:13:22.291628', 'plants', 31, 1),
('2026-01-16 18:13:22.447710', '2026-01-16 18:13:22.447710', 'indoor', 32, 4),
('2026-01-16 18:13:22.787789', '2026-01-16 18:13:22.787789', 'outdoor', 33, 4),
('2026-01-16 18:13:24.447932', '2026-01-16 18:13:24.447932', 'furniture', 34, 1),
('2026-01-16 18:13:24.523282', '2026-01-16 18:13:24.523282', 'gray', 35, 3),
('2026-01-16 18:13:25.656498', '2026-01-16 18:13:25.656498', 'brown', 36, 3),
('2026-01-16 18:13:26.248101', '2026-01-16 18:13:26.248101', 'wood', 37, 3),
('2026-01-16 18:13:28.346287', '2026-01-16 18:13:28.346287', 'yellow', 38, 3),
('2026-01-16 18:13:28.657798', '2026-01-16 18:13:28.657798', 'green', 39, 3);

-- --------------------------------------------------------

--
-- Table structure for table `facet_value_channels_channel`
--

CREATE TABLE `facet_value_channels_channel` (
  `facetValueId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facet_value_channels_channel`
--

INSERT INTO `facet_value_channels_channel` (`facetValueId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `facet_value_translation`
--

CREATE TABLE `facet_value_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facet_value_translation`
--

INSERT INTO `facet_value_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2026-01-16 18:12:36.856027', '2026-01-16 18:12:36.000000', 'en', 'Electronics', 1, 1),
('2026-01-16 18:12:36.926367', '2026-01-16 18:12:36.000000', 'en', 'Computers', 2, 2),
('2026-01-16 18:12:37.103253', '2026-01-16 18:12:37.000000', 'en', 'Apple', 3, 3),
('2026-01-16 18:12:43.260841', '2026-01-16 18:12:43.000000', 'en', 'Logitech', 4, 4),
('2026-01-16 18:12:43.743997', '2026-01-16 18:12:43.000000', 'en', 'Samsung', 5, 5),
('2026-01-16 18:12:45.122242', '2026-01-16 18:12:45.000000', 'en', 'Corsair', 6, 6),
('2026-01-16 18:12:46.471911', '2026-01-16 18:12:46.000000', 'en', 'ADMI', 7, 7),
('2026-01-16 18:12:48.023492', '2026-01-16 18:12:48.000000', 'en', 'Seagate', 8, 8),
('2026-01-16 18:12:51.212785', '2026-01-16 18:12:51.000000', 'en', 'Photo', 9, 9),
('2026-01-16 18:12:51.319044', '2026-01-16 18:12:51.000000', 'en', 'Polaroid', 10, 10),
('2026-01-16 18:12:51.781427', '2026-01-16 18:12:51.000000', 'en', 'Nikkon', 11, 11),
('2026-01-16 18:12:52.229409', '2026-01-16 18:12:52.000000', 'en', 'Agfa', 12, 12),
('2026-01-16 18:12:52.709532', '2026-01-16 18:12:52.000000', 'en', 'Manfrotto', 13, 13),
('2026-01-16 18:12:53.151379', '2026-01-16 18:12:53.000000', 'en', 'Kodak', 14, 14),
('2026-01-16 18:12:53.601773', '2026-01-16 18:12:53.000000', 'en', 'Sony', 15, 15),
('2026-01-16 18:12:54.922948', '2026-01-16 18:12:55.000000', 'en', 'Rolleiflex', 16, 16),
('2026-01-16 18:12:55.398321', '2026-01-16 18:12:55.000000', 'en', 'Sports & Outdoor', 17, 17),
('2026-01-16 18:12:55.527729', '2026-01-16 18:12:55.000000', 'en', 'Equipment', 18, 18),
('2026-01-16 18:12:55.596552', '2026-01-16 18:12:55.000000', 'en', 'Pinarello', 19, 19),
('2026-01-16 18:12:56.029724', '2026-01-16 18:12:56.000000', 'en', 'Everlast', 20, 20),
('2026-01-16 18:12:58.970494', '2026-01-16 18:12:59.000000', 'en', 'Nike', 21, 21),
('2026-01-16 18:13:00.124698', '2026-01-16 18:13:00.000000', 'en', 'Wilson', 22, 22),
('2026-01-16 18:13:01.013628', '2026-01-16 18:13:01.000000', 'en', 'Footwear', 23, 23),
('2026-01-16 18:13:01.093874', '2026-01-16 18:13:01.000000', 'en', 'Adidas', 24, 24),
('2026-01-16 18:13:01.296945', '2026-01-16 18:13:01.000000', 'en', 'blue', 25, 25),
('2026-01-16 18:13:01.373826', '2026-01-16 18:13:01.000000', 'en', 'pink', 26, 26),
('2026-01-16 18:13:02.848746', '2026-01-16 18:13:02.000000', 'en', 'black', 27, 27),
('2026-01-16 18:13:05.112819', '2026-01-16 18:13:05.000000', 'en', 'white', 28, 28),
('2026-01-16 18:13:19.027803', '2026-01-16 18:13:19.000000', 'en', 'Converse', 29, 29),
('2026-01-16 18:13:22.200201', '2026-01-16 18:13:22.000000', 'en', 'Home & Garden', 30, 30),
('2026-01-16 18:13:22.266613', '2026-01-16 18:13:22.000000', 'en', 'Plants', 31, 31),
('2026-01-16 18:13:22.425943', '2026-01-16 18:13:22.000000', 'en', 'Indoor', 32, 32),
('2026-01-16 18:13:22.759273', '2026-01-16 18:13:22.000000', 'en', 'Outdoor', 33, 33),
('2026-01-16 18:13:24.427112', '2026-01-16 18:13:24.000000', 'en', 'Furniture', 34, 34),
('2026-01-16 18:13:24.501744', '2026-01-16 18:13:24.000000', 'en', 'gray', 35, 35),
('2026-01-16 18:13:25.625818', '2026-01-16 18:13:25.000000', 'en', 'brown', 36, 36),
('2026-01-16 18:13:26.235044', '2026-01-16 18:13:26.000000', 'en', 'wood', 37, 37),
('2026-01-16 18:13:28.321807', '2026-01-16 18:13:28.000000', 'en', 'yellow', 38, 38),
('2026-01-16 18:13:28.629551', '2026-01-16 18:13:28.000000', 'en', 'green', 39, 39);

-- --------------------------------------------------------

--
-- Table structure for table `fulfillment`
--

CREATE TABLE `fulfillment` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `state` varchar(255) NOT NULL,
  `trackingCode` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(255) NOT NULL,
  `handlerCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `availableLanguages` text NOT NULL,
  `trackInventory` tinyint(4) NOT NULL DEFAULT 1,
  `outOfStockThreshold` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`createdAt`, `updatedAt`, `availableLanguages`, `trackInventory`, `outOfStockThreshold`, `id`) VALUES
('2026-01-16 18:12:15.911876', '2026-01-16 18:12:15.911876', 'en', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `history_entry`
--

CREATE TABLE `history_entry` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `type` varchar(255) NOT NULL,
  `isPublic` tinyint(4) NOT NULL,
  `data` text NOT NULL,
  `id` int(11) NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `administratorId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_entry`
--

INSERT INTO `history_entry` (`createdAt`, `updatedAt`, `type`, `isPublic`, `data`, `id`, `discriminator`, `administratorId`, `customerId`, `orderId`) VALUES
('2026-01-16 10:30:24.266000', '2026-01-16 18:30:24.269955', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 1, 'CustomerHistoryEntry', NULL, 1, NULL),
('2026-01-16 10:34:17.518000', '2026-01-16 18:34:17.520954', 'CUSTOMER_ADDED_TO_GROUP', 0, '{\"groupName\":\"店长\"}', 2, 'CustomerHistoryEntry', 1, 1, NULL),
('2026-01-16 18:35:32.427074', '2026-01-16 18:35:32.427074', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 3, 'OrderHistoryEntry', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_record`
--

CREATE TABLE `job_record` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `queueName` varchar(255) NOT NULL,
  `data` text DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `progress` int(11) NOT NULL,
  `result` text DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `startedAt` datetime(6) DEFAULT NULL,
  `settledAt` datetime(6) DEFAULT NULL,
  `isSettled` tinyint(4) NOT NULL,
  `retries` int(11) NOT NULL,
  `attempts` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_record`
--

INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2026-01-16 18:12:37.814813', '2026-01-16 18:12:42.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[1]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:38.119000', '2026-01-16 10:12:42.198000', 1, 0, 1, 1),
('2026-01-16 18:12:40.029039', '2026-01-16 18:12:42.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[2]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:42.286000', '2026-01-16 10:12:42.787000', 1, 0, 1, 2),
('2026-01-16 18:12:41.841696', '2026-01-16 18:12:43.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[3]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:42.933000', '2026-01-16 10:12:43.342000', 1, 0, 1, 3),
('2026-01-16 18:12:42.154500', '2026-01-16 18:12:43.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[4]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:43.390000', '2026-01-16 10:12:43.826000', 1, 0, 1, 4),
('2026-01-16 18:12:42.931956', '2026-01-16 18:12:44.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[5]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:44.043000', '2026-01-16 10:12:44.464000', 1, 0, 1, 5),
('2026-01-16 18:12:43.153461', '2026-01-16 18:12:45.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[6]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:44.672000', '2026-01-16 10:12:45.033000', 1, 0, 1, 6),
('2026-01-16 18:12:43.627686', '2026-01-16 18:12:45.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[7]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:45.124000', '2026-01-16 10:12:45.484000', 1, 0, 1, 7),
('2026-01-16 18:12:44.217922', '2026-01-16 18:12:45.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[8]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:45.572000', '2026-01-16 10:12:45.957000', 1, 0, 1, 8),
('2026-01-16 18:12:44.783807', '2026-01-16 18:12:46.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[9]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:46.062000', '2026-01-16 10:12:46.628000', 1, 0, 1, 9),
('2026-01-16 18:12:44.998025', '2026-01-16 18:12:47.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[10]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:46.752000', '2026-01-16 10:12:47.086000', 1, 0, 1, 10),
('2026-01-16 18:12:45.781550', '2026-01-16 18:12:47.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[11]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:47.191000', '2026-01-16 10:12:47.558000', 1, 0, 1, 11),
('2026-01-16 18:12:46.028025', '2026-01-16 18:12:48.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[12]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:47.655000', '2026-01-16 10:12:48.055000', 1, 0, 1, 12),
('2026-01-16 18:12:46.373442', '2026-01-16 18:12:48.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[13]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:48.194000', '2026-01-16 10:12:48.683000', 1, 0, 1, 13),
('2026-01-16 18:12:47.262606', '2026-01-16 18:12:49.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[14]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:48.872000', '2026-01-16 10:12:49.283000', 1, 0, 1, 14),
('2026-01-16 18:12:47.465634', '2026-01-16 18:12:49.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[15]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:49.319000', '2026-01-16 10:12:49.743000', 1, 0, 1, 15),
('2026-01-16 18:12:47.663130', '2026-01-16 18:12:50.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[16]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:49.776000', '2026-01-16 10:12:50.212000', 1, 0, 1, 16),
('2026-01-16 18:12:47.912519', '2026-01-16 18:12:50.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[17]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:50.435000', '2026-01-16 10:12:50.807000', 1, 0, 1, 17),
('2026-01-16 18:12:48.945625', '2026-01-16 18:12:51.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[18]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:50.886000', '2026-01-16 10:12:51.317000', 1, 0, 1, 18),
('2026-01-16 18:12:49.148210', '2026-01-16 18:12:51.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[19]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:51.536000', '2026-01-16 10:12:51.855000', 1, 0, 1, 19),
('2026-01-16 18:12:49.423676', '2026-01-16 18:12:52.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[20]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:51.993000', '2026-01-16 10:12:52.364000', 1, 0, 1, 20),
('2026-01-16 18:12:49.642695', '2026-01-16 18:12:52.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[21]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:52.449000', '2026-01-16 10:12:52.857000', 1, 0, 1, 21),
('2026-01-16 18:12:49.853038', '2026-01-16 18:12:53.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[22]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:52.907000', '2026-01-16 10:12:53.253000', 1, 0, 1, 22),
('2026-01-16 18:12:50.313189', '2026-01-16 18:12:53.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[23]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:53.363000', '2026-01-16 10:12:53.712000', 1, 0, 1, 23),
('2026-01-16 18:12:50.685725', '2026-01-16 18:12:54.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[24]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:53.823000', '2026-01-16 10:12:54.192000', 1, 0, 1, 24),
('2026-01-16 18:12:51.089210', '2026-01-16 18:12:54.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[25]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:54.273000', '2026-01-16 10:12:54.683000', 1, 0, 1, 25),
('2026-01-16 18:12:51.692237', '2026-01-16 18:12:55.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[26]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:54.738000', '2026-01-16 10:12:55.213000', 1, 0, 1, 26),
('2026-01-16 18:12:52.146810', '2026-01-16 18:12:55.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[27]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:55.391000', '2026-01-16 10:12:55.778000', 1, 0, 1, 27),
('2026-01-16 18:12:52.624313', '2026-01-16 18:12:56.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[28]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:55.859000', '2026-01-16 10:12:56.430000', 1, 0, 1, 28),
('2026-01-16 18:12:53.059909', '2026-01-16 18:12:56.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[29]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:56.523000', '2026-01-16 10:12:56.965000', 1, 0, 1, 29),
('2026-01-16 18:12:53.499679', '2026-01-16 18:12:58.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[30]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:57.215000', '2026-01-16 10:12:58.417000', 1, 0, 1, 30),
('2026-01-16 18:12:53.958737', '2026-01-16 18:12:59.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[31]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:58.514000', '2026-01-16 10:12:59.052000', 1, 0, 1, 31),
('2026-01-16 18:12:54.423795', '2026-01-16 18:13:00.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[32]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:12:59.457000', '2026-01-16 10:13:00.179000', 1, 0, 1, 32),
('2026-01-16 18:12:54.778839', '2026-01-16 18:13:00.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[33]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:00.399000', '2026-01-16 10:13:00.763000', 1, 0, 1, 33),
('2026-01-16 18:12:55.297253', '2026-01-16 18:13:01.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[34]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:00.865000', '2026-01-16 10:13:01.252000', 1, 0, 1, 34),
('2026-01-16 18:12:55.941574', '2026-01-16 18:13:01.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[35]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:01.316000', '2026-01-16 10:13:01.694000', 1, 0, 1, 35),
('2026-01-16 18:12:56.561687', '2026-01-16 18:13:02.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[36]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:01.757000', '2026-01-16 10:13:02.149000', 1, 0, 1, 36),
('2026-01-16 18:12:57.012155', '2026-01-16 18:13:02.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[37]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:02.214000', '2026-01-16 10:13:02.630000', 1, 0, 1, 37),
('2026-01-16 18:12:58.036221', '2026-01-16 18:13:03.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[38]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:02.677000', '2026-01-16 10:13:03.012000', 1, 0, 1, 38),
('2026-01-16 18:12:58.861470', '2026-01-16 18:13:03.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[39]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:03.131000', '2026-01-16 10:13:03.633000', 1, 0, 1, 39),
('2026-01-16 18:12:59.982263', '2026-01-16 18:13:04.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[40]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:03.827000', '2026-01-16 10:13:04.855000', 1, 0, 1, 40),
('2026-01-16 18:13:00.572152', '2026-01-16 18:13:05.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[41]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:04.923000', '2026-01-16 10:13:05.386000', 1, 0, 1, 41),
('2026-01-16 18:13:00.916228', '2026-01-16 18:13:10.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[42]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:05.575000', '2026-01-16 10:13:10.395000', 1, 0, 1, 42),
('2026-01-16 18:13:02.125651', '2026-01-16 18:13:12.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[43]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:10.789000', '2026-01-16 10:13:12.757000', 1, 0, 1, 43),
('2026-01-16 18:13:02.354737', '2026-01-16 18:13:15.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[44]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:12.788000', '2026-01-16 10:13:15.893000', 1, 0, 1, 44),
('2026-01-16 18:13:02.543877', '2026-01-16 18:13:16.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[45]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:15.980000', '2026-01-16 10:13:16.494000', 1, 0, 1, 45);
INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2026-01-16 18:13:02.741175', '2026-01-16 18:13:17.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[46]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:16.623000', '2026-01-16 10:13:17.113000', 1, 0, 1, 46),
('2026-01-16 18:13:03.673835', '2026-01-16 18:13:17.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[47]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:17.286000', '2026-01-16 10:13:17.778000', 1, 0, 1, 47),
('2026-01-16 18:13:03.862743', '2026-01-16 18:13:18.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[48]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:18.037000', '2026-01-16 10:13:18.489000', 1, 0, 1, 48),
('2026-01-16 18:13:04.598899', '2026-01-16 18:13:19.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[49]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:18.731000', '2026-01-16 10:13:19.061000', 1, 0, 1, 49),
('2026-01-16 18:13:04.977676', '2026-01-16 18:13:21.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[50]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:19.589000', '2026-01-16 10:13:21.055000', 1, 0, 1, 50),
('2026-01-16 18:13:08.741863', '2026-01-16 18:13:21.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[51]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:21.262000', '2026-01-16 10:13:21.821000', 1, 0, 1, 51),
('2026-01-16 18:13:10.939797', '2026-01-16 18:13:22.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[52]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:21.900000', '2026-01-16 10:13:22.208000', 1, 0, 1, 52),
('2026-01-16 18:13:11.879561', '2026-01-16 18:13:22.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[53]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:22.377000', '2026-01-16 10:13:22.650000', 1, 0, 1, 53),
('2026-01-16 18:13:13.265622', '2026-01-16 18:13:23.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[54]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:22.836000', '2026-01-16 10:13:23.082000', 1, 0, 1, 54),
('2026-01-16 18:13:16.473261', '2026-01-16 18:13:23.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[55]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:23.273000', '2026-01-16 10:13:23.503000', 1, 0, 1, 55),
('2026-01-16 18:13:16.772846', '2026-01-16 18:13:23.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[56]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:23.703000', '2026-01-16 10:13:23.936000', 1, 0, 1, 56),
('2026-01-16 18:13:17.034594', '2026-01-16 18:13:24.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[57]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:24.143000', '2026-01-16 10:13:24.363000', 1, 0, 1, 57),
('2026-01-16 18:13:17.361663', '2026-01-16 18:13:24.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[58]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:24.577000', '2026-01-16 10:13:24.808000', 1, 0, 1, 58),
('2026-01-16 18:13:18.290404', '2026-01-16 18:13:25.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[59]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:25.006000', '2026-01-16 10:13:25.308000', 1, 0, 1, 59),
('2026-01-16 18:13:18.522669', '2026-01-16 18:13:25.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[60]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:25.445000', '2026-01-16 10:13:25.790000', 1, 0, 1, 60),
('2026-01-16 18:13:18.651390', '2026-01-16 18:13:26.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[61]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:25.891000', '2026-01-16 10:13:26.170000', 1, 0, 1, 61),
('2026-01-16 18:13:18.847691', '2026-01-16 18:13:26.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[62]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:26.339000', '2026-01-16 10:13:26.591000', 1, 0, 1, 62),
('2026-01-16 18:13:21.323552', '2026-01-16 18:13:27.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[63]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:26.840000', '2026-01-16 10:13:27.152000', 1, 0, 1, 63),
('2026-01-16 18:13:21.594094', '2026-01-16 18:13:27.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[64]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:27.296000', '2026-01-16 10:13:27.732000', 1, 0, 1, 64),
('2026-01-16 18:13:21.914879', '2026-01-16 18:13:28.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[65]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:27.824000', '2026-01-16 10:13:28.135000', 1, 0, 1, 65),
('2026-01-16 18:13:22.113853', '2026-01-16 18:13:28.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[66]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:28.261000', '2026-01-16 10:13:28.653000', 1, 0, 1, 66),
('2026-01-16 18:13:22.688348', '2026-01-16 18:13:31.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[67]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:29.189000', '2026-01-16 10:13:31.414000', 1, 0, 1, 67),
('2026-01-16 18:13:23.034255', '2026-01-16 18:13:32.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[68]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:31.508000', '2026-01-16 10:13:32.140000', 1, 0, 1, 68),
('2026-01-16 18:13:23.255618', '2026-01-16 18:13:32.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[69]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:32.292000', '2026-01-16 10:13:32.719000', 1, 0, 1, 69),
('2026-01-16 18:13:23.491847', '2026-01-16 18:13:33.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[70]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:32.744000', '2026-01-16 10:13:33.071000', 1, 0, 1, 70),
('2026-01-16 18:13:23.700917', '2026-01-16 18:13:33.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[71]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:33.193000', '2026-01-16 10:13:33.730000', 1, 0, 1, 71),
('2026-01-16 18:13:23.939732', '2026-01-16 18:13:34.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[72]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:33.829000', '2026-01-16 10:13:34.521000', 1, 0, 1, 72),
('2026-01-16 18:13:24.146091', '2026-01-16 18:13:35.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[73]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:34.679000', '2026-01-16 10:13:34.996000', 1, 0, 1, 73),
('2026-01-16 18:13:24.361924', '2026-01-16 18:13:35.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[74]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:35.141000', '2026-01-16 10:13:35.484000', 1, 0, 1, 74),
('2026-01-16 18:13:24.725772', '2026-01-16 18:13:36.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[75]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:13:35.612000', '2026-01-16 10:13:36.433000', 1, 0, 1, 75),
('2026-01-16 18:13:24.921195', '2026-01-16 18:27:06.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[76]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:05.960000', '2026-01-16 10:27:06.665000', 1, 0, 1, 76),
('2026-01-16 18:13:25.189178', '2026-01-16 18:27:07.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[77]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:07.055000', '2026-01-16 10:27:07.760000', 1, 0, 1, 77),
('2026-01-16 18:13:25.504443', '2026-01-16 18:27:08.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[78]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:07.969000', '2026-01-16 10:27:08.357000', 1, 0, 1, 78),
('2026-01-16 18:13:25.894572', '2026-01-16 18:27:08.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[79]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:08.405000', '2026-01-16 10:27:08.777000', 1, 0, 1, 79),
('2026-01-16 18:13:26.171284', '2026-01-16 18:27:09.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[80]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:08.857000', '2026-01-16 10:27:09.231000', 1, 0, 1, 80),
('2026-01-16 18:13:26.463214', '2026-01-16 18:27:09.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[81]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:09.294000', '2026-01-16 10:27:09.623000', 1, 0, 1, 81),
('2026-01-16 18:13:26.782573', '2026-01-16 18:27:10.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[82]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:09.738000', '2026-01-16 10:27:10.022000', 1, 0, 1, 82),
('2026-01-16 18:13:27.124741', '2026-01-16 18:27:10.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[83]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:10.176000', '2026-01-16 10:27:10.585000', 1, 0, 1, 83),
('2026-01-16 18:13:27.521141', '2026-01-16 18:27:11.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[84]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:10.830000', '2026-01-16 10:27:11.291000', 1, 0, 1, 84),
('2026-01-16 18:13:27.923994', '2026-01-16 18:27:11.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[85]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:11.534000', '2026-01-16 10:27:11.954000', 1, 0, 1, 85),
('2026-01-16 18:13:28.616323', '2026-01-16 18:27:12.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[86]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:12.186000', '2026-01-16 10:27:12.603000', 1, 0, 1, 86),
('2026-01-16 18:13:31.041444', '2026-01-16 18:27:13.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[87]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:12.637000', '2026-01-16 10:27:12.978000', 1, 0, 1, 87),
('2026-01-16 18:13:31.715092', '2026-01-16 18:27:13.000000', 'update-search-index', '{\"type\":\"update-variants\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"variantIds\":[88]}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:27:13.105000', '2026-01-16 10:27:13.347000', 1, 0, 1, 88),
('2026-01-16 18:13:32.156208', '2026-01-16 18:13:32.000000', 'apply-collection-filters', '{\"ctx\":{\"languageCode\":\"en\",\"channelToken\":\"x1w99uwyu9lg02gln9m\"},\"collectionIds\":[2]}', 'COMPLETED', 100, '{\"processedCollections\":1}', NULL, '2026-01-16 10:13:32.338000', '2026-01-16 10:13:32.447000', 1, 0, 1, 89),
('2026-01-16 18:13:32.428957', '2026-01-16 18:13:32.000000', 'apply-collection-filters', '{\"ctx\":{\"languageCode\":\"en\",\"channelToken\":\"x1w99uwyu9lg02gln9m\"},\"collectionIds\":[3]}', 'COMPLETED', 100, '{\"processedCollections\":1}', NULL, '2026-01-16 10:13:32.578000', '2026-01-16 10:13:32.696000', 1, 0, 1, 90),
('2026-01-16 18:13:32.510449', '2026-01-16 18:27:15.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":34,\"timeTaken\":2227}', NULL, '2026-01-16 10:27:13.539000', '2026-01-16 10:27:15.785000', 1, 0, 1, 91),
('2026-01-16 18:13:32.656935', '2026-01-16 18:13:32.000000', 'apply-collection-filters', '{\"ctx\":{\"languageCode\":\"en\",\"channelToken\":\"x1w99uwyu9lg02gln9m\"},\"collectionIds\":[4]}', 'COMPLETED', 100, '{\"processedCollections\":1}', NULL, '2026-01-16 10:13:32.812000', '2026-01-16 10:13:32.926000', 1, 0, 1, 92);
INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2026-01-16 18:13:32.758304', '2026-01-16 18:27:17.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":25,\"timeTaken\":1422}', NULL, '2026-01-16 10:27:15.972000', '2026-01-16 10:27:17.414000', 1, 0, 1, 93),
('2026-01-16 18:13:32.828713', '2026-01-16 18:13:33.000000', 'apply-collection-filters', '{\"ctx\":{\"languageCode\":\"en\",\"channelToken\":\"x1w99uwyu9lg02gln9m\"},\"collectionIds\":[5]}', 'COMPLETED', 100, '{\"processedCollections\":1}', NULL, '2026-01-16 10:13:33.053000', '2026-01-16 10:13:33.172000', 1, 0, 1, 94),
('2026-01-16 18:13:32.984965', '2026-01-16 18:27:19.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[26,27,28,29,30,31,32,33,34]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":9,\"timeTaken\":1445}', NULL, '2026-01-16 10:27:17.608000', '2026-01-16 10:27:19.087000', 1, 0, 1, 95),
('2026-01-16 18:13:33.016775', '2026-01-16 18:13:33.000000', 'apply-collection-filters', '{\"ctx\":{\"languageCode\":\"en\",\"channelToken\":\"x1w99uwyu9lg02gln9m\"},\"collectionIds\":[6]}', 'COMPLETED', 100, '{\"processedCollections\":1}', NULL, '2026-01-16 10:13:33.356000', '2026-01-16 10:13:33.492000', 1, 0, 1, 96),
('2026-01-16 18:13:33.214778', '2026-01-16 18:13:33.000000', 'apply-collection-filters', '{\"ctx\":{\"languageCode\":\"en\",\"channelToken\":\"x1w99uwyu9lg02gln9m\"},\"collectionIds\":[7]}', 'COMPLETED', 100, '{\"processedCollections\":1}', NULL, '2026-01-16 10:13:33.608000', '2026-01-16 10:13:33.772000', 1, 0, 1, 97),
('2026-01-16 18:13:33.240077', '2026-01-16 18:27:23.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":22,\"timeTaken\":4468}', NULL, '2026-01-16 10:27:19.267000', '2026-01-16 10:27:23.772000', 1, 0, 1, 98),
('2026-01-16 18:13:33.509650', '2026-01-16 18:13:34.000000', 'apply-collection-filters', '{\"ctx\":{\"languageCode\":\"en\",\"channelToken\":\"x1w99uwyu9lg02gln9m\"},\"collectionIds\":[8]}', 'COMPLETED', 100, '{\"processedCollections\":1}', NULL, '2026-01-16 10:13:33.899000', '2026-01-16 10:13:34.233000', 1, 0, 1, 99),
('2026-01-16 18:13:33.565834', '2026-01-16 18:27:26.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[75,77,78,79,80,81,82,83,84,85,86,87,88]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":13,\"timeTaken\":2450}', NULL, '2026-01-16 10:27:23.925000', '2026-01-16 10:27:26.490000', 1, 0, 1, 100),
('2026-01-16 18:13:33.776645', '2026-01-16 18:13:34.000000', 'apply-collection-filters', '{\"ctx\":{\"languageCode\":\"en\",\"channelToken\":\"x1w99uwyu9lg02gln9m\"},\"collectionIds\":[9]}', 'COMPLETED', 100, '{\"processedCollections\":1}', NULL, '2026-01-16 10:13:34.367000', '2026-01-16 10:13:34.482000', 1, 0, 1, 101),
('2026-01-16 18:13:33.832206', '2026-01-16 18:27:27.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[67,68,69,70,71,72,73,74,76]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":9,\"timeTaken\":861}', NULL, '2026-01-16 10:27:26.723000', '2026-01-16 10:27:27.609000', 1, 0, 1, 102),
('2026-01-16 18:13:33.984178', '2026-01-16 18:13:34.000000', 'apply-collection-filters', '{\"ctx\":{\"languageCode\":\"en\",\"channelToken\":\"x1w99uwyu9lg02gln9m\"},\"collectionIds\":[10]}', 'COMPLETED', 100, '{\"processedCollections\":1}', NULL, '2026-01-16 10:13:34.615000', '2026-01-16 10:13:34.706000', 1, 0, 1, 103),
('2026-01-16 18:13:34.314779', '2026-01-16 18:27:36.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":32,\"timeTaken\":9135}', NULL, '2026-01-16 10:27:27.760000', '2026-01-16 10:27:36.937000', 1, 0, 1, 104),
('2026-01-16 18:13:34.324802', '2026-01-16 18:27:56.000000', 'update-search-index', '{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2027-01-16T16:13:31.744Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":88,\"timeTaken\":19109}', NULL, '2026-01-16 10:27:37.114000', '2026-01-16 10:27:56.258000', 1, 0, 1, 105),
('2026-01-16 18:13:34.545851', '2026-01-16 18:27:57.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[35,36,37,38,39,40,41,42]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":8,\"timeTaken\":820}', NULL, '2026-01-16 10:27:56.331000', '2026-01-16 10:27:57.175000', 1, 0, 1, 106),
('2026-01-16 18:13:34.770299', '2026-01-16 18:27:58.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":24,\"timeTaken\":1365}', NULL, '2026-01-16 10:27:57.368000', '2026-01-16 10:27:58.752000', 1, 0, 1, 107),
('2026-01-16 18:30:24.797892', '2026-01-16 18:30:24.000000', 'send-email', '{\"ctx\":{\"_req\":{\"_events\":{},\"_readableState\":{\"highWaterMark\":65536,\"buffer\":[],\"bufferIndex\":0,\"length\":0,\"pipes\":[],\"awaitDrainWriters\":null},\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_closeAfterHandlingError\":false,\"allowHalfOpen\":true,\"_eventsCount\":8,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":6000,\"bytesRead\":647,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":52564,\"localAddress\":\"::1\",\"localPort\":3000,\"localFamily\":\"IPv6\",\"_bytesDispatched\":464,\"bytesWritten\":464},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"rawHeaders\":[\"host\",\"localhost:3000\",\"connection\",\"keep-alive\",\"Content-Type\",\"application/json\",\"vendure-token\",\"__default_channel__\",\"accept\",\"*/*\",\"accept-language\",\"*\",\"sec-fetch-mode\",\"cors\",\"user-agent\",\"node\",\"accept-encoding\",\"gzip, deflate\",\"content-length\",\"380\"],\"rawTrailers\":[],\"joinDuplicateHeaders\":null,\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_closeAfterHandlingError\":false,\"allowHalfOpen\":true,\"_eventsCount\":8,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":6000,\"bytesRead\":647,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":52564,\"localAddress\":\"::1\",\"localPort\":3000,\"localFamily\":\"IPv6\",\"_bytesDispatched\":464,\"bytesWritten\":464},\"_consuming\":true,\"_dumped\":false,\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":true,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"maxRequestsOnConnectionReached\":false,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"strictContentLength\":false,\"_contentLength\":77,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"_closed\":true,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en\\r\\ncache-control: no-store\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 77\\r\\nETag: W/\\\"4d-pji/p6Bv5xmTuX75e3Euut6qSPw\\\"\\r\\nDate: Fri, 16 Jan 2026 10:30:24 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"_maxRequestsPerSocket\":0,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"next\":{},\"baseUrl\":\"/shop-api\",\"originalUrl\":\"/shop-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"sessionOptions\":{\"secret\":\"5UA2dmgU99JmZyp9A_zvFA\",\"httpOnly\":true,\"sameSite\":\"lax\",\"name\":\"session\",\"overwrite\":true,\"signed\":true},\"session\":{},\"body\":{\"query\":\"mutation RegisterCustomerAccount($input: RegisterCustomerInput!) {\\n  registerCustomerAccount(input: $input) {\\n    __typename\\n    ... on Success {\\n      success\\n    }\\n    ... on ErrorResult {\\n      errorCode\\n      message\\n    }\\n  }\\n}\"},\"_eventsCount\":0,\"lng\":\"en\",\"locale\":\"en\",\"language\":\"en\",\"languages\":[\"en\"],\"resolvedLanguage\":\"en\",\"i18n\":{\"language\":\"en\",\"isInitializing\":false,\"languages\":[\"en\"],\"resolvedLanguage\":\"en\",\"isInitialized\":true},\"t\":{},\"vendureRequestContextMap\":{},\"vendureRequestContext\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsCharsets\":{},\"acceptsLanguages\":{},\"range\":{},\"query\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"_destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_addHeaderLineDistinct\":{},\"_dump\":{},\"destroy\":{},\"_undestroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"iterator\":{},\"eventNames\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{}},\"_apiType\":\"shop\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":false,\"_authorizedAsOwnerOnly\":false},\"type\":\"email-verification\",\"recipient\":\"chungchi300@hotmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:8080/verify\",\"passwordResetUrl\":\"http://localhost:8080/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:8080/verify-email-address-change\",\"verificationToken\":\"MjAyNi0wMS0xNlQxMDozMDoyNC43NTla_2LJWEWL6K2SF29TR\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[],\"metadata\":{}}', 'COMPLETED', 100, 'true', NULL, '2026-01-16 10:30:24.861000', '2026-01-16 10:30:24.943000', 1, 5, 1, 108),
('2026-01-16 18:33:54.174603', '2026-01-16 18:33:58.000000', 'update-search-index', '{\"type\":\"reindex\",\"ctx\":{\"_req\":{\"_events\":{},\"_readableState\":{\"highWaterMark\":65536,\"buffer\":[],\"bufferIndex\":0,\"length\":0,\"pipes\":[],\"awaitDrainWriters\":null},\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_closeAfterHandlingError\":false,\"allowHalfOpen\":true,\"_eventsCount\":8,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"bytesRead\":1387,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":59693,\"localAddress\":\"::1\",\"localPort\":3000,\"localFamily\":\"IPv6\",\"_bytesDispatched\":0,\"bytesWritten\":0},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"74\",\"sec-ch-ua-platform\",\"\\\"macOS\\\"\",\"authorization\",\"Bearer 9b0bd1141f46f969072e22df93bcb1e2ab48a9f71c5af503bb3da86d5b6b3df1\",\"vendure-token\",\"g3phjezhdiqkyqaokfo\",\"User-Agent\",\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\",\"sec-ch-ua\",\"\\\"Google Chrome\\\";v=\\\"143\\\", \\\"Chromium\\\";v=\\\"143\\\", \\\"Not A(Brand\\\";v=\\\"24\\\"\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"Accept\",\"*/*\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/dashboard/products?sort=&page=1&perPage=10\",\"Accept-Encoding\",\"gzip, deflate, br, zstd\",\"Accept-Language\",\"en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7,zh-TW;q=0.6\",\"Cookie\",\"pma_lang=en; phpMyAdmin=18a870ed7c862803091328905519de4d; vendure-auth-token=bfe480c6c84f530b8f5faeb10d034d92f022da821ded4961d45b677ea3e772e5; pmaUser-1=xuKTfzmxWSg58WvaPteI0FnWDbsfVPHRaKqwsBjCtUnrlUJi8eUpiiibMVE%3D; pmaAuth-1=kW3HJWehuNkaGUKNB2NWC1ohiTXLlWR5TWj7GFU4CXLqPnEAT9aJM4kkWO508C9TYbIKFXj0%2B9zuHGuGIfnw7NgsA3Jk; session=eyJ0b2tlbiI6IjliMGJkMTE0MWY0NmY5NjkwNzJlMjJkZjkzYmNiMWUyYWI0OGE5ZjcxYzVhZjUwM2JiM2RhODZkNWI2YjNkZjEifQ==; session.sig=a67WqjNdL4jFQei_rLxCZYsdcI8\"],\"rawTrailers\":[],\"joinDuplicateHeaders\":null,\"aborted\":false,\"upgrade\":false,\"url\":\"/?languageCode=en\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_closeAfterHandlingError\":false,\"allowHalfOpen\":true,\"_eventsCount\":8,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"bytesRead\":1387,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":59693,\"localAddress\":\"::1\",\"localPort\":3000,\"localFamily\":\"IPv6\",\"_bytesDispatched\":0,\"bytesWritten\":0},\"_consuming\":true,\"_dumped\":false,\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"maxRequestsOnConnectionReached\":false,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"strictContentLength\":false,\"_contentLength\":null,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":false,\"_headerSent\":false,\"_closed\":false,\"_header\":null,\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"_maxRequestsPerSocket\":0,\"statusCode\":200,\"headersSent\":false},\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api?languageCode=en\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":\"?languageCode=en\",\"query\":\"languageCode=en\",\"pathname\":\"/\",\"path\":\"/?languageCode=en\",\"href\":\"/?languageCode=en\",\"_raw\":\"/?languageCode=en\"},\"params\":{},\"sessionOptions\":{\"secret\":\"5UA2dmgU99JmZyp9A_zvFA\",\"httpOnly\":true,\"sameSite\":\"lax\",\"name\":\"session\",\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"9b0bd1141f46f969072e22df93bcb1e2ab48a9f71c5af503bb3da86d5b6b3df1\"},\"body\":{\"query\":\"mutation Reindex {\\n  reindex {\\n    id\\n  }\\n}\"},\"_eventsCount\":0,\"i18nextLookupName\":\"querystring\",\"lng\":\"en\",\"locale\":\"en\",\"language\":\"en\",\"languages\":[\"en\"],\"resolvedLanguage\":\"en\",\"i18n\":{\"language\":\"en\",\"isInitializing\":false,\"languages\":[\"en\"],\"resolvedLanguage\":\"en\",\"isInitialized\":true},\"t\":{},\"vendureRequestContextMap\":{},\"vendureRequestContext\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsCharsets\":{},\"acceptsLanguages\":{},\"range\":{},\"query\":{\"languageCode\":\"en\"},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"_destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_addHeaderLineDistinct\":{},\"_dump\":{},\"destroy\":{},\"_undestroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"iterator\":{},\"eventNames\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"x1w99uwyu9lg02gln9m\",\"createdAt\":\"2026-01-16T18:12:16.017Z\",\"updatedAt\":\"2026-01-16T18:12:36.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2026-01-16T18:12:17.907Z\",\"updatedAt\":\"2026-01-16T18:12:17.907Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1768559919.715,\"id\":7,\"token\":\"9b0bd1141f46f969072e22df93bcb1e2ab48a9f71c5af503bb3da86d5b6b3df1\",\"expires\":\"2027-01-16T16:33:39.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"x1w99uwyu9lg02gln9m\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSeller\",\"ReadSeller\",\"UpdateSeller\",\"DeleteSeller\",\"CreateStockLocation\",\"ReadStockLocation\",\"UpdateStockLocation\",\"DeleteStockLocation\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\",\"ReadDashboardGlobalViews\",\"WriteDashboardGlobalViews\"]}]}},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":88,\"timeTaken\":3850}', NULL, '2026-01-16 10:33:54.286000', '2026-01-16 10:33:58.177000', 1, 0, 1, 109),
('2026-01-17 00:00:00.107576', '2026-01-17 00:00:00.000000', 'clean-sessions', '{\"batchSize\":1000}', 'COMPLETED', 100, '{\"batchSize\":1000,\"sessionsRemoved\":0}', NULL, '2026-01-16 16:00:00.196000', '2026-01-16 16:00:00.233000', 1, 0, 1, 110);

-- --------------------------------------------------------

--
-- Table structure for table `job_record_buffer`
--

CREATE TABLE `job_record_buffer` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `bufferId` varchar(255) NOT NULL,
  `job` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `type` varchar(255) NOT NULL DEFAULT 'Regular',
  `code` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `orderPlacedAt` datetime DEFAULT NULL,
  `couponCodes` text NOT NULL,
  `shippingAddress` text NOT NULL,
  `billingAddress` text NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `aggregateOrderId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `taxZoneId` int(11) DEFAULT NULL,
  `subTotal` int(11) NOT NULL,
  `subTotalWithTax` int(11) NOT NULL,
  `shipping` int(11) NOT NULL DEFAULT 0,
  `shippingWithTax` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`createdAt`, `updatedAt`, `type`, `code`, `state`, `active`, `orderPlacedAt`, `couponCodes`, `shippingAddress`, `billingAddress`, `currencyCode`, `id`, `aggregateOrderId`, `customerId`, `taxZoneId`, `subTotal`, `subTotalWithTax`, `shipping`, `shippingWithTax`) VALUES
('2026-01-16 18:35:32.343969', '2026-01-16 18:35:33.000000', 'Regular', 'UVKEBLBYTDVC97PW', 'AddingItems', 1, NULL, '', '{}', '{}', 'USD', 1, NULL, 1, 2, 65800, 78960, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_channels_channel`
--

CREATE TABLE `order_channels_channel` (
  `orderId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_channels_channel`
--

INSERT INTO `order_channels_channel` (`orderId`, `channelId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_fulfillments_fulfillment`
--

CREATE TABLE `order_fulfillments_fulfillment` (
  `orderId` int(11) NOT NULL,
  `fulfillmentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `quantity` int(11) NOT NULL,
  `orderPlacedQuantity` int(11) NOT NULL DEFAULT 0,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `adjustments` text NOT NULL,
  `taxLines` text NOT NULL,
  `id` int(11) NOT NULL,
  `sellerChannelId` int(11) DEFAULT NULL,
  `shippingLineId` int(11) DEFAULT NULL,
  `productVariantId` int(11) NOT NULL,
  `taxCategoryId` int(11) DEFAULT NULL,
  `initialListPrice` int(11) DEFAULT NULL,
  `listPrice` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`createdAt`, `updatedAt`, `quantity`, `orderPlacedQuantity`, `listPriceIncludesTax`, `adjustments`, `taxLines`, `id`, `sellerChannelId`, `shippingLineId`, `productVariantId`, `taxCategoryId`, `initialListPrice`, `listPrice`, `featuredAssetId`, `orderId`) VALUES
('2026-01-16 18:35:32.660641', '2026-01-16 18:35:33.000000', 2, 0, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 1, NULL, NULL, 5, 1, 32900, 32900, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_line_reference`
--

CREATE TABLE `order_line_reference` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `fulfillmentId` int(11) DEFAULT NULL,
  `modificationId` int(11) DEFAULT NULL,
  `orderLineId` int(11) NOT NULL,
  `refundId` int(11) DEFAULT NULL,
  `discriminator` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_modification`
--

CREATE TABLE `order_modification` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `note` varchar(255) NOT NULL,
  `shippingAddressChange` text DEFAULT NULL,
  `billingAddressChange` text DEFAULT NULL,
  `id` int(11) NOT NULL,
  `priceChange` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `paymentId` int(11) DEFAULT NULL,
  `refundId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_promotions_promotion`
--

CREATE TABLE `order_promotions_promotion` (
  `orderId` int(11) NOT NULL,
  `promotionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `method` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `errorMessage` varchar(255) DEFAULT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL,
  `checker` text DEFAULT NULL,
  `handler` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`createdAt`, `updatedAt`, `code`, `enabled`, `checker`, `handler`, `id`) VALUES
('2026-01-16 18:12:36.320619', '2026-01-16 18:12:36.320619', 'standard-payment', 1, NULL, '{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method_channels_channel`
--

CREATE TABLE `payment_method_channels_channel` (
  `paymentMethodId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_method_channels_channel`
--

INSERT INTO `payment_method_channels_channel` (`paymentMethodId`, `channelId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method_translation`
--

CREATE TABLE `payment_method_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_method_translation`
--

INSERT INTO `payment_method_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `description`, `id`, `baseId`) VALUES
('2026-01-16 18:12:36.295995', '2026-01-16 18:12:36.000000', 'en', 'Standard Payment', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`createdAt`, `updatedAt`, `deletedAt`, `enabled`, `id`, `featuredAssetId`) VALUES
('2026-01-16 18:12:37.213248', '2026-01-16 18:12:37.213248', NULL, 1, 1, 1),
('2026-01-16 18:12:42.314375', '2026-01-16 18:12:42.314375', NULL, 1, 2, 2),
('2026-01-16 18:12:43.374575', '2026-01-16 18:12:43.374575', NULL, 1, 3, 3),
('2026-01-16 18:12:43.897190', '2026-01-16 18:12:43.897190', NULL, 1, 4, 4),
('2026-01-16 18:12:44.340457', '2026-01-16 18:12:44.340457', NULL, 1, 5, 5),
('2026-01-16 18:12:45.231704', '2026-01-16 18:12:45.231704', NULL, 1, 6, 6),
('2026-01-16 18:12:46.667002', '2026-01-16 18:12:46.667002', NULL, 1, 7, 7),
('2026-01-16 18:12:48.216040', '2026-01-16 18:12:48.216040', NULL, 1, 8, 8),
('2026-01-16 18:12:50.061308', '2026-01-16 18:12:50.061308', NULL, 1, 9, 9),
('2026-01-16 18:12:50.442307', '2026-01-16 18:12:50.442307', NULL, 1, 10, 10),
('2026-01-16 18:12:50.829234', '2026-01-16 18:12:50.829234', NULL, 1, 11, 11),
('2026-01-16 18:12:51.431769', '2026-01-16 18:12:51.431769', NULL, 1, 12, 12),
('2026-01-16 18:12:51.899395', '2026-01-16 18:12:51.899395', NULL, 1, 13, 13),
('2026-01-16 18:12:52.355402', '2026-01-16 18:12:52.355402', NULL, 1, 14, 14),
('2026-01-16 18:12:52.840238', '2026-01-16 18:12:52.840238', NULL, 1, 15, 15),
('2026-01-16 18:12:53.253941', '2026-01-16 18:12:53.253941', NULL, 1, 16, 16),
('2026-01-16 18:12:53.741274', '2026-01-16 18:12:53.741274', NULL, 1, 17, 17),
('2026-01-16 18:12:54.079495', '2026-01-16 18:12:54.079495', NULL, 1, 18, 18),
('2026-01-16 18:12:54.551693', '2026-01-16 18:12:54.551693', NULL, 1, 19, 19),
('2026-01-16 18:12:55.091939', '2026-01-16 18:12:55.091939', NULL, 1, 20, 20),
('2026-01-16 18:12:55.703134', '2026-01-16 18:12:55.703134', NULL, 1, 21, 21),
('2026-01-16 18:12:56.338712', '2026-01-16 18:12:56.338712', NULL, 1, 22, 22),
('2026-01-16 18:12:56.719077', '2026-01-16 18:12:56.719077', NULL, 1, 23, 23),
('2026-01-16 18:12:57.364574', '2026-01-16 18:12:57.364574', NULL, 1, 24, 24),
('2026-01-16 18:12:58.453663', '2026-01-16 18:12:58.453663', NULL, 1, 25, 25),
('2026-01-16 18:12:59.122121', '2026-01-16 18:12:59.122121', NULL, 1, 26, 26),
('2026-01-16 18:13:00.308628', '2026-01-16 18:13:00.308628', NULL, 1, 27, 27),
('2026-01-16 18:13:00.703356', '2026-01-16 18:13:00.703356', NULL, 1, 28, 28),
('2026-01-16 18:13:01.470192', '2026-01-16 18:13:01.470192', NULL, 1, 29, 29),
('2026-01-16 18:13:02.954816', '2026-01-16 18:13:02.954816', NULL, 1, 30, 30),
('2026-01-16 18:13:05.275167', '2026-01-16 18:13:05.275167', NULL, 1, 31, 31),
('2026-01-16 18:13:14.919159', '2026-01-16 18:13:14.919159', NULL, 1, 32, 32),
('2026-01-16 18:13:17.607902', '2026-01-16 18:13:17.607902', NULL, 1, 33, 33),
('2026-01-16 18:13:19.101383', '2026-01-16 18:13:19.101383', NULL, 1, 34, 34),
('2026-01-16 18:13:22.518733', '2026-01-16 18:13:22.518733', NULL, 1, 35, 35),
('2026-01-16 18:13:22.867917', '2026-01-16 18:13:22.867917', NULL, 1, 36, 36),
('2026-01-16 18:13:23.136472', '2026-01-16 18:13:23.136472', NULL, 1, 37, 37),
('2026-01-16 18:13:23.345805', '2026-01-16 18:13:23.345805', NULL, 1, 38, 38),
('2026-01-16 18:13:23.590935', '2026-01-16 18:13:23.590935', NULL, 1, 39, 39),
('2026-01-16 18:13:23.797510', '2026-01-16 18:13:23.797510', NULL, 1, 40, 40),
('2026-01-16 18:13:24.023809', '2026-01-16 18:13:24.023809', NULL, 1, 41, 41),
('2026-01-16 18:13:24.224860', '2026-01-16 18:13:24.224860', NULL, 1, 42, 42),
('2026-01-16 18:13:24.572287', '2026-01-16 18:13:24.572287', NULL, 1, 43, 43),
('2026-01-16 18:13:24.818904', '2026-01-16 18:13:24.818904', NULL, 1, 44, 44),
('2026-01-16 18:13:24.992788', '2026-01-16 18:13:24.992788', NULL, 1, 45, 45),
('2026-01-16 18:13:25.296899', '2026-01-16 18:13:25.296899', NULL, 1, 46, 46),
('2026-01-16 18:13:25.729816', '2026-01-16 18:13:25.729816', NULL, 1, 47, 47),
('2026-01-16 18:13:25.997356', '2026-01-16 18:13:25.997356', NULL, 1, 48, 48),
('2026-01-16 18:13:26.309651', '2026-01-16 18:13:26.309651', NULL, 1, 49, 49),
('2026-01-16 18:13:26.581895', '2026-01-16 18:13:26.581895', NULL, 1, 50, 50),
('2026-01-16 18:13:26.931406', '2026-01-16 18:13:26.931406', NULL, 1, 51, 51),
('2026-01-16 18:13:27.215245', '2026-01-16 18:13:27.215245', NULL, 1, 52, 52),
('2026-01-16 18:13:27.670747', '2026-01-16 18:13:27.670747', NULL, 1, 53, 53),
('2026-01-16 18:13:28.033183', '2026-01-16 18:13:28.033183', NULL, 1, 54, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_asset`
--

CREATE TABLE `product_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_asset`
--

INSERT INTO `product_asset` (`createdAt`, `updatedAt`, `assetId`, `position`, `productId`, `id`) VALUES
('2026-01-16 18:12:37.275008', '2026-01-16 18:12:37.275008', 1, 0, 1, 1),
('2026-01-16 18:12:42.388376', '2026-01-16 18:12:42.388376', 2, 0, 2, 2),
('2026-01-16 18:12:43.428417', '2026-01-16 18:12:43.428417', 3, 0, 3, 3),
('2026-01-16 18:12:43.968536', '2026-01-16 18:12:43.968536', 4, 0, 4, 4),
('2026-01-16 18:12:44.379796', '2026-01-16 18:12:44.379796', 5, 0, 5, 5),
('2026-01-16 18:12:45.284460', '2026-01-16 18:12:45.284460', 6, 0, 6, 6),
('2026-01-16 18:12:46.698525', '2026-01-16 18:12:46.698525', 7, 0, 7, 7),
('2026-01-16 18:12:48.304580', '2026-01-16 18:12:48.304580', 8, 0, 8, 8),
('2026-01-16 18:12:50.132674', '2026-01-16 18:12:50.132674', 9, 0, 9, 9),
('2026-01-16 18:12:50.497491', '2026-01-16 18:12:50.497491', 10, 0, 10, 10),
('2026-01-16 18:12:50.872236', '2026-01-16 18:12:50.872236', 11, 0, 11, 11),
('2026-01-16 18:12:51.487198', '2026-01-16 18:12:51.487198', 12, 0, 12, 12),
('2026-01-16 18:12:51.943992', '2026-01-16 18:12:51.943992', 13, 0, 13, 13),
('2026-01-16 18:12:52.396475', '2026-01-16 18:12:52.396475', 14, 0, 14, 14),
('2026-01-16 18:12:52.884375', '2026-01-16 18:12:52.884375', 15, 0, 15, 15),
('2026-01-16 18:12:53.300184', '2026-01-16 18:12:53.300184', 16, 0, 16, 16),
('2026-01-16 18:12:53.776958', '2026-01-16 18:12:53.776958', 17, 0, 17, 17),
('2026-01-16 18:12:54.120785', '2026-01-16 18:12:54.120785', 18, 0, 18, 18),
('2026-01-16 18:12:54.586844', '2026-01-16 18:12:54.586844', 19, 0, 19, 19),
('2026-01-16 18:12:55.150913', '2026-01-16 18:12:55.150913', 20, 0, 20, 20),
('2026-01-16 18:12:55.758655', '2026-01-16 18:12:55.758655', 21, 0, 21, 21),
('2026-01-16 18:12:56.393647', '2026-01-16 18:12:56.393647', 22, 0, 22, 22),
('2026-01-16 18:12:56.774276', '2026-01-16 18:12:56.774276', 23, 0, 23, 23),
('2026-01-16 18:12:57.497504', '2026-01-16 18:12:57.497504', 24, 0, 24, 24),
('2026-01-16 18:12:58.542644', '2026-01-16 18:12:58.542644', 25, 0, 25, 25),
('2026-01-16 18:12:59.597580', '2026-01-16 18:12:59.597580', 26, 0, 26, 26),
('2026-01-16 18:13:00.362982', '2026-01-16 18:13:00.362982', 27, 0, 27, 27),
('2026-01-16 18:13:00.744115', '2026-01-16 18:13:00.744115', 28, 0, 28, 28),
('2026-01-16 18:13:01.517938', '2026-01-16 18:13:01.517938', 29, 0, 29, 29),
('2026-01-16 18:13:02.987078', '2026-01-16 18:13:02.987078', 30, 0, 30, 30),
('2026-01-16 18:13:05.308613', '2026-01-16 18:13:05.308613', 31, 0, 31, 31),
('2026-01-16 18:13:15.229945', '2026-01-16 18:13:15.229945', 32, 0, 32, 32),
('2026-01-16 18:13:17.650324', '2026-01-16 18:13:17.650324', 33, 0, 33, 33),
('2026-01-16 18:13:19.125433', '2026-01-16 18:13:19.125433', 34, 0, 34, 34),
('2026-01-16 18:13:22.556207', '2026-01-16 18:13:22.556207', 35, 0, 35, 35),
('2026-01-16 18:13:22.902491', '2026-01-16 18:13:22.902491', 36, 0, 36, 36),
('2026-01-16 18:13:23.166358', '2026-01-16 18:13:23.166358', 37, 0, 37, 37),
('2026-01-16 18:13:23.374531', '2026-01-16 18:13:23.374531', 38, 0, 38, 38),
('2026-01-16 18:13:23.611356', '2026-01-16 18:13:23.611356', 39, 0, 39, 39),
('2026-01-16 18:13:23.823555', '2026-01-16 18:13:23.823555', 40, 0, 40, 40),
('2026-01-16 18:13:24.050317', '2026-01-16 18:13:24.050317', 41, 0, 41, 41),
('2026-01-16 18:13:24.251897', '2026-01-16 18:13:24.251897', 42, 0, 42, 42),
('2026-01-16 18:13:24.604474', '2026-01-16 18:13:24.604474', 43, 0, 43, 43),
('2026-01-16 18:13:24.839730', '2026-01-16 18:13:24.839730', 44, 0, 44, 44),
('2026-01-16 18:13:25.027241', '2026-01-16 18:13:25.027241', 45, 0, 45, 45),
('2026-01-16 18:13:25.344923', '2026-01-16 18:13:25.344923', 46, 0, 46, 46),
('2026-01-16 18:13:25.765371', '2026-01-16 18:13:25.765371', 47, 0, 47, 47),
('2026-01-16 18:13:26.037765', '2026-01-16 18:13:26.037765', 48, 0, 48, 48),
('2026-01-16 18:13:26.339908', '2026-01-16 18:13:26.339908', 49, 0, 49, 49),
('2026-01-16 18:13:26.614481', '2026-01-16 18:13:26.614481', 50, 0, 50, 50),
('2026-01-16 18:13:26.971737', '2026-01-16 18:13:26.971737', 51, 0, 51, 51),
('2026-01-16 18:13:27.254349', '2026-01-16 18:13:27.254349', 52, 0, 52, 52),
('2026-01-16 18:13:27.767615', '2026-01-16 18:13:27.767615', 53, 0, 53, 53),
('2026-01-16 18:13:28.070607', '2026-01-16 18:13:28.070607', 54, 0, 54, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_channels_channel`
--

CREATE TABLE `product_channels_channel` (
  `productId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_channels_channel`
--

INSERT INTO `product_channels_channel` (`productId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_facet_values_facet_value`
--

CREATE TABLE `product_facet_values_facet_value` (
  `productId` int(11) NOT NULL,
  `facetValueId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_facet_values_facet_value`
--

INSERT INTO `product_facet_values_facet_value` (`productId`, `facetValueId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 4),
(4, 1),
(4, 2),
(4, 5),
(5, 1),
(5, 2),
(5, 5),
(6, 1),
(6, 2),
(6, 6),
(7, 1),
(7, 2),
(7, 7),
(8, 1),
(8, 2),
(8, 8),
(9, 1),
(9, 2),
(9, 6),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 9),
(12, 10),
(13, 1),
(13, 9),
(13, 11),
(14, 1),
(14, 9),
(14, 12),
(15, 1),
(15, 9),
(15, 13),
(16, 1),
(16, 9),
(16, 14),
(17, 1),
(17, 9),
(17, 15),
(18, 1),
(18, 9),
(18, 11),
(19, 1),
(19, 9),
(20, 1),
(20, 9),
(20, 16),
(21, 17),
(21, 18),
(21, 19),
(22, 17),
(22, 18),
(22, 20),
(23, 17),
(23, 18),
(23, 20),
(24, 17),
(24, 18),
(25, 17),
(25, 18),
(26, 17),
(26, 18),
(26, 21),
(27, 17),
(27, 18),
(27, 22),
(28, 17),
(28, 18),
(28, 22),
(29, 17),
(29, 23),
(29, 24),
(29, 25),
(29, 26),
(30, 17),
(30, 21),
(30, 23),
(30, 27),
(31, 17),
(31, 21),
(31, 23),
(31, 28),
(32, 17),
(32, 23),
(32, 24),
(32, 27),
(32, 28),
(33, 17),
(33, 23),
(33, 24),
(33, 27),
(34, 17),
(34, 23),
(34, 27),
(34, 29),
(35, 30),
(35, 31),
(35, 32),
(36, 30),
(36, 31),
(36, 32),
(36, 33),
(37, 30),
(37, 31),
(37, 33),
(38, 30),
(38, 31),
(38, 32),
(39, 30),
(39, 31),
(39, 33),
(40, 30),
(40, 31),
(40, 32),
(41, 30),
(41, 31),
(42, 30),
(42, 31),
(43, 30),
(43, 34),
(43, 35),
(44, 30),
(44, 31),
(45, 30),
(45, 34),
(46, 30),
(46, 34),
(46, 35),
(47, 30),
(47, 34),
(47, 36),
(48, 30),
(48, 34),
(49, 30),
(49, 34),
(49, 37),
(50, 30),
(50, 34),
(50, 35),
(51, 27),
(51, 30),
(51, 34),
(52, 30),
(52, 34),
(52, 37),
(53, 28),
(53, 30),
(53, 34),
(54, 30),
(54, 34);

-- --------------------------------------------------------

--
-- Table structure for table `product_option`
--

CREATE TABLE `product_option` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_option`
--

INSERT INTO `product_option` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `id`, `groupId`) VALUES
('2026-01-16 18:12:37.400323', '2026-01-16 18:12:37.400323', NULL, '13-inch', 1, 1),
('2026-01-16 18:12:37.446868', '2026-01-16 18:12:37.446868', NULL, '15-inch', 2, 1),
('2026-01-16 18:12:37.561544', '2026-01-16 18:12:37.561544', NULL, '8gb', 3, 2),
('2026-01-16 18:12:37.611400', '2026-01-16 18:12:37.611400', NULL, '16gb', 4, 2),
('2026-01-16 18:12:42.503705', '2026-01-16 18:12:42.503705', NULL, '32gb', 5, 3),
('2026-01-16 18:12:42.569856', '2026-01-16 18:12:42.569856', NULL, '128gb', 6, 3),
('2026-01-16 18:12:44.517494', '2026-01-16 18:12:44.517494', NULL, '24-inch', 7, 4),
('2026-01-16 18:12:44.579709', '2026-01-16 18:12:44.579709', NULL, '27-inch', 8, 4),
('2026-01-16 18:12:45.427763', '2026-01-16 18:12:45.427763', NULL, '4gb', 9, 5),
('2026-01-16 18:12:45.485834', '2026-01-16 18:12:45.485834', NULL, '8gb', 10, 5),
('2026-01-16 18:12:45.556808', '2026-01-16 18:12:45.556808', NULL, '16gb', 11, 5),
('2026-01-16 18:12:46.801402', '2026-01-16 18:12:46.801402', NULL, 'i7-8700', 12, 6),
('2026-01-16 18:12:46.859104', '2026-01-16 18:12:46.859104', NULL, 'r7-2700', 13, 6),
('2026-01-16 18:12:47.012370', '2026-01-16 18:12:47.012370', NULL, '240gb-ssd', 14, 7),
('2026-01-16 18:12:47.072506', '2026-01-16 18:12:47.072506', NULL, '120gb-ssd', 15, 7),
('2026-01-16 18:12:48.507776', '2026-01-16 18:12:48.507776', NULL, '1tb', 16, 8),
('2026-01-16 18:12:48.564566', '2026-01-16 18:12:48.564566', NULL, '2tb', 17, 8),
('2026-01-16 18:12:48.631608', '2026-01-16 18:12:48.631608', NULL, '3tb', 18, 8),
('2026-01-16 18:12:48.702437', '2026-01-16 18:12:48.702437', NULL, '4tb', 19, 8),
('2026-01-16 18:12:48.757625', '2026-01-16 18:12:48.757625', NULL, '6tb', 20, 8),
('2026-01-16 18:13:01.642484', '2026-01-16 18:13:01.642484', NULL, 'size-40', 21, 9),
('2026-01-16 18:13:01.731238', '2026-01-16 18:13:01.731238', NULL, 'size-42', 22, 9),
('2026-01-16 18:13:01.810351', '2026-01-16 18:13:01.810351', NULL, 'size-44', 23, 9),
('2026-01-16 18:13:01.909528', '2026-01-16 18:13:01.909528', NULL, 'size-46', 24, 9),
('2026-01-16 18:13:03.075347', '2026-01-16 18:13:03.075347', NULL, 'size-40', 25, 10),
('2026-01-16 18:13:03.127189', '2026-01-16 18:13:03.127189', NULL, 'size-42', 26, 10),
('2026-01-16 18:13:03.219269', '2026-01-16 18:13:03.219269', NULL, 'size-44', 27, 10),
('2026-01-16 18:13:03.327248', '2026-01-16 18:13:03.327248', NULL, 'size-46', 28, 10),
('2026-01-16 18:13:05.419164', '2026-01-16 18:13:05.419164', NULL, 'size-40', 29, 11),
('2026-01-16 18:13:05.460934', '2026-01-16 18:13:05.460934', NULL, 'size-42', 30, 11),
('2026-01-16 18:13:05.515612', '2026-01-16 18:13:05.515612', NULL, 'size-44', 31, 11),
('2026-01-16 18:13:05.564325', '2026-01-16 18:13:05.564325', NULL, 'size-46', 32, 11),
('2026-01-16 18:13:15.880216', '2026-01-16 18:13:15.880216', NULL, 'size-40', 33, 12),
('2026-01-16 18:13:15.973671', '2026-01-16 18:13:15.973671', NULL, 'size-42', 34, 12),
('2026-01-16 18:13:16.028315', '2026-01-16 18:13:16.028315', NULL, 'size-44', 35, 12),
('2026-01-16 18:13:16.120702', '2026-01-16 18:13:16.120702', NULL, 'size-46', 36, 12),
('2026-01-16 18:13:17.766834', '2026-01-16 18:13:17.766834', NULL, 'size-40', 37, 13),
('2026-01-16 18:13:17.809224', '2026-01-16 18:13:17.809224', NULL, 'size-42', 38, 13),
('2026-01-16 18:13:17.868262', '2026-01-16 18:13:17.868262', NULL, 'size-44', 39, 13),
('2026-01-16 18:13:18.023886', '2026-01-16 18:13:18.023886', NULL, 'size-46', 40, 13),
('2026-01-16 18:13:20.346084', '2026-01-16 18:13:20.346084', NULL, 'size-40', 41, 14),
('2026-01-16 18:13:20.419285', '2026-01-16 18:13:20.419285', NULL, 'size-42', 42, 14),
('2026-01-16 18:13:20.609244', '2026-01-16 18:13:20.609244', NULL, 'size-44', 43, 14),
('2026-01-16 18:13:20.930263', '2026-01-16 18:13:20.930263', NULL, 'size-46', 44, 14),
('2026-01-16 18:13:28.176793', '2026-01-16 18:13:28.176793', NULL, 'mustard', 45, 15),
('2026-01-16 18:13:28.228351', '2026-01-16 18:13:28.228351', NULL, 'mint', 46, 15),
('2026-01-16 18:13:28.282848', '2026-01-16 18:13:28.282848', NULL, 'pearl', 47, 15);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_group`
--

CREATE TABLE `product_option_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_option_group`
--

INSERT INTO `product_option_group` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `id`, `productId`) VALUES
('2026-01-16 18:12:37.328555', '2026-01-16 18:12:37.000000', NULL, 'laptop-screen-size', 1, 1),
('2026-01-16 18:12:37.518965', '2026-01-16 18:12:37.000000', NULL, 'laptop-ram', 2, 1),
('2026-01-16 18:12:42.441479', '2026-01-16 18:12:42.000000', NULL, 'tablet-storage', 3, 2),
('2026-01-16 18:12:44.442310', '2026-01-16 18:12:44.000000', NULL, 'curvy-monitor-monitor-size', 4, 5),
('2026-01-16 18:12:45.347783', '2026-01-16 18:12:45.000000', NULL, 'high-performance-ram-size', 5, 6),
('2026-01-16 18:12:46.742192', '2026-01-16 18:12:46.000000', NULL, 'gaming-pc-cpu', 6, 7),
('2026-01-16 18:12:46.949950', '2026-01-16 18:12:47.000000', NULL, 'gaming-pc-hdd', 7, 7),
('2026-01-16 18:12:48.435338', '2026-01-16 18:12:48.000000', NULL, 'hard-drive-hdd', 8, 8),
('2026-01-16 18:13:01.578704', '2026-01-16 18:13:01.000000', NULL, 'ultraboost-running-shoe-size', 9, 29),
('2026-01-16 18:13:03.028708', '2026-01-16 18:13:03.000000', NULL, 'freerun-running-shoe-size', 10, 30),
('2026-01-16 18:13:05.363865', '2026-01-16 18:13:05.000000', NULL, 'hi-top-basketball-shoe-size', 11, 31),
('2026-01-16 18:13:15.530227', '2026-01-16 18:13:16.000000', NULL, 'pureboost-running-shoe-size', 12, 32),
('2026-01-16 18:13:17.721250', '2026-01-16 18:13:18.000000', NULL, 'runx-running-shoe-size', 13, 33),
('2026-01-16 18:13:19.778859', '2026-01-16 18:13:21.000000', NULL, 'allstar-sneakers-size', 14, 34),
('2026-01-16 18:13:28.121628', '2026-01-16 18:13:28.000000', NULL, 'modern-cafe-chair-color', 15, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_group_translation`
--

CREATE TABLE `product_option_group_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_option_group_translation`
--

INSERT INTO `product_option_group_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2026-01-16 18:12:37.295736', '2026-01-16 18:12:37.000000', 'en', 'screen size', 1, 1),
('2026-01-16 18:12:37.502539', '2026-01-16 18:12:37.000000', 'en', 'RAM', 2, 2),
('2026-01-16 18:12:42.411241', '2026-01-16 18:12:42.000000', 'en', 'storage', 3, 3),
('2026-01-16 18:12:44.402515', '2026-01-16 18:12:44.000000', 'en', 'monitor size', 4, 4),
('2026-01-16 18:12:45.319331', '2026-01-16 18:12:45.000000', 'en', 'size', 5, 5),
('2026-01-16 18:12:46.716956', '2026-01-16 18:12:46.000000', 'en', 'cpu', 6, 6),
('2026-01-16 18:12:46.920207', '2026-01-16 18:12:46.000000', 'en', 'HDD', 7, 7),
('2026-01-16 18:12:48.335458', '2026-01-16 18:12:48.000000', 'en', 'HDD', 8, 8),
('2026-01-16 18:13:01.546142', '2026-01-16 18:13:01.000000', 'en', 'size', 9, 9),
('2026-01-16 18:13:03.008492', '2026-01-16 18:13:03.000000', 'en', 'size', 10, 10),
('2026-01-16 18:13:05.325528', '2026-01-16 18:13:05.000000', 'en', 'size', 11, 11),
('2026-01-16 18:13:15.409999', '2026-01-16 18:13:15.000000', 'en', 'size', 12, 12),
('2026-01-16 18:13:17.695412', '2026-01-16 18:13:17.000000', 'en', 'size', 13, 13),
('2026-01-16 18:13:19.437191', '2026-01-16 18:13:19.000000', 'en', 'size', 14, 14),
('2026-01-16 18:13:28.096627', '2026-01-16 18:13:28.000000', 'en', 'color', 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_translation`
--

CREATE TABLE `product_option_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_option_translation`
--

INSERT INTO `product_option_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2026-01-16 18:12:37.370635', '2026-01-16 18:12:37.000000', 'en', '13 inch', 1, 1),
('2026-01-16 18:12:37.430102', '2026-01-16 18:12:37.000000', 'en', '15 inch', 2, 2),
('2026-01-16 18:12:37.541714', '2026-01-16 18:12:37.000000', 'en', '8GB', 3, 3),
('2026-01-16 18:12:37.594953', '2026-01-16 18:12:37.000000', 'en', '16GB', 4, 4),
('2026-01-16 18:12:42.477682', '2026-01-16 18:12:42.000000', 'en', '32GB', 5, 5),
('2026-01-16 18:12:42.539548', '2026-01-16 18:12:42.000000', 'en', '128GB', 6, 6),
('2026-01-16 18:12:44.493862', '2026-01-16 18:12:44.000000', 'en', '24 inch', 7, 7),
('2026-01-16 18:12:44.555192', '2026-01-16 18:12:44.000000', 'en', '27 inch', 8, 8),
('2026-01-16 18:12:45.387570', '2026-01-16 18:12:45.000000', 'en', '4GB', 9, 9),
('2026-01-16 18:12:45.461437', '2026-01-16 18:12:45.000000', 'en', '8GB', 10, 10),
('2026-01-16 18:12:45.514434', '2026-01-16 18:12:45.000000', 'en', '16GB', 11, 11),
('2026-01-16 18:12:46.769380', '2026-01-16 18:12:46.000000', 'en', 'i7-8700', 12, 12),
('2026-01-16 18:12:46.836345', '2026-01-16 18:12:46.000000', 'en', 'R7-2700', 13, 13),
('2026-01-16 18:12:46.983437', '2026-01-16 18:12:47.000000', 'en', '240GB SSD', 14, 14),
('2026-01-16 18:12:47.043956', '2026-01-16 18:12:47.000000', 'en', '120GB SSD', 15, 15),
('2026-01-16 18:12:48.464565', '2026-01-16 18:12:48.000000', 'en', '1TB', 16, 16),
('2026-01-16 18:12:48.543132', '2026-01-16 18:12:48.000000', 'en', '2TB', 17, 17),
('2026-01-16 18:12:48.601491', '2026-01-16 18:12:48.000000', 'en', '3TB', 18, 18),
('2026-01-16 18:12:48.677835', '2026-01-16 18:12:48.000000', 'en', '4TB', 19, 19),
('2026-01-16 18:12:48.730125', '2026-01-16 18:12:48.000000', 'en', '6TB', 20, 20),
('2026-01-16 18:13:01.610765', '2026-01-16 18:13:01.000000', 'en', 'Size 40', 21, 21),
('2026-01-16 18:13:01.710649', '2026-01-16 18:13:01.000000', 'en', 'Size 42', 22, 22),
('2026-01-16 18:13:01.766805', '2026-01-16 18:13:01.000000', 'en', 'Size 44', 23, 23),
('2026-01-16 18:13:01.862215', '2026-01-16 18:13:01.000000', 'en', 'Size 46', 24, 24),
('2026-01-16 18:13:03.049367', '2026-01-16 18:13:03.000000', 'en', 'Size 40', 25, 25),
('2026-01-16 18:13:03.106669', '2026-01-16 18:13:03.000000', 'en', 'Size 42', 26, 26),
('2026-01-16 18:13:03.188463', '2026-01-16 18:13:03.000000', 'en', 'Size 44', 27, 27),
('2026-01-16 18:13:03.296137', '2026-01-16 18:13:03.000000', 'en', 'Size 46', 28, 28),
('2026-01-16 18:13:05.388933', '2026-01-16 18:13:05.000000', 'en', 'Size 40', 29, 29),
('2026-01-16 18:13:05.441514', '2026-01-16 18:13:05.000000', 'en', 'Size 42', 30, 30),
('2026-01-16 18:13:05.497569', '2026-01-16 18:13:05.000000', 'en', 'Size 44', 31, 31),
('2026-01-16 18:13:05.539395', '2026-01-16 18:13:05.000000', 'en', 'Size 46', 32, 32),
('2026-01-16 18:13:15.588549', '2026-01-16 18:13:15.000000', 'en', 'Size 40', 33, 33),
('2026-01-16 18:13:15.954845', '2026-01-16 18:13:15.000000', 'en', 'Size 42', 34, 34),
('2026-01-16 18:13:15.999875', '2026-01-16 18:13:16.000000', 'en', 'Size 44', 35, 35),
('2026-01-16 18:13:16.083640', '2026-01-16 18:13:16.000000', 'en', 'Size 46', 36, 36),
('2026-01-16 18:13:17.740242', '2026-01-16 18:13:17.000000', 'en', 'Size 40', 37, 37),
('2026-01-16 18:13:17.790360', '2026-01-16 18:13:17.000000', 'en', 'Size 42', 38, 38),
('2026-01-16 18:13:17.835474', '2026-01-16 18:13:17.000000', 'en', 'Size 44', 39, 39),
('2026-01-16 18:13:17.896300', '2026-01-16 18:13:18.000000', 'en', 'Size 46', 40, 40),
('2026-01-16 18:13:20.257352', '2026-01-16 18:13:20.000000', 'en', 'Size 40', 41, 41),
('2026-01-16 18:13:20.394421', '2026-01-16 18:13:20.000000', 'en', 'Size 42', 42, 42),
('2026-01-16 18:13:20.541308', '2026-01-16 18:13:20.000000', 'en', 'Size 44', 43, 43),
('2026-01-16 18:13:20.888731', '2026-01-16 18:13:20.000000', 'en', 'Size 46', 44, 44),
('2026-01-16 18:13:28.150604', '2026-01-16 18:13:28.000000', 'en', 'mustard', 45, 45),
('2026-01-16 18:13:28.201872', '2026-01-16 18:13:28.000000', 'en', 'mint', 46, 46),
('2026-01-16 18:13:28.259490', '2026-01-16 18:13:28.000000', 'en', 'pearl', 47, 47);

-- --------------------------------------------------------

--
-- Table structure for table `product_translation`
--

CREATE TABLE `product_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translation`
--

INSERT INTO `product_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `slug`, `description`, `id`, `baseId`) VALUES
('2026-01-16 18:12:37.186913', '2026-01-16 18:12:37.000000', 'en', 'Laptop', 'laptop', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 1, 1),
('2026-01-16 18:12:42.279010', '2026-01-16 18:12:42.000000', 'en', 'Tablet', 'tablet', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 2, 2),
('2026-01-16 18:12:43.352941', '2026-01-16 18:12:43.000000', 'en', 'Wireless Optical Mouse', 'cordless-mouse', 'The Logitech M185 Wireless Optical Mouse is a great device for any computer user, and as Logitech are the global market leaders for these devices, you are also guaranteed absolute reliability. A mouse to be reckoned with!', 3, 3),
('2026-01-16 18:12:43.848681', '2026-01-16 18:12:43.000000', 'en', '32-Inch Monitor', '32-inch-monitor', 'The UJ59 with Ultra HD resolution has 4x the pixels of Full HD, delivering more screen space and amazingly life-like images. That means you can view documents and webpages with less scrolling, work more comfortably with multiple windows and toolbars, and enjoy photos, videos and games in stunning 4K quality. Note: beverage not included.', 4, 4),
('2026-01-16 18:12:44.308134', '2026-01-16 18:12:44.000000', 'en', 'Curvy Monitor', 'curvy-monitor', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 5, 5),
('2026-01-16 18:12:45.203334', '2026-01-16 18:12:45.000000', 'en', 'High Performance RAM', 'high-performance-ram', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 6, 6),
('2026-01-16 18:12:46.634819', '2026-01-16 18:12:46.000000', 'en', 'Gaming PC', 'gaming-pc', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 7, 7),
('2026-01-16 18:12:48.175257', '2026-01-16 18:12:48.000000', 'en', 'Hard Drive', 'hard-drive', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 8, 8),
('2026-01-16 18:12:49.999704', '2026-01-16 18:12:50.000000', 'en', 'Clacky Keyboard', 'clacky-keyboard', 'Let all your colleagues know that you are typing on this exclusive, colorful klicky-klacky keyboard. Huge travel on each keypress ensures maximum klack on each and every keystroke.', 9, 9),
('2026-01-16 18:12:50.403038', '2026-01-16 18:12:50.000000', 'en', 'Ethernet Cable', 'ethernet-cable', '5m (metres) Cat.6 network cable (upwards/downwards compatible) | Patch cable | 2 RJ-45 plug | plug with bend protection mantle. High transmission speeds due to operating frequency with up to 250 MHz (in comparison to Cat.5/Cat.5e cable bandwidth of 100 MHz).', 10, 10),
('2026-01-16 18:12:50.780859', '2026-01-16 18:12:50.000000', 'en', 'USB Cable', 'usb-cable', 'Solid conductors eliminate strand-interaction distortion and reduce jitter. As the surface is made of high-purity silver, the performance is very close to that of a solid silver cable, but priced much closer to solid copper cable.', 11, 11),
('2026-01-16 18:12:51.412004', '2026-01-16 18:12:51.000000', 'en', 'Instant Camera', 'instant-camera', 'With its nostalgic design and simple point-and-shoot functionality, the Instant Camera is the perfect pick to get started with instant photography.', 12, 12),
('2026-01-16 18:12:51.859645', '2026-01-16 18:12:51.000000', 'en', 'Camera Lens', 'camera-lens', 'This lens is a Di type lens using an optical system with improved multi-coating designed to function with digital SLR cameras as well as film cameras.', 13, 13),
('2026-01-16 18:12:52.324411', '2026-01-16 18:12:52.000000', 'en', 'Vintage Folding Camera', 'vintage-folding-camera', 'This vintage folding camera is so antiquated that you cannot possibly hope to produce actual photographs with it. However, it makes a wonderful decorative piece for the home or office.', 14, 14),
('2026-01-16 18:12:52.809581', '2026-01-16 18:12:52.000000', 'en', 'Tripod', 'tripod', 'Capture vivid, professional-style photographs with help from this lightweight tripod. The adjustable-height tripod makes it easy to achieve reliable stability and score just the right angle when going after that award-winning shot.', 15, 15),
('2026-01-16 18:12:53.232927', '2026-01-16 18:12:53.000000', 'en', 'Instamatic Camera', 'instamatic-camera', 'This inexpensive point-and-shoot camera uses easy-to-load 126 film cartridges. A built-in flash unit ensure great results, no matter the lighting conditions.', 16, 16),
('2026-01-16 18:12:53.705619', '2026-01-16 18:12:53.000000', 'en', 'Compact Digital Camera', 'compact-digital-camera', 'Unleash your creative potential with high-level performance and advanced features such as AI-powered Real-time Eye AF; new, high-precision Real-time Tracking; high-speed continuous shooting and 4K HDR movie-shooting. The camera\'s innovative AF quickly and reliably detects the position of the subject and then tracks the subject\'s motion, keeping it in sharp focus.', 17, 17),
('2026-01-16 18:12:54.056658', '2026-01-16 18:12:54.000000', 'en', 'Nikkormat SLR Camera', 'nikkormat-slr-camera', 'The Nikkormat FS was brought to market by Nikon in 1965. The lens is a 50mm f1.4 Nikkor. Nice glass, smooth focus and a working diaphragm. A UV filter and a Nikon front lens cap are included with the lens.', 18, 18),
('2026-01-16 18:12:54.526260', '2026-01-16 18:12:54.000000', 'en', 'Compact SLR Camera', 'compact-slr-camera', 'Retro styled, portable in size and built around a powerful 24-megapixel APS-C CMOS sensor, this digital camera is the ideal companion for creative everyday photography. Packed full of high spec features such as an advanced hybrid autofocus system able to keep pace with even the most active subjects, a speedy 6fps continuous-shooting mode, high-resolution electronic viewfinder and intuitive swivelling touchscreen, it brings professional image making into everyone’s grasp.', 19, 19),
('2026-01-16 18:12:55.060282', '2026-01-16 18:12:55.000000', 'en', 'Twin Lens Camera', 'twin-lens-camera', 'What makes a Rolleiflex TLR so special? Many things. To start, TLR stands for twin lens reflex. “Twin” because there are two lenses. And reflex means that the photographer looks through the lens to view the reflected image of an object or scene on the focusing screen. ', 20, 20),
('2026-01-16 18:12:55.680142', '2026-01-16 18:12:55.000000', 'en', 'Road Bike', 'road-bike', 'Featuring a full carbon chassis - complete with cyclocross-specific carbon fork - and a component setup geared for hard use on the race circuit, it\'s got the low weight, exceptional efficiency and brilliant handling you\'ll need to stay at the front of the pack.', 21, 21),
('2026-01-16 18:12:56.218201', '2026-01-16 18:12:56.000000', 'en', 'Skipping Rope', 'skipping-rope', 'When you\'re working out you need a quality rope that doesn\'t tangle at every couple of jumps and with this skipping rope you won\'t have this problem. The fact that it looks like a pair of tasty frankfurters is merely a bonus.', 22, 22),
('2026-01-16 18:12:56.681714', '2026-01-16 18:12:56.000000', 'en', 'Boxing Gloves', 'boxing-gloves', 'Training gloves designed for optimum training. Our gloves promote proper punching technique because they are conformed to the natural shape of your fist. Dense, innovative two-layer foam provides better shock absorbency and full padding on the front, back and wrist to promote proper punching technique.', 23, 23),
('2026-01-16 18:12:57.219125', '2026-01-16 18:12:57.000000', 'en', 'Tent', 'tent', 'With tons of space inside (for max. 4 persons), full head height throughout the entire tent and an unusual and striking shape, this tent offers you everything you need.', 24, 24),
('2026-01-16 18:12:58.387109', '2026-01-16 18:12:58.000000', 'en', 'Cruiser Skateboard', 'cruiser-skateboard', 'Based on the 1970s iconic shape, but made to a larger 69cm size, with updated, quality component, these skateboards are great for beginners to learn the foot spacing required, and are perfect for all-day cruising.', 25, 25),
('2026-01-16 18:12:59.095583', '2026-01-16 18:12:59.000000', 'en', 'Football', 'football', 'This football features high-contrast graphics for high-visibility during play, while its machine-stitched tpu casing offers consistent performance.', 26, 26),
('2026-01-16 18:13:00.272316', '2026-01-16 18:13:00.000000', 'en', 'Tennis Ball', 'tennis-ball', 'Our dog loves these tennis balls and they last for some time before they eventually either get lost in some field or bush or the covering comes off due to it being used most of the day every day.', 27, 27),
('2026-01-16 18:13:00.682361', '2026-01-16 18:13:00.000000', 'en', 'Basketball', 'basketball', 'The Wilson MVP ball is perfect for playing basketball, and improving your skill for hours on end. Designed for new players, it is created with a high-quality rubber suitable for courts, allowing you to get full use during your practices.', 28, 28),
('2026-01-16 18:13:01.448131', '2026-01-16 18:13:01.000000', 'en', 'Ultraboost Running Shoe', 'ultraboost-running-shoe', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 29, 29),
('2026-01-16 18:13:02.932680', '2026-01-16 18:13:02.000000', 'en', 'Freerun Running Shoe', 'freerun-running-shoe', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 30, 30),
('2026-01-16 18:13:05.233478', '2026-01-16 18:13:05.000000', 'en', 'Hi-Top Basketball Shoe', 'hi-top-basketball-shoe', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 31, 31),
('2026-01-16 18:13:14.762430', '2026-01-16 18:13:14.000000', 'en', 'Pureboost Running Shoe', 'pureboost-running-shoe', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 32, 32),
('2026-01-16 18:13:17.582791', '2026-01-16 18:13:17.000000', 'en', 'RunX Running Shoe', 'runx-running-shoe', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 33, 33),
('2026-01-16 18:13:19.086394', '2026-01-16 18:13:19.000000', 'en', 'Allstar Sneakers', 'allstar-sneakers', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 34, 34),
('2026-01-16 18:13:22.498838', '2026-01-16 18:13:22.000000', 'en', 'Spiky Cactus', 'spiky-cactus', 'A spiky yet elegant house cactus - perfect for the home or office. Origin and habitat: Probably native only to the Andes of Peru', 35, 35),
('2026-01-16 18:13:22.842001', '2026-01-16 18:13:22.000000', 'en', 'Tulip Pot', 'tulip-pot', 'Bright crimson red species tulip with black centers, the poppy-like flowers will open up in full sun. Ideal for rock gardens, pots and border edging.', 36, 36),
('2026-01-16 18:13:23.117389', '2026-01-16 18:13:23.000000', 'en', 'Hanging Plant', 'hanging-plant', 'Can be found in tropical and sub-tropical America where it grows on the branches of trees, but also on telephone wires and electricity cables and poles that sometimes topple with the weight of these plants. This plant loves a moist and warm air.', 37, 37),
('2026-01-16 18:13:23.327222', '2026-01-16 18:13:23.000000', 'en', 'Aloe Vera', 'aloe-vera', 'Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works.', 38, 38),
('2026-01-16 18:13:23.578176', '2026-01-16 18:13:23.000000', 'en', 'Fern Blechnum Gibbum', 'fern-blechnum-gibbum', 'Create a tropical feel in your home with this lush green tree fern, it has decorative leaves and will develop a short slender trunk in time.', 39, 39),
('2026-01-16 18:13:23.780635', '2026-01-16 18:13:23.000000', 'en', 'Assorted Indoor Succulents', 'assorted-succulents', 'These assorted succulents come in a variety of different shapes and colours - each with their own unique personality. Succulents grow best in plenty of light: a sunny windowsill would be the ideal spot for them to thrive!', 40, 40),
('2026-01-16 18:13:23.998437', '2026-01-16 18:13:24.000000', 'en', 'Orchid', 'orchid', 'Gloriously elegant. It can go along with any interior as it is a neutral color and the most popular Phalaenopsis overall. 2 to 3 foot stems host large white flowers that can last for over 2 months.', 41, 41),
('2026-01-16 18:13:24.208937', '2026-01-16 18:13:24.000000', 'en', 'Bonsai Tree', 'bonsai-tree', 'Excellent semi-evergreen bonsai. Indoors or out but needs some winter protection. All trees sent will leave the nursery in excellent condition and will be of equal quality or better than the photograph shown.', 42, 42),
('2026-01-16 18:13:24.556248', '2026-01-16 18:13:24.000000', 'en', 'Guardian Lion Statue', 'guardian-lion-statue', 'Placing it at home or office can bring you fortune and prosperity, guard your house and ward off ill fortune.', 43, 43),
('2026-01-16 18:13:24.797402', '2026-01-16 18:13:24.000000', 'en', 'Hand Trowel', 'hand-trowel', 'Hand trowel for garden cultivating hammer finish epoxy-coated head for improved resistance to rust, scratches, humidity and alkalines in the soil.', 44, 44),
('2026-01-16 18:13:24.978925', '2026-01-16 18:13:25.000000', 'en', 'Balloon Chair', 'balloon-chair', 'A charming vintage white wooden chair featuring an extremely spherical pink balloon. The balloon may be detached and used for other purposes, for example as a party decoration.', 45, 45),
('2026-01-16 18:13:25.271529', '2026-01-16 18:13:25.000000', 'en', 'Grey Fabric Sofa', 'grey-fabric-sofa', 'Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up. The cover is easy to keep clean as it is removable and can be machine washed.', 46, 46),
('2026-01-16 18:13:25.706622', '2026-01-16 18:13:25.000000', 'en', 'Leather Sofa', 'leather-sofa', 'This premium, tan-brown bonded leather seat is part of the \'chill\' sofa range. The lever activated recline feature makes it easy to adjust to any position. This smart, bustle back design with rounded tight padded arms has been designed with your comfort in mind. This well-padded chair has foam pocket sprung seat cushions and fibre-filled back cushions.', 47, 47),
('2026-01-16 18:13:25.969807', '2026-01-16 18:13:26.000000', 'en', 'Light Shade', 'light-shade', 'Modern tapered white polycotton pendant shade with a metallic silver chrome interior finish for maximum light reflection. Reversible gimble so it can be used as a ceiling shade or as a lamp shade.', 48, 48),
('2026-01-16 18:13:26.281843', '2026-01-16 18:13:26.000000', 'en', 'Wooden Side Desk', 'wooden-side-desk', 'Drawer stops prevent the drawers from being pulled out too far. Built-in cable management for collecting cables and cords; out of sight but close at hand.', 49, 49),
('2026-01-16 18:13:26.561762', '2026-01-16 18:13:26.000000', 'en', 'Comfy Padded Chair', 'comfy-padded-chair', 'You sit comfortably thanks to the shaped back. The chair frame is made of solid wood, which is a durable natural material.', 50, 50),
('2026-01-16 18:13:26.909324', '2026-01-16 18:13:26.000000', 'en', 'Black Eaves Chair', 'black-eaves-chair', 'Comfortable to sit on thanks to the bowl-shaped seat and rounded shape of the backrest. No tools are required to assemble the chair, you just click it together with a simple mechanism under the seat.', 51, 51),
('2026-01-16 18:13:27.187224', '2026-01-16 18:13:27.000000', 'en', 'Wooden Stool', 'wooden-stool', 'Solid wood is a hardwearing natural material, which can be sanded and surface treated as required.', 52, 52),
('2026-01-16 18:13:27.612264', '2026-01-16 18:13:27.000000', 'en', 'Bedside Table', 'bedside-table', 'Every table is unique, with varying grain pattern and natural colour shifts that are part of the charm of wood.', 53, 53),
('2026-01-16 18:13:28.005139', '2026-01-16 18:13:28.000000', 'en', 'Modern Cafe Chair', 'modern-cafe-chair', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 54, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant`
--

CREATE TABLE `product_variant` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `sku` varchar(255) NOT NULL,
  `outOfStockThreshold` int(11) NOT NULL DEFAULT 0,
  `useGlobalOutOfStockThreshold` tinyint(4) NOT NULL DEFAULT 1,
  `trackInventory` varchar(255) NOT NULL DEFAULT 'INHERIT',
  `id` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `taxCategoryId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant`
--

INSERT INTO `product_variant` (`createdAt`, `updatedAt`, `deletedAt`, `enabled`, `sku`, `outOfStockThreshold`, `useGlobalOutOfStockThreshold`, `trackInventory`, `id`, `featuredAssetId`, `taxCategoryId`, `productId`) VALUES
('2026-01-16 18:12:37.675854', '2026-01-16 18:12:37.675854', NULL, 1, 'L2201308', 0, 1, 'INHERIT', 1, NULL, 1, 1),
('2026-01-16 18:12:37.866763', '2026-01-16 18:12:37.866763', NULL, 1, 'L2201508', 0, 1, 'INHERIT', 2, NULL, 1, 1),
('2026-01-16 18:12:40.232247', '2026-01-16 18:12:40.232247', NULL, 1, 'L2201316', 0, 1, 'INHERIT', 3, NULL, 1, 1),
('2026-01-16 18:12:41.986209', '2026-01-16 18:12:41.986209', NULL, 1, 'L2201516', 0, 1, 'INHERIT', 4, NULL, 1, 1),
('2026-01-16 18:12:42.750111', '2026-01-16 18:12:42.750111', NULL, 1, 'TBL200032', 0, 1, 'INHERIT', 5, NULL, 1, 2),
('2026-01-16 18:12:43.001860', '2026-01-16 18:12:43.001860', NULL, 1, 'TBL200128', 0, 1, 'INHERIT', 6, NULL, 1, 2),
('2026-01-16 18:12:43.478981', '2026-01-16 18:12:43.478981', NULL, 1, '834444', 0, 1, 'INHERIT', 7, NULL, 1, 3),
('2026-01-16 18:12:44.025020', '2026-01-16 18:12:44.025020', NULL, 1, 'LU32J590UQUXEN', 0, 1, 'INHERIT', 8, NULL, 1, 4),
('2026-01-16 18:12:44.640351', '2026-01-16 18:12:44.640351', NULL, 1, 'C24F390', 0, 1, 'INHERIT', 9, NULL, 1, 5),
('2026-01-16 18:12:44.846028', '2026-01-16 18:12:44.846028', NULL, 1, 'C27F390', 0, 1, 'INHERIT', 10, NULL, 1, 5),
('2026-01-16 18:12:45.642192', '2026-01-16 18:12:45.642192', NULL, 1, 'CMK32GX4M2AC04', 0, 1, 'INHERIT', 11, NULL, 1, 6),
('2026-01-16 18:12:45.846041', '2026-01-16 18:12:45.846041', NULL, 1, 'CMK32GX4M2AC08', 0, 1, 'INHERIT', 12, NULL, 1, 6),
('2026-01-16 18:12:46.129483', '2026-01-16 18:12:46.129483', NULL, 1, 'CMK32GX4M2AC16', 0, 1, 'INHERIT', 13, NULL, 1, 6),
('2026-01-16 18:12:47.134449', '2026-01-16 18:12:47.134449', NULL, 1, 'CGS480VR1063', 0, 1, 'INHERIT', 14, NULL, 1, 7),
('2026-01-16 18:12:47.314726', '2026-01-16 18:12:47.314726', NULL, 1, 'CGS480VR1064', 0, 1, 'INHERIT', 15, NULL, 1, 7),
('2026-01-16 18:12:47.514489', '2026-01-16 18:12:47.514489', NULL, 1, 'CGS480VR1065', 0, 1, 'INHERIT', 16, NULL, 1, 7),
('2026-01-16 18:12:47.730915', '2026-01-16 18:12:47.730915', NULL, 1, 'CGS480VR1066', 0, 1, 'INHERIT', 17, NULL, 1, 7),
('2026-01-16 18:12:48.810884', '2026-01-16 18:12:48.810884', NULL, 1, 'IHD455T1', 0, 1, 'INHERIT', 18, NULL, 1, 8),
('2026-01-16 18:12:49.008024', '2026-01-16 18:12:49.008024', NULL, 1, 'IHD455T2', 0, 1, 'INHERIT', 19, NULL, 1, 8),
('2026-01-16 18:12:49.201882', '2026-01-16 18:12:49.201882', NULL, 1, 'IHD455T3', 0, 1, 'INHERIT', 20, NULL, 1, 8),
('2026-01-16 18:12:49.470679', '2026-01-16 18:12:49.470679', NULL, 1, 'IHD455T4', 0, 1, 'INHERIT', 21, NULL, 1, 8),
('2026-01-16 18:12:49.705365', '2026-01-16 18:12:49.705365', NULL, 1, 'IHD455T6', 0, 1, 'INHERIT', 22, NULL, 1, 8),
('2026-01-16 18:12:50.194545', '2026-01-16 18:12:50.194545', NULL, 1, 'A4TKLA45535', 0, 1, 'INHERIT', 23, NULL, 1, 9),
('2026-01-16 18:12:50.540676', '2026-01-16 18:12:50.540676', NULL, 1, 'A23334x30', 0, 1, 'INHERIT', 24, NULL, 1, 10),
('2026-01-16 18:12:50.953671', '2026-01-16 18:12:50.953671', NULL, 1, 'USBCIN01.5MI', 0, 1, 'INHERIT', 25, NULL, 1, 11),
('2026-01-16 18:12:51.544839', '2026-01-16 18:12:51.544839', NULL, 1, 'IC22MWDD', 0, 1, 'INHERIT', 26, NULL, 1, 12),
('2026-01-16 18:12:51.991742', '2026-01-16 18:12:51.991742', NULL, 1, 'B0012UUP02', 0, 1, 'INHERIT', 27, NULL, 1, 13),
('2026-01-16 18:12:52.443601', '2026-01-16 18:12:52.443601', NULL, 1, 'B00AFC9099', 0, 1, 'INHERIT', 28, NULL, 1, 14),
('2026-01-16 18:12:52.939553', '2026-01-16 18:12:52.939553', NULL, 1, 'B00XI87KV8', 0, 1, 'INHERIT', 29, NULL, 1, 15),
('2026-01-16 18:12:53.349997', '2026-01-16 18:12:53.349997', NULL, 1, 'B07K1330LL', 0, 1, 'INHERIT', 30, NULL, 1, 16),
('2026-01-16 18:12:53.825686', '2026-01-16 18:12:53.825686', NULL, 1, 'B07D990021', 0, 1, 'INHERIT', 31, NULL, 1, 17),
('2026-01-16 18:12:54.200735', '2026-01-16 18:12:54.200735', NULL, 1, 'B07D33B334', 0, 1, 'INHERIT', 32, NULL, 1, 18),
('2026-01-16 18:12:54.623589', '2026-01-16 18:12:54.623589', NULL, 1, 'B07D75V44S', 0, 1, 'INHERIT', 33, NULL, 1, 19),
('2026-01-16 18:12:55.202958', '2026-01-16 18:12:55.202958', NULL, 1, 'B07D78JTLR', 0, 1, 'INHERIT', 34, NULL, 1, 20),
('2026-01-16 18:12:55.809168', '2026-01-16 18:12:55.809168', NULL, 1, 'RB000844334', 0, 1, 'INHERIT', 35, NULL, 1, 21),
('2026-01-16 18:12:56.450482', '2026-01-16 18:12:56.450482', NULL, 1, 'B07CNGXVXT', 0, 1, 'INHERIT', 36, NULL, 1, 22),
('2026-01-16 18:12:56.827043', '2026-01-16 18:12:56.827043', NULL, 1, 'B000ZYLPPU', 0, 1, 'INHERIT', 37, NULL, 1, 23),
('2026-01-16 18:12:57.617600', '2026-01-16 18:12:57.617600', NULL, 1, '2000023510', 0, 1, 'INHERIT', 38, NULL, 1, 24),
('2026-01-16 18:12:58.642968', '2026-01-16 18:12:58.642968', NULL, 1, '799872520', 0, 1, 'INHERIT', 39, NULL, 1, 25),
('2026-01-16 18:12:59.819035', '2026-01-16 18:12:59.819035', NULL, 1, 'SC3137-056', 0, 1, 'INHERIT', 40, NULL, 1, 26),
('2026-01-16 18:13:00.448885', '2026-01-16 18:13:00.448885', NULL, 1, 'WRT11752P', 0, 1, 'INHERIT', 41, NULL, 1, 27),
('2026-01-16 18:13:00.787139', '2026-01-16 18:13:00.787139', NULL, 1, 'WTB1418XB06', 0, 1, 'INHERIT', 42, NULL, 1, 28),
('2026-01-16 18:13:01.978427', '2026-01-16 18:13:01.978427', NULL, 1, 'RS0040', 0, 1, 'INHERIT', 43, NULL, 1, 29),
('2026-01-16 18:13:02.175712', '2026-01-16 18:13:02.175712', NULL, 1, 'RS0042', 0, 1, 'INHERIT', 44, NULL, 1, 29),
('2026-01-16 18:13:02.425468', '2026-01-16 18:13:02.425468', NULL, 1, 'RS0044', 0, 1, 'INHERIT', 45, NULL, 1, 29),
('2026-01-16 18:13:02.595442', '2026-01-16 18:13:02.595442', NULL, 1, 'RS0046', 0, 1, 'INHERIT', 46, NULL, 1, 29),
('2026-01-16 18:13:03.486801', '2026-01-16 18:13:03.486801', NULL, 1, 'AR4561-40', 0, 1, 'INHERIT', 47, NULL, 1, 30),
('2026-01-16 18:13:03.730274', '2026-01-16 18:13:03.730274', NULL, 1, 'AR4561-42', 0, 1, 'INHERIT', 48, NULL, 1, 30),
('2026-01-16 18:13:04.042943', '2026-01-16 18:13:04.042943', NULL, 1, 'AR4561-44', 0, 1, 'INHERIT', 49, NULL, 1, 30),
('2026-01-16 18:13:04.769787', '2026-01-16 18:13:04.769787', NULL, 1, 'AR4561-46', 0, 1, 'INHERIT', 50, NULL, 1, 30),
('2026-01-16 18:13:05.645423', '2026-01-16 18:13:05.645423', NULL, 1, 'AO7893-40', 0, 1, 'INHERIT', 51, NULL, 1, 31),
('2026-01-16 18:13:09.540160', '2026-01-16 18:13:09.540160', NULL, 1, 'AO7893-42', 0, 1, 'INHERIT', 52, NULL, 1, 31),
('2026-01-16 18:13:11.079853', '2026-01-16 18:13:11.079853', NULL, 1, 'AO7893-44', 0, 1, 'INHERIT', 53, NULL, 1, 31),
('2026-01-16 18:13:12.115883', '2026-01-16 18:13:12.115883', NULL, 1, 'AO7893-46', 0, 1, 'INHERIT', 54, NULL, 1, 31),
('2026-01-16 18:13:16.260873', '2026-01-16 18:13:16.260873', NULL, 1, 'F3578640', 0, 1, 'INHERIT', 55, NULL, 1, 32),
('2026-01-16 18:13:16.533183', '2026-01-16 18:13:16.533183', NULL, 1, 'F3578642', 0, 1, 'INHERIT', 56, NULL, 1, 32),
('2026-01-16 18:13:16.813359', '2026-01-16 18:13:16.813359', NULL, 1, 'F3578644', 0, 1, 'INHERIT', 57, NULL, 1, 32),
('2026-01-16 18:13:17.086300', '2026-01-16 18:13:17.086300', NULL, 1, 'F3578646', 0, 1, 'INHERIT', 58, NULL, 1, 32),
('2026-01-16 18:13:18.087523', '2026-01-16 18:13:18.087523', NULL, 1, 'F3633340', 0, 1, 'INHERIT', 59, NULL, 1, 33),
('2026-01-16 18:13:18.329726', '2026-01-16 18:13:18.329726', NULL, 1, 'F3633342', 0, 1, 'INHERIT', 60, NULL, 1, 33),
('2026-01-16 18:13:18.556604', '2026-01-16 18:13:18.556604', NULL, 1, 'F3633344', 0, 1, 'INHERIT', 61, NULL, 1, 33),
('2026-01-16 18:13:18.762157', '2026-01-16 18:13:18.762157', NULL, 1, 'F3633346', 0, 1, 'INHERIT', 62, NULL, 1, 33),
('2026-01-16 18:13:21.149526', '2026-01-16 18:13:21.149526', NULL, 1, 'CAS23340', 0, 1, 'INHERIT', 63, NULL, 1, 34),
('2026-01-16 18:13:21.362358', '2026-01-16 18:13:21.362358', NULL, 1, 'CAS23342', 0, 1, 'INHERIT', 64, NULL, 1, 34),
('2026-01-16 18:13:21.807767', '2026-01-16 18:13:21.807767', NULL, 1, 'CAS23344', 0, 1, 'INHERIT', 65, NULL, 1, 34),
('2026-01-16 18:13:21.990503', '2026-01-16 18:13:21.990503', NULL, 1, 'CAS23346', 0, 1, 'INHERIT', 66, NULL, 1, 34),
('2026-01-16 18:13:22.594761', '2026-01-16 18:13:22.594761', NULL, 1, 'SC011001', 0, 1, 'INHERIT', 67, NULL, 1, 35),
('2026-01-16 18:13:22.945915', '2026-01-16 18:13:22.945915', NULL, 1, 'A58477', 0, 1, 'INHERIT', 68, NULL, 1, 36),
('2026-01-16 18:13:23.190760', '2026-01-16 18:13:23.190760', NULL, 1, 'A44223', 0, 1, 'INHERIT', 69, NULL, 1, 37),
('2026-01-16 18:13:23.404747', '2026-01-16 18:13:23.404747', NULL, 1, 'A44352', 0, 1, 'INHERIT', 70, NULL, 1, 38),
('2026-01-16 18:13:23.633904', '2026-01-16 18:13:23.633904', NULL, 1, 'A04851', 0, 1, 'INHERIT', 71, NULL, 1, 39),
('2026-01-16 18:13:23.849714', '2026-01-16 18:13:23.849714', NULL, 1, 'A08593', 0, 1, 'INHERIT', 72, NULL, 1, 40),
('2026-01-16 18:13:24.073246', '2026-01-16 18:13:24.073246', NULL, 1, 'ROR00221', 0, 1, 'INHERIT', 73, NULL, 1, 41),
('2026-01-16 18:13:24.280165', '2026-01-16 18:13:24.280165', NULL, 1, 'B01MXFLUSV', 0, 1, 'INHERIT', 74, NULL, 1, 42),
('2026-01-16 18:13:24.637696', '2026-01-16 18:13:24.637696', NULL, 1, 'GL34LLW11', 0, 1, 'INHERIT', 75, NULL, 1, 43),
('2026-01-16 18:13:24.861571', '2026-01-16 18:13:24.861571', NULL, 1, '4058NB/09', 0, 1, 'INHERIT', 76, NULL, 1, 44),
('2026-01-16 18:13:25.074624', '2026-01-16 18:13:25.074624', NULL, 1, '34-BC82444', 0, 1, 'INHERIT', 77, NULL, 1, 45),
('2026-01-16 18:13:25.397790', '2026-01-16 18:13:25.397790', NULL, 1, 'CH00001-12', 0, 1, 'INHERIT', 78, NULL, 1, 46),
('2026-01-16 18:13:25.805617', '2026-01-16 18:13:25.805617', NULL, 1, 'CH00001-02', 0, 1, 'INHERIT', 79, NULL, 1, 47),
('2026-01-16 18:13:26.081552', '2026-01-16 18:13:26.081552', NULL, 1, 'B45809LSW', 0, 1, 'INHERIT', 80, NULL, 1, 48),
('2026-01-16 18:13:26.379882', '2026-01-16 18:13:26.379882', NULL, 1, '304.096.29', 0, 1, 'INHERIT', 81, NULL, 1, 49),
('2026-01-16 18:13:26.644727', '2026-01-16 18:13:26.644727', NULL, 1, '404.068.14', 0, 1, 'INHERIT', 82, NULL, 1, 50),
('2026-01-16 18:13:27.020351', '2026-01-16 18:13:27.020351', NULL, 1, '003.600.02', 0, 1, 'INHERIT', 83, NULL, 1, 51),
('2026-01-16 18:13:27.365417', '2026-01-16 18:13:27.365417', NULL, 1, '202.493.30', 0, 1, 'INHERIT', 84, NULL, 1, 52),
('2026-01-16 18:13:27.813829', '2026-01-16 18:13:27.813829', NULL, 1, '404.290.14', 0, 1, 'INHERIT', 85, NULL, 1, 53),
('2026-01-16 18:13:28.478379', '2026-01-16 18:13:28.478379', NULL, 1, '404.038.96', 0, 1, 'INHERIT', 86, NULL, 1, 54),
('2026-01-16 18:13:29.282643', '2026-01-16 18:13:29.282643', NULL, 1, '404.038.96', 0, 1, 'INHERIT', 87, NULL, 1, 54),
('2026-01-16 18:13:31.225611', '2026-01-16 18:13:31.225611', NULL, 1, '404.038.96', 0, 1, 'INHERIT', 88, NULL, 1, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_asset`
--

CREATE TABLE `product_variant_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_channels_channel`
--

CREATE TABLE `product_variant_channels_channel` (
  `productVariantId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_channels_channel`
--

INSERT INTO `product_variant_channels_channel` (`productVariantId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_facet_values_facet_value`
--

CREATE TABLE `product_variant_facet_values_facet_value` (
  `productVariantId` int(11) NOT NULL,
  `facetValueId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_facet_values_facet_value`
--

INSERT INTO `product_variant_facet_values_facet_value` (`productVariantId`, `facetValueId`) VALUES
(86, 38),
(87, 39),
(88, 28);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_options_product_option`
--

CREATE TABLE `product_variant_options_product_option` (
  `productVariantId` int(11) NOT NULL,
  `productOptionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_options_product_option`
--

INSERT INTO `product_variant_options_product_option` (`productVariantId`, `productOptionId`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 3),
(3, 1),
(3, 4),
(4, 2),
(4, 4),
(5, 5),
(6, 6),
(9, 7),
(10, 8),
(11, 9),
(12, 10),
(13, 11),
(14, 12),
(14, 14),
(15, 13),
(15, 14),
(16, 12),
(16, 15),
(17, 13),
(17, 15),
(18, 16),
(19, 17),
(20, 18),
(21, 19),
(22, 20),
(43, 21),
(44, 22),
(45, 23),
(46, 24),
(47, 25),
(48, 26),
(49, 27),
(50, 28),
(51, 29),
(52, 30),
(53, 31),
(54, 32),
(55, 33),
(56, 34),
(57, 35),
(58, 36),
(59, 37),
(60, 38),
(61, 39),
(62, 40),
(63, 41),
(64, 42),
(65, 43),
(66, 44),
(86, 45),
(87, 46),
(88, 47);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_price`
--

CREATE TABLE `product_variant_price` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `currencyCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `channelId` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `variantId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_price`
--

INSERT INTO `product_variant_price` (`createdAt`, `updatedAt`, `currencyCode`, `id`, `channelId`, `price`, `variantId`) VALUES
('2026-01-16 18:12:37.819421', '2026-01-16 18:12:37.819421', 'USD', 1, 1, 129900, 1),
('2026-01-16 18:12:40.150583', '2026-01-16 18:12:40.150583', 'USD', 2, 1, 139900, 2),
('2026-01-16 18:12:41.841623', '2026-01-16 18:12:41.841623', 'USD', 3, 1, 219900, 3),
('2026-01-16 18:12:42.149408', '2026-01-16 18:12:42.149408', 'USD', 4, 1, 229900, 4),
('2026-01-16 18:12:42.930340', '2026-01-16 18:12:42.930340', 'USD', 5, 1, 32900, 5),
('2026-01-16 18:12:43.151928', '2026-01-16 18:12:43.151928', 'USD', 6, 1, 44500, 6),
('2026-01-16 18:12:43.627561', '2026-01-16 18:12:43.627561', 'USD', 7, 1, 1899, 7),
('2026-01-16 18:12:44.217856', '2026-01-16 18:12:44.217856', 'USD', 8, 1, 31000, 8),
('2026-01-16 18:12:44.783293', '2026-01-16 18:12:44.783293', 'USD', 9, 1, 14374, 9),
('2026-01-16 18:12:44.996904', '2026-01-16 18:12:44.996904', 'USD', 10, 1, 16994, 10),
('2026-01-16 18:12:45.779545', '2026-01-16 18:12:45.779545', 'USD', 11, 1, 13785, 11),
('2026-01-16 18:12:46.024486', '2026-01-16 18:12:46.024486', 'USD', 12, 1, 14639, 12),
('2026-01-16 18:12:46.373301', '2026-01-16 18:12:46.373301', 'USD', 13, 1, 28181, 13),
('2026-01-16 18:12:47.262023', '2026-01-16 18:12:47.262023', 'USD', 14, 1, 108720, 14),
('2026-01-16 18:12:47.465316', '2026-01-16 18:12:47.465316', 'USD', 15, 1, 109995, 15),
('2026-01-16 18:12:47.659791', '2026-01-16 18:12:47.659791', 'USD', 16, 1, 93120, 16),
('2026-01-16 18:12:47.913295', '2026-01-16 18:12:47.913295', 'USD', 17, 1, 94920, 17),
('2026-01-16 18:12:48.945497', '2026-01-16 18:12:48.945497', 'USD', 18, 1, 3799, 18),
('2026-01-16 18:12:49.147769', '2026-01-16 18:12:49.147769', 'USD', 19, 1, 5374, 19),
('2026-01-16 18:12:49.423188', '2026-01-16 18:12:49.423188', 'USD', 20, 1, 7896, 20),
('2026-01-16 18:12:49.644191', '2026-01-16 18:12:49.644191', 'USD', 21, 1, 9299, 21),
('2026-01-16 18:12:49.853462', '2026-01-16 18:12:49.853462', 'USD', 22, 1, 13435, 22),
('2026-01-16 18:12:50.313273', '2026-01-16 18:12:50.313273', 'USD', 23, 1, 7489, 23),
('2026-01-16 18:12:50.685622', '2026-01-16 18:12:50.685622', 'USD', 24, 1, 597, 24),
('2026-01-16 18:12:51.088960', '2026-01-16 18:12:51.088960', 'USD', 25, 1, 6900, 25),
('2026-01-16 18:12:51.693021', '2026-01-16 18:12:51.693021', 'USD', 26, 1, 17499, 26),
('2026-01-16 18:12:52.146824', '2026-01-16 18:12:52.146824', 'USD', 27, 1, 10400, 27),
('2026-01-16 18:12:52.624573', '2026-01-16 18:12:52.624573', 'USD', 28, 1, 535000, 28),
('2026-01-16 18:12:53.059456', '2026-01-16 18:12:53.059456', 'USD', 29, 1, 1498, 29),
('2026-01-16 18:12:53.499817', '2026-01-16 18:12:53.499817', 'USD', 30, 1, 2000, 30),
('2026-01-16 18:12:53.958711', '2026-01-16 18:12:53.958711', 'USD', 31, 1, 89999, 31),
('2026-01-16 18:12:54.423847', '2026-01-16 18:12:54.423847', 'USD', 32, 1, 61500, 32),
('2026-01-16 18:12:54.779545', '2026-01-16 18:12:54.779545', 'USD', 33, 1, 52100, 33),
('2026-01-16 18:12:55.296414', '2026-01-16 18:12:55.296414', 'USD', 34, 1, 79900, 34),
('2026-01-16 18:12:55.941766', '2026-01-16 18:12:55.941766', 'USD', 35, 1, 249900, 35),
('2026-01-16 18:12:56.564727', '2026-01-16 18:12:56.564727', 'USD', 36, 1, 799, 36),
('2026-01-16 18:12:57.012026', '2026-01-16 18:12:57.012026', 'USD', 37, 1, 3304, 37),
('2026-01-16 18:12:58.027166', '2026-01-16 18:12:58.027166', 'USD', 38, 1, 21493, 38),
('2026-01-16 18:12:58.862902', '2026-01-16 18:12:58.862902', 'USD', 39, 1, 2499, 39),
('2026-01-16 18:12:59.982166', '2026-01-16 18:12:59.982166', 'USD', 40, 1, 5707, 40),
('2026-01-16 18:13:00.572301', '2026-01-16 18:13:00.572301', 'USD', 41, 1, 1273, 41),
('2026-01-16 18:13:00.915325', '2026-01-16 18:13:00.915325', 'USD', 42, 1, 3562, 42),
('2026-01-16 18:13:02.126537', '2026-01-16 18:13:02.126537', 'USD', 43, 1, 9999, 43),
('2026-01-16 18:13:02.354740', '2026-01-16 18:13:02.354740', 'USD', 44, 1, 9999, 44),
('2026-01-16 18:13:02.543631', '2026-01-16 18:13:02.543631', 'USD', 45, 1, 9999, 45),
('2026-01-16 18:13:02.742194', '2026-01-16 18:13:02.742194', 'USD', 46, 1, 9999, 46),
('2026-01-16 18:13:03.673783', '2026-01-16 18:13:03.673783', 'USD', 47, 1, 16000, 47),
('2026-01-16 18:13:03.862682', '2026-01-16 18:13:03.862682', 'USD', 48, 1, 16000, 48),
('2026-01-16 18:13:04.610393', '2026-01-16 18:13:04.610393', 'USD', 49, 1, 16000, 49),
('2026-01-16 18:13:04.977594', '2026-01-16 18:13:04.977594', 'USD', 50, 1, 16000, 50),
('2026-01-16 18:13:08.406185', '2026-01-16 18:13:08.406185', 'USD', 51, 1, 14000, 51),
('2026-01-16 18:13:10.953143', '2026-01-16 18:13:10.953143', 'USD', 52, 1, 14000, 52),
('2026-01-16 18:13:11.879603', '2026-01-16 18:13:11.879603', 'USD', 53, 1, 14000, 53),
('2026-01-16 18:13:13.250214', '2026-01-16 18:13:13.250214', 'USD', 54, 1, 14000, 54),
('2026-01-16 18:13:16.473258', '2026-01-16 18:13:16.473258', 'USD', 55, 1, 9995, 55),
('2026-01-16 18:13:16.772586', '2026-01-16 18:13:16.772586', 'USD', 56, 1, 9995, 56),
('2026-01-16 18:13:17.031523', '2026-01-16 18:13:17.031523', 'USD', 57, 1, 9995, 57),
('2026-01-16 18:13:17.364505', '2026-01-16 18:13:17.364505', 'USD', 58, 1, 9995, 58),
('2026-01-16 18:13:18.290082', '2026-01-16 18:13:18.290082', 'USD', 59, 1, 4495, 59),
('2026-01-16 18:13:18.522825', '2026-01-16 18:13:18.522825', 'USD', 60, 1, 4495, 60),
('2026-01-16 18:13:18.651288', '2026-01-16 18:13:18.651288', 'USD', 61, 1, 4495, 61),
('2026-01-16 18:13:18.849196', '2026-01-16 18:13:18.849196', 'USD', 62, 1, 4495, 62),
('2026-01-16 18:13:21.323516', '2026-01-16 18:13:21.323516', 'USD', 63, 1, 6500, 63),
('2026-01-16 18:13:21.586783', '2026-01-16 18:13:21.586783', 'USD', 64, 1, 6500, 64),
('2026-01-16 18:13:21.917423', '2026-01-16 18:13:21.917423', 'USD', 65, 1, 6500, 65),
('2026-01-16 18:13:22.113491', '2026-01-16 18:13:22.113491', 'USD', 66, 1, 6500, 66),
('2026-01-16 18:13:22.686616', '2026-01-16 18:13:22.686616', 'USD', 67, 1, 1550, 67),
('2026-01-16 18:13:23.033262', '2026-01-16 18:13:23.033262', 'USD', 68, 1, 675, 68),
('2026-01-16 18:13:23.254849', '2026-01-16 18:13:23.254849', 'USD', 69, 1, 1995, 69),
('2026-01-16 18:13:23.490759', '2026-01-16 18:13:23.490759', 'USD', 70, 1, 699, 70),
('2026-01-16 18:13:23.701385', '2026-01-16 18:13:23.701385', 'USD', 71, 1, 895, 71),
('2026-01-16 18:13:23.939583', '2026-01-16 18:13:23.939583', 'USD', 72, 1, 3250, 72),
('2026-01-16 18:13:24.144654', '2026-01-16 18:13:24.144654', 'USD', 73, 1, 6500, 73),
('2026-01-16 18:13:24.361906', '2026-01-16 18:13:24.361906', 'USD', 74, 1, 1999, 74),
('2026-01-16 18:13:24.724031', '2026-01-16 18:13:24.724031', 'USD', 75, 1, 18853, 75),
('2026-01-16 18:13:24.921677', '2026-01-16 18:13:24.921677', 'USD', 76, 1, 499, 76),
('2026-01-16 18:13:25.190426', '2026-01-16 18:13:25.190426', 'USD', 77, 1, 6500, 77),
('2026-01-16 18:13:25.504832', '2026-01-16 18:13:25.504832', 'USD', 78, 1, 29500, 78),
('2026-01-16 18:13:25.894572', '2026-01-16 18:13:25.894572', 'USD', 79, 1, 124500, 79),
('2026-01-16 18:13:26.171055', '2026-01-16 18:13:26.171055', 'USD', 80, 1, 2845, 80),
('2026-01-16 18:13:26.463424', '2026-01-16 18:13:26.463424', 'USD', 81, 1, 12500, 81),
('2026-01-16 18:13:26.778719', '2026-01-16 18:13:26.778719', 'USD', 82, 1, 13000, 82),
('2026-01-16 18:13:27.122837', '2026-01-16 18:13:27.122837', 'USD', 83, 1, 7000, 83),
('2026-01-16 18:13:27.521298', '2026-01-16 18:13:27.521298', 'USD', 84, 1, 1400, 84),
('2026-01-16 18:13:27.922305', '2026-01-16 18:13:27.922305', 'USD', 85, 1, 13000, 85),
('2026-01-16 18:13:28.614594', '2026-01-16 18:13:28.614594', 'USD', 86, 1, 10000, 86),
('2026-01-16 18:13:31.057221', '2026-01-16 18:13:31.057221', 'USD', 87, 1, 10000, 87),
('2026-01-16 18:13:31.704603', '2026-01-16 18:13:31.704603', 'USD', 88, 1, 10000, 88);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_translation`
--

CREATE TABLE `product_variant_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_translation`
--

INSERT INTO `product_variant_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2026-01-16 18:12:37.649875', '2026-01-16 18:12:37.000000', 'en', 'Laptop 13 inch 8GB', 1, 1),
('2026-01-16 18:12:37.847405', '2026-01-16 18:12:37.000000', 'en', 'Laptop 15 inch 8GB', 2, 2),
('2026-01-16 18:12:40.203117', '2026-01-16 18:12:40.000000', 'en', 'Laptop 13 inch 16GB', 3, 3),
('2026-01-16 18:12:41.883933', '2026-01-16 18:12:42.000000', 'en', 'Laptop 15 inch 16GB', 4, 4),
('2026-01-16 18:12:42.669683', '2026-01-16 18:12:42.000000', 'en', 'Tablet 32GB', 5, 5),
('2026-01-16 18:12:42.965861', '2026-01-16 18:12:43.000000', 'en', 'Tablet 128GB', 6, 6),
('2026-01-16 18:12:43.454920', '2026-01-16 18:12:43.000000', 'en', 'Wireless Optical Mouse', 7, 7),
('2026-01-16 18:12:43.986198', '2026-01-16 18:12:44.000000', 'en', '32-Inch Monitor', 8, 8),
('2026-01-16 18:12:44.618749', '2026-01-16 18:12:44.000000', 'en', 'Curvy Monitor 24 inch', 9, 9),
('2026-01-16 18:12:44.803941', '2026-01-16 18:12:44.000000', 'en', 'Curvy Monitor 27 inch', 10, 10),
('2026-01-16 18:12:45.618578', '2026-01-16 18:12:45.000000', 'en', 'High Performance RAM 4GB', 11, 11),
('2026-01-16 18:12:45.805866', '2026-01-16 18:12:45.000000', 'en', 'High Performance RAM 8GB', 12, 12),
('2026-01-16 18:12:46.072165', '2026-01-16 18:12:46.000000', 'en', 'High Performance RAM 16GB', 13, 13),
('2026-01-16 18:12:47.114601', '2026-01-16 18:12:47.000000', 'en', 'Gaming PC i7-8700 240GB SSD', 14, 14),
('2026-01-16 18:12:47.281587', '2026-01-16 18:12:47.000000', 'en', 'Gaming PC R7-2700 240GB SSD', 15, 15),
('2026-01-16 18:12:47.490937', '2026-01-16 18:12:47.000000', 'en', 'Gaming PC i7-8700 120GB SSD', 16, 16),
('2026-01-16 18:12:47.695760', '2026-01-16 18:12:47.000000', 'en', 'Gaming PC R7-2700 120GB SSD', 17, 17),
('2026-01-16 18:12:48.790115', '2026-01-16 18:12:48.000000', 'en', 'Hard Drive 1TB', 18, 18),
('2026-01-16 18:12:48.973662', '2026-01-16 18:12:49.000000', 'en', 'Hard Drive 2TB', 19, 19),
('2026-01-16 18:12:49.175198', '2026-01-16 18:12:49.000000', 'en', 'Hard Drive 3TB', 20, 20),
('2026-01-16 18:12:49.448820', '2026-01-16 18:12:49.000000', 'en', 'Hard Drive 4TB', 21, 21),
('2026-01-16 18:12:49.669551', '2026-01-16 18:12:49.000000', 'en', 'Hard Drive 6TB', 22, 22),
('2026-01-16 18:12:50.160318', '2026-01-16 18:12:50.000000', 'en', 'Clacky Keyboard', 23, 23),
('2026-01-16 18:12:50.513809', '2026-01-16 18:12:50.000000', 'en', 'Ethernet Cable', 24, 24),
('2026-01-16 18:12:50.908907', '2026-01-16 18:12:50.000000', 'en', 'USB Cable', 25, 25),
('2026-01-16 18:12:51.515249', '2026-01-16 18:12:51.000000', 'en', 'Instant Camera', 26, 26),
('2026-01-16 18:12:51.956002', '2026-01-16 18:12:52.000000', 'en', 'Camera Lens', 27, 27),
('2026-01-16 18:12:52.409479', '2026-01-16 18:12:52.000000', 'en', 'Vintage Folding Camera', 28, 28),
('2026-01-16 18:12:52.903002', '2026-01-16 18:12:52.000000', 'en', 'Tripod', 29, 29),
('2026-01-16 18:12:53.315716', '2026-01-16 18:12:53.000000', 'en', 'Instamatic Camera', 30, 30),
('2026-01-16 18:12:53.794666', '2026-01-16 18:12:53.000000', 'en', 'Compact Digital Camera', 31, 31),
('2026-01-16 18:12:54.139646', '2026-01-16 18:12:54.000000', 'en', 'Nikkormat SLR Camera', 32, 32),
('2026-01-16 18:12:54.601740', '2026-01-16 18:12:54.000000', 'en', 'Compact SLR Camera', 33, 33),
('2026-01-16 18:12:55.176077', '2026-01-16 18:12:55.000000', 'en', 'Twin Lens Camera', 34, 34),
('2026-01-16 18:12:55.780726', '2026-01-16 18:12:55.000000', 'en', 'Road Bike', 35, 35),
('2026-01-16 18:12:56.428540', '2026-01-16 18:12:56.000000', 'en', 'Skipping Rope', 36, 36),
('2026-01-16 18:12:56.792571', '2026-01-16 18:12:56.000000', 'en', 'Boxing Gloves', 37, 37),
('2026-01-16 18:12:57.546231', '2026-01-16 18:12:57.000000', 'en', 'Tent', 38, 38),
('2026-01-16 18:12:58.582737', '2026-01-16 18:12:58.000000', 'en', 'Cruiser Skateboard', 39, 39),
('2026-01-16 18:12:59.780981', '2026-01-16 18:12:59.000000', 'en', 'Football', 40, 40),
('2026-01-16 18:13:00.411682', '2026-01-16 18:13:00.000000', 'en', 'Tennis Ball', 41, 41),
('2026-01-16 18:13:00.766876', '2026-01-16 18:13:00.000000', 'en', 'Basketball', 42, 42),
('2026-01-16 18:13:01.956459', '2026-01-16 18:13:02.000000', 'en', 'Ultraboost Running Shoe Size 40', 43, 43),
('2026-01-16 18:13:02.151863', '2026-01-16 18:13:02.000000', 'en', 'Ultraboost Running Shoe Size 42', 44, 44),
('2026-01-16 18:13:02.389850', '2026-01-16 18:13:02.000000', 'en', 'Ultraboost Running Shoe Size 44', 45, 45),
('2026-01-16 18:13:02.567408', '2026-01-16 18:13:02.000000', 'en', 'Ultraboost Running Shoe Size 46', 46, 46),
('2026-01-16 18:13:03.374368', '2026-01-16 18:13:03.000000', 'en', 'Freerun Running Shoe Size 40', 47, 47),
('2026-01-16 18:13:03.708778', '2026-01-16 18:13:03.000000', 'en', 'Freerun Running Shoe Size 42', 48, 48),
('2026-01-16 18:13:03.949430', '2026-01-16 18:13:04.000000', 'en', 'Freerun Running Shoe Size 44', 49, 49),
('2026-01-16 18:13:04.691842', '2026-01-16 18:13:04.000000', 'en', 'Freerun Running Shoe Size 46', 50, 50),
('2026-01-16 18:13:05.609670', '2026-01-16 18:13:05.000000', 'en', 'Hi-Top Basketball Shoe Size 40', 51, 51),
('2026-01-16 18:13:09.218532', '2026-01-16 18:13:09.000000', 'en', 'Hi-Top Basketball Shoe Size 42', 52, 52),
('2026-01-16 18:13:11.005760', '2026-01-16 18:13:11.000000', 'en', 'Hi-Top Basketball Shoe Size 44', 53, 53),
('2026-01-16 18:13:12.011356', '2026-01-16 18:13:12.000000', 'en', 'Hi-Top Basketball Shoe Size 46', 54, 54),
('2026-01-16 18:13:16.236364', '2026-01-16 18:13:16.000000', 'en', 'Pureboost Running Shoe Size 40', 55, 55),
('2026-01-16 18:13:16.494900', '2026-01-16 18:13:16.000000', 'en', 'Pureboost Running Shoe Size 42', 56, 56),
('2026-01-16 18:13:16.790592', '2026-01-16 18:13:16.000000', 'en', 'Pureboost Running Shoe Size 44', 57, 57),
('2026-01-16 18:13:17.060245', '2026-01-16 18:13:17.000000', 'en', 'Pureboost Running Shoe Size 46', 58, 58),
('2026-01-16 18:13:18.068217', '2026-01-16 18:13:18.000000', 'en', 'RunX Running Shoe Size 40', 59, 59),
('2026-01-16 18:13:18.306725', '2026-01-16 18:13:18.000000', 'en', 'RunX Running Shoe Size 42', 60, 60),
('2026-01-16 18:13:18.538618', '2026-01-16 18:13:18.000000', 'en', 'RunX Running Shoe Size 44', 61, 61),
('2026-01-16 18:13:18.733944', '2026-01-16 18:13:18.000000', 'en', 'RunX Running Shoe Size 46', 62, 62),
('2026-01-16 18:13:21.045613', '2026-01-16 18:13:21.000000', 'en', 'Allstar Sneakers Size 40', 63, 63),
('2026-01-16 18:13:21.341911', '2026-01-16 18:13:21.000000', 'en', 'Allstar Sneakers Size 42', 64, 64),
('2026-01-16 18:13:21.649479', '2026-01-16 18:13:21.000000', 'en', 'Allstar Sneakers Size 44', 65, 65),
('2026-01-16 18:13:21.967375', '2026-01-16 18:13:22.000000', 'en', 'Allstar Sneakers Size 46', 66, 66),
('2026-01-16 18:13:22.572658', '2026-01-16 18:13:22.000000', 'en', 'Spiky Cactus', 67, 67),
('2026-01-16 18:13:22.927082', '2026-01-16 18:13:22.000000', 'en', 'Tulip Pot', 68, 68),
('2026-01-16 18:13:23.178481', '2026-01-16 18:13:23.000000', 'en', 'Hanging Plant', 69, 69),
('2026-01-16 18:13:23.386598', '2026-01-16 18:13:23.000000', 'en', 'Aloe Vera', 70, 70),
('2026-01-16 18:13:23.621083', '2026-01-16 18:13:23.000000', 'en', 'Fern Blechnum Gibbum', 71, 71),
('2026-01-16 18:13:23.834605', '2026-01-16 18:13:23.000000', 'en', 'Assorted Indoor Succulents', 72, 72),
('2026-01-16 18:13:24.060601', '2026-01-16 18:13:24.000000', 'en', 'Orchid', 73, 73),
('2026-01-16 18:13:24.264805', '2026-01-16 18:13:24.000000', 'en', 'Bonsai Tree', 74, 74),
('2026-01-16 18:13:24.617264', '2026-01-16 18:13:24.000000', 'en', 'Guardian Lion Statue', 75, 75),
('2026-01-16 18:13:24.849478', '2026-01-16 18:13:24.000000', 'en', 'Hand Trowel', 76, 76),
('2026-01-16 18:13:25.046753', '2026-01-16 18:13:25.000000', 'en', 'Balloon Chair', 77, 77),
('2026-01-16 18:13:25.370135', '2026-01-16 18:13:25.000000', 'en', 'Grey Fabric Sofa', 78, 78),
('2026-01-16 18:13:25.783335', '2026-01-16 18:13:25.000000', 'en', 'Leather Sofa', 79, 79),
('2026-01-16 18:13:26.056038', '2026-01-16 18:13:26.000000', 'en', 'Light Shade', 80, 80),
('2026-01-16 18:13:26.358931', '2026-01-16 18:13:26.000000', 'en', 'Wooden Side Desk', 81, 81),
('2026-01-16 18:13:26.626914', '2026-01-16 18:13:26.000000', 'en', 'Comfy Padded Chair', 82, 82),
('2026-01-16 18:13:26.995902', '2026-01-16 18:13:27.000000', 'en', 'Black Eaves Chair', 83, 83),
('2026-01-16 18:13:27.291781', '2026-01-16 18:13:27.000000', 'en', 'Wooden Stool', 84, 84),
('2026-01-16 18:13:27.793054', '2026-01-16 18:13:27.000000', 'en', 'Bedside Table', 85, 85),
('2026-01-16 18:13:28.443834', '2026-01-16 18:13:28.000000', 'en', 'Modern Cafe Chair mustard', 86, 86),
('2026-01-16 18:13:29.207592', '2026-01-16 18:13:29.000000', 'en', 'Modern Cafe Chair mint', 87, 87),
('2026-01-16 18:13:31.179574', '2026-01-16 18:13:31.000000', 'en', 'Modern Cafe Chair pearl', 88, 88);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `startsAt` datetime DEFAULT NULL,
  `endsAt` datetime DEFAULT NULL,
  `couponCode` varchar(255) DEFAULT NULL,
  `perCustomerUsageLimit` int(11) DEFAULT NULL,
  `usageLimit` int(11) DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL,
  `conditions` text NOT NULL,
  `actions` text NOT NULL,
  `priorityScore` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_channels_channel`
--

CREATE TABLE `promotion_channels_channel` (
  `promotionId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_translation`
--

CREATE TABLE `promotion_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `method` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL,
  `items` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `adjustment` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `discriminator` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`createdAt`, `updatedAt`, `code`, `type`, `enabled`, `id`, `parentId`, `discriminator`) VALUES
('2026-01-16 18:12:17.798795', '2026-01-16 18:12:17.798795', 'AF', 'country', 1, 1, NULL, 'Country'),
('2026-01-16 18:12:17.878816', '2026-01-16 18:12:17.878816', 'AX', 'country', 1, 2, NULL, 'Country'),
('2026-01-16 18:12:17.962518', '2026-01-16 18:12:17.962518', 'AL', 'country', 1, 3, NULL, 'Country'),
('2026-01-16 18:12:18.012222', '2026-01-16 18:12:18.012222', 'DZ', 'country', 1, 4, NULL, 'Country'),
('2026-01-16 18:12:18.114088', '2026-01-16 18:12:18.114088', 'AS', 'country', 1, 5, NULL, 'Country'),
('2026-01-16 18:12:18.255914', '2026-01-16 18:12:18.255914', 'AD', 'country', 1, 6, NULL, 'Country'),
('2026-01-16 18:12:18.310866', '2026-01-16 18:12:18.310866', 'AO', 'country', 1, 7, NULL, 'Country'),
('2026-01-16 18:12:18.451729', '2026-01-16 18:12:18.451729', 'AI', 'country', 1, 8, NULL, 'Country'),
('2026-01-16 18:12:18.603852', '2026-01-16 18:12:18.603852', 'AG', 'country', 1, 9, NULL, 'Country'),
('2026-01-16 18:12:18.668499', '2026-01-16 18:12:18.668499', 'AR', 'country', 1, 10, NULL, 'Country'),
('2026-01-16 18:12:18.729670', '2026-01-16 18:12:18.729670', 'AM', 'country', 1, 11, NULL, 'Country'),
('2026-01-16 18:12:18.781778', '2026-01-16 18:12:18.781778', 'AW', 'country', 1, 12, NULL, 'Country'),
('2026-01-16 18:12:18.834243', '2026-01-16 18:12:18.834243', 'AU', 'country', 1, 13, NULL, 'Country'),
('2026-01-16 18:12:18.899051', '2026-01-16 18:12:18.899051', 'AT', 'country', 1, 14, NULL, 'Country'),
('2026-01-16 18:12:18.949742', '2026-01-16 18:12:18.949742', 'AZ', 'country', 1, 15, NULL, 'Country'),
('2026-01-16 18:12:19.014920', '2026-01-16 18:12:19.014920', 'BS', 'country', 1, 16, NULL, 'Country'),
('2026-01-16 18:12:19.087777', '2026-01-16 18:12:19.087777', 'BH', 'country', 1, 17, NULL, 'Country'),
('2026-01-16 18:12:19.155277', '2026-01-16 18:12:19.155277', 'BD', 'country', 1, 18, NULL, 'Country'),
('2026-01-16 18:12:19.226497', '2026-01-16 18:12:19.226497', 'BB', 'country', 1, 19, NULL, 'Country'),
('2026-01-16 18:12:19.300040', '2026-01-16 18:12:19.300040', 'BY', 'country', 1, 20, NULL, 'Country'),
('2026-01-16 18:12:19.356807', '2026-01-16 18:12:19.356807', 'BE', 'country', 1, 21, NULL, 'Country'),
('2026-01-16 18:12:19.424026', '2026-01-16 18:12:19.424026', 'BZ', 'country', 1, 22, NULL, 'Country'),
('2026-01-16 18:12:19.485263', '2026-01-16 18:12:19.485263', 'BJ', 'country', 1, 23, NULL, 'Country'),
('2026-01-16 18:12:19.587017', '2026-01-16 18:12:19.587017', 'BM', 'country', 1, 24, NULL, 'Country'),
('2026-01-16 18:12:19.650114', '2026-01-16 18:12:19.650114', 'BT', 'country', 1, 25, NULL, 'Country'),
('2026-01-16 18:12:19.717378', '2026-01-16 18:12:19.717378', 'BO', 'country', 1, 26, NULL, 'Country'),
('2026-01-16 18:12:19.776909', '2026-01-16 18:12:19.776909', 'BQ', 'country', 1, 27, NULL, 'Country'),
('2026-01-16 18:12:19.863163', '2026-01-16 18:12:19.863163', 'BA', 'country', 1, 28, NULL, 'Country'),
('2026-01-16 18:12:19.960491', '2026-01-16 18:12:19.960491', 'BW', 'country', 1, 29, NULL, 'Country'),
('2026-01-16 18:12:20.016955', '2026-01-16 18:12:20.016955', 'BV', 'country', 1, 30, NULL, 'Country'),
('2026-01-16 18:12:20.077092', '2026-01-16 18:12:20.077092', 'BR', 'country', 1, 31, NULL, 'Country'),
('2026-01-16 18:12:20.132897', '2026-01-16 18:12:20.132897', 'IO', 'country', 1, 32, NULL, 'Country'),
('2026-01-16 18:12:20.201534', '2026-01-16 18:12:20.201534', 'BN', 'country', 1, 33, NULL, 'Country'),
('2026-01-16 18:12:20.266095', '2026-01-16 18:12:20.266095', 'BG', 'country', 1, 34, NULL, 'Country'),
('2026-01-16 18:12:20.337825', '2026-01-16 18:12:20.337825', 'BF', 'country', 1, 35, NULL, 'Country'),
('2026-01-16 18:12:20.424571', '2026-01-16 18:12:20.424571', 'BI', 'country', 1, 36, NULL, 'Country'),
('2026-01-16 18:12:20.488156', '2026-01-16 18:12:20.488156', 'CV', 'country', 1, 37, NULL, 'Country'),
('2026-01-16 18:12:20.543711', '2026-01-16 18:12:20.543711', 'KH', 'country', 1, 38, NULL, 'Country'),
('2026-01-16 18:12:20.615238', '2026-01-16 18:12:20.615238', 'CM', 'country', 1, 39, NULL, 'Country'),
('2026-01-16 18:12:20.669750', '2026-01-16 18:12:20.669750', 'CA', 'country', 1, 40, NULL, 'Country'),
('2026-01-16 18:12:20.733398', '2026-01-16 18:12:20.733398', 'KY', 'country', 1, 41, NULL, 'Country'),
('2026-01-16 18:12:20.820989', '2026-01-16 18:12:20.820989', 'CF', 'country', 1, 42, NULL, 'Country'),
('2026-01-16 18:12:20.897078', '2026-01-16 18:12:20.897078', 'TD', 'country', 1, 43, NULL, 'Country'),
('2026-01-16 18:12:20.948017', '2026-01-16 18:12:20.948017', 'CL', 'country', 1, 44, NULL, 'Country'),
('2026-01-16 18:12:21.029965', '2026-01-16 18:12:21.029965', 'CN', 'country', 1, 45, NULL, 'Country'),
('2026-01-16 18:12:21.087031', '2026-01-16 18:12:21.087031', 'CX', 'country', 1, 46, NULL, 'Country'),
('2026-01-16 18:12:21.150351', '2026-01-16 18:12:21.150351', 'CC', 'country', 1, 47, NULL, 'Country'),
('2026-01-16 18:12:21.212078', '2026-01-16 18:12:21.212078', 'CO', 'country', 1, 48, NULL, 'Country'),
('2026-01-16 18:12:21.265896', '2026-01-16 18:12:21.265896', 'KM', 'country', 1, 49, NULL, 'Country'),
('2026-01-16 18:12:21.330418', '2026-01-16 18:12:21.330418', 'CG', 'country', 1, 50, NULL, 'Country'),
('2026-01-16 18:12:21.383902', '2026-01-16 18:12:21.383902', 'CD', 'country', 1, 51, NULL, 'Country'),
('2026-01-16 18:12:21.449901', '2026-01-16 18:12:21.449901', 'CK', 'country', 1, 52, NULL, 'Country'),
('2026-01-16 18:12:21.522009', '2026-01-16 18:12:21.522009', 'CR', 'country', 1, 53, NULL, 'Country'),
('2026-01-16 18:12:21.587976', '2026-01-16 18:12:21.587976', 'CI', 'country', 1, 54, NULL, 'Country'),
('2026-01-16 18:12:21.658579', '2026-01-16 18:12:21.658579', 'HR', 'country', 1, 55, NULL, 'Country'),
('2026-01-16 18:12:21.715597', '2026-01-16 18:12:21.715597', 'CU', 'country', 1, 56, NULL, 'Country'),
('2026-01-16 18:12:21.771154', '2026-01-16 18:12:21.771154', 'CW', 'country', 1, 57, NULL, 'Country'),
('2026-01-16 18:12:21.825391', '2026-01-16 18:12:21.825391', 'CY', 'country', 1, 58, NULL, 'Country'),
('2026-01-16 18:12:21.888225', '2026-01-16 18:12:21.888225', 'CZ', 'country', 1, 59, NULL, 'Country'),
('2026-01-16 18:12:21.943979', '2026-01-16 18:12:21.943979', 'DK', 'country', 1, 60, NULL, 'Country'),
('2026-01-16 18:12:22.004888', '2026-01-16 18:12:22.004888', 'DJ', 'country', 1, 61, NULL, 'Country'),
('2026-01-16 18:12:22.077026', '2026-01-16 18:12:22.077026', 'DM', 'country', 1, 62, NULL, 'Country'),
('2026-01-16 18:12:22.137828', '2026-01-16 18:12:22.137828', 'DO', 'country', 1, 63, NULL, 'Country'),
('2026-01-16 18:12:22.186491', '2026-01-16 18:12:22.186491', 'EC', 'country', 1, 64, NULL, 'Country'),
('2026-01-16 18:12:22.233866', '2026-01-16 18:12:22.233866', 'EG', 'country', 1, 65, NULL, 'Country'),
('2026-01-16 18:12:22.296819', '2026-01-16 18:12:22.296819', 'SV', 'country', 1, 66, NULL, 'Country'),
('2026-01-16 18:12:22.348724', '2026-01-16 18:12:22.348724', 'GQ', 'country', 1, 67, NULL, 'Country'),
('2026-01-16 18:12:22.393850', '2026-01-16 18:12:22.393850', 'ER', 'country', 1, 68, NULL, 'Country'),
('2026-01-16 18:12:22.437889', '2026-01-16 18:12:22.437889', 'EE', 'country', 1, 69, NULL, 'Country'),
('2026-01-16 18:12:22.498857', '2026-01-16 18:12:22.498857', 'SZ', 'country', 1, 70, NULL, 'Country'),
('2026-01-16 18:12:22.555324', '2026-01-16 18:12:22.555324', 'ET', 'country', 1, 71, NULL, 'Country'),
('2026-01-16 18:12:22.618055', '2026-01-16 18:12:22.618055', 'FK', 'country', 1, 72, NULL, 'Country'),
('2026-01-16 18:12:22.668064', '2026-01-16 18:12:22.668064', 'FO', 'country', 1, 73, NULL, 'Country'),
('2026-01-16 18:12:22.737088', '2026-01-16 18:12:22.737088', 'FJ', 'country', 1, 74, NULL, 'Country'),
('2026-01-16 18:12:22.791546', '2026-01-16 18:12:22.791546', 'FI', 'country', 1, 75, NULL, 'Country'),
('2026-01-16 18:12:22.858780', '2026-01-16 18:12:22.858780', 'FR', 'country', 1, 76, NULL, 'Country'),
('2026-01-16 18:12:22.908126', '2026-01-16 18:12:22.908126', 'GF', 'country', 1, 77, NULL, 'Country'),
('2026-01-16 18:12:22.968944', '2026-01-16 18:12:22.968944', 'PF', 'country', 1, 78, NULL, 'Country'),
('2026-01-16 18:12:23.020062', '2026-01-16 18:12:23.020062', 'TF', 'country', 1, 79, NULL, 'Country'),
('2026-01-16 18:12:23.073628', '2026-01-16 18:12:23.073628', 'GA', 'country', 1, 80, NULL, 'Country'),
('2026-01-16 18:12:23.135232', '2026-01-16 18:12:23.135232', 'GM', 'country', 1, 81, NULL, 'Country'),
('2026-01-16 18:12:23.194593', '2026-01-16 18:12:23.194593', 'GE', 'country', 1, 82, NULL, 'Country'),
('2026-01-16 18:12:23.243197', '2026-01-16 18:12:23.243197', 'DE', 'country', 1, 83, NULL, 'Country'),
('2026-01-16 18:12:23.299622', '2026-01-16 18:12:23.299622', 'GH', 'country', 1, 84, NULL, 'Country'),
('2026-01-16 18:12:23.374951', '2026-01-16 18:12:23.374951', 'GI', 'country', 1, 85, NULL, 'Country'),
('2026-01-16 18:12:23.422794', '2026-01-16 18:12:23.422794', 'GR', 'country', 1, 86, NULL, 'Country'),
('2026-01-16 18:12:23.467846', '2026-01-16 18:12:23.467846', 'GL', 'country', 1, 87, NULL, 'Country'),
('2026-01-16 18:12:23.513904', '2026-01-16 18:12:23.513904', 'GD', 'country', 1, 88, NULL, 'Country'),
('2026-01-16 18:12:23.582360', '2026-01-16 18:12:23.582360', 'GP', 'country', 1, 89, NULL, 'Country'),
('2026-01-16 18:12:23.640779', '2026-01-16 18:12:23.640779', 'GU', 'country', 1, 90, NULL, 'Country'),
('2026-01-16 18:12:23.694194', '2026-01-16 18:12:23.694194', 'GT', 'country', 1, 91, NULL, 'Country'),
('2026-01-16 18:12:23.745866', '2026-01-16 18:12:23.745866', 'GG', 'country', 1, 92, NULL, 'Country'),
('2026-01-16 18:12:23.814118', '2026-01-16 18:12:23.814118', 'GN', 'country', 1, 93, NULL, 'Country'),
('2026-01-16 18:12:23.873158', '2026-01-16 18:12:23.873158', 'GW', 'country', 1, 94, NULL, 'Country'),
('2026-01-16 18:12:23.935560', '2026-01-16 18:12:23.935560', 'GY', 'country', 1, 95, NULL, 'Country'),
('2026-01-16 18:12:24.018107', '2026-01-16 18:12:24.018107', 'HT', 'country', 1, 96, NULL, 'Country'),
('2026-01-16 18:12:24.069159', '2026-01-16 18:12:24.069159', 'HM', 'country', 1, 97, NULL, 'Country'),
('2026-01-16 18:12:24.151873', '2026-01-16 18:12:24.151873', 'VA', 'country', 1, 98, NULL, 'Country'),
('2026-01-16 18:12:24.208180', '2026-01-16 18:12:24.208180', 'HN', 'country', 1, 99, NULL, 'Country'),
('2026-01-16 18:12:24.285155', '2026-01-16 18:12:24.285155', 'HK', 'country', 1, 100, NULL, 'Country'),
('2026-01-16 18:12:24.343140', '2026-01-16 18:12:24.343140', 'HU', 'country', 1, 101, NULL, 'Country'),
('2026-01-16 18:12:24.407145', '2026-01-16 18:12:24.407145', 'IS', 'country', 1, 102, NULL, 'Country'),
('2026-01-16 18:12:24.473724', '2026-01-16 18:12:24.473724', 'IN', 'country', 1, 103, NULL, 'Country'),
('2026-01-16 18:12:24.527964', '2026-01-16 18:12:24.527964', 'ID', 'country', 1, 104, NULL, 'Country'),
('2026-01-16 18:12:24.578515', '2026-01-16 18:12:24.578515', 'IR', 'country', 1, 105, NULL, 'Country'),
('2026-01-16 18:12:24.674457', '2026-01-16 18:12:24.674457', 'IQ', 'country', 1, 106, NULL, 'Country'),
('2026-01-16 18:12:24.723613', '2026-01-16 18:12:24.723613', 'IE', 'country', 1, 107, NULL, 'Country'),
('2026-01-16 18:12:24.774024', '2026-01-16 18:12:24.774024', 'IM', 'country', 1, 108, NULL, 'Country'),
('2026-01-16 18:12:24.831819', '2026-01-16 18:12:24.831819', 'IL', 'country', 1, 109, NULL, 'Country'),
('2026-01-16 18:12:24.883842', '2026-01-16 18:12:24.883842', 'IT', 'country', 1, 110, NULL, 'Country'),
('2026-01-16 18:12:24.940179', '2026-01-16 18:12:24.940179', 'JM', 'country', 1, 111, NULL, 'Country'),
('2026-01-16 18:12:25.045582', '2026-01-16 18:12:25.045582', 'JP', 'country', 1, 112, NULL, 'Country'),
('2026-01-16 18:12:25.148463', '2026-01-16 18:12:25.148463', 'JE', 'country', 1, 113, NULL, 'Country'),
('2026-01-16 18:12:25.207509', '2026-01-16 18:12:25.207509', 'JO', 'country', 1, 114, NULL, 'Country'),
('2026-01-16 18:12:25.268096', '2026-01-16 18:12:25.268096', 'KZ', 'country', 1, 115, NULL, 'Country'),
('2026-01-16 18:12:25.346591', '2026-01-16 18:12:25.346591', 'KE', 'country', 1, 116, NULL, 'Country'),
('2026-01-16 18:12:25.401903', '2026-01-16 18:12:25.401903', 'KI', 'country', 1, 117, NULL, 'Country'),
('2026-01-16 18:12:25.598949', '2026-01-16 18:12:25.598949', 'KP', 'country', 1, 118, NULL, 'Country'),
('2026-01-16 18:12:25.656828', '2026-01-16 18:12:25.656828', 'KR', 'country', 1, 119, NULL, 'Country'),
('2026-01-16 18:12:25.707029', '2026-01-16 18:12:25.707029', 'KW', 'country', 1, 120, NULL, 'Country'),
('2026-01-16 18:12:25.810621', '2026-01-16 18:12:25.810621', 'KG', 'country', 1, 121, NULL, 'Country'),
('2026-01-16 18:12:25.879197', '2026-01-16 18:12:25.879197', 'LA', 'country', 1, 122, NULL, 'Country'),
('2026-01-16 18:12:25.937118', '2026-01-16 18:12:25.937118', 'LV', 'country', 1, 123, NULL, 'Country'),
('2026-01-16 18:12:26.029535', '2026-01-16 18:12:26.029535', 'LB', 'country', 1, 124, NULL, 'Country'),
('2026-01-16 18:12:26.089231', '2026-01-16 18:12:26.089231', 'LS', 'country', 1, 125, NULL, 'Country'),
('2026-01-16 18:12:26.159162', '2026-01-16 18:12:26.159162', 'LR', 'country', 1, 126, NULL, 'Country'),
('2026-01-16 18:12:26.215155', '2026-01-16 18:12:26.215155', 'LY', 'country', 1, 127, NULL, 'Country'),
('2026-01-16 18:12:26.277242', '2026-01-16 18:12:26.277242', 'LI', 'country', 1, 128, NULL, 'Country'),
('2026-01-16 18:12:26.322613', '2026-01-16 18:12:26.322613', 'LT', 'country', 1, 129, NULL, 'Country'),
('2026-01-16 18:12:26.375925', '2026-01-16 18:12:26.375925', 'LU', 'country', 1, 130, NULL, 'Country'),
('2026-01-16 18:12:26.439923', '2026-01-16 18:12:26.439923', 'MO', 'country', 1, 131, NULL, 'Country'),
('2026-01-16 18:12:26.497057', '2026-01-16 18:12:26.497057', 'MK', 'country', 1, 132, NULL, 'Country'),
('2026-01-16 18:12:26.550599', '2026-01-16 18:12:26.550599', 'MG', 'country', 1, 133, NULL, 'Country'),
('2026-01-16 18:12:26.611955', '2026-01-16 18:12:26.611955', 'MW', 'country', 1, 134, NULL, 'Country'),
('2026-01-16 18:12:26.695380', '2026-01-16 18:12:26.695380', 'MY', 'country', 1, 135, NULL, 'Country'),
('2026-01-16 18:12:26.765599', '2026-01-16 18:12:26.765599', 'MV', 'country', 1, 136, NULL, 'Country'),
('2026-01-16 18:12:26.834791', '2026-01-16 18:12:26.834791', 'ML', 'country', 1, 137, NULL, 'Country'),
('2026-01-16 18:12:26.900680', '2026-01-16 18:12:26.900680', 'MT', 'country', 1, 138, NULL, 'Country'),
('2026-01-16 18:12:26.973684', '2026-01-16 18:12:26.973684', 'MH', 'country', 1, 139, NULL, 'Country'),
('2026-01-16 18:12:27.034350', '2026-01-16 18:12:27.034350', 'MQ', 'country', 1, 140, NULL, 'Country'),
('2026-01-16 18:12:27.108933', '2026-01-16 18:12:27.108933', 'MR', 'country', 1, 141, NULL, 'Country'),
('2026-01-16 18:12:27.159111', '2026-01-16 18:12:27.159111', 'MU', 'country', 1, 142, NULL, 'Country'),
('2026-01-16 18:12:27.218185', '2026-01-16 18:12:27.218185', 'YT', 'country', 1, 143, NULL, 'Country'),
('2026-01-16 18:12:27.276741', '2026-01-16 18:12:27.276741', 'MX', 'country', 1, 144, NULL, 'Country'),
('2026-01-16 18:12:27.339033', '2026-01-16 18:12:27.339033', 'FM', 'country', 1, 145, NULL, 'Country'),
('2026-01-16 18:12:27.404130', '2026-01-16 18:12:27.404130', 'MD', 'country', 1, 146, NULL, 'Country'),
('2026-01-16 18:12:27.458328', '2026-01-16 18:12:27.458328', 'MC', 'country', 1, 147, NULL, 'Country'),
('2026-01-16 18:12:27.518549', '2026-01-16 18:12:27.518549', 'MN', 'country', 1, 148, NULL, 'Country'),
('2026-01-16 18:12:27.572114', '2026-01-16 18:12:27.572114', 'ME', 'country', 1, 149, NULL, 'Country'),
('2026-01-16 18:12:27.637204', '2026-01-16 18:12:27.637204', 'MS', 'country', 1, 150, NULL, 'Country'),
('2026-01-16 18:12:27.716058', '2026-01-16 18:12:27.716058', 'MA', 'country', 1, 151, NULL, 'Country'),
('2026-01-16 18:12:27.783823', '2026-01-16 18:12:27.783823', 'MZ', 'country', 1, 152, NULL, 'Country'),
('2026-01-16 18:12:27.840503', '2026-01-16 18:12:27.840503', 'MM', 'country', 1, 153, NULL, 'Country'),
('2026-01-16 18:12:27.885480', '2026-01-16 18:12:27.885480', 'NA', 'country', 1, 154, NULL, 'Country'),
('2026-01-16 18:12:27.939658', '2026-01-16 18:12:27.939658', 'NR', 'country', 1, 155, NULL, 'Country'),
('2026-01-16 18:12:27.987738', '2026-01-16 18:12:27.987738', 'NP', 'country', 1, 156, NULL, 'Country'),
('2026-01-16 18:12:28.047076', '2026-01-16 18:12:28.047076', 'NL', 'country', 1, 157, NULL, 'Country'),
('2026-01-16 18:12:28.100833', '2026-01-16 18:12:28.100833', 'NC', 'country', 1, 158, NULL, 'Country'),
('2026-01-16 18:12:28.164665', '2026-01-16 18:12:28.164665', 'NZ', 'country', 1, 159, NULL, 'Country'),
('2026-01-16 18:12:28.217290', '2026-01-16 18:12:28.217290', 'NI', 'country', 1, 160, NULL, 'Country'),
('2026-01-16 18:12:28.292590', '2026-01-16 18:12:28.292590', 'NE', 'country', 1, 161, NULL, 'Country'),
('2026-01-16 18:12:28.415348', '2026-01-16 18:12:28.415348', 'NG', 'country', 1, 162, NULL, 'Country'),
('2026-01-16 18:12:28.525832', '2026-01-16 18:12:28.525832', 'NU', 'country', 1, 163, NULL, 'Country'),
('2026-01-16 18:12:28.631509', '2026-01-16 18:12:28.631509', 'NF', 'country', 1, 164, NULL, 'Country'),
('2026-01-16 18:12:28.697775', '2026-01-16 18:12:28.697775', 'MP', 'country', 1, 165, NULL, 'Country'),
('2026-01-16 18:12:28.750104', '2026-01-16 18:12:28.750104', 'NO', 'country', 1, 166, NULL, 'Country'),
('2026-01-16 18:12:28.819976', '2026-01-16 18:12:28.819976', 'OM', 'country', 1, 167, NULL, 'Country'),
('2026-01-16 18:12:28.883058', '2026-01-16 18:12:28.883058', 'PK', 'country', 1, 168, NULL, 'Country'),
('2026-01-16 18:12:28.939182', '2026-01-16 18:12:28.939182', 'PW', 'country', 1, 169, NULL, 'Country'),
('2026-01-16 18:12:28.990463', '2026-01-16 18:12:28.990463', 'PS', 'country', 1, 170, NULL, 'Country'),
('2026-01-16 18:12:29.055042', '2026-01-16 18:12:29.055042', 'PA', 'country', 1, 171, NULL, 'Country'),
('2026-01-16 18:12:29.107052', '2026-01-16 18:12:29.107052', 'PG', 'country', 1, 172, NULL, 'Country'),
('2026-01-16 18:12:29.188574', '2026-01-16 18:12:29.188574', 'PY', 'country', 1, 173, NULL, 'Country'),
('2026-01-16 18:12:29.252700', '2026-01-16 18:12:29.252700', 'PE', 'country', 1, 174, NULL, 'Country'),
('2026-01-16 18:12:29.323968', '2026-01-16 18:12:29.323968', 'PH', 'country', 1, 175, NULL, 'Country'),
('2026-01-16 18:12:29.394236', '2026-01-16 18:12:29.394236', 'PN', 'country', 1, 176, NULL, 'Country'),
('2026-01-16 18:12:29.468748', '2026-01-16 18:12:29.468748', 'PL', 'country', 1, 177, NULL, 'Country'),
('2026-01-16 18:12:29.535966', '2026-01-16 18:12:29.535966', 'PT', 'country', 1, 178, NULL, 'Country'),
('2026-01-16 18:12:29.617127', '2026-01-16 18:12:29.617127', 'PR', 'country', 1, 179, NULL, 'Country'),
('2026-01-16 18:12:29.694098', '2026-01-16 18:12:29.694098', 'QA', 'country', 1, 180, NULL, 'Country'),
('2026-01-16 18:12:29.761986', '2026-01-16 18:12:29.761986', 'RE', 'country', 1, 181, NULL, 'Country'),
('2026-01-16 18:12:29.824709', '2026-01-16 18:12:29.824709', 'RO', 'country', 1, 182, NULL, 'Country'),
('2026-01-16 18:12:29.895132', '2026-01-16 18:12:29.895132', 'RU', 'country', 1, 183, NULL, 'Country'),
('2026-01-16 18:12:29.975724', '2026-01-16 18:12:29.975724', 'RW', 'country', 1, 184, NULL, 'Country'),
('2026-01-16 18:12:30.045982', '2026-01-16 18:12:30.045982', 'BL', 'country', 1, 185, NULL, 'Country'),
('2026-01-16 18:12:30.111834', '2026-01-16 18:12:30.111834', 'SH', 'country', 1, 186, NULL, 'Country'),
('2026-01-16 18:12:30.161728', '2026-01-16 18:12:30.161728', 'KN', 'country', 1, 187, NULL, 'Country'),
('2026-01-16 18:12:30.224829', '2026-01-16 18:12:30.224829', 'LC', 'country', 1, 188, NULL, 'Country'),
('2026-01-16 18:12:30.279027', '2026-01-16 18:12:30.279027', 'MF', 'country', 1, 189, NULL, 'Country'),
('2026-01-16 18:12:30.336822', '2026-01-16 18:12:30.336822', 'PM', 'country', 1, 190, NULL, 'Country'),
('2026-01-16 18:12:30.391962', '2026-01-16 18:12:30.391962', 'VC', 'country', 1, 191, NULL, 'Country'),
('2026-01-16 18:12:30.464167', '2026-01-16 18:12:30.464167', 'WS', 'country', 1, 192, NULL, 'Country'),
('2026-01-16 18:12:30.527515', '2026-01-16 18:12:30.527515', 'SM', 'country', 1, 193, NULL, 'Country'),
('2026-01-16 18:12:30.586016', '2026-01-16 18:12:30.586016', 'ST', 'country', 1, 194, NULL, 'Country'),
('2026-01-16 18:12:30.649428', '2026-01-16 18:12:30.649428', 'SA', 'country', 1, 195, NULL, 'Country'),
('2026-01-16 18:12:30.715200', '2026-01-16 18:12:30.715200', 'SN', 'country', 1, 196, NULL, 'Country'),
('2026-01-16 18:12:30.770641', '2026-01-16 18:12:30.770641', 'RS', 'country', 1, 197, NULL, 'Country'),
('2026-01-16 18:12:30.818850', '2026-01-16 18:12:30.818850', 'SC', 'country', 1, 198, NULL, 'Country'),
('2026-01-16 18:12:30.879198', '2026-01-16 18:12:30.879198', 'SL', 'country', 1, 199, NULL, 'Country'),
('2026-01-16 18:12:30.943588', '2026-01-16 18:12:30.943588', 'SG', 'country', 1, 200, NULL, 'Country'),
('2026-01-16 18:12:30.993908', '2026-01-16 18:12:30.993908', 'SX', 'country', 1, 201, NULL, 'Country'),
('2026-01-16 18:12:31.071000', '2026-01-16 18:12:31.071000', 'SK', 'country', 1, 202, NULL, 'Country'),
('2026-01-16 18:12:31.143227', '2026-01-16 18:12:31.143227', 'SI', 'country', 1, 203, NULL, 'Country'),
('2026-01-16 18:12:31.189370', '2026-01-16 18:12:31.189370', 'SB', 'country', 1, 204, NULL, 'Country'),
('2026-01-16 18:12:31.231468', '2026-01-16 18:12:31.231468', 'SO', 'country', 1, 205, NULL, 'Country'),
('2026-01-16 18:12:31.281785', '2026-01-16 18:12:31.281785', 'ZA', 'country', 1, 206, NULL, 'Country'),
('2026-01-16 18:12:31.345345', '2026-01-16 18:12:31.345345', 'GS', 'country', 1, 207, NULL, 'Country'),
('2026-01-16 18:12:31.391519', '2026-01-16 18:12:31.391519', 'SS', 'country', 1, 208, NULL, 'Country'),
('2026-01-16 18:12:31.441637', '2026-01-16 18:12:31.441637', 'ES', 'country', 1, 209, NULL, 'Country'),
('2026-01-16 18:12:31.491522', '2026-01-16 18:12:31.491522', 'LK', 'country', 1, 210, NULL, 'Country'),
('2026-01-16 18:12:31.546240', '2026-01-16 18:12:31.546240', 'SD', 'country', 1, 211, NULL, 'Country'),
('2026-01-16 18:12:31.599704', '2026-01-16 18:12:31.599704', 'SR', 'country', 1, 212, NULL, 'Country'),
('2026-01-16 18:12:31.647219', '2026-01-16 18:12:31.647219', 'SJ', 'country', 1, 213, NULL, 'Country'),
('2026-01-16 18:12:31.714310', '2026-01-16 18:12:31.714310', 'SE', 'country', 1, 214, NULL, 'Country'),
('2026-01-16 18:12:31.768735', '2026-01-16 18:12:31.768735', 'CH', 'country', 1, 215, NULL, 'Country'),
('2026-01-16 18:12:31.827306', '2026-01-16 18:12:31.827306', 'SY', 'country', 1, 216, NULL, 'Country'),
('2026-01-16 18:12:31.878743', '2026-01-16 18:12:31.878743', 'TW', 'country', 1, 217, NULL, 'Country'),
('2026-01-16 18:12:31.930860', '2026-01-16 18:12:31.930860', 'TJ', 'country', 1, 218, NULL, 'Country'),
('2026-01-16 18:12:31.998386', '2026-01-16 18:12:31.998386', 'TZ', 'country', 1, 219, NULL, 'Country'),
('2026-01-16 18:12:32.050032', '2026-01-16 18:12:32.050032', 'TH', 'country', 1, 220, NULL, 'Country'),
('2026-01-16 18:12:32.105834', '2026-01-16 18:12:32.105834', 'TL', 'country', 1, 221, NULL, 'Country'),
('2026-01-16 18:12:32.163094', '2026-01-16 18:12:32.163094', 'TG', 'country', 1, 222, NULL, 'Country'),
('2026-01-16 18:12:32.217339', '2026-01-16 18:12:32.217339', 'TK', 'country', 1, 223, NULL, 'Country'),
('2026-01-16 18:12:32.275309', '2026-01-16 18:12:32.275309', 'TO', 'country', 1, 224, NULL, 'Country'),
('2026-01-16 18:12:32.331032', '2026-01-16 18:12:32.331032', 'TT', 'country', 1, 225, NULL, 'Country'),
('2026-01-16 18:12:32.391300', '2026-01-16 18:12:32.391300', 'TN', 'country', 1, 226, NULL, 'Country'),
('2026-01-16 18:12:32.444428', '2026-01-16 18:12:32.444428', 'TR', 'country', 1, 227, NULL, 'Country'),
('2026-01-16 18:12:32.496959', '2026-01-16 18:12:32.496959', 'TM', 'country', 1, 228, NULL, 'Country'),
('2026-01-16 18:12:32.571974', '2026-01-16 18:12:32.571974', 'TC', 'country', 1, 229, NULL, 'Country'),
('2026-01-16 18:12:32.654836', '2026-01-16 18:12:32.654836', 'TV', 'country', 1, 230, NULL, 'Country'),
('2026-01-16 18:12:32.728583', '2026-01-16 18:12:32.728583', 'UG', 'country', 1, 231, NULL, 'Country'),
('2026-01-16 18:12:32.809859', '2026-01-16 18:12:32.809859', 'UA', 'country', 1, 232, NULL, 'Country'),
('2026-01-16 18:12:32.903766', '2026-01-16 18:12:32.903766', 'AE', 'country', 1, 233, NULL, 'Country'),
('2026-01-16 18:12:32.981293', '2026-01-16 18:12:32.981293', 'GB', 'country', 1, 234, NULL, 'Country'),
('2026-01-16 18:12:33.076925', '2026-01-16 18:12:33.076925', 'US', 'country', 1, 235, NULL, 'Country'),
('2026-01-16 18:12:33.173686', '2026-01-16 18:12:33.173686', 'UM', 'country', 1, 236, NULL, 'Country'),
('2026-01-16 18:12:33.260293', '2026-01-16 18:12:33.260293', 'UY', 'country', 1, 237, NULL, 'Country'),
('2026-01-16 18:12:33.319886', '2026-01-16 18:12:33.319886', 'UZ', 'country', 1, 238, NULL, 'Country'),
('2026-01-16 18:12:33.367094', '2026-01-16 18:12:33.367094', 'VU', 'country', 1, 239, NULL, 'Country'),
('2026-01-16 18:12:33.417419', '2026-01-16 18:12:33.417419', 'VE', 'country', 1, 240, NULL, 'Country'),
('2026-01-16 18:12:33.472773', '2026-01-16 18:12:33.472773', 'VN', 'country', 1, 241, NULL, 'Country'),
('2026-01-16 18:12:33.528942', '2026-01-16 18:12:33.528942', 'VG', 'country', 1, 242, NULL, 'Country'),
('2026-01-16 18:12:33.574627', '2026-01-16 18:12:33.574627', 'VI', 'country', 1, 243, NULL, 'Country'),
('2026-01-16 18:12:33.619655', '2026-01-16 18:12:33.619655', 'WF', 'country', 1, 244, NULL, 'Country'),
('2026-01-16 18:12:33.676684', '2026-01-16 18:12:33.676684', 'EH', 'country', 1, 245, NULL, 'Country'),
('2026-01-16 18:12:33.730282', '2026-01-16 18:12:33.730282', 'YE', 'country', 1, 246, NULL, 'Country'),
('2026-01-16 18:12:33.781443', '2026-01-16 18:12:33.781443', 'ZM', 'country', 1, 247, NULL, 'Country'),
('2026-01-16 18:12:33.835866', '2026-01-16 18:12:33.835866', 'ZW', 'country', 1, 248, NULL, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `region_translation`
--

CREATE TABLE `region_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `region_translation`
--

INSERT INTO `region_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2026-01-16 18:12:17.780938', '2026-01-16 18:12:17.000000', 'en', 'Afghanistan', 1, 1),
('2026-01-16 18:12:17.864337', '2026-01-16 18:12:17.000000', 'en', 'Åland Islands', 2, 2),
('2026-01-16 18:12:17.946200', '2026-01-16 18:12:17.000000', 'en', 'Albania', 3, 3),
('2026-01-16 18:12:17.997222', '2026-01-16 18:12:18.000000', 'en', 'Algeria', 4, 4),
('2026-01-16 18:12:18.092823', '2026-01-16 18:12:18.000000', 'en', 'American Samoa', 5, 5),
('2026-01-16 18:12:18.224829', '2026-01-16 18:12:18.000000', 'en', 'Andorra', 6, 6),
('2026-01-16 18:12:18.294041', '2026-01-16 18:12:18.000000', 'en', 'Angola', 7, 7),
('2026-01-16 18:12:18.396350', '2026-01-16 18:12:18.000000', 'en', 'Anguilla', 8, 8),
('2026-01-16 18:12:18.586057', '2026-01-16 18:12:18.000000', 'en', 'Antigua and Barbuda', 9, 9),
('2026-01-16 18:12:18.643205', '2026-01-16 18:12:18.000000', 'en', 'Argentina', 10, 10),
('2026-01-16 18:12:18.704934', '2026-01-16 18:12:18.000000', 'en', 'Armenia', 11, 11),
('2026-01-16 18:12:18.762386', '2026-01-16 18:12:18.000000', 'en', 'Aruba', 12, 12),
('2026-01-16 18:12:18.817231', '2026-01-16 18:12:18.000000', 'en', 'Australia', 13, 13),
('2026-01-16 18:12:18.880710', '2026-01-16 18:12:18.000000', 'en', 'Austria', 14, 14),
('2026-01-16 18:12:18.928118', '2026-01-16 18:12:18.000000', 'en', 'Azerbaijan', 15, 15),
('2026-01-16 18:12:18.998023', '2026-01-16 18:12:19.000000', 'en', 'Bahamas', 16, 16),
('2026-01-16 18:12:19.052870', '2026-01-16 18:12:19.000000', 'en', 'Bahrain', 17, 17),
('2026-01-16 18:12:19.130440', '2026-01-16 18:12:19.000000', 'en', 'Bangladesh', 18, 18),
('2026-01-16 18:12:19.205209', '2026-01-16 18:12:19.000000', 'en', 'Barbados', 19, 19),
('2026-01-16 18:12:19.264757', '2026-01-16 18:12:19.000000', 'en', 'Belarus', 20, 20),
('2026-01-16 18:12:19.333531', '2026-01-16 18:12:19.000000', 'en', 'Belgium', 21, 21),
('2026-01-16 18:12:19.405690', '2026-01-16 18:12:19.000000', 'en', 'Belize', 22, 22),
('2026-01-16 18:12:19.459012', '2026-01-16 18:12:19.000000', 'en', 'Benin', 23, 23),
('2026-01-16 18:12:19.541377', '2026-01-16 18:12:19.000000', 'en', 'Bermuda', 24, 24),
('2026-01-16 18:12:19.630856', '2026-01-16 18:12:19.000000', 'en', 'Bhutan', 25, 25),
('2026-01-16 18:12:19.695492', '2026-01-16 18:12:19.000000', 'en', 'Bolivia (Plurinational State of)', 26, 26),
('2026-01-16 18:12:19.759236', '2026-01-16 18:12:19.000000', 'en', 'Bonaire, Sint Eustatius and Saba', 27, 27),
('2026-01-16 18:12:19.824662', '2026-01-16 18:12:19.000000', 'en', 'Bosnia and Herzegovina', 28, 28),
('2026-01-16 18:12:19.903609', '2026-01-16 18:12:19.000000', 'en', 'Botswana', 29, 29),
('2026-01-16 18:12:19.996627', '2026-01-16 18:12:20.000000', 'en', 'Bouvet Island', 30, 30),
('2026-01-16 18:12:20.049062', '2026-01-16 18:12:20.000000', 'en', 'Brazil', 31, 31),
('2026-01-16 18:12:20.106698', '2026-01-16 18:12:20.000000', 'en', 'British Indian Ocean Territory', 32, 32),
('2026-01-16 18:12:20.183129', '2026-01-16 18:12:20.000000', 'en', 'Brunei Darussalam', 33, 33),
('2026-01-16 18:12:20.242017', '2026-01-16 18:12:20.000000', 'en', 'Bulgaria', 34, 34),
('2026-01-16 18:12:20.311221', '2026-01-16 18:12:20.000000', 'en', 'Burkina Faso', 35, 35),
('2026-01-16 18:12:20.401052', '2026-01-16 18:12:20.000000', 'en', 'Burundi', 36, 36),
('2026-01-16 18:12:20.466235', '2026-01-16 18:12:20.000000', 'en', 'Cabo Verde', 37, 37),
('2026-01-16 18:12:20.529097', '2026-01-16 18:12:20.000000', 'en', 'Cambodia', 38, 38),
('2026-01-16 18:12:20.592893', '2026-01-16 18:12:20.000000', 'en', 'Cameroon', 39, 39),
('2026-01-16 18:12:20.650765', '2026-01-16 18:12:20.000000', 'en', 'Canada', 40, 40),
('2026-01-16 18:12:20.701176', '2026-01-16 18:12:20.000000', 'en', 'Cayman Islands', 41, 41),
('2026-01-16 18:12:20.794804', '2026-01-16 18:12:20.000000', 'en', 'Central African Republic', 42, 42),
('2026-01-16 18:12:20.864002', '2026-01-16 18:12:20.000000', 'en', 'Chad', 43, 43),
('2026-01-16 18:12:20.929348', '2026-01-16 18:12:20.000000', 'en', 'Chile', 44, 44),
('2026-01-16 18:12:20.994629', '2026-01-16 18:12:21.000000', 'en', 'China', 45, 45),
('2026-01-16 18:12:21.065882', '2026-01-16 18:12:21.000000', 'en', 'Christmas Island', 46, 46),
('2026-01-16 18:12:21.118186', '2026-01-16 18:12:21.000000', 'en', 'Cocos (Keeling) Islands', 47, 47),
('2026-01-16 18:12:21.178163', '2026-01-16 18:12:21.000000', 'en', 'Colombia', 48, 48),
('2026-01-16 18:12:21.246956', '2026-01-16 18:12:21.000000', 'en', 'Comoros', 49, 49),
('2026-01-16 18:12:21.305931', '2026-01-16 18:12:21.000000', 'en', 'Congo', 50, 50),
('2026-01-16 18:12:21.359666', '2026-01-16 18:12:21.000000', 'en', 'Congo (Democratic Republic of the)', 51, 51),
('2026-01-16 18:12:21.425162', '2026-01-16 18:12:21.000000', 'en', 'Cook Islands', 52, 52),
('2026-01-16 18:12:21.499832', '2026-01-16 18:12:21.000000', 'en', 'Costa Rica', 53, 53),
('2026-01-16 18:12:21.563453', '2026-01-16 18:12:21.000000', 'en', 'Côte d\'Ivoire', 54, 54),
('2026-01-16 18:12:21.631886', '2026-01-16 18:12:21.000000', 'en', 'Croatia', 55, 55),
('2026-01-16 18:12:21.695986', '2026-01-16 18:12:21.000000', 'en', 'Cuba', 56, 56),
('2026-01-16 18:12:21.753635', '2026-01-16 18:12:21.000000', 'en', 'Curaçao', 57, 57),
('2026-01-16 18:12:21.804654', '2026-01-16 18:12:21.000000', 'en', 'Cyprus', 58, 58),
('2026-01-16 18:12:21.861034', '2026-01-16 18:12:21.000000', 'en', 'Czechia', 59, 59),
('2026-01-16 18:12:21.925521', '2026-01-16 18:12:21.000000', 'en', 'Denmark', 60, 60),
('2026-01-16 18:12:21.987447', '2026-01-16 18:12:22.000000', 'en', 'Djibouti', 61, 61),
('2026-01-16 18:12:22.055002', '2026-01-16 18:12:22.000000', 'en', 'Dominica', 62, 62),
('2026-01-16 18:12:22.120722', '2026-01-16 18:12:22.000000', 'en', 'Dominican Republic', 63, 63),
('2026-01-16 18:12:22.169836', '2026-01-16 18:12:22.000000', 'en', 'Ecuador', 64, 64),
('2026-01-16 18:12:22.218557', '2026-01-16 18:12:22.000000', 'en', 'Egypt', 65, 65),
('2026-01-16 18:12:22.268185', '2026-01-16 18:12:22.000000', 'en', 'El Salvador', 66, 66),
('2026-01-16 18:12:22.330878', '2026-01-16 18:12:22.000000', 'en', 'Equatorial Guinea', 67, 67),
('2026-01-16 18:12:22.376752', '2026-01-16 18:12:22.000000', 'en', 'Eritrea', 68, 68),
('2026-01-16 18:12:22.423175', '2026-01-16 18:12:22.000000', 'en', 'Estonia', 69, 69),
('2026-01-16 18:12:22.469540', '2026-01-16 18:12:22.000000', 'en', 'Eswatini', 70, 70),
('2026-01-16 18:12:22.538902', '2026-01-16 18:12:22.000000', 'en', 'Ethiopia', 71, 71),
('2026-01-16 18:12:22.587993', '2026-01-16 18:12:22.000000', 'en', 'Falkland Islands (Malvinas)', 72, 72),
('2026-01-16 18:12:22.649487', '2026-01-16 18:12:22.000000', 'en', 'Faroe Islands', 73, 73),
('2026-01-16 18:12:22.708215', '2026-01-16 18:12:22.000000', 'en', 'Fiji', 74, 74),
('2026-01-16 18:12:22.774731', '2026-01-16 18:12:22.000000', 'en', 'Finland', 75, 75),
('2026-01-16 18:12:22.837608', '2026-01-16 18:12:22.000000', 'en', 'France', 76, 76),
('2026-01-16 18:12:22.889813', '2026-01-16 18:12:22.000000', 'en', 'French Guiana', 77, 77),
('2026-01-16 18:12:22.946681', '2026-01-16 18:12:22.000000', 'en', 'French Polynesia', 78, 78),
('2026-01-16 18:12:22.999642', '2026-01-16 18:12:23.000000', 'en', 'French Southern Territories', 79, 79),
('2026-01-16 18:12:23.055091', '2026-01-16 18:12:23.000000', 'en', 'Gabon', 80, 80),
('2026-01-16 18:12:23.105195', '2026-01-16 18:12:23.000000', 'en', 'Gambia', 81, 81),
('2026-01-16 18:12:23.173692', '2026-01-16 18:12:23.000000', 'en', 'Georgia', 82, 82),
('2026-01-16 18:12:23.226590', '2026-01-16 18:12:23.000000', 'en', 'Germany', 83, 83),
('2026-01-16 18:12:23.278951', '2026-01-16 18:12:23.000000', 'en', 'Ghana', 84, 84),
('2026-01-16 18:12:23.338759', '2026-01-16 18:12:23.000000', 'en', 'Gibraltar', 85, 85),
('2026-01-16 18:12:23.403647', '2026-01-16 18:12:23.000000', 'en', 'Greece', 86, 86),
('2026-01-16 18:12:23.452716', '2026-01-16 18:12:23.000000', 'en', 'Greenland', 87, 87),
('2026-01-16 18:12:23.497653', '2026-01-16 18:12:23.000000', 'en', 'Grenada', 88, 88),
('2026-01-16 18:12:23.550714', '2026-01-16 18:12:23.000000', 'en', 'Guadeloupe', 89, 89),
('2026-01-16 18:12:23.620468', '2026-01-16 18:12:23.000000', 'en', 'Guam', 90, 90),
('2026-01-16 18:12:23.671581', '2026-01-16 18:12:23.000000', 'en', 'Guatemala', 91, 91),
('2026-01-16 18:12:23.728664', '2026-01-16 18:12:23.000000', 'en', 'Guernsey', 92, 92),
('2026-01-16 18:12:23.790542', '2026-01-16 18:12:23.000000', 'en', 'Guinea', 93, 93),
('2026-01-16 18:12:23.848121', '2026-01-16 18:12:23.000000', 'en', 'Guinea-Bissau', 94, 94),
('2026-01-16 18:12:23.916781', '2026-01-16 18:12:23.000000', 'en', 'Guyana', 95, 95),
('2026-01-16 18:12:23.992431', '2026-01-16 18:12:24.000000', 'en', 'Haiti', 96, 96),
('2026-01-16 18:12:24.054576', '2026-01-16 18:12:24.000000', 'en', 'Heard Island and McDonald Islands', 97, 97),
('2026-01-16 18:12:24.115674', '2026-01-16 18:12:24.000000', 'en', 'Holy See', 98, 98),
('2026-01-16 18:12:24.187385', '2026-01-16 18:12:24.000000', 'en', 'Honduras', 99, 99),
('2026-01-16 18:12:24.261843', '2026-01-16 18:12:24.000000', 'en', 'Hong Kong', 100, 100),
('2026-01-16 18:12:24.315073', '2026-01-16 18:12:24.000000', 'en', 'Hungary', 101, 101),
('2026-01-16 18:12:24.377728', '2026-01-16 18:12:24.000000', 'en', 'Iceland', 102, 102),
('2026-01-16 18:12:24.456882', '2026-01-16 18:12:24.000000', 'en', 'India', 103, 103),
('2026-01-16 18:12:24.512226', '2026-01-16 18:12:24.000000', 'en', 'Indonesia', 104, 104),
('2026-01-16 18:12:24.558910', '2026-01-16 18:12:24.000000', 'en', 'Iran (Islamic Republic of)', 105, 105),
('2026-01-16 18:12:24.626579', '2026-01-16 18:12:24.000000', 'en', 'Iraq', 106, 106),
('2026-01-16 18:12:24.706816', '2026-01-16 18:12:24.000000', 'en', 'Ireland', 107, 107),
('2026-01-16 18:12:24.758891', '2026-01-16 18:12:24.000000', 'en', 'Isle of Man', 108, 108),
('2026-01-16 18:12:24.806095', '2026-01-16 18:12:24.000000', 'en', 'Israel', 109, 109),
('2026-01-16 18:12:24.860539', '2026-01-16 18:12:24.000000', 'en', 'Italy', 110, 110),
('2026-01-16 18:12:24.917254', '2026-01-16 18:12:24.000000', 'en', 'Jamaica', 111, 111),
('2026-01-16 18:12:24.995767', '2026-01-16 18:12:25.000000', 'en', 'Japan', 112, 112),
('2026-01-16 18:12:25.128968', '2026-01-16 18:12:25.000000', 'en', 'Jersey', 113, 113),
('2026-01-16 18:12:25.186986', '2026-01-16 18:12:25.000000', 'en', 'Jordan', 114, 114),
('2026-01-16 18:12:25.244934', '2026-01-16 18:12:25.000000', 'en', 'Kazakhstan', 115, 115),
('2026-01-16 18:12:25.319526', '2026-01-16 18:12:25.000000', 'en', 'Kenya', 116, 116),
('2026-01-16 18:12:25.382777', '2026-01-16 18:12:25.000000', 'en', 'Kiribati', 117, 117),
('2026-01-16 18:12:25.572054', '2026-01-16 18:12:25.000000', 'en', 'Korea (Democratic People\'s Republic of)', 118, 118),
('2026-01-16 18:12:25.636884', '2026-01-16 18:12:25.000000', 'en', 'Korea (Republic of)', 119, 119),
('2026-01-16 18:12:25.690647', '2026-01-16 18:12:25.000000', 'en', 'Kuwait', 120, 120),
('2026-01-16 18:12:25.773791', '2026-01-16 18:12:25.000000', 'en', 'Kyrgyzstan', 121, 121),
('2026-01-16 18:12:25.848277', '2026-01-16 18:12:25.000000', 'en', 'Lao People\'s Democratic Republic', 122, 122),
('2026-01-16 18:12:25.919003', '2026-01-16 18:12:25.000000', 'en', 'Latvia', 123, 123),
('2026-01-16 18:12:26.009261', '2026-01-16 18:12:26.000000', 'en', 'Lebanon', 124, 124),
('2026-01-16 18:12:26.067497', '2026-01-16 18:12:26.000000', 'en', 'Lesotho', 125, 125),
('2026-01-16 18:12:26.127243', '2026-01-16 18:12:26.000000', 'en', 'Liberia', 126, 126),
('2026-01-16 18:12:26.192694', '2026-01-16 18:12:26.000000', 'en', 'Libya', 127, 127),
('2026-01-16 18:12:26.250054', '2026-01-16 18:12:26.000000', 'en', 'Liechtenstein', 128, 128),
('2026-01-16 18:12:26.305596', '2026-01-16 18:12:26.000000', 'en', 'Lithuania', 129, 129),
('2026-01-16 18:12:26.353618', '2026-01-16 18:12:26.000000', 'en', 'Luxembourg', 130, 130),
('2026-01-16 18:12:26.415711', '2026-01-16 18:12:26.000000', 'en', 'Macao', 131, 131),
('2026-01-16 18:12:26.481096', '2026-01-16 18:12:26.000000', 'en', 'Macedonia (the former Yugoslav Republic of)', 132, 132),
('2026-01-16 18:12:26.533785', '2026-01-16 18:12:26.000000', 'en', 'Madagascar', 133, 133),
('2026-01-16 18:12:26.590558', '2026-01-16 18:12:26.000000', 'en', 'Malawi', 134, 134),
('2026-01-16 18:12:26.654895', '2026-01-16 18:12:26.000000', 'en', 'Malaysia', 135, 135),
('2026-01-16 18:12:26.740207', '2026-01-16 18:12:26.000000', 'en', 'Maldives', 136, 136),
('2026-01-16 18:12:26.807724', '2026-01-16 18:12:26.000000', 'en', 'Mali', 137, 137),
('2026-01-16 18:12:26.878248', '2026-01-16 18:12:26.000000', 'en', 'Malta', 138, 138),
('2026-01-16 18:12:26.949581', '2026-01-16 18:12:26.000000', 'en', 'Marshall Islands', 139, 139),
('2026-01-16 18:12:27.017165', '2026-01-16 18:12:27.000000', 'en', 'Martinique', 140, 140),
('2026-01-16 18:12:27.080752', '2026-01-16 18:12:27.000000', 'en', 'Mauritania', 141, 141),
('2026-01-16 18:12:27.140759', '2026-01-16 18:12:27.000000', 'en', 'Mauritius', 142, 142),
('2026-01-16 18:12:27.196393', '2026-01-16 18:12:27.000000', 'en', 'Mayotte', 143, 143),
('2026-01-16 18:12:27.254004', '2026-01-16 18:12:27.000000', 'en', 'Mexico', 144, 144),
('2026-01-16 18:12:27.321497', '2026-01-16 18:12:27.000000', 'en', 'Micronesia (Federated States of)', 145, 145),
('2026-01-16 18:12:27.387905', '2026-01-16 18:12:27.000000', 'en', 'Moldova (Republic of)', 146, 146),
('2026-01-16 18:12:27.433073', '2026-01-16 18:12:27.000000', 'en', 'Monaco', 147, 147),
('2026-01-16 18:12:27.503160', '2026-01-16 18:12:27.000000', 'en', 'Mongolia', 148, 148),
('2026-01-16 18:12:27.555189', '2026-01-16 18:12:27.000000', 'en', 'Montenegro', 149, 149),
('2026-01-16 18:12:27.610894', '2026-01-16 18:12:27.000000', 'en', 'Montserrat', 150, 150),
('2026-01-16 18:12:27.677516', '2026-01-16 18:12:27.000000', 'en', 'Morocco', 151, 151),
('2026-01-16 18:12:27.767700', '2026-01-16 18:12:27.000000', 'en', 'Mozambique', 152, 152),
('2026-01-16 18:12:27.821787', '2026-01-16 18:12:27.000000', 'en', 'Myanmar', 153, 153),
('2026-01-16 18:12:27.870520', '2026-01-16 18:12:27.000000', 'en', 'Namibia', 154, 154),
('2026-01-16 18:12:27.920630', '2026-01-16 18:12:27.000000', 'en', 'Nauru', 155, 155),
('2026-01-16 18:12:27.968754', '2026-01-16 18:12:27.000000', 'en', 'Nepal', 156, 156),
('2026-01-16 18:12:28.023277', '2026-01-16 18:12:28.000000', 'en', 'Netherlands', 157, 157),
('2026-01-16 18:12:28.080082', '2026-01-16 18:12:28.000000', 'en', 'New Caledonia', 158, 158),
('2026-01-16 18:12:28.145785', '2026-01-16 18:12:28.000000', 'en', 'New Zealand', 159, 159),
('2026-01-16 18:12:28.202139', '2026-01-16 18:12:28.000000', 'en', 'Nicaragua', 160, 160),
('2026-01-16 18:12:28.255068', '2026-01-16 18:12:28.000000', 'en', 'Niger', 161, 161),
('2026-01-16 18:12:28.352240', '2026-01-16 18:12:28.000000', 'en', 'Nigeria', 162, 162),
('2026-01-16 18:12:28.472629', '2026-01-16 18:12:28.000000', 'en', 'Niue', 163, 163),
('2026-01-16 18:12:28.611374', '2026-01-16 18:12:28.000000', 'en', 'Norfolk Island', 164, 164),
('2026-01-16 18:12:28.679641', '2026-01-16 18:12:28.000000', 'en', 'Northern Mariana Islands', 165, 165),
('2026-01-16 18:12:28.730280', '2026-01-16 18:12:28.000000', 'en', 'Norway', 166, 166),
('2026-01-16 18:12:28.784284', '2026-01-16 18:12:28.000000', 'en', 'Oman', 167, 167),
('2026-01-16 18:12:28.864259', '2026-01-16 18:12:28.000000', 'en', 'Pakistan', 168, 168),
('2026-01-16 18:12:28.923340', '2026-01-16 18:12:28.000000', 'en', 'Palau', 169, 169),
('2026-01-16 18:12:28.971372', '2026-01-16 18:12:29.000000', 'en', 'Palestine, State of', 170, 170),
('2026-01-16 18:12:29.031687', '2026-01-16 18:12:29.000000', 'en', 'Panama', 171, 171),
('2026-01-16 18:12:29.087877', '2026-01-16 18:12:29.000000', 'en', 'Papua New Guinea', 172, 172),
('2026-01-16 18:12:29.147602', '2026-01-16 18:12:29.000000', 'en', 'Paraguay', 173, 173),
('2026-01-16 18:12:29.232937', '2026-01-16 18:12:29.000000', 'en', 'Peru', 174, 174),
('2026-01-16 18:12:29.300257', '2026-01-16 18:12:29.000000', 'en', 'Philippines', 175, 175),
('2026-01-16 18:12:29.372621', '2026-01-16 18:12:29.000000', 'en', 'Pitcairn', 176, 176),
('2026-01-16 18:12:29.451257', '2026-01-16 18:12:29.000000', 'en', 'Poland', 177, 177),
('2026-01-16 18:12:29.509780', '2026-01-16 18:12:29.000000', 'en', 'Portugal', 178, 178),
('2026-01-16 18:12:29.589361', '2026-01-16 18:12:29.000000', 'en', 'Puerto Rico', 179, 179),
('2026-01-16 18:12:29.663208', '2026-01-16 18:12:29.000000', 'en', 'Qatar', 180, 180),
('2026-01-16 18:12:29.740372', '2026-01-16 18:12:29.000000', 'en', 'Réunion', 181, 181),
('2026-01-16 18:12:29.808565', '2026-01-16 18:12:29.000000', 'en', 'Romania', 182, 182),
('2026-01-16 18:12:29.872043', '2026-01-16 18:12:29.000000', 'en', 'Russian Federation', 183, 183),
('2026-01-16 18:12:29.936852', '2026-01-16 18:12:29.000000', 'en', 'Rwanda', 184, 184),
('2026-01-16 18:12:30.029518', '2026-01-16 18:12:30.000000', 'en', 'Saint Barthélemy', 185, 185),
('2026-01-16 18:12:30.084575', '2026-01-16 18:12:30.000000', 'en', 'Saint Helena, Ascension and Tristan da Cunha', 186, 186),
('2026-01-16 18:12:30.145242', '2026-01-16 18:12:30.000000', 'en', 'Saint Kitts and Nevis', 187, 187),
('2026-01-16 18:12:30.189860', '2026-01-16 18:12:30.000000', 'en', 'Saint Lucia', 188, 188),
('2026-01-16 18:12:30.255713', '2026-01-16 18:12:30.000000', 'en', 'Saint Martin (French part)', 189, 189),
('2026-01-16 18:12:30.319924', '2026-01-16 18:12:30.000000', 'en', 'Saint Pierre and Miquelon', 190, 190),
('2026-01-16 18:12:30.371200', '2026-01-16 18:12:30.000000', 'en', 'Saint Vincent and the Grenadines', 191, 191),
('2026-01-16 18:12:30.443142', '2026-01-16 18:12:30.000000', 'en', 'Samoa', 192, 192),
('2026-01-16 18:12:30.504404', '2026-01-16 18:12:30.000000', 'en', 'San Marino', 193, 193),
('2026-01-16 18:12:30.564914', '2026-01-16 18:12:30.000000', 'en', 'Sao Tome and Principe', 194, 194),
('2026-01-16 18:12:30.629987', '2026-01-16 18:12:30.000000', 'en', 'Saudi Arabia', 195, 195),
('2026-01-16 18:12:30.696509', '2026-01-16 18:12:30.000000', 'en', 'Senegal', 196, 196),
('2026-01-16 18:12:30.755144', '2026-01-16 18:12:30.000000', 'en', 'Serbia', 197, 197),
('2026-01-16 18:12:30.800767', '2026-01-16 18:12:30.000000', 'en', 'Seychelles', 198, 198),
('2026-01-16 18:12:30.859634', '2026-01-16 18:12:30.000000', 'en', 'Sierra Leone', 199, 199),
('2026-01-16 18:12:30.916730', '2026-01-16 18:12:30.000000', 'en', 'Singapore', 200, 200),
('2026-01-16 18:12:30.975245', '2026-01-16 18:12:31.000000', 'en', 'Sint Maarten (Dutch part)', 201, 201),
('2026-01-16 18:12:31.036188', '2026-01-16 18:12:31.000000', 'en', 'Slovakia', 202, 202),
('2026-01-16 18:12:31.103771', '2026-01-16 18:12:31.000000', 'en', 'Slovenia', 203, 203),
('2026-01-16 18:12:31.170729', '2026-01-16 18:12:31.000000', 'en', 'Solomon Islands', 204, 204),
('2026-01-16 18:12:31.215662', '2026-01-16 18:12:31.000000', 'en', 'Somalia', 205, 205),
('2026-01-16 18:12:31.263314', '2026-01-16 18:12:31.000000', 'en', 'South Africa', 206, 206),
('2026-01-16 18:12:31.322006', '2026-01-16 18:12:31.000000', 'en', 'South Georgia and the South Sandwich Islands', 207, 207),
('2026-01-16 18:12:31.376610', '2026-01-16 18:12:31.000000', 'en', 'South Sudan', 208, 208),
('2026-01-16 18:12:31.421134', '2026-01-16 18:12:31.000000', 'en', 'Spain', 209, 209),
('2026-01-16 18:12:31.468568', '2026-01-16 18:12:31.000000', 'en', 'Sri Lanka', 210, 210),
('2026-01-16 18:12:31.519822', '2026-01-16 18:12:31.000000', 'en', 'Sudan', 211, 211),
('2026-01-16 18:12:31.584241', '2026-01-16 18:12:31.000000', 'en', 'Suriname', 212, 212),
('2026-01-16 18:12:31.629527', '2026-01-16 18:12:31.000000', 'en', 'Svalbard and Jan Mayen', 213, 213),
('2026-01-16 18:12:31.694456', '2026-01-16 18:12:31.000000', 'en', 'Sweden', 214, 214),
('2026-01-16 18:12:31.747998', '2026-01-16 18:12:31.000000', 'en', 'Switzerland', 215, 215),
('2026-01-16 18:12:31.806863', '2026-01-16 18:12:31.000000', 'en', 'Syrian Arab Republic', 216, 216),
('2026-01-16 18:12:31.858083', '2026-01-16 18:12:31.000000', 'en', 'Taiwan, Province of China', 217, 217),
('2026-01-16 18:12:31.911286', '2026-01-16 18:12:31.000000', 'en', 'Tajikistan', 218, 218),
('2026-01-16 18:12:31.971571', '2026-01-16 18:12:32.000000', 'en', 'Tanzania, United Republic of', 219, 219),
('2026-01-16 18:12:32.031801', '2026-01-16 18:12:32.000000', 'en', 'Thailand', 220, 220),
('2026-01-16 18:12:32.087936', '2026-01-16 18:12:32.000000', 'en', 'Timor-Leste', 221, 221),
('2026-01-16 18:12:32.146997', '2026-01-16 18:12:32.000000', 'en', 'Togo', 222, 222),
('2026-01-16 18:12:32.199924', '2026-01-16 18:12:32.000000', 'en', 'Tokelau', 223, 223),
('2026-01-16 18:12:32.256976', '2026-01-16 18:12:32.000000', 'en', 'Tonga', 224, 224),
('2026-01-16 18:12:32.311955', '2026-01-16 18:12:32.000000', 'en', 'Trinidad and Tobago', 225, 225),
('2026-01-16 18:12:32.363754', '2026-01-16 18:12:32.000000', 'en', 'Tunisia', 226, 226),
('2026-01-16 18:12:32.426395', '2026-01-16 18:12:32.000000', 'en', 'Turkey', 227, 227),
('2026-01-16 18:12:32.481557', '2026-01-16 18:12:32.000000', 'en', 'Turkmenistan', 228, 228),
('2026-01-16 18:12:32.531185', '2026-01-16 18:12:32.000000', 'en', 'Turks and Caicos Islands', 229, 229),
('2026-01-16 18:12:32.628603', '2026-01-16 18:12:32.000000', 'en', 'Tuvalu', 230, 230),
('2026-01-16 18:12:32.703482', '2026-01-16 18:12:32.000000', 'en', 'Uganda', 231, 231),
('2026-01-16 18:12:32.780492', '2026-01-16 18:12:32.000000', 'en', 'Ukraine', 232, 232),
('2026-01-16 18:12:32.879420', '2026-01-16 18:12:32.000000', 'en', 'United Arab Emirates', 233, 233),
('2026-01-16 18:12:32.945399', '2026-01-16 18:12:32.000000', 'en', 'United Kingdom', 234, 234),
('2026-01-16 18:12:33.041545', '2026-01-16 18:12:33.000000', 'en', 'United States of America', 235, 235),
('2026-01-16 18:12:33.148277', '2026-01-16 18:12:33.000000', 'en', 'United States Minor Outlying Islands', 236, 236),
('2026-01-16 18:12:33.224952', '2026-01-16 18:12:33.000000', 'en', 'Uruguay', 237, 237),
('2026-01-16 18:12:33.301829', '2026-01-16 18:12:33.000000', 'en', 'Uzbekistan', 238, 238),
('2026-01-16 18:12:33.351795', '2026-01-16 18:12:33.000000', 'en', 'Vanuatu', 239, 239),
('2026-01-16 18:12:33.400769', '2026-01-16 18:12:33.000000', 'en', 'Venezuela (Bolivarian Republic of)', 240, 240),
('2026-01-16 18:12:33.447670', '2026-01-16 18:12:33.000000', 'en', 'Viet Nam', 241, 241),
('2026-01-16 18:12:33.511091', '2026-01-16 18:12:33.000000', 'en', 'Virgin Islands (British)', 242, 242),
('2026-01-16 18:12:33.556929', '2026-01-16 18:12:33.000000', 'en', 'Virgin Islands (U.S.)', 243, 243),
('2026-01-16 18:12:33.605607', '2026-01-16 18:12:33.000000', 'en', 'Wallis and Futuna', 244, 244),
('2026-01-16 18:12:33.651651', '2026-01-16 18:12:33.000000', 'en', 'Western Sahara', 245, 245),
('2026-01-16 18:12:33.710576', '2026-01-16 18:12:33.000000', 'en', 'Yemen', 246, 246),
('2026-01-16 18:12:33.760331', '2026-01-16 18:12:33.000000', 'en', 'Zambia', 247, 247),
('2026-01-16 18:12:33.815238', '2026-01-16 18:12:33.000000', 'en', 'Zimbabwe', 248, 248);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`createdAt`, `updatedAt`, `code`, `description`, `permissions`, `id`) VALUES
('2026-01-16 18:12:16.097260', '2026-01-16 18:12:16.097260', '__super_admin_role__', 'SuperAdmin', 'Authenticated,SuperAdmin,UpdateGlobalSettings,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateSettings,ReadSettings,UpdateSettings,DeleteSettings,CreateAdministrator,ReadAdministrator,UpdateAdministrator,DeleteAdministrator,CreateAsset,ReadAsset,UpdateAsset,DeleteAsset,CreateChannel,ReadChannel,UpdateChannel,DeleteChannel,CreateCollection,ReadCollection,UpdateCollection,DeleteCollection,CreateCountry,ReadCountry,UpdateCountry,DeleteCountry,CreateCustomer,ReadCustomer,UpdateCustomer,DeleteCustomer,CreateCustomerGroup,ReadCustomerGroup,UpdateCustomerGroup,DeleteCustomerGroup,CreateFacet,ReadFacet,UpdateFacet,DeleteFacet,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,CreatePaymentMethod,ReadPaymentMethod,UpdatePaymentMethod,DeletePaymentMethod,CreateProduct,ReadProduct,UpdateProduct,DeleteProduct,CreatePromotion,ReadPromotion,UpdatePromotion,DeletePromotion,CreateShippingMethod,ReadShippingMethod,UpdateShippingMethod,DeleteShippingMethod,CreateTag,ReadTag,UpdateTag,DeleteTag,CreateTaxCategory,ReadTaxCategory,UpdateTaxCategory,DeleteTaxCategory,CreateTaxRate,ReadTaxRate,UpdateTaxRate,DeleteTaxRate,CreateSeller,ReadSeller,UpdateSeller,DeleteSeller,CreateStockLocation,ReadStockLocation,UpdateStockLocation,DeleteStockLocation,CreateSystem,ReadSystem,UpdateSystem,DeleteSystem,CreateZone,ReadZone,UpdateZone,DeleteZone,ReadDashboardGlobalViews,WriteDashboardGlobalViews', 1),
('2026-01-16 18:12:16.143594', '2026-01-16 18:12:16.143594', '__customer_role__', 'Customer', 'Authenticated', 2),
('2026-01-16 18:12:36.458811', '2026-01-16 18:12:36.458811', 'administrator', 'Administrator', 'Authenticated,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateSettings,ReadSettings,UpdateSettings,DeleteSettings,CreateCustomer,ReadCustomer,UpdateCustomer,DeleteCustomer,CreateCustomerGroup,ReadCustomerGroup,UpdateCustomerGroup,DeleteCustomerGroup,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,CreateSystem,ReadSystem,UpdateSystem,DeleteSystem', 3),
('2026-01-16 18:12:36.489386', '2026-01-16 18:12:36.489386', 'order-manager', 'Order manager', 'Authenticated,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,ReadCustomer,ReadPaymentMethod,ReadShippingMethod,ReadPromotion,ReadCountry,ReadZone', 4),
('2026-01-16 18:12:36.524874', '2026-01-16 18:12:36.524874', 'inventory-manager', 'Inventory manager', 'Authenticated,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateTag,ReadTag,UpdateTag,DeleteTag,ReadCustomer', 5);

-- --------------------------------------------------------

--
-- Table structure for table `role_channels_channel`
--

CREATE TABLE `role_channels_channel` (
  `roleId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_channels_channel`
--

INSERT INTO `role_channels_channel` (`roleId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_task_record`
--

CREATE TABLE `scheduled_task_record` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `taskId` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `lockedAt` datetime(3) DEFAULT NULL,
  `lastExecutedAt` datetime(3) DEFAULT NULL,
  `manuallyTriggeredAt` datetime(3) DEFAULT NULL,
  `lastResult` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`lastResult`)),
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scheduled_task_record`
--

INSERT INTO `scheduled_task_record` (`createdAt`, `updatedAt`, `taskId`, `enabled`, `lockedAt`, `lastExecutedAt`, `manuallyTriggeredAt`, `lastResult`, `id`) VALUES
('2026-01-16 20:00:00.065851', '2026-01-17 10:00:01.000000', 'clean-jobs', 1, NULL, '2026-01-17 02:00:01.506', NULL, '{\"jobRecordsDeleted\":0}', 1),
('2026-01-17 00:00:00.020061', '2026-01-17 00:00:00.000000', 'clean-sessions', 1, NULL, '2026-01-16 16:00:00.127', NULL, '{\"result\":\"Triggered clean sessions job\"}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `search_index_item`
--

CREATE TABLE `search_index_item` (
  `languageCode` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productVariantName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `facetIds` text NOT NULL,
  `facetValueIds` text NOT NULL,
  `collectionIds` text NOT NULL,
  `collectionSlugs` text NOT NULL,
  `channelIds` text NOT NULL,
  `productPreview` varchar(255) NOT NULL,
  `productPreviewFocalPoint` text DEFAULT NULL,
  `productVariantPreview` varchar(255) NOT NULL,
  `productVariantPreviewFocalPoint` text DEFAULT NULL,
  `inStock` tinyint(4) NOT NULL DEFAULT 1,
  `productInStock` tinyint(4) NOT NULL DEFAULT 1,
  `productVariantId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productAssetId` int(11) DEFAULT NULL,
  `productVariantAssetId` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `priceWithTax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_index_item`
--

INSERT INTO `search_index_item` (`languageCode`, `enabled`, `productName`, `productVariantName`, `description`, `slug`, `sku`, `facetIds`, `facetValueIds`, `collectionIds`, `collectionSlugs`, `channelIds`, `productPreview`, `productPreviewFocalPoint`, `productVariantPreview`, `productVariantPreviewFocalPoint`, `inStock`, `productInStock`, `productVariantId`, `channelId`, `productId`, `productAssetId`, `productVariantAssetId`, `price`, `priceWithTax`) VALUES
('en', 1, 'Laptop', 'Laptop 13 inch 8GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201308', '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 1, 1, 1, 1, NULL, 129900, 155880),
('en', 1, 'Laptop', 'Laptop 15 inch 8GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201508', '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 2, 1, 1, 1, NULL, 139900, 167880),
('en', 1, 'Laptop', 'Laptop 13 inch 16GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201316', '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 3, 1, 1, 1, NULL, 219900, 263880),
('en', 1, 'Laptop', 'Laptop 15 inch 16GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201516', '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 4, 1, 1, 1, NULL, 229900, 275880),
('en', 1, 'Tablet', 'Tablet 32GB', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 'tablet', 'TBL200032', '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/b8/kelly-sikkema-685291-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 5, 1, 2, 2, NULL, 32900, 39480),
('en', 1, 'Tablet', 'Tablet 128GB', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 'tablet', 'TBL200128', '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/b8/kelly-sikkema-685291-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 6, 1, 2, 2, NULL, 44500, 53400),
('en', 1, 'Wireless Optical Mouse', 'Wireless Optical Mouse', 'The Logitech M185 Wireless Optical Mouse is a great device for any computer user, and as Logitech are the global market leaders for these devices, you are also guaranteed absolute reliability. A mouse to be reckoned with!', 'cordless-mouse', '834444', '1,2', '1,2,4', '2,3', 'electronics,computers', '1', 'preview/a1/oscar-ivan-esquivel-arteaga-687447-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 7, 1, 3, 3, NULL, 1899, 2279),
('en', 1, '32-Inch Monitor', '32-Inch Monitor', 'The UJ59 with Ultra HD resolution has 4x the pixels of Full HD, delivering more screen space and amazingly life-like images. That means you can view documents and webpages with less scrolling, work more comfortably with multiple windows and toolbars, and enjoy photos, videos and games in stunning 4K quality. Note: beverage not included.', '32-inch-monitor', 'LU32J590UQUXEN', '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview/d2/daniel-korpai-1302051-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 8, 1, 4, 4, NULL, 31000, 37200),
('en', 1, 'Curvy Monitor', 'Curvy Monitor 24 inch', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 'curvy-monitor', 'C24F390', '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview/9c/alexandru-acea-686569-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 9, 1, 5, 5, NULL, 14374, 17249),
('en', 1, 'Curvy Monitor', 'Curvy Monitor 27 inch', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 'curvy-monitor', 'C27F390', '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview/9c/alexandru-acea-686569-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 10, 1, 5, 5, NULL, 16994, 20393),
('en', 1, 'High Performance RAM', 'High Performance RAM 4GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC04', '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview/58/liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 11, 1, 6, 6, NULL, 13785, 16542),
('en', 1, 'High Performance RAM', 'High Performance RAM 8GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC08', '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview/58/liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 12, 1, 6, 6, NULL, 14639, 17567),
('en', 1, 'High Performance RAM', 'High Performance RAM 16GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC16', '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview/58/liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 13, 1, 6, 6, NULL, 28181, 33817),
('en', 1, 'Gaming PC', 'Gaming PC i7-8700 240GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1063', '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 14, 1, 7, 7, NULL, 108720, 130464),
('en', 1, 'Gaming PC', 'Gaming PC R7-2700 240GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1064', '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 15, 1, 7, 7, NULL, 109995, 131994),
('en', 1, 'Gaming PC', 'Gaming PC i7-8700 120GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1065', '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 16, 1, 7, 7, NULL, 93120, 111744),
('en', 1, 'Gaming PC', 'Gaming PC R7-2700 120GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1066', '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 17, 1, 7, 7, NULL, 94920, 113904),
('en', 1, 'Hard Drive', 'Hard Drive 1TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T1', '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 18, 1, 8, 8, NULL, 3799, 4559),
('en', 1, 'Hard Drive', 'Hard Drive 2TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T2', '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 19, 1, 8, 8, NULL, 5374, 6449),
('en', 1, 'Hard Drive', 'Hard Drive 3TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T3', '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 20, 1, 8, 8, NULL, 7896, 9475),
('en', 1, 'Hard Drive', 'Hard Drive 4TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T4', '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 21, 1, 8, 8, NULL, 9299, 11159),
('en', 1, 'Hard Drive', 'Hard Drive 6TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T6', '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 22, 1, 8, 8, NULL, 13435, 16122),
('en', 1, 'Clacky Keyboard', 'Clacky Keyboard', 'Let all your colleagues know that you are typing on this exclusive, colorful klicky-klacky keyboard. Huge travel on each keypress ensures maximum klack on each and every keystroke.', 'clacky-keyboard', 'A4TKLA45535', '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview/09/juan-gomez-674574-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 23, 1, 9, 9, NULL, 7489, 8987),
('en', 1, 'Ethernet Cable', 'Ethernet Cable', '5m (metres) Cat.6 network cable (upwards/downwards compatible) | Patch cable | 2 RJ-45 plug | plug with bend protection mantle. High transmission speeds due to operating frequency with up to 250 MHz (in comparison to Cat.5/Cat.5e cable bandwidth of 100 MHz).', 'ethernet-cable', 'A23334x30', '1', '1,2', '2,3', 'electronics,computers', '1', 'preview/7b/thomas-q-1229169-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 24, 1, 10, 10, NULL, 597, 716),
('en', 1, 'USB Cable', 'USB Cable', 'Solid conductors eliminate strand-interaction distortion and reduce jitter. As the surface is made of high-purity silver, the performance is very close to that of a solid silver cable, but priced much closer to solid copper cable.', 'usb-cable', 'USBCIN01.5MI', '1', '1,2', '2,3', 'electronics,computers', '1', 'preview/64/adam-birkett-239153-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 25, 1, 11, 11, NULL, 6900, 8280),
('en', 1, 'Instant Camera', 'Instant Camera', 'With its nostalgic design and simple point-and-shoot functionality, the Instant Camera is the perfect pick to get started with instant photography.', 'instant-camera', 'IC22MWDD', '1,2', '1,9,10', '2,4', 'electronics,camera-photo', '1', 'preview/b5/eniko-kis-663725-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 26, 1, 12, 12, NULL, 17499, 20999),
('en', 1, 'Camera Lens', 'Camera Lens', 'This lens is a Di type lens using an optical system with improved multi-coating designed to function with digital SLR cameras as well as film cameras.', 'camera-lens', 'B0012UUP02', '1,2', '1,9,11', '2,4', 'electronics,camera-photo', '1', 'preview/9b/brandi-redd-104140-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 27, 1, 13, 13, NULL, 10400, 12480),
('en', 1, 'Vintage Folding Camera', 'Vintage Folding Camera', 'This vintage folding camera is so antiquated that you cannot possibly hope to produce actual photographs with it. However, it makes a wonderful decorative piece for the home or office.', 'vintage-folding-camera', 'B00AFC9099', '1,2', '1,9,12', '2,4', 'electronics,camera-photo', '1', 'preview/3c/jonathan-talbert-697262-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 28, 1, 14, 14, NULL, 535000, 642000),
('en', 1, 'Tripod', 'Tripod', 'Capture vivid, professional-style photographs with help from this lightweight tripod. The adjustable-height tripod makes it easy to achieve reliable stability and score just the right angle when going after that award-winning shot.', 'tripod', 'B00XI87KV8', '1,2', '1,9,13', '2,4', 'electronics,camera-photo', '1', 'preview/21/zoltan-tasi-423051-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 29, 1, 15, 15, NULL, 1498, 1798),
('en', 1, 'Instamatic Camera', 'Instamatic Camera', 'This inexpensive point-and-shoot camera uses easy-to-load 126 film cartridges. A built-in flash unit ensure great results, no matter the lighting conditions.', 'instamatic-camera', 'B07K1330LL', '1,2', '1,9,14', '2,4', 'electronics,camera-photo', '1', 'preview/5b/jakob-owens-274337-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 30, 1, 16, 16, NULL, 2000, 2400),
('en', 1, 'Compact Digital Camera', 'Compact Digital Camera', 'Unleash your creative potential with high-level performance and advanced features such as AI-powered Real-time Eye AF; new, high-precision Real-time Tracking; high-speed continuous shooting and 4K HDR movie-shooting. The camera\'s innovative AF quickly and reliably detects the position of the subject and then tracks the subject\'s motion, keeping it in sharp focus.', 'compact-digital-camera', 'B07D990021', '1,2', '1,9,15', '2,4', 'electronics,camera-photo', '1', 'preview/bc/patrick-brinksma-663044-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 31, 1, 17, 17, NULL, 89999, 107999),
('en', 1, 'Nikkormat SLR Camera', 'Nikkormat SLR Camera', 'The Nikkormat FS was brought to market by Nikon in 1965. The lens is a 50mm f1.4 Nikkor. Nice glass, smooth focus and a working diaphragm. A UV filter and a Nikon front lens cap are included with the lens.', 'nikkormat-slr-camera', 'B07D33B334', '1,2', '1,9,11', '2,4', 'electronics,camera-photo', '1', 'preview/95/chuttersnap-324234-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 32, 1, 18, 18, NULL, 61500, 73800),
('en', 1, 'Compact SLR Camera', 'Compact SLR Camera', 'Retro styled, portable in size and built around a powerful 24-megapixel APS-C CMOS sensor, this digital camera is the ideal companion for creative everyday photography. Packed full of high spec features such as an advanced hybrid autofocus system able to keep pace with even the most active subjects, a speedy 6fps continuous-shooting mode, high-resolution electronic viewfinder and intuitive swivelling touchscreen, it brings professional image making into everyone’s grasp.', 'compact-slr-camera', 'B07D75V44S', '1', '1,9', '2,4', 'electronics,camera-photo', '1', 'preview/9d/robert-shunev-528016-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 33, 1, 19, 19, NULL, 52100, 62520),
('en', 1, 'Twin Lens Camera', 'Twin Lens Camera', 'What makes a Rolleiflex TLR so special? Many things. To start, TLR stands for twin lens reflex. “Twin” because there are two lenses. And reflex means that the photographer looks through the lens to view the reflected image of an object or scene on the focusing screen. ', 'twin-lens-camera', 'B07D78JTLR', '1,2', '1,9,16', '2,4', 'electronics,camera-photo', '1', 'preview/ef/alexander-andrews-260988-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 34, 1, 20, 20, NULL, 79900, 95880),
('en', 1, 'Road Bike', 'Road Bike', 'Featuring a full carbon chassis - complete with cyclocross-specific carbon fork - and a component setup geared for hard use on the race circuit, it\'s got the low weight, exceptional efficiency and brilliant handling you\'ll need to stay at the front of the pack.', 'road-bike', 'RB000844334', '1,2', '17,18,19', '8,9', 'sports-outdoor,equipment', '1', 'preview/2f/mikkel-bech-748940-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 35, 1, 21, 21, NULL, 249900, 299880),
('en', 1, 'Skipping Rope', 'Skipping Rope', 'When you\'re working out you need a quality rope that doesn\'t tangle at every couple of jumps and with this skipping rope you won\'t have this problem. The fact that it looks like a pair of tasty frankfurters is merely a bonus.', 'skipping-rope', 'B07CNGXVXT', '1,2', '17,18,20', '8,9', 'sports-outdoor,equipment', '1', 'preview/34/stoica-ionela-530966-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 36, 1, 22, 22, NULL, 799, 959),
('en', 1, 'Boxing Gloves', 'Boxing Gloves', 'Training gloves designed for optimum training. Our gloves promote proper punching technique because they are conformed to the natural shape of your fist. Dense, innovative two-layer foam provides better shock absorbency and full padding on the front, back and wrist to promote proper punching technique.', 'boxing-gloves', 'B000ZYLPPU', '1,2', '17,18,20', '8,9', 'sports-outdoor,equipment', '1', 'preview/4f/neonbrand-428982-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 37, 1, 23, 23, NULL, 3304, 3965),
('en', 1, 'Tent', 'Tent', 'With tons of space inside (for max. 4 persons), full head height throughout the entire tent and an unusual and striking shape, this tent offers you everything you need.', 'tent', '2000023510', '1', '17,18', '8,9', 'sports-outdoor,equipment', '1', 'preview/96/michael-guite-571169-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 38, 1, 24, 24, NULL, 21493, 25792),
('en', 1, 'Cruiser Skateboard', 'Cruiser Skateboard', 'Based on the 1970s iconic shape, but made to a larger 69cm size, with updated, quality component, these skateboards are great for beginners to learn the foot spacing required, and are perfect for all-day cruising.', 'cruiser-skateboard', '799872520', '1', '17,18', '8,9', 'sports-outdoor,equipment', '1', 'preview/35/max-tarkhov-737999-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 39, 1, 25, 25, NULL, 2499, 2999),
('en', 1, 'Football', 'Football', 'This football features high-contrast graphics for high-visibility during play, while its machine-stitched tpu casing offers consistent performance.', 'football', 'SC3137-056', '1,2', '17,18,21', '8,9', 'sports-outdoor,equipment', '1', 'preview/d6/nik-shuliahin-619349-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 40, 1, 26, 26, NULL, 5707, 6848),
('en', 1, 'Tennis Ball', 'Tennis Ball', 'Our dog loves these tennis balls and they last for some time before they eventually either get lost in some field or bush or the covering comes off due to it being used most of the day every day.', 'tennis-ball', 'WRT11752P', '1,2', '17,18,22', '8,9', 'sports-outdoor,equipment', '1', 'preview/30/ben-hershey-574483-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 41, 1, 27, 27, NULL, 1273, 1528),
('en', 1, 'Basketball', 'Basketball', 'The Wilson MVP ball is perfect for playing basketball, and improving your skill for hours on end. Designed for new players, it is created with a high-quality rubber suitable for courts, allowing you to get full use during your practices.', 'basketball', 'WTB1418XB06', '1,2', '17,18,22', '8,9', 'sports-outdoor,equipment', '1', 'preview/0f/tommy-bebo-600358-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 42, 1, 28, 28, NULL, 3562, 4274),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 40', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0040', '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 43, 1, 29, 29, NULL, 9999, 11999),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 42', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0042', '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 44, 1, 29, 29, NULL, 9999, 11999),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 44', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0044', '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 45, 1, 29, 29, NULL, 9999, 11999),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 46', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0046', '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 46, 1, 29, 29, NULL, 9999, 11999),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 40', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-40', '1,2,3', '17,21,23,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 47, 1, 30, 30, NULL, 16000, 19200),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 42', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-42', '1,2,3', '17,21,23,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 48, 1, 30, 30, NULL, 16000, 19200),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 44', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-44', '1,2,3', '17,21,23,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 49, 1, 30, 30, NULL, 16000, 19200),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 46', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-46', '1,2,3', '17,21,23,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 50, 1, 30, 30, NULL, 16000, 19200),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 40', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-40', '1,2,3', '17,21,23,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 51, 1, 31, 31, NULL, 14000, 16800),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 42', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-42', '1,2,3', '17,21,23,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 52, 1, 31, 31, NULL, 14000, 16800),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 44', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-44', '1,2,3', '17,21,23,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 53, 1, 31, 31, NULL, 14000, 16800),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 46', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-46', '1,2,3', '17,21,23,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 54, 1, 31, 31, NULL, 14000, 16800),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 40', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578640', '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 55, 1, 32, 32, NULL, 9995, 11994),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 42', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578642', '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 56, 1, 32, 32, NULL, 9995, 11994),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 44', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578644', '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 57, 1, 32, 32, NULL, 9995, 11994),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 46', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578646', '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 58, 1, 32, 32, NULL, 9995, 11994),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 40', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633340', '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 59, 1, 33, 33, NULL, 4495, 5394),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 42', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633342', '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 60, 1, 33, 33, NULL, 4495, 5394),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 44', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633344', '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 61, 1, 33, 33, NULL, 4495, 5394),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 46', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633346', '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 62, 1, 33, 33, NULL, 4495, 5394),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 40', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23340', '1,3,2', '17,23,27,29', '8,10', 'sports-outdoor,footwear', '1', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 63, 1, 34, 34, NULL, 6500, 7800),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 42', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23342', '1,3,2', '17,23,27,29', '8,10', 'sports-outdoor,footwear', '1', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 64, 1, 34, 34, NULL, 6500, 7800),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 44', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23344', '1,3,2', '17,23,27,29', '8,10', 'sports-outdoor,footwear', '1', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 65, 1, 34, 34, NULL, 6500, 7800),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 46', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23346', '1,3,2', '17,23,27,29', '8,10', 'sports-outdoor,footwear', '1', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 66, 1, 34, 34, NULL, 6500, 7800),
('en', 1, 'Spiky Cactus', 'Spiky Cactus', 'A spiky yet elegant house cactus - perfect for the home or office. Origin and habitat: Probably native only to the Andes of Peru', 'spiky-cactus', 'SC011001', '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview/78/charles-deluvio-695736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 67, 1, 35, 35, NULL, 1550, 1860),
('en', 1, 'Tulip Pot', 'Tulip Pot', 'Bright crimson red species tulip with black centers, the poppy-like flowers will open up in full sun. Ideal for rock gardens, pots and border edging.', 'tulip-pot', 'A58477', '1,4', '30,31,32,33', '5,7', 'home-garden,plants', '1', 'preview/14/natalia-y-345738-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 68, 1, 36, 36, NULL, 675, 810),
('en', 1, 'Hanging Plant', 'Hanging Plant', 'Can be found in tropical and sub-tropical America where it grows on the branches of trees, but also on telephone wires and electricity cables and poles that sometimes topple with the weight of these plants. This plant loves a moist and warm air.', 'hanging-plant', 'A44223', '1,4', '30,31,33', '5,7', 'home-garden,plants', '1', 'preview/5b/alex-rodriguez-santibanez-200278-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 69, 1, 37, 37, NULL, 1995, 2394),
('en', 1, 'Aloe Vera', 'Aloe Vera', 'Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works.', 'aloe-vera', 'A44352', '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview/29/silvia-agrasar-227575-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 70, 1, 38, 38, NULL, 699, 839),
('en', 1, 'Fern Blechnum Gibbum', 'Fern Blechnum Gibbum', 'Create a tropical feel in your home with this lush green tree fern, it has decorative leaves and will develop a short slender trunk in time.', 'fern-blechnum-gibbum', 'A04851', '1,4', '30,31,33', '5,7', 'home-garden,plants', '1', 'preview/6d/caleb-george-536388-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 71, 1, 39, 39, NULL, 895, 1074),
('en', 1, 'Assorted Indoor Succulents', 'Assorted Indoor Succulents', 'These assorted succulents come in a variety of different shapes and colours - each with their own unique personality. Succulents grow best in plenty of light: a sunny windowsill would be the ideal spot for them to thrive!', 'assorted-succulents', 'A08593', '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview/81/annie-spratt-78044-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 72, 1, 40, 40, NULL, 3250, 3900),
('en', 1, 'Orchid', 'Orchid', 'Gloriously elegant. It can go along with any interior as it is a neutral color and the most popular Phalaenopsis overall. 2 to 3 foot stems host large white flowers that can last for over 2 months.', 'orchid', 'ROR00221', '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview/88/zoltan-kovacs-642412-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 73, 1, 41, 41, NULL, 6500, 7800),
('en', 1, 'Bonsai Tree', 'Bonsai Tree', 'Excellent semi-evergreen bonsai. Indoors or out but needs some winter protection. All trees sent will leave the nursery in excellent condition and will be of equal quality or better than the photograph shown.', 'bonsai-tree', 'B01MXFLUSV', '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview/f3/mark-tegethoff-667351-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 74, 1, 42, 42, NULL, 1999, 2399),
('en', 1, 'Guardian Lion Statue', 'Guardian Lion Statue', 'Placing it at home or office can bring you fortune and prosperity, guard your house and ward off ill fortune.', 'guardian-lion-statue', 'GL34LLW11', '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview/44/vincent-liu-525429-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 75, 1, 43, 43, NULL, 18853, 22624),
('en', 1, 'Hand Trowel', 'Hand Trowel', 'Hand trowel for garden cultivating hammer finish epoxy-coated head for improved resistance to rust, scratches, humidity and alkalines in the soil.', 'hand-trowel', '4058NB/09', '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview/7d/neslihan-gunaydin-3493-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 76, 1, 44, 44, NULL, 499, 599),
('en', 1, 'Balloon Chair', 'Balloon Chair', 'A charming vintage white wooden chair featuring an extremely spherical pink balloon. The balloon may be detached and used for other purposes, for example as a party decoration.', 'balloon-chair', '34-BC82444', '1', '30,34', '5,6', 'home-garden,furniture', '1', 'preview/ef/florian-klauer-14840-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 77, 1, 45, 45, NULL, 6500, 7800),
('en', 1, 'Grey Fabric Sofa', 'Grey Fabric Sofa', 'Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up. The cover is easy to keep clean as it is removable and can be machine washed.', 'grey-fabric-sofa', 'CH00001-12', '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview/69/nathan-fertig-249917-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 78, 1, 46, 46, NULL, 29500, 35400),
('en', 1, 'Leather Sofa', 'Leather Sofa', 'This premium, tan-brown bonded leather seat is part of the \'chill\' sofa range. The lever activated recline feature makes it easy to adjust to any position. This smart, bustle back design with rounded tight padded arms has been designed with your comfort in mind. This well-padded chair has foam pocket sprung seat cushions and fibre-filled back cushions.', 'leather-sofa', 'CH00001-02', '1,3', '30,34,36', '5,6', 'home-garden,furniture', '1', 'preview/3e/paul-weaver-1120584-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 79, 1, 47, 47, NULL, 124500, 149400),
('en', 1, 'Light Shade', 'Light Shade', 'Modern tapered white polycotton pendant shade with a metallic silver chrome interior finish for maximum light reflection. Reversible gimble so it can be used as a ceiling shade or as a lamp shade.', 'light-shade', 'B45809LSW', '1', '30,34', '5,6', 'home-garden,furniture', '1', 'preview/5f/pierre-chatel-innocenti-483198-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 80, 1, 48, 48, NULL, 2845, 3414),
('en', 1, 'Wooden Side Desk', 'Wooden Side Desk', 'Drawer stops prevent the drawers from being pulled out too far. Built-in cable management for collecting cables and cords; out of sight but close at hand.', 'wooden-side-desk', '304.096.29', '1,3', '30,34,37', '5,6', 'home-garden,furniture', '1', 'preview/40/abel-y-costa-716024-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 81, 1, 49, 49, NULL, 12500, 15000),
('en', 1, 'Comfy Padded Chair', 'Comfy Padded Chair', 'You sit comfortably thanks to the shaped back. The chair frame is made of solid wood, which is a durable natural material.', 'comfy-padded-chair', '404.068.14', '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview/3b/kari-shea-398668-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 82, 1, 50, 50, NULL, 13000, 15600),
('en', 1, 'Black Eaves Chair', 'Black Eaves Chair', 'Comfortable to sit on thanks to the bowl-shaped seat and rounded shape of the backrest. No tools are required to assemble the chair, you just click it together with a simple mechanism under the seat.', 'black-eaves-chair', '003.600.02', '3,1', '27,30,34', '5,6', 'home-garden,furniture', '1', 'preview/09/andres-jasso-220776-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 83, 1, 51, 51, NULL, 7000, 8400),
('en', 1, 'Wooden Stool', 'Wooden Stool', 'Solid wood is a hardwearing natural material, which can be sanded and surface treated as required.', 'wooden-stool', '202.493.30', '1,3', '30,34,37', '5,6', 'home-garden,furniture', '1', 'preview/d0/ruslan-bardash-351288-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 84, 1, 52, 52, NULL, 1400, 1680),
('en', 1, 'Bedside Table', 'Bedside Table', 'Every table is unique, with varying grain pattern and natural colour shifts that are part of the charm of wood.', 'bedside-table', '404.290.14', '3,1', '28,30,34', '5,6', 'home-garden,furniture', '1', 'preview/72/benjamin-voros-310026-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 85, 1, 53, 53, NULL, 13000, 15600),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair mustard', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', '3,1', '38,30,34', '5,6', 'home-garden,furniture', '1', 'preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 86, 1, 54, 54, NULL, 10000, 12000),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair mint', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', '3,1', '39,30,34', '5,6', 'home-garden,furniture', '1', 'preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 87, 1, 54, 54, NULL, 10000, 12000),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair pearl', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', '3,1', '28,30,34', '5,6', 'home-garden,furniture', '1', 'preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 88, 1, 54, 54, NULL, 10000, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`createdAt`, `updatedAt`, `deletedAt`, `name`, `id`) VALUES
('2026-01-16 18:12:15.959910', '2026-01-16 18:12:15.959910', NULL, 'Default Seller', 1);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `token` varchar(255) NOT NULL,
  `expires` datetime NOT NULL,
  `invalidated` tinyint(4) NOT NULL,
  `authenticationStrategy` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `activeOrderId` int(11) DEFAULT NULL,
  `activeChannelId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`createdAt`, `updatedAt`, `token`, `expires`, `invalidated`, `authenticationStrategy`, `id`, `activeOrderId`, `activeChannelId`, `type`, `userId`) VALUES
('2026-01-16 18:27:46.627484', '2026-01-16 18:27:46.000000', '3d1e50ebd4bbd3187877029d6eab5c1c85fac3e91472bcf2a8e6b84a1119ce08', '2027-01-16 16:27:46', 0, NULL, 1, NULL, 1, 'AnonymousSession', NULL),
('2026-01-16 18:27:47.676748', '2026-01-16 18:27:47.000000', '8f699a28f83a414a269d0f3d23ec8c2df89716a4c12630af8b718d1c0c91daf9', '2027-01-16 16:27:47', 0, NULL, 2, NULL, 1, 'AnonymousSession', NULL),
('2026-01-16 18:30:25.425008', '2026-01-16 18:30:25.000000', 'd6dbad8f0f1375083d16ce7dfa8a57547a7dd829b6bcf73c05d6d29921eb20a3', '2027-01-16 16:30:25', 0, NULL, 3, NULL, 1, 'AnonymousSession', NULL),
('2026-01-16 18:30:25.533162', '2026-01-16 18:30:25.000000', '30abb630ab63a52500ef0669b3db207376f0562d8930bba975087089f23fa535', '2027-01-16 16:30:25', 0, NULL, 4, NULL, 1, 'AnonymousSession', NULL),
('2026-01-16 18:33:32.524499', '2026-01-16 18:33:32.000000', '10742da6077c560ea8d6b18e943da88ab6673f73d80acf30ec2f61ba9c556d34', '2027-01-16 16:33:32', 0, NULL, 5, NULL, 1, 'AnonymousSession', NULL),
('2026-01-16 18:33:32.524355', '2026-01-16 18:33:32.000000', 'e338ed4f611b813cede898668d3872aa80be15c6b29308e1e70d20cc2f7d448d', '2027-01-16 16:33:32', 0, NULL, 6, NULL, 1, 'AnonymousSession', NULL),
('2026-01-16 18:33:39.671231', '2026-01-16 18:33:39.000000', '9b0bd1141f46f969072e22df93bcb1e2ab48a9f71c5af503bb3da86d5b6b3df1', '2027-01-16 16:33:39', 0, 'native', 7, NULL, 1, 'AuthenticatedSession', 1),
('2026-01-16 18:35:24.236083', '2026-01-16 18:35:32.000000', '8595bf146f1dd5933cc1833ca8bee6c250e5940f539858da8e44fb3043a4a686', '2027-01-16 16:35:24', 0, 'native', 8, 1, 1, 'AuthenticatedSession', 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings_store_entry`
--

CREATE TABLE `settings_store_entry` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `key` varchar(255) NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`value`)),
  `scope` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings_store_entry`
--

INSERT INTO `settings_store_entry` (`createdAt`, `updatedAt`, `key`, `value`, `scope`, `id`) VALUES
('2026-01-16 18:33:41.403164', '2026-01-16 18:33:41.403164', 'vendure.dashboard.userSettings', '{\"displayLanguage\":\"en\",\"contentLanguage\":\"en\",\"theme\":\"system\",\"displayUiExtensionPoints\":false,\"mainNavExpanded\":true,\"activeChannelId\":\"1\",\"devMode\":false,\"hasSeenOnboarding\":false,\"tableSettings\":{\"customer-list\":{\"pageSize\":10,\"columnVisibility\":{\"id\":false,\"createdAt\":false,\"updatedAt\":false,\"selection\":true,\"name\":true,\"emailAddress\":true,\"user\":true,\"firstName\":false,\"lastName\":false,\"groups\":false,\"actions\":true},\"columnFilters\":[]},\"seller-list\":{\"pageSize\":10,\"columnVisibility\":{\"id\":false,\"createdAt\":false,\"updatedAt\":false,\"selection\":true,\"name\":true,\"actions\":true},\"columnFilters\":[]},\"customer-group-list\":{\"pageSize\":10,\"columnVisibility\":{\"id\":false,\"createdAt\":false,\"updatedAt\":false,\"selection\":true,\"actions\":true},\"columnFilters\":[]},\"product-list\":{\"pageSize\":10,\"columnVisibility\":{\"id\":false,\"createdAt\":false,\"updatedAt\":false,\"selection\":true,\"featuredAsset\":true,\"name\":true,\"slug\":true,\"enabled\":true,\"description\":false,\"actions\":true},\"columnFilters\":[]},\"product-variant-list\":{\"pageSize\":10,\"columnVisibility\":{\"id\":false,\"createdAt\":false,\"updatedAt\":false,\"selection\":true,\"featuredAsset\":true,\"name\":true,\"sku\":true,\"enabled\":true,\"currencyCode\":false,\"price\":false,\"priceWithTax\":true,\"stockLevels\":true,\"actions\":true},\"columnFilters\":[]},\"facet-list\":{\"pageSize\":10,\"columnVisibility\":{\"id\":false,\"createdAt\":false,\"updatedAt\":false,\"selection\":true,\"name\":true,\"code\":false,\"isPrivate\":true,\"valueList\":false,\"actions\":true},\"columnFilters\":[]},\"collection-list\":{\"pageSize\":10,\"columnVisibility\":{\"id\":false,\"createdAt\":false,\"updatedAt\":false,\"selection\":true,\"featuredAsset\":true,\"name\":true,\"slug\":true,\"breadcrumbs\":true,\"productVariants\":true,\"description\":false,\"children\":false,\"position\":false,\"isPrivate\":false,\"parentId\":false,\"actions\":true},\"columnFilters\":[]},\"order-list\":{\"pageSize\":10,\"columnVisibility\":{\"id\":false,\"createdAt\":false,\"updatedAt\":false,\"selection\":true,\"type\":false,\"code\":true,\"state\":true,\"customer\":true,\"orderPlacedAt\":true,\"total\":true,\"totalWithTax\":true,\"currencyCode\":false,\"shippingLines\":true,\"actions\":true},\"columnFilters\":[]},\"promotion-list\":{\"pageSize\":10,\"columnVisibility\":{\"id\":false,\"createdAt\":false,\"updatedAt\":false,\"selection\":true,\"name\":true,\"enabled\":true,\"description\":false,\"couponCode\":true,\"startsAt\":true,\"endsAt\":true,\"usageLimit\":false,\"perCustomerUsageLimit\":false,\"actions\":true},\"columnFilters\":[]}}}', 'user:1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_line`
--

CREATE TABLE `shipping_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `adjustments` text NOT NULL,
  `taxLines` text NOT NULL,
  `id` int(11) NOT NULL,
  `shippingMethodId` int(11) NOT NULL,
  `listPrice` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method`
--

CREATE TABLE `shipping_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `checker` text NOT NULL,
  `calculator` text NOT NULL,
  `fulfillmentHandlerCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_method`
--

INSERT INTO `shipping_method` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `checker`, `calculator`, `fulfillmentHandlerCode`, `id`) VALUES
('2026-01-16 18:12:36.123709', '2026-01-16 18:12:36.123709', NULL, 'standard-shipping', '{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}', '{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}', 'manual-fulfillment', 1),
('2026-01-16 18:12:36.210322', '2026-01-16 18:12:36.210322', NULL, 'express-shipping', '{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}', '{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}', 'manual-fulfillment', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method_channels_channel`
--

CREATE TABLE `shipping_method_channels_channel` (
  `shippingMethodId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_method_channels_channel`
--

INSERT INTO `shipping_method_channels_channel` (`shippingMethodId`, `channelId`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method_translation`
--

CREATE TABLE `shipping_method_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_method_translation`
--

INSERT INTO `shipping_method_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `description`, `id`, `baseId`) VALUES
('2026-01-16 18:12:36.104413', '2026-01-16 18:12:36.000000', 'en', 'Standard Shipping', '', 1, 1),
('2026-01-16 18:12:36.194676', '2026-01-16 18:12:36.000000', 'en', 'Express Shipping', '', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `stock_level`
--

CREATE TABLE `stock_level` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `stockOnHand` int(11) NOT NULL,
  `stockAllocated` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL,
  `stockLocationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_level`
--

INSERT INTO `stock_level` (`createdAt`, `updatedAt`, `stockOnHand`, `stockAllocated`, `id`, `productVariantId`, `stockLocationId`) VALUES
('2026-01-16 18:12:37.732407', '2026-01-16 18:12:37.000000', 100, 0, 1, 1, 1),
('2026-01-16 18:12:37.912918', '2026-01-16 18:12:37.000000', 100, 0, 2, 2, 1),
('2026-01-16 18:12:40.322610', '2026-01-16 18:12:41.000000', 100, 0, 3, 3, 1),
('2026-01-16 18:12:42.058996', '2026-01-16 18:12:42.000000', 100, 0, 4, 4, 1),
('2026-01-16 18:12:42.853462', '2026-01-16 18:12:42.000000', 100, 0, 5, 5, 1),
('2026-01-16 18:12:43.070936', '2026-01-16 18:12:43.000000', 100, 0, 6, 6, 1),
('2026-01-16 18:12:43.535877', '2026-01-16 18:12:43.000000', 100, 0, 7, 7, 1),
('2026-01-16 18:12:44.086552', '2026-01-16 18:12:44.000000', 100, 0, 8, 8, 1),
('2026-01-16 18:12:44.699847', '2026-01-16 18:12:44.000000', 100, 0, 9, 9, 1),
('2026-01-16 18:12:44.909205', '2026-01-16 18:12:44.000000', 100, 0, 10, 10, 1),
('2026-01-16 18:12:45.709740', '2026-01-16 18:12:45.000000', 100, 0, 11, 11, 1),
('2026-01-16 18:12:45.920624', '2026-01-16 18:12:46.000000', 100, 0, 12, 12, 1),
('2026-01-16 18:12:46.230580', '2026-01-16 18:12:46.000000', 100, 0, 13, 13, 1),
('2026-01-16 18:12:47.174369', '2026-01-16 18:12:47.000000', 100, 0, 14, 14, 1),
('2026-01-16 18:12:47.367356', '2026-01-16 18:12:47.000000', 100, 0, 15, 15, 1),
('2026-01-16 18:12:47.571612', '2026-01-16 18:12:47.000000', 100, 0, 16, 16, 1),
('2026-01-16 18:12:47.798515', '2026-01-16 18:12:47.000000', 100, 0, 17, 17, 1),
('2026-01-16 18:12:48.862673', '2026-01-16 18:12:48.000000', 100, 0, 18, 18, 1),
('2026-01-16 18:12:49.074402', '2026-01-16 18:12:49.000000', 100, 0, 19, 19, 1),
('2026-01-16 18:12:49.327496', '2026-01-16 18:12:49.000000', 100, 0, 20, 20, 1),
('2026-01-16 18:12:49.536981', '2026-01-16 18:12:49.000000', 100, 0, 21, 21, 1),
('2026-01-16 18:12:49.771188', '2026-01-16 18:12:49.000000', 100, 0, 22, 22, 1),
('2026-01-16 18:12:50.254946', '2026-01-16 18:12:50.000000', 100, 0, 23, 23, 1),
('2026-01-16 18:12:50.616482', '2026-01-16 18:12:50.000000', 100, 0, 24, 24, 1),
('2026-01-16 18:12:51.012114', '2026-01-16 18:12:51.000000', 100, 0, 25, 25, 1),
('2026-01-16 18:12:51.604892', '2026-01-16 18:12:51.000000', 100, 0, 26, 26, 1),
('2026-01-16 18:12:52.056855', '2026-01-16 18:12:52.000000', 100, 0, 27, 27, 1),
('2026-01-16 18:12:52.523413', '2026-01-16 18:12:52.000000', 100, 0, 28, 28, 1),
('2026-01-16 18:12:52.985135', '2026-01-16 18:12:53.000000', 100, 0, 29, 29, 1),
('2026-01-16 18:12:53.405732', '2026-01-16 18:12:53.000000', 100, 0, 30, 30, 1),
('2026-01-16 18:12:53.878875', '2026-01-16 18:12:53.000000', 100, 0, 31, 31, 1),
('2026-01-16 18:12:54.303439', '2026-01-16 18:12:54.000000', 100, 0, 32, 32, 1),
('2026-01-16 18:12:54.682514', '2026-01-16 18:12:54.000000', 100, 0, 33, 33, 1),
('2026-01-16 18:12:55.239439', '2026-01-16 18:12:55.000000', 100, 0, 34, 34, 1),
('2026-01-16 18:12:55.874681', '2026-01-16 18:12:55.000000', 100, 0, 35, 35, 1),
('2026-01-16 18:12:56.494326', '2026-01-16 18:12:56.000000', 100, 0, 36, 36, 1),
('2026-01-16 18:12:56.901374', '2026-01-16 18:12:56.000000', 100, 0, 37, 37, 1),
('2026-01-16 18:12:57.761502', '2026-01-16 18:12:57.000000', 100, 0, 38, 38, 1),
('2026-01-16 18:12:58.722025', '2026-01-16 18:12:58.000000', 100, 0, 39, 39, 1),
('2026-01-16 18:12:59.885852', '2026-01-16 18:12:59.000000', 100, 0, 40, 40, 1),
('2026-01-16 18:13:00.495922', '2026-01-16 18:13:00.000000', 100, 0, 41, 41, 1),
('2026-01-16 18:13:00.831746', '2026-01-16 18:13:00.000000', 100, 0, 42, 42, 1),
('2026-01-16 18:13:02.035619', '2026-01-16 18:13:02.000000', 100, 0, 43, 43, 1),
('2026-01-16 18:13:02.229468', '2026-01-16 18:13:02.000000', 100, 0, 44, 44, 1),
('2026-01-16 18:13:02.478619', '2026-01-16 18:13:02.000000', 100, 0, 45, 45, 1),
('2026-01-16 18:13:02.660650', '2026-01-16 18:13:02.000000', 100, 0, 46, 46, 1),
('2026-01-16 18:13:03.575660', '2026-01-16 18:13:03.000000', 100, 0, 47, 47, 1),
('2026-01-16 18:13:03.774787', '2026-01-16 18:13:03.000000', 100, 0, 48, 48, 1),
('2026-01-16 18:13:04.159709', '2026-01-16 18:13:04.000000', 100, 0, 49, 49, 1),
('2026-01-16 18:13:04.854188', '2026-01-16 18:13:04.000000', 100, 0, 50, 50, 1),
('2026-01-16 18:13:05.704407', '2026-01-16 18:13:07.000000', 100, 0, 51, 51, 1),
('2026-01-16 18:13:10.525630', '2026-01-16 18:13:10.000000', 100, 0, 52, 52, 1),
('2026-01-16 18:13:11.307697', '2026-01-16 18:13:11.000000', 100, 0, 53, 53, 1),
('2026-01-16 18:13:12.703525', '2026-01-16 18:13:12.000000', 100, 0, 54, 54, 1),
('2026-01-16 18:13:16.352527', '2026-01-16 18:13:16.000000', 100, 0, 55, 55, 1),
('2026-01-16 18:13:16.616370', '2026-01-16 18:13:16.000000', 100, 0, 56, 56, 1),
('2026-01-16 18:13:16.855497', '2026-01-16 18:13:16.000000', 100, 0, 57, 57, 1),
('2026-01-16 18:13:17.149108', '2026-01-16 18:13:17.000000', 100, 0, 58, 58, 1),
('2026-01-16 18:13:18.134771', '2026-01-16 18:13:18.000000', 100, 0, 59, 59, 1),
('2026-01-16 18:13:18.380770', '2026-01-16 18:13:18.000000', 100, 0, 60, 60, 1),
('2026-01-16 18:13:18.598472', '2026-01-16 18:13:18.000000', 100, 0, 61, 61, 1),
('2026-01-16 18:13:18.798166', '2026-01-16 18:13:18.000000', 100, 0, 62, 62, 1),
('2026-01-16 18:13:21.268814', '2026-01-16 18:13:21.000000', 100, 0, 63, 63, 1),
('2026-01-16 18:13:21.407362', '2026-01-16 18:13:21.000000', 100, 0, 64, 64, 1),
('2026-01-16 18:13:21.848354', '2026-01-16 18:13:21.000000', 100, 0, 65, 65, 1),
('2026-01-16 18:13:22.035169', '2026-01-16 18:13:22.000000', 100, 0, 66, 66, 1),
('2026-01-16 18:13:22.631749', '2026-01-16 18:13:22.000000', 100, 0, 67, 67, 1),
('2026-01-16 18:13:22.985601', '2026-01-16 18:13:23.000000', 100, 0, 68, 68, 1),
('2026-01-16 18:13:23.216821', '2026-01-16 18:13:23.000000', 100, 0, 69, 69, 1),
('2026-01-16 18:13:23.441769', '2026-01-16 18:13:23.000000', 100, 0, 70, 70, 1),
('2026-01-16 18:13:23.658199', '2026-01-16 18:13:23.000000', 100, 0, 71, 71, 1),
('2026-01-16 18:13:23.880808', '2026-01-16 18:13:23.000000', 100, 0, 72, 72, 1),
('2026-01-16 18:13:24.098694', '2026-01-16 18:13:24.000000', 100, 0, 73, 73, 1),
('2026-01-16 18:13:24.311701', '2026-01-16 18:13:24.000000', 100, 0, 74, 74, 1),
('2026-01-16 18:13:24.671035', '2026-01-16 18:13:24.000000', 100, 0, 75, 75, 1),
('2026-01-16 18:13:24.885003', '2026-01-16 18:13:24.000000', 100, 0, 76, 76, 1),
('2026-01-16 18:13:25.132709', '2026-01-16 18:13:25.000000', 100, 0, 77, 77, 1),
('2026-01-16 18:13:25.432636', '2026-01-16 18:13:25.000000', 100, 0, 78, 78, 1),
('2026-01-16 18:13:25.845335', '2026-01-16 18:13:25.000000', 100, 0, 79, 79, 1),
('2026-01-16 18:13:26.121445', '2026-01-16 18:13:26.000000', 100, 0, 80, 80, 1),
('2026-01-16 18:13:26.417885', '2026-01-16 18:13:26.000000', 100, 0, 81, 81, 1),
('2026-01-16 18:13:26.673237', '2026-01-16 18:13:26.000000', 100, 0, 82, 82, 1),
('2026-01-16 18:13:27.061908', '2026-01-16 18:13:27.000000', 100, 0, 83, 83, 1),
('2026-01-16 18:13:27.465333', '2026-01-16 18:13:27.000000', 100, 0, 84, 84, 1),
('2026-01-16 18:13:27.861509', '2026-01-16 18:13:27.000000', 100, 0, 85, 85, 1),
('2026-01-16 18:13:28.539756', '2026-01-16 18:13:28.000000', 100, 0, 86, 86, 1),
('2026-01-16 18:13:30.228402', '2026-01-16 18:13:31.000000', 100, 0, 87, 87, 1),
('2026-01-16 18:13:31.481011', '2026-01-16 18:13:31.000000', 100, 0, 88, 88, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_location`
--

CREATE TABLE `stock_location` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_location`
--

INSERT INTO `stock_location` (`createdAt`, `updatedAt`, `name`, `description`, `id`) VALUES
('2026-01-16 18:12:17.197158', '2026-01-16 18:12:17.197158', 'Default Stock Location', 'The default stock location', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_location_channels_channel`
--

CREATE TABLE `stock_location_channels_channel` (
  `stockLocationId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_location_channels_channel`
--

INSERT INTO `stock_location_channels_channel` (`stockLocationId`, `channelId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock_movement`
--

CREATE TABLE `stock_movement` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `type` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `stockLocationId` int(11) NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `productVariantId` int(11) DEFAULT NULL,
  `orderLineId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_movement`
--

INSERT INTO `stock_movement` (`createdAt`, `updatedAt`, `type`, `quantity`, `id`, `stockLocationId`, `discriminator`, `productVariantId`, `orderLineId`) VALUES
('2026-01-16 18:12:37.759802', '2026-01-16 18:12:37.759802', 'ADJUSTMENT', 100, 1, 1, 'StockAdjustment', 1, NULL),
('2026-01-16 18:12:37.930564', '2026-01-16 18:12:37.930564', 'ADJUSTMENT', 100, 2, 1, 'StockAdjustment', 2, NULL),
('2026-01-16 18:12:40.405715', '2026-01-16 18:12:40.405715', 'ADJUSTMENT', 100, 3, 1, 'StockAdjustment', 3, NULL),
('2026-01-16 18:12:42.094448', '2026-01-16 18:12:42.094448', 'ADJUSTMENT', 100, 4, 1, 'StockAdjustment', 4, NULL),
('2026-01-16 18:12:42.880040', '2026-01-16 18:12:42.880040', 'ADJUSTMENT', 100, 5, 1, 'StockAdjustment', 5, NULL),
('2026-01-16 18:12:43.101013', '2026-01-16 18:12:43.101013', 'ADJUSTMENT', 100, 6, 1, 'StockAdjustment', 6, NULL),
('2026-01-16 18:12:43.575351', '2026-01-16 18:12:43.575351', 'ADJUSTMENT', 100, 7, 1, 'StockAdjustment', 7, NULL),
('2026-01-16 18:12:44.135668', '2026-01-16 18:12:44.135668', 'ADJUSTMENT', 100, 8, 1, 'StockAdjustment', 8, NULL),
('2026-01-16 18:12:44.730618', '2026-01-16 18:12:44.730618', 'ADJUSTMENT', 100, 9, 1, 'StockAdjustment', 9, NULL),
('2026-01-16 18:12:44.953190', '2026-01-16 18:12:44.953190', 'ADJUSTMENT', 100, 10, 1, 'StockAdjustment', 10, NULL),
('2026-01-16 18:12:45.733531', '2026-01-16 18:12:45.733531', 'ADJUSTMENT', 100, 11, 1, 'StockAdjustment', 11, NULL),
('2026-01-16 18:12:45.961438', '2026-01-16 18:12:45.961438', 'ADJUSTMENT', 100, 12, 1, 'StockAdjustment', 12, NULL),
('2026-01-16 18:12:46.301999', '2026-01-16 18:12:46.301999', 'ADJUSTMENT', 100, 13, 1, 'StockAdjustment', 13, NULL),
('2026-01-16 18:12:47.196228', '2026-01-16 18:12:47.196228', 'ADJUSTMENT', 100, 14, 1, 'StockAdjustment', 14, NULL),
('2026-01-16 18:12:47.404673', '2026-01-16 18:12:47.404673', 'ADJUSTMENT', 100, 15, 1, 'StockAdjustment', 15, NULL),
('2026-01-16 18:12:47.593833', '2026-01-16 18:12:47.593833', 'ADJUSTMENT', 100, 16, 1, 'StockAdjustment', 16, NULL),
('2026-01-16 18:12:47.864760', '2026-01-16 18:12:47.864760', 'ADJUSTMENT', 100, 17, 1, 'StockAdjustment', 17, NULL),
('2026-01-16 18:12:48.892990', '2026-01-16 18:12:48.892990', 'ADJUSTMENT', 100, 18, 1, 'StockAdjustment', 18, NULL),
('2026-01-16 18:12:49.105133', '2026-01-16 18:12:49.105133', 'ADJUSTMENT', 100, 19, 1, 'StockAdjustment', 19, NULL),
('2026-01-16 18:12:49.345426', '2026-01-16 18:12:49.345426', 'ADJUSTMENT', 100, 20, 1, 'StockAdjustment', 20, NULL),
('2026-01-16 18:12:49.585541', '2026-01-16 18:12:49.585541', 'ADJUSTMENT', 100, 21, 1, 'StockAdjustment', 21, NULL),
('2026-01-16 18:12:49.799043', '2026-01-16 18:12:49.799043', 'ADJUSTMENT', 100, 22, 1, 'StockAdjustment', 22, NULL),
('2026-01-16 18:12:50.277672', '2026-01-16 18:12:50.277672', 'ADJUSTMENT', 100, 23, 1, 'StockAdjustment', 23, NULL),
('2026-01-16 18:12:50.642037', '2026-01-16 18:12:50.642037', 'ADJUSTMENT', 100, 24, 1, 'StockAdjustment', 24, NULL),
('2026-01-16 18:12:51.048822', '2026-01-16 18:12:51.048822', 'ADJUSTMENT', 100, 25, 1, 'StockAdjustment', 25, NULL),
('2026-01-16 18:12:51.638845', '2026-01-16 18:12:51.638845', 'ADJUSTMENT', 100, 26, 1, 'StockAdjustment', 26, NULL),
('2026-01-16 18:12:52.078552', '2026-01-16 18:12:52.078552', 'ADJUSTMENT', 100, 27, 1, 'StockAdjustment', 27, NULL),
('2026-01-16 18:12:52.565267', '2026-01-16 18:12:52.565267', 'ADJUSTMENT', 100, 28, 1, 'StockAdjustment', 28, NULL),
('2026-01-16 18:12:53.014755', '2026-01-16 18:12:53.014755', 'ADJUSTMENT', 100, 29, 1, 'StockAdjustment', 29, NULL),
('2026-01-16 18:12:53.435321', '2026-01-16 18:12:53.435321', 'ADJUSTMENT', 100, 30, 1, 'StockAdjustment', 30, NULL),
('2026-01-16 18:12:53.906660', '2026-01-16 18:12:53.906660', 'ADJUSTMENT', 100, 31, 1, 'StockAdjustment', 31, NULL),
('2026-01-16 18:12:54.367213', '2026-01-16 18:12:54.367213', 'ADJUSTMENT', 100, 32, 1, 'StockAdjustment', 32, NULL),
('2026-01-16 18:12:54.718000', '2026-01-16 18:12:54.718000', 'ADJUSTMENT', 100, 33, 1, 'StockAdjustment', 33, NULL),
('2026-01-16 18:12:55.256803', '2026-01-16 18:12:55.256803', 'ADJUSTMENT', 100, 34, 1, 'StockAdjustment', 34, NULL),
('2026-01-16 18:12:55.902459', '2026-01-16 18:12:55.902459', 'ADJUSTMENT', 100, 35, 1, 'StockAdjustment', 35, NULL),
('2026-01-16 18:12:56.517260', '2026-01-16 18:12:56.517260', 'ADJUSTMENT', 100, 36, 1, 'StockAdjustment', 36, NULL),
('2026-01-16 18:12:56.956969', '2026-01-16 18:12:56.956969', 'ADJUSTMENT', 100, 37, 1, 'StockAdjustment', 37, NULL),
('2026-01-16 18:12:57.895339', '2026-01-16 18:12:57.895339', 'ADJUSTMENT', 100, 38, 1, 'StockAdjustment', 38, NULL),
('2026-01-16 18:12:58.761815', '2026-01-16 18:12:58.761815', 'ADJUSTMENT', 100, 39, 1, 'StockAdjustment', 39, NULL),
('2026-01-16 18:12:59.924525', '2026-01-16 18:12:59.924525', 'ADJUSTMENT', 100, 40, 1, 'StockAdjustment', 40, NULL),
('2026-01-16 18:13:00.532840', '2026-01-16 18:13:00.532840', 'ADJUSTMENT', 100, 41, 1, 'StockAdjustment', 41, NULL),
('2026-01-16 18:13:00.862921', '2026-01-16 18:13:00.862921', 'ADJUSTMENT', 100, 42, 1, 'StockAdjustment', 42, NULL),
('2026-01-16 18:13:02.063828', '2026-01-16 18:13:02.063828', 'ADJUSTMENT', 100, 43, 1, 'StockAdjustment', 43, NULL),
('2026-01-16 18:13:02.279374', '2026-01-16 18:13:02.279374', 'ADJUSTMENT', 100, 44, 1, 'StockAdjustment', 44, NULL),
('2026-01-16 18:13:02.499228', '2026-01-16 18:13:02.499228', 'ADJUSTMENT', 100, 45, 1, 'StockAdjustment', 45, NULL),
('2026-01-16 18:13:02.690284', '2026-01-16 18:13:02.690284', 'ADJUSTMENT', 100, 46, 1, 'StockAdjustment', 46, NULL),
('2026-01-16 18:13:03.605641', '2026-01-16 18:13:03.605641', 'ADJUSTMENT', 100, 47, 1, 'StockAdjustment', 47, NULL),
('2026-01-16 18:13:03.790604', '2026-01-16 18:13:03.790604', 'ADJUSTMENT', 100, 48, 1, 'StockAdjustment', 48, NULL),
('2026-01-16 18:13:04.196415', '2026-01-16 18:13:04.196415', 'ADJUSTMENT', 100, 49, 1, 'StockAdjustment', 49, NULL),
('2026-01-16 18:13:04.893372', '2026-01-16 18:13:04.893372', 'ADJUSTMENT', 100, 50, 1, 'StockAdjustment', 50, NULL),
('2026-01-16 18:13:05.749864', '2026-01-16 18:13:05.749864', 'ADJUSTMENT', 100, 51, 1, 'StockAdjustment', 51, NULL),
('2026-01-16 18:13:10.625337', '2026-01-16 18:13:10.625337', 'ADJUSTMENT', 100, 52, 1, 'StockAdjustment', 52, NULL),
('2026-01-16 18:13:11.354067', '2026-01-16 18:13:11.354067', 'ADJUSTMENT', 100, 53, 1, 'StockAdjustment', 53, NULL),
('2026-01-16 18:13:12.770459', '2026-01-16 18:13:12.770459', 'ADJUSTMENT', 100, 54, 1, 'StockAdjustment', 54, NULL),
('2026-01-16 18:13:16.371396', '2026-01-16 18:13:16.371396', 'ADJUSTMENT', 100, 55, 1, 'StockAdjustment', 55, NULL),
('2026-01-16 18:13:16.645758', '2026-01-16 18:13:16.645758', 'ADJUSTMENT', 100, 56, 1, 'StockAdjustment', 56, NULL),
('2026-01-16 18:13:16.875303', '2026-01-16 18:13:16.875303', 'ADJUSTMENT', 100, 57, 1, 'StockAdjustment', 57, NULL),
('2026-01-16 18:13:17.288459', '2026-01-16 18:13:17.288459', 'ADJUSTMENT', 100, 58, 1, 'StockAdjustment', 58, NULL),
('2026-01-16 18:13:18.156511', '2026-01-16 18:13:18.156511', 'ADJUSTMENT', 100, 59, 1, 'StockAdjustment', 59, NULL),
('2026-01-16 18:13:18.401886', '2026-01-16 18:13:18.401886', 'ADJUSTMENT', 100, 60, 1, 'StockAdjustment', 60, NULL),
('2026-01-16 18:13:18.619882', '2026-01-16 18:13:18.619882', 'ADJUSTMENT', 100, 61, 1, 'StockAdjustment', 61, NULL),
('2026-01-16 18:13:18.815754', '2026-01-16 18:13:18.815754', 'ADJUSTMENT', 100, 62, 1, 'StockAdjustment', 62, NULL),
('2026-01-16 18:13:21.291491', '2026-01-16 18:13:21.291491', 'ADJUSTMENT', 100, 63, 1, 'StockAdjustment', 63, NULL),
('2026-01-16 18:13:21.454797', '2026-01-16 18:13:21.454797', 'ADJUSTMENT', 100, 64, 1, 'StockAdjustment', 64, NULL),
('2026-01-16 18:13:21.869637', '2026-01-16 18:13:21.869637', 'ADJUSTMENT', 100, 65, 1, 'StockAdjustment', 65, NULL),
('2026-01-16 18:13:22.068468', '2026-01-16 18:13:22.068468', 'ADJUSTMENT', 100, 66, 1, 'StockAdjustment', 66, NULL),
('2026-01-16 18:13:22.652663', '2026-01-16 18:13:22.652663', 'ADJUSTMENT', 100, 67, 1, 'StockAdjustment', 67, NULL),
('2026-01-16 18:13:23.003750', '2026-01-16 18:13:23.003750', 'ADJUSTMENT', 100, 68, 1, 'StockAdjustment', 68, NULL),
('2026-01-16 18:13:23.230218', '2026-01-16 18:13:23.230218', 'ADJUSTMENT', 100, 69, 1, 'StockAdjustment', 69, NULL),
('2026-01-16 18:13:23.459248', '2026-01-16 18:13:23.459248', 'ADJUSTMENT', 100, 70, 1, 'StockAdjustment', 70, NULL),
('2026-01-16 18:13:23.670747', '2026-01-16 18:13:23.670747', 'ADJUSTMENT', 100, 71, 1, 'StockAdjustment', 71, NULL),
('2026-01-16 18:13:23.902929', '2026-01-16 18:13:23.902929', 'ADJUSTMENT', 100, 72, 1, 'StockAdjustment', 72, NULL),
('2026-01-16 18:13:24.115262', '2026-01-16 18:13:24.115262', 'ADJUSTMENT', 100, 73, 1, 'StockAdjustment', 73, NULL),
('2026-01-16 18:13:24.330157', '2026-01-16 18:13:24.330157', 'ADJUSTMENT', 100, 74, 1, 'StockAdjustment', 74, NULL),
('2026-01-16 18:13:24.694666', '2026-01-16 18:13:24.694666', 'ADJUSTMENT', 100, 75, 1, 'StockAdjustment', 75, NULL),
('2026-01-16 18:13:24.899158', '2026-01-16 18:13:24.899158', 'ADJUSTMENT', 100, 76, 1, 'StockAdjustment', 76, NULL),
('2026-01-16 18:13:25.155100', '2026-01-16 18:13:25.155100', 'ADJUSTMENT', 100, 77, 1, 'StockAdjustment', 77, NULL),
('2026-01-16 18:13:25.463112', '2026-01-16 18:13:25.463112', 'ADJUSTMENT', 100, 78, 1, 'StockAdjustment', 78, NULL),
('2026-01-16 18:13:25.861998', '2026-01-16 18:13:25.861998', 'ADJUSTMENT', 100, 79, 1, 'StockAdjustment', 79, NULL),
('2026-01-16 18:13:26.142291', '2026-01-16 18:13:26.142291', 'ADJUSTMENT', 100, 80, 1, 'StockAdjustment', 80, NULL),
('2026-01-16 18:13:26.436379', '2026-01-16 18:13:26.436379', 'ADJUSTMENT', 100, 81, 1, 'StockAdjustment', 81, NULL),
('2026-01-16 18:13:26.693637', '2026-01-16 18:13:26.693637', 'ADJUSTMENT', 100, 82, 1, 'StockAdjustment', 82, NULL),
('2026-01-16 18:13:27.082557', '2026-01-16 18:13:27.082557', 'ADJUSTMENT', 100, 83, 1, 'StockAdjustment', 83, NULL),
('2026-01-16 18:13:27.484826', '2026-01-16 18:13:27.484826', 'ADJUSTMENT', 100, 84, 1, 'StockAdjustment', 84, NULL),
('2026-01-16 18:13:27.886297', '2026-01-16 18:13:27.886297', 'ADJUSTMENT', 100, 85, 1, 'StockAdjustment', 85, NULL),
('2026-01-16 18:13:28.578784', '2026-01-16 18:13:28.578784', 'ADJUSTMENT', 100, 86, 1, 'StockAdjustment', 86, NULL),
('2026-01-16 18:13:30.846900', '2026-01-16 18:13:30.846900', 'ADJUSTMENT', 100, 87, 1, 'StockAdjustment', 87, NULL),
('2026-01-16 18:13:31.539822', '2026-01-16 18:13:31.539822', 'ADJUSTMENT', 100, 88, 1, 'StockAdjustment', 88, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surcharge`
--

CREATE TABLE `surcharge` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `description` varchar(255) NOT NULL,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `taxLines` text NOT NULL,
  `id` int(11) NOT NULL,
  `listPrice` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `orderModificationId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `value` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_category`
--

CREATE TABLE `tax_category` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `isDefault` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_category`
--

INSERT INTO `tax_category` (`createdAt`, `updatedAt`, `name`, `isDefault`, `id`) VALUES
('2026-01-16 18:12:34.955407', '2026-01-16 18:12:34.955407', 'Standard Tax', 0, 1),
('2026-01-16 18:12:35.438682', '2026-01-16 18:12:35.438682', 'Reduced Tax', 0, 2),
('2026-01-16 18:12:35.774531', '2026-01-16 18:12:35.774531', 'Zero Tax', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE `tax_rate` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `value` decimal(5,2) NOT NULL,
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `zoneId` int(11) DEFAULT NULL,
  `customerGroupId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_rate`
--

INSERT INTO `tax_rate` (`createdAt`, `updatedAt`, `name`, `enabled`, `value`, `id`, `categoryId`, `zoneId`, `customerGroupId`) VALUES
('2026-01-16 18:12:35.033001', '2026-01-16 18:12:35.033001', 'Standard Tax Asia', 1, 20.00, 1, 1, 1, NULL),
('2026-01-16 18:12:35.222435', '2026-01-16 18:12:35.222435', 'Standard Tax Europe', 1, 20.00, 2, 1, 2, NULL),
('2026-01-16 18:12:35.285974', '2026-01-16 18:12:35.285974', 'Standard Tax Africa', 1, 20.00, 3, 1, 3, NULL),
('2026-01-16 18:12:35.333819', '2026-01-16 18:12:35.333819', 'Standard Tax Oceania', 1, 20.00, 4, 1, 4, NULL),
('2026-01-16 18:12:35.389024', '2026-01-16 18:12:35.389024', 'Standard Tax Americas', 1, 20.00, 5, 1, 5, NULL),
('2026-01-16 18:12:35.492589', '2026-01-16 18:12:35.492589', 'Reduced Tax Asia', 1, 10.00, 6, 2, 1, NULL),
('2026-01-16 18:12:35.545522', '2026-01-16 18:12:35.545522', 'Reduced Tax Europe', 1, 10.00, 7, 2, 2, NULL),
('2026-01-16 18:12:35.603771', '2026-01-16 18:12:35.603771', 'Reduced Tax Africa', 1, 10.00, 8, 2, 3, NULL),
('2026-01-16 18:12:35.662822', '2026-01-16 18:12:35.662822', 'Reduced Tax Oceania', 1, 10.00, 9, 2, 4, NULL),
('2026-01-16 18:12:35.729515', '2026-01-16 18:12:35.729515', 'Reduced Tax Americas', 1, 10.00, 10, 2, 5, NULL),
('2026-01-16 18:12:35.810933', '2026-01-16 18:12:35.810933', 'Zero Tax Asia', 1, 0.00, 11, 3, 1, NULL),
('2026-01-16 18:12:35.882398', '2026-01-16 18:12:35.882398', 'Zero Tax Europe', 1, 0.00, 12, 3, 2, NULL),
('2026-01-16 18:12:35.957364', '2026-01-16 18:12:35.957364', 'Zero Tax Africa', 1, 0.00, 13, 3, 3, NULL),
('2026-01-16 18:12:36.012831', '2026-01-16 18:12:36.012831', 'Zero Tax Oceania', 1, 0.00, 14, 3, 4, NULL),
('2026-01-16 18:12:36.062321', '2026-01-16 18:12:36.062321', 'Zero Tax Americas', 1, 0.00, 15, 3, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  `lastLogin` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`createdAt`, `updatedAt`, `deletedAt`, `identifier`, `verified`, `lastLogin`, `id`) VALUES
('2026-01-16 18:12:17.122340', '2026-01-16 18:33:39.000000', NULL, 'superadmin', 1, '2026-01-16 10:33:39', 1),
('2026-01-16 18:30:24.732082', '2026-01-16 18:35:24.000000', NULL, 'chungchi300@hotmail.com', 1, '2026-01-16 10:35:24', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles_role`
--

CREATE TABLE `user_roles_role` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles_role`
--

INSERT INTO `user_roles_role` (`userId`, `roleId`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`createdAt`, `updatedAt`, `name`, `id`) VALUES
('2026-01-16 18:12:17.829561', '2026-01-16 18:12:17.829561', 'Asia', 1),
('2026-01-16 18:12:17.907787', '2026-01-16 18:12:17.907787', 'Europe', 2),
('2026-01-16 18:12:18.045373', '2026-01-16 18:12:18.045373', 'Africa', 3),
('2026-01-16 18:12:18.149480', '2026-01-16 18:12:18.149480', 'Oceania', 4),
('2026-01-16 18:12:18.516953', '2026-01-16 18:12:18.516953', 'Americas', 5);

-- --------------------------------------------------------

--
-- Table structure for table `zone_members_region`
--

CREATE TABLE `zone_members_region` (
  `zoneId` int(11) NOT NULL,
  `regionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zone_members_region`
--

INSERT INTO `zone_members_region` (`zoneId`, `regionId`) VALUES
(1, 1),
(1, 11),
(1, 15),
(1, 17),
(1, 18),
(1, 25),
(1, 33),
(1, 38),
(1, 45),
(1, 58),
(1, 82),
(1, 100),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 109),
(1, 112),
(1, 114),
(1, 115),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 124),
(1, 131),
(1, 135),
(1, 136),
(1, 148),
(1, 153),
(1, 156),
(1, 167),
(1, 168),
(1, 170),
(1, 175),
(1, 180),
(1, 195),
(1, 200),
(1, 210),
(1, 216),
(1, 217),
(1, 218),
(1, 220),
(1, 221),
(1, 227),
(1, 228),
(1, 233),
(1, 238),
(1, 241),
(1, 246),
(2, 2),
(2, 3),
(2, 6),
(2, 14),
(2, 20),
(2, 21),
(2, 28),
(2, 34),
(2, 55),
(2, 59),
(2, 60),
(2, 69),
(2, 73),
(2, 75),
(2, 76),
(2, 83),
(2, 85),
(2, 86),
(2, 92),
(2, 98),
(2, 101),
(2, 102),
(2, 107),
(2, 108),
(2, 110),
(2, 113),
(2, 123),
(2, 128),
(2, 129),
(2, 130),
(2, 132),
(2, 138),
(2, 146),
(2, 147),
(2, 149),
(2, 157),
(2, 166),
(2, 177),
(2, 178),
(2, 182),
(2, 183),
(2, 193),
(2, 197),
(2, 202),
(2, 203),
(2, 209),
(2, 213),
(2, 214),
(2, 215),
(2, 232),
(2, 234),
(3, 4),
(3, 7),
(3, 23),
(3, 29),
(3, 32),
(3, 35),
(3, 36),
(3, 37),
(3, 39),
(3, 42),
(3, 43),
(3, 49),
(3, 50),
(3, 51),
(3, 54),
(3, 61),
(3, 65),
(3, 67),
(3, 68),
(3, 70),
(3, 71),
(3, 79),
(3, 80),
(3, 81),
(3, 84),
(3, 93),
(3, 94),
(3, 116),
(3, 125),
(3, 126),
(3, 127),
(3, 133),
(3, 134),
(3, 137),
(3, 141),
(3, 142),
(3, 143),
(3, 151),
(3, 152),
(3, 154),
(3, 161),
(3, 162),
(3, 181),
(3, 184),
(3, 186),
(3, 194),
(3, 196),
(3, 198),
(3, 199),
(3, 205),
(3, 206),
(3, 208),
(3, 211),
(3, 219),
(3, 222),
(3, 226),
(3, 231),
(3, 245),
(3, 247),
(3, 248),
(4, 5),
(4, 13),
(4, 46),
(4, 47),
(4, 52),
(4, 74),
(4, 78),
(4, 90),
(4, 97),
(4, 117),
(4, 139),
(4, 145),
(4, 155),
(4, 158),
(4, 159),
(4, 163),
(4, 164),
(4, 165),
(4, 169),
(4, 172),
(4, 176),
(4, 192),
(4, 204),
(4, 223),
(4, 224),
(4, 230),
(4, 236),
(4, 239),
(4, 244),
(5, 8),
(5, 9),
(5, 10),
(5, 12),
(5, 16),
(5, 19),
(5, 22),
(5, 24),
(5, 26),
(5, 27),
(5, 30),
(5, 31),
(5, 40),
(5, 41),
(5, 44),
(5, 48),
(5, 53),
(5, 56),
(5, 57),
(5, 62),
(5, 63),
(5, 64),
(5, 66),
(5, 72),
(5, 77),
(5, 87),
(5, 88),
(5, 89),
(5, 91),
(5, 95),
(5, 96),
(5, 99),
(5, 111),
(5, 140),
(5, 144),
(5, 150),
(5, 160),
(5, 171),
(5, 173),
(5, 174),
(5, 179),
(5, 185),
(5, 187),
(5, 188),
(5, 189),
(5, 190),
(5, 191),
(5, 201),
(5, 207),
(5, 212),
(5, 225),
(5, 229),
(5, 235),
(5, 237),
(5, 240),
(5, 242),
(5, 243);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_dc34d382b493ade1f70e834c4d` (`customerId`),
  ADD KEY `IDX_d87215343c3a3a67e6a0b7f3ea` (`countryId`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_154f5c538b1576ccc277b1ed63` (`emailAddress`),
  ADD UNIQUE KEY `REL_1966e18ce6a39a82b19204704d` (`userId`);

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_channels_channel`
--
ALTER TABLE `asset_channels_channel`
  ADD PRIMARY KEY (`assetId`,`channelId`),
  ADD KEY `IDX_dc4e7435f9f5e9e6436bebd33b` (`assetId`),
  ADD KEY `IDX_16ca9151a5153f1169da5b7b7e` (`channelId`);

--
-- Indexes for table `asset_tags_tag`
--
ALTER TABLE `asset_tags_tag`
  ADD PRIMARY KEY (`assetId`,`tagId`),
  ADD KEY `IDX_9e412b00d4c6cee1a4b3d92071` (`assetId`),
  ADD KEY `IDX_fb5e800171ffbe9823f2cc727f` (`tagId`);

--
-- Indexes for table `authentication_method`
--
ALTER TABLE `authentication_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_00cbe87bc0d4e36758d61bd31d` (`userId`),
  ADD KEY `IDX_a23445b2c942d8dfcae15b8de2` (`type`);

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_06127ac6c6d913f4320759971d` (`code`),
  ADD UNIQUE KEY `IDX_842699fce4f3470a7d06d89de8` (`token`),
  ADD KEY `IDX_af2116c7e176b6b88dceceeb74` (`sellerId`),
  ADD KEY `IDX_afe9f917a1c82b9e9e69f7c612` (`defaultTaxZoneId`),
  ADD KEY `IDX_c9ca2f58d4517460435cbd8b4c` (`defaultShippingZoneId`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7256fef1bb42f1b38156b7449f` (`featuredAssetId`),
  ADD KEY `FK_4257b61275144db89fa0f5dc059` (`parentId`);

--
-- Indexes for table `collection_asset`
--
ALTER TABLE `collection_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_51da53b26522dc0525762d2de8` (`assetId`),
  ADD KEY `IDX_1ed9e48dfbf74b5fcbb35d3d68` (`collectionId`);

--
-- Indexes for table `collection_channels_channel`
--
ALTER TABLE `collection_channels_channel`
  ADD PRIMARY KEY (`collectionId`,`channelId`),
  ADD KEY `IDX_cdbf33ffb5d451916125152008` (`collectionId`),
  ADD KEY `IDX_7216ab24077cf5cbece7857dbb` (`channelId`);

--
-- Indexes for table `collection_closure`
--
ALTER TABLE `collection_closure`
  ADD PRIMARY KEY (`id_ancestor`,`id_descendant`),
  ADD KEY `IDX_c309f8cd152bbeaea08491e0c6` (`id_ancestor`),
  ADD KEY `IDX_457784c710f8ac9396010441f6` (`id_descendant`);

--
-- Indexes for table `collection_product_variants_product_variant`
--
ALTER TABLE `collection_product_variants_product_variant`
  ADD PRIMARY KEY (`collectionId`,`productVariantId`),
  ADD KEY `IDX_6faa7b72422d9c4679e2f186ad` (`collectionId`),
  ADD KEY `IDX_fb05887e2867365f236d7dd95e` (`productVariantId`);

--
-- Indexes for table `collection_translation`
--
ALTER TABLE `collection_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9f9da7d94b0278ea0f7831e1fc` (`slug`),
  ADD KEY `IDX_e329f9036210d75caa1d8f2154` (`baseId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_3f62b42ed23958b120c235f74d` (`userId`);

--
-- Indexes for table `customer_channels_channel`
--
ALTER TABLE `customer_channels_channel`
  ADD PRIMARY KEY (`customerId`,`channelId`),
  ADD KEY `IDX_a842c9fe8cd4c8ff31402d172d` (`customerId`),
  ADD KEY `IDX_dc9f69207a8867f83b0fd257e3` (`channelId`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups_customer_group`
--
ALTER TABLE `customer_groups_customer_group`
  ADD PRIMARY KEY (`customerId`,`customerGroupId`),
  ADD KEY `IDX_b823a3c8bf3b78d3ed68736485` (`customerId`),
  ADD KEY `IDX_85feea3f0e5e82133605f78db0` (`customerGroupId`);

--
-- Indexes for table `facet`
--
ALTER TABLE `facet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_0c9a5d053fdf4ebb5f0490b40f` (`code`);

--
-- Indexes for table `facet_channels_channel`
--
ALTER TABLE `facet_channels_channel`
  ADD PRIMARY KEY (`facetId`,`channelId`),
  ADD KEY `IDX_ca796020c6d097e251e5d6d2b0` (`facetId`),
  ADD KEY `IDX_2a8ea404d05bf682516184db7d` (`channelId`);

--
-- Indexes for table `facet_translation`
--
ALTER TABLE `facet_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_eaea53f44bf9e97790d38a3d68` (`baseId`);

--
-- Indexes for table `facet_value`
--
ALTER TABLE `facet_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_d101dc2265a7341be3d94968c5` (`facetId`);

--
-- Indexes for table `facet_value_channels_channel`
--
ALTER TABLE `facet_value_channels_channel`
  ADD PRIMARY KEY (`facetValueId`,`channelId`),
  ADD KEY `IDX_ad690c1b05596d7f52e52ffeed` (`facetValueId`),
  ADD KEY `IDX_e1d54c0b9db3e2eb17faaf5919` (`channelId`);

--
-- Indexes for table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3d6e45823b65de808a66cb1423` (`baseId`);

--
-- Indexes for table `fulfillment`
--
ALTER TABLE `fulfillment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_entry`
--
ALTER TABLE `history_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_92f8c334ef06275f9586fd0183` (`administratorId`),
  ADD KEY `IDX_43ac602f839847fdb91101f30e` (`customerId`),
  ADD KEY `IDX_3a05127e67435b4d2332ded7c9` (`orderId`);

--
-- Indexes for table `job_record`
--
ALTER TABLE `job_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_86bc376c56af8cefd41a847a95` (`createdAt`);

--
-- Indexes for table `job_record_buffer`
--
ALTER TABLE `job_record_buffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_729b3eea7ce540930dbb706949` (`code`),
  ADD KEY `IDX_73a78d7df09541ac5eba620d18` (`aggregateOrderId`),
  ADD KEY `IDX_af13739f4962eab899bdff34be` (`orderPlacedAt`),
  ADD KEY `IDX_124456e637cca7a415897dce65` (`customerId`);

--
-- Indexes for table `order_channels_channel`
--
ALTER TABLE `order_channels_channel`
  ADD PRIMARY KEY (`orderId`,`channelId`),
  ADD KEY `IDX_0d8e5c204480204a60e151e485` (`orderId`),
  ADD KEY `IDX_d0d16db872499e83b15999f8c7` (`channelId`);

--
-- Indexes for table `order_fulfillments_fulfillment`
--
ALTER TABLE `order_fulfillments_fulfillment`
  ADD PRIMARY KEY (`orderId`,`fulfillmentId`),
  ADD KEY `IDX_f80d84d525af2ffe974e7e8ca2` (`orderId`),
  ADD KEY `IDX_4add5a5796e1582dec2877b289` (`fulfillmentId`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6901d8715f5ebadd764466f7bd` (`sellerChannelId`),
  ADD KEY `IDX_dc9ac68b47da7b62249886affb` (`shippingLineId`),
  ADD KEY `IDX_cbcd22193eda94668e84d33f18` (`productVariantId`),
  ADD KEY `IDX_77be94ce9ec650446617946227` (`taxCategoryId`),
  ADD KEY `IDX_9f065453910ea77d4be8e92618` (`featuredAssetId`),
  ADD KEY `IDX_239cfca2a55b98b90b6bef2e44` (`orderId`);

--
-- Indexes for table `order_line_reference`
--
ALTER TABLE `order_line_reference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7d57857922dfc7303604697dbe` (`orderLineId`),
  ADD KEY `IDX_06b02fb482b188823e419d37bd` (`fulfillmentId`),
  ADD KEY `IDX_22b818af8722746fb9f206068c` (`modificationId`),
  ADD KEY `IDX_30019aa65b17fe9ee962893199` (`refundId`),
  ADD KEY `IDX_49a8632be8cef48b076446b8b9` (`discriminator`);

--
-- Indexes for table `order_modification`
--
ALTER TABLE `order_modification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1df5bc14a47ef24d2e681f4559` (`orderId`),
  ADD KEY `FK_ad2991fa2933ed8b7f86a716338` (`paymentId`),
  ADD KEY `FK_cb66b63b6e97613013795eadbd5` (`refundId`);

--
-- Indexes for table `order_promotions_promotion`
--
ALTER TABLE `order_promotions_promotion`
  ADD PRIMARY KEY (`orderId`,`promotionId`),
  ADD KEY `IDX_67be0e40122ab30a62a9817efe` (`orderId`),
  ADD KEY `IDX_2c26b988769c0e3b0120bdef31` (`promotionId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_d09d285fe1645cd2f0db811e29` (`orderId`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method_channels_channel`
--
ALTER TABLE `payment_method_channels_channel`
  ADD PRIMARY KEY (`paymentMethodId`,`channelId`),
  ADD KEY `IDX_5bcb569635ce5407eb3f264487` (`paymentMethodId`),
  ADD KEY `IDX_c00e36f667d35031087b382e61` (`channelId`);

--
-- Indexes for table `payment_method_translation`
--
ALTER TABLE `payment_method_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_66187f782a3e71b9e0f5b50b68` (`baseId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_91a19e6613534949a4ce6e76ff` (`featuredAssetId`);

--
-- Indexes for table `product_asset`
--
ALTER TABLE `product_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5888ac17b317b93378494a1062` (`assetId`),
  ADD KEY `IDX_0d1294f5c22a56da7845ebab72` (`productId`);

--
-- Indexes for table `product_channels_channel`
--
ALTER TABLE `product_channels_channel`
  ADD PRIMARY KEY (`productId`,`channelId`),
  ADD KEY `IDX_26d12be3b5fec6c4adb1d79284` (`productId`),
  ADD KEY `IDX_a51dfbd87c330c075c39832b6e` (`channelId`);

--
-- Indexes for table `product_facet_values_facet_value`
--
ALTER TABLE `product_facet_values_facet_value`
  ADD PRIMARY KEY (`productId`,`facetValueId`),
  ADD KEY `IDX_6a0558e650d75ae639ff38e413` (`productId`),
  ADD KEY `IDX_06e7d73673ee630e8ec50d0b29` (`facetValueId`);

--
-- Indexes for table `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_a6debf9198e2fbfa006aa10d71` (`groupId`);

--
-- Indexes for table `product_option_group`
--
ALTER TABLE `product_option_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_a6e91739227bf4d442f23c52c7` (`productId`);

--
-- Indexes for table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_93751abc1451972c02e033b766` (`baseId`);

--
-- Indexes for table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_a79a443c1f7841f3851767faa6` (`baseId`);

--
-- Indexes for table `product_translation`
--
ALTER TABLE `product_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_f4a2ec16ba86d277b6faa0b67b` (`slug`),
  ADD KEY `IDX_7dbc75cb4e8b002620c4dbfdac` (`baseId`);

--
-- Indexes for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_0e6f516053cf982b537836e21c` (`featuredAssetId`),
  ADD KEY `IDX_e38dca0d82fd64c7cf8aac8b8e` (`taxCategoryId`),
  ADD KEY `IDX_6e420052844edf3a5506d863ce` (`productId`);

--
-- Indexes for table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_10b5a2e3dee0e30b1e26c32f5c` (`assetId`),
  ADD KEY `IDX_fa21412afac15a2304f3eb35fe` (`productVariantId`);

--
-- Indexes for table `product_variant_channels_channel`
--
ALTER TABLE `product_variant_channels_channel`
  ADD PRIMARY KEY (`productVariantId`,`channelId`),
  ADD KEY `IDX_beeb2b3cd800e589f2213ae99d` (`productVariantId`),
  ADD KEY `IDX_d194bff171b62357688a5d0f55` (`channelId`);

--
-- Indexes for table `product_variant_facet_values_facet_value`
--
ALTER TABLE `product_variant_facet_values_facet_value`
  ADD PRIMARY KEY (`productVariantId`,`facetValueId`),
  ADD KEY `IDX_69567bc225b6bbbd732d6c5455` (`productVariantId`),
  ADD KEY `IDX_0d641b761ed1dce4ef3cd33d55` (`facetValueId`);

--
-- Indexes for table `product_variant_options_product_option`
--
ALTER TABLE `product_variant_options_product_option`
  ADD PRIMARY KEY (`productVariantId`,`productOptionId`),
  ADD KEY `IDX_526f0131260eec308a3bd2b61b` (`productVariantId`),
  ADD KEY `IDX_e96a71affe63c97f7fa2f076da` (`productOptionId`);

--
-- Indexes for table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_e6126cd268aea6e9b31d89af9a` (`variantId`);

--
-- Indexes for table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_420f4d6fb75d38b9dca79bc43b` (`baseId`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_channels_channel`
--
ALTER TABLE `promotion_channels_channel`
  ADD PRIMARY KEY (`promotionId`,`channelId`),
  ADD KEY `IDX_6d9e2c39ab12391aaa374bcdaa` (`promotionId`),
  ADD KEY `IDX_0eaaf0f4b6c69afde1e88ffb52` (`channelId`);

--
-- Indexes for table `promotion_translation`
--
ALTER TABLE `promotion_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1cc009e9ab2263a35544064561` (`baseId`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1c6932a756108788a361e7d440` (`paymentId`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ed0c8098ce6809925a437f42ae` (`parentId`);

--
-- Indexes for table `region_translation`
--
ALTER TABLE `region_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1afd722b943c81310705fc3e61` (`baseId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_channels_channel`
--
ALTER TABLE `role_channels_channel`
  ADD PRIMARY KEY (`roleId`,`channelId`),
  ADD KEY `IDX_bfd2a03e9988eda6a9d1176011` (`roleId`),
  ADD KEY `IDX_e09dfee62b158307404202b43a` (`channelId`);

--
-- Indexes for table `scheduled_task_record`
--
ALTER TABLE `scheduled_task_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_661876d97056cad9fd37eaa877` (`taskId`);

--
-- Indexes for table `search_index_item`
--
ALTER TABLE `search_index_item`
  ADD PRIMARY KEY (`languageCode`,`productVariantId`,`channelId`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_6fb55742e13e8082954d0436dc` (`productName`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_d8791f444a8bf23fe4c1bc020c` (`productVariantName`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_9a5a6a556f75c4ac7bfdd03410` (`description`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_232f8e85d7633bd6ddfad42169` (`token`),
  ADD KEY `IDX_7a75399a4f4ffa48ee02e98c05` (`activeOrderId`),
  ADD KEY `IDX_eb87ef1e234444728138302263` (`activeChannelId`),
  ADD KEY `IDX_3d2f174ef04fb312fdebd0ddc5` (`userId`);

--
-- Indexes for table `settings_store_entry`
--
ALTER TABLE `settings_store_entry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_store_key_scope_unique` (`key`,`scope`),
  ADD KEY `IDX_ab560f7983976aec91b91c26a4` (`key`),
  ADD KEY `IDX_8d8ddb95a0fbd11ffb5606ef0c` (`scope`);

--
-- Indexes for table `shipping_line`
--
ALTER TABLE `shipping_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_e2e7642e1e88167c1dfc827fdf` (`shippingMethodId`),
  ADD KEY `IDX_c9f34a440d490d1b66f6829b86` (`orderId`);

--
-- Indexes for table `shipping_method`
--
ALTER TABLE `shipping_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_method_channels_channel`
--
ALTER TABLE `shipping_method_channels_channel`
  ADD PRIMARY KEY (`shippingMethodId`,`channelId`),
  ADD KEY `IDX_f0a17b94aa5a162f0d422920eb` (`shippingMethodId`),
  ADD KEY `IDX_f2b98dfb56685147bed509acc3` (`channelId`);

--
-- Indexes for table `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_85ec26c71067ebc84adcd98d1a` (`baseId`);

--
-- Indexes for table `stock_level`
--
ALTER TABLE `stock_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_7fc20486b8cfd33dc84c96e168` (`productVariantId`,`stockLocationId`),
  ADD KEY `IDX_9950eae3180f39c71978748bd0` (`productVariantId`),
  ADD KEY `IDX_984c48572468c69661a0b7b049` (`stockLocationId`);

--
-- Indexes for table `stock_location`
--
ALTER TABLE `stock_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_location_channels_channel`
--
ALTER TABLE `stock_location_channels_channel`
  ADD PRIMARY KEY (`stockLocationId`,`channelId`),
  ADD KEY `IDX_39513fd02a573c848d23bee587` (`stockLocationId`),
  ADD KEY `IDX_ff8150fe54e56a900d5712671a` (`channelId`);

--
-- Indexes for table `stock_movement`
--
ALTER TABLE `stock_movement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_e65ba3882557cab4febb54809b` (`productVariantId`),
  ADD KEY `IDX_a2fe7172eeae9f1cca86f8f573` (`stockLocationId`),
  ADD KEY `IDX_d2c8d5fca981cc820131f81aa8` (`orderLineId`);

--
-- Indexes for table `surcharge`
--
ALTER TABLE `surcharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_154eb685f9b629033bd266df7f` (`orderId`),
  ADD KEY `IDX_a49c5271c39cc8174a0535c808` (`orderModificationId`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_category`
--
ALTER TABLE `tax_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7ee3306d7638aa85ca90d67219` (`categoryId`),
  ADD KEY `IDX_9872fc7de2f4e532fd3230d191` (`zoneId`),
  ADD KEY `IDX_8b5ab52fc8887c1a769b9276ca` (`customerGroupId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles_role`
--
ALTER TABLE `user_roles_role`
  ADD PRIMARY KEY (`userId`,`roleId`),
  ADD KEY `IDX_5f9286e6c25594c6b88c108db7` (`userId`),
  ADD KEY `IDX_4be2f7adf862634f5f803d246b` (`roleId`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zone_members_region`
--
ALTER TABLE `zone_members_region`
  ADD PRIMARY KEY (`zoneId`,`regionId`),
  ADD KEY `IDX_433f45158e4e2b2a2f344714b2` (`zoneId`),
  ADD KEY `IDX_b45b65256486a15a104e17d495` (`regionId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `authentication_method`
--
ALTER TABLE `authentication_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `collection_asset`
--
ALTER TABLE `collection_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `collection_translation`
--
ALTER TABLE `collection_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facet`
--
ALTER TABLE `facet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facet_translation`
--
ALTER TABLE `facet_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facet_value`
--
ALTER TABLE `facet_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `fulfillment`
--
ALTER TABLE `fulfillment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history_entry`
--
ALTER TABLE `history_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_record`
--
ALTER TABLE `job_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `job_record_buffer`
--
ALTER TABLE `job_record_buffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_line`
--
ALTER TABLE `order_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_line_reference`
--
ALTER TABLE `order_line_reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_modification`
--
ALTER TABLE `order_modification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_method_translation`
--
ALTER TABLE `payment_method_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_asset`
--
ALTER TABLE `product_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_option`
--
ALTER TABLE `product_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_option_group`
--
ALTER TABLE `product_option_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_translation`
--
ALTER TABLE `product_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_variant`
--
ALTER TABLE `product_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion_translation`
--
ALTER TABLE `promotion_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `region_translation`
--
ALTER TABLE `region_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `scheduled_task_record`
--
ALTER TABLE `scheduled_task_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings_store_entry`
--
ALTER TABLE `settings_store_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_line`
--
ALTER TABLE `shipping_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_method`
--
ALTER TABLE `shipping_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_level`
--
ALTER TABLE `stock_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `stock_location`
--
ALTER TABLE `stock_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock_movement`
--
ALTER TABLE `stock_movement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `surcharge`
--
ALTER TABLE `surcharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_category`
--
ALTER TABLE `tax_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tax_rate`
--
ALTER TABLE `tax_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_d87215343c3a3a67e6a0b7f3ea9` FOREIGN KEY (`countryId`) REFERENCES `region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_dc34d382b493ade1f70e834c4d3` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `FK_1966e18ce6a39a82b19204704d7` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `asset_channels_channel`
--
ALTER TABLE `asset_channels_channel`
  ADD CONSTRAINT `FK_16ca9151a5153f1169da5b7b7e3` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dc4e7435f9f5e9e6436bebd33bb` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `asset_tags_tag`
--
ALTER TABLE `asset_tags_tag`
  ADD CONSTRAINT `FK_9e412b00d4c6cee1a4b3d920716` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_fb5e800171ffbe9823f2cc727fd` FOREIGN KEY (`tagId`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `authentication_method`
--
ALTER TABLE `authentication_method`
  ADD CONSTRAINT `FK_00cbe87bc0d4e36758d61bd31d6` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `channel`
--
ALTER TABLE `channel`
  ADD CONSTRAINT `FK_af2116c7e176b6b88dceceeb74b` FOREIGN KEY (`sellerId`) REFERENCES `seller` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_afe9f917a1c82b9e9e69f7c6129` FOREIGN KEY (`defaultTaxZoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_c9ca2f58d4517460435cbd8b4c9` FOREIGN KEY (`defaultShippingZoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `FK_4257b61275144db89fa0f5dc059` FOREIGN KEY (`parentId`) REFERENCES `collection` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7256fef1bb42f1b38156b7449f5` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `collection_asset`
--
ALTER TABLE `collection_asset`
  ADD CONSTRAINT `FK_1ed9e48dfbf74b5fcbb35d3d686` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_51da53b26522dc0525762d2de8e` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `collection_channels_channel`
--
ALTER TABLE `collection_channels_channel`
  ADD CONSTRAINT `FK_7216ab24077cf5cbece7857dbbd` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_cdbf33ffb5d4519161251520083` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `collection_closure`
--
ALTER TABLE `collection_closure`
  ADD CONSTRAINT `FK_457784c710f8ac9396010441f6c` FOREIGN KEY (`id_descendant`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_c309f8cd152bbeaea08491e0c66` FOREIGN KEY (`id_ancestor`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `collection_product_variants_product_variant`
--
ALTER TABLE `collection_product_variants_product_variant`
  ADD CONSTRAINT `FK_6faa7b72422d9c4679e2f186ad1` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_fb05887e2867365f236d7dd95ee` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `collection_translation`
--
ALTER TABLE `collection_translation`
  ADD CONSTRAINT `FK_e329f9036210d75caa1d8f2154a` FOREIGN KEY (`baseId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_3f62b42ed23958b120c235f74df` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer_channels_channel`
--
ALTER TABLE `customer_channels_channel`
  ADD CONSTRAINT `FK_a842c9fe8cd4c8ff31402d172d7` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dc9f69207a8867f83b0fd257e30` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `customer_groups_customer_group`
--
ALTER TABLE `customer_groups_customer_group`
  ADD CONSTRAINT `FK_85feea3f0e5e82133605f78db02` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_b823a3c8bf3b78d3ed68736485c` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `facet_channels_channel`
--
ALTER TABLE `facet_channels_channel`
  ADD CONSTRAINT `FK_2a8ea404d05bf682516184db7d3` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ca796020c6d097e251e5d6d2b02` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `facet_translation`
--
ALTER TABLE `facet_translation`
  ADD CONSTRAINT `FK_eaea53f44bf9e97790d38a3d68f` FOREIGN KEY (`baseId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `facet_value`
--
ALTER TABLE `facet_value`
  ADD CONSTRAINT `FK_d101dc2265a7341be3d94968c5b` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `facet_value_channels_channel`
--
ALTER TABLE `facet_value_channels_channel`
  ADD CONSTRAINT `FK_ad690c1b05596d7f52e52ffeedd` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e1d54c0b9db3e2eb17faaf5919c` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  ADD CONSTRAINT `FK_3d6e45823b65de808a66cb1423b` FOREIGN KEY (`baseId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `history_entry`
--
ALTER TABLE `history_entry`
  ADD CONSTRAINT `FK_3a05127e67435b4d2332ded7c9e` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_43ac602f839847fdb91101f30ec` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_92f8c334ef06275f9586fd01832` FOREIGN KEY (`administratorId`) REFERENCES `administrator` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_124456e637cca7a415897dce659` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_73a78d7df09541ac5eba620d181` FOREIGN KEY (`aggregateOrderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_channels_channel`
--
ALTER TABLE `order_channels_channel`
  ADD CONSTRAINT `FK_0d8e5c204480204a60e151e4853` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_d0d16db872499e83b15999f8c7a` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_fulfillments_fulfillment`
--
ALTER TABLE `order_fulfillments_fulfillment`
  ADD CONSTRAINT `FK_4add5a5796e1582dec2877b2898` FOREIGN KEY (`fulfillmentId`) REFERENCES `fulfillment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_f80d84d525af2ffe974e7e8ca29` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `FK_239cfca2a55b98b90b6bef2e44f` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_6901d8715f5ebadd764466f7bde` FOREIGN KEY (`sellerChannelId`) REFERENCES `channel` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_77be94ce9ec6504466179462275` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_9f065453910ea77d4be8e92618f` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_cbcd22193eda94668e84d33f185` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_dc9ac68b47da7b62249886affba` FOREIGN KEY (`shippingLineId`) REFERENCES `shipping_line` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `order_line_reference`
--
ALTER TABLE `order_line_reference`
  ADD CONSTRAINT `FK_06b02fb482b188823e419d37bd4` FOREIGN KEY (`fulfillmentId`) REFERENCES `fulfillment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_22b818af8722746fb9f206068c2` FOREIGN KEY (`modificationId`) REFERENCES `order_modification` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_30019aa65b17fe9ee9628931991` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7d57857922dfc7303604697dbe9` FOREIGN KEY (`orderLineId`) REFERENCES `order_line` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_modification`
--
ALTER TABLE `order_modification`
  ADD CONSTRAINT `FK_1df5bc14a47ef24d2e681f45598` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ad2991fa2933ed8b7f86a716338` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_cb66b63b6e97613013795eadbd5` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_promotions_promotion`
--
ALTER TABLE `order_promotions_promotion`
  ADD CONSTRAINT `FK_2c26b988769c0e3b0120bdef31b` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_67be0e40122ab30a62a9817efe0` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_d09d285fe1645cd2f0db811e293` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment_method_channels_channel`
--
ALTER TABLE `payment_method_channels_channel`
  ADD CONSTRAINT `FK_5bcb569635ce5407eb3f264487d` FOREIGN KEY (`paymentMethodId`) REFERENCES `payment_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_c00e36f667d35031087b382e61b` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `payment_method_translation`
--
ALTER TABLE `payment_method_translation`
  ADD CONSTRAINT `FK_66187f782a3e71b9e0f5b50b68b` FOREIGN KEY (`baseId`) REFERENCES `payment_method` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_91a19e6613534949a4ce6e76ff8` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `product_asset`
--
ALTER TABLE `product_asset`
  ADD CONSTRAINT `FK_0d1294f5c22a56da7845ebab72c` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_5888ac17b317b93378494a10620` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_channels_channel`
--
ALTER TABLE `product_channels_channel`
  ADD CONSTRAINT `FK_26d12be3b5fec6c4adb1d792844` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_a51dfbd87c330c075c39832b6e7` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_facet_values_facet_value`
--
ALTER TABLE `product_facet_values_facet_value`
  ADD CONSTRAINT `FK_06e7d73673ee630e8ec50d0b29f` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_6a0558e650d75ae639ff38e413a` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_option`
--
ALTER TABLE `product_option`
  ADD CONSTRAINT `FK_a6debf9198e2fbfa006aa10d710` FOREIGN KEY (`groupId`) REFERENCES `product_option_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_option_group`
--
ALTER TABLE `product_option_group`
  ADD CONSTRAINT `FK_a6e91739227bf4d442f23c52c75` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  ADD CONSTRAINT `FK_93751abc1451972c02e033b766c` FOREIGN KEY (`baseId`) REFERENCES `product_option_group` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  ADD CONSTRAINT `FK_a79a443c1f7841f3851767faa6d` FOREIGN KEY (`baseId`) REFERENCES `product_option` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_translation`
--
ALTER TABLE `product_translation`
  ADD CONSTRAINT `FK_7dbc75cb4e8b002620c4dbfdac5` FOREIGN KEY (`baseId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD CONSTRAINT `FK_0e6f516053cf982b537836e21cf` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_6e420052844edf3a5506d863ce6` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e38dca0d82fd64c7cf8aac8b8ef` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  ADD CONSTRAINT `FK_10b5a2e3dee0e30b1e26c32f5c7` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_fa21412afac15a2304f3eb35feb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_channels_channel`
--
ALTER TABLE `product_variant_channels_channel`
  ADD CONSTRAINT `FK_beeb2b3cd800e589f2213ae99d6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_d194bff171b62357688a5d0f559` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_facet_values_facet_value`
--
ALTER TABLE `product_variant_facet_values_facet_value`
  ADD CONSTRAINT `FK_0d641b761ed1dce4ef3cd33d559` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_69567bc225b6bbbd732d6c5455b` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_variant_options_product_option`
--
ALTER TABLE `product_variant_options_product_option`
  ADD CONSTRAINT `FK_526f0131260eec308a3bd2b61b6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e96a71affe63c97f7fa2f076dac` FOREIGN KEY (`productOptionId`) REFERENCES `product_option` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  ADD CONSTRAINT `FK_e6126cd268aea6e9b31d89af9ab` FOREIGN KEY (`variantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  ADD CONSTRAINT `FK_420f4d6fb75d38b9dca79bc43b4` FOREIGN KEY (`baseId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `promotion_channels_channel`
--
ALTER TABLE `promotion_channels_channel`
  ADD CONSTRAINT `FK_0eaaf0f4b6c69afde1e88ffb52d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_6d9e2c39ab12391aaa374bcdaa4` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promotion_translation`
--
ALTER TABLE `promotion_translation`
  ADD CONSTRAINT `FK_1cc009e9ab2263a35544064561b` FOREIGN KEY (`baseId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `refund`
--
ALTER TABLE `refund`
  ADD CONSTRAINT `FK_1c6932a756108788a361e7d4404` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `FK_ed0c8098ce6809925a437f42aec` FOREIGN KEY (`parentId`) REFERENCES `region` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `region_translation`
--
ALTER TABLE `region_translation`
  ADD CONSTRAINT `FK_1afd722b943c81310705fc3e612` FOREIGN KEY (`baseId`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `role_channels_channel`
--
ALTER TABLE `role_channels_channel`
  ADD CONSTRAINT `FK_bfd2a03e9988eda6a9d11760119` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e09dfee62b158307404202b43a5` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `FK_3d2f174ef04fb312fdebd0ddc53` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7a75399a4f4ffa48ee02e98c059` FOREIGN KEY (`activeOrderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_eb87ef1e234444728138302263b` FOREIGN KEY (`activeChannelId`) REFERENCES `channel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shipping_line`
--
ALTER TABLE `shipping_line`
  ADD CONSTRAINT `FK_c9f34a440d490d1b66f6829b86c` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e2e7642e1e88167c1dfc827fdf3` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shipping_method_channels_channel`
--
ALTER TABLE `shipping_method_channels_channel`
  ADD CONSTRAINT `FK_f0a17b94aa5a162f0d422920eb2` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_f2b98dfb56685147bed509acc3d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  ADD CONSTRAINT `FK_85ec26c71067ebc84adcd98d1a5` FOREIGN KEY (`baseId`) REFERENCES `shipping_method` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `stock_level`
--
ALTER TABLE `stock_level`
  ADD CONSTRAINT `FK_984c48572468c69661a0b7b0494` FOREIGN KEY (`stockLocationId`) REFERENCES `stock_location` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_9950eae3180f39c71978748bd08` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `stock_location_channels_channel`
--
ALTER TABLE `stock_location_channels_channel`
  ADD CONSTRAINT `FK_39513fd02a573c848d23bee587d` FOREIGN KEY (`stockLocationId`) REFERENCES `stock_location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ff8150fe54e56a900d5712671a0` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `stock_movement`
--
ALTER TABLE `stock_movement`
  ADD CONSTRAINT `FK_a2fe7172eeae9f1cca86f8f573a` FOREIGN KEY (`stockLocationId`) REFERENCES `stock_location` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_d2c8d5fca981cc820131f81aa83` FOREIGN KEY (`orderLineId`) REFERENCES `order_line` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e65ba3882557cab4febb54809bb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `surcharge`
--
ALTER TABLE `surcharge`
  ADD CONSTRAINT `FK_154eb685f9b629033bd266df7fa` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_a49c5271c39cc8174a0535c8088` FOREIGN KEY (`orderModificationId`) REFERENCES `order_modification` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD CONSTRAINT `FK_7ee3306d7638aa85ca90d672198` FOREIGN KEY (`categoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_8b5ab52fc8887c1a769b9276caf` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_9872fc7de2f4e532fd3230d1915` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_roles_role`
--
ALTER TABLE `user_roles_role`
  ADD CONSTRAINT `FK_4be2f7adf862634f5f803d246b8` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_5f9286e6c25594c6b88c108db77` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `zone_members_region`
--
ALTER TABLE `zone_members_region`
  ADD CONSTRAINT `FK_433f45158e4e2b2a2f344714b22` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_b45b65256486a15a104e17d495c` FOREIGN KEY (`regionId`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
