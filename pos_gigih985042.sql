-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Bulan Mei 2020 pada 10.15
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_gigih985042`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `authId` int(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`authId`, `username`, `password`) VALUES
(1, 'gsantoso', 'CALXxFRmak9j20GWZ1jYnfefpA6v74kMml16dwYfFkr3BbCNk09XZYvmt7gXTivd'),
(15, 'nita', 'O5+xj5SE/JPT73cf19uaviJ73lDw7T7/SeB5TjoQ890Vl0q/i+vEzbtudrep2+N/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_profile_privilege`
--

CREATE TABLE `auth_profile_privilege` (
  `authProfilePrivilegeId` int(250) NOT NULL,
  `authId` int(250) NOT NULL,
  `privilegeId` int(250) NOT NULL,
  `profileId` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `auth_profile_privilege`
--

INSERT INTO `auth_profile_privilege` (`authProfilePrivilegeId`, `authId`, `privilegeId`, `profileId`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dining_table`
--

CREATE TABLE `dining_table` (
  `diningTableId` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `position` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dining_table`
--

INSERT INTO `dining_table` (`diningTableId`, `name`, `position`) VALUES
(1, 'Table 1', 'translate3d(-669px, 423px, 0px) translate3d(536px, -61px, 0px) translate3d(-126px, -88px, 0px) translate3d(257px, 154px, 0px)'),
(2, 'Table 2', 'translate3d(171px, 61px, 0px) translate3d(-344px, -313px, 0px) translate3d(126px, -3px, 0px) translate3d(175px, -29px, 0px) translate3d(-64px, 294px, 0px) translate3d(4px, -106px, 0px) translate3d(-477px, 71px, 0px) translate3d(578px, 14px, 0px)'),
(3, 'Table 3', 'translate3d(-259px, -220px, 0px) translate3d(125px, 214px, 0px) translate3d(79px, 31px, 0px) translate3d(75px, -121px, 0px) translate3d(290px, 8px, 0px) translate3d(-477px, 71px, 0px) translate3d(578px, 14px, 0px)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_app`
--

CREATE TABLE `history_app` (
  `historyAppId` int(250) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `history_app`
--

INSERT INTO `history_app` (`historyAppId`, `date`, `time`, `description`) VALUES
(1, '2020-04-30', '11:56:33', 'Added data product'),
(2, '2020-04-30', '12:13:09', 'Added data dining table'),
(3, '2020-04-30', '12:13:31', 'Added data dining table'),
(4, '2020-04-30', '02:37:03', 'Customize position dining table'),
(5, '2020-04-30', '02:40:37', 'Customize position dining table'),
(6, '2020-04-30', '02:40:37', 'Customize position dining table'),
(7, '2020-04-30', '02:40:37', 'Customize position dining table'),
(8, '2020-04-30', '02:41:02', 'Customize position dining table'),
(9, '2020-04-30', '02:41:02', 'Customize position dining table'),
(10, '2020-04-30', '02:41:02', 'Customize position dining table'),
(11, '2020-04-30', '02:50:10', 'Customize position dining table'),
(12, '2020-04-30', '02:50:10', 'Customize position dining table'),
(13, '2020-04-30', '02:51:34', 'Customize position dining table'),
(14, '2020-04-30', '02:51:34', 'Customize position dining table'),
(15, '2020-04-30', '03:50:05', 'Customize position dining table'),
(16, '2020-04-30', '03:51:01', 'Customize position dining table'),
(17, '2020-04-30', '03:51:01', 'Customize position dining table'),
(18, '2020-04-30', '03:51:01', 'Customize position dining table'),
(19, '2020-04-30', '03:51:01', 'Customize position dining table'),
(20, '2020-04-30', '03:54:14', 'Customize position dining table'),
(21, '2020-04-30', '03:54:23', 'Customize position dining table'),
(22, '2020-04-30', '03:54:23', 'Customize position dining table'),
(23, '2020-04-30', '03:56:25', 'Customize position dining table'),
(24, '2020-04-30', '03:56:25', 'Customize position dining table'),
(25, '2020-04-30', '03:56:25', 'Customize position dining table'),
(26, '2020-04-30', '03:56:25', 'Customize position dining table'),
(27, '2020-04-30', '03:56:54', 'Customize position dining table'),
(28, '2020-04-30', '03:57:09', 'Customize position dining table'),
(29, '2020-04-30', '03:57:09', 'Customize position dining table'),
(30, '2020-04-30', '03:57:09', 'Customize position dining table'),
(31, '2020-04-30', '03:57:09', 'Customize position dining table'),
(32, '2020-04-30', '03:57:09', 'Customize position dining table'),
(33, '2020-04-30', '03:57:09', 'Customize position dining table'),
(34, '2020-04-30', '03:57:09', 'Customize position dining table'),
(35, '2020-04-30', '04:29:37', 'Customize position dining table'),
(36, '2020-04-30', '04:30:33', 'Customize position dining table'),
(37, '2020-04-30', '04:30:33', 'Customize position dining table'),
(38, '2020-05-01', '11:20:54', 'Added data dining table'),
(39, '2020-05-01', '12:45:35', 'Customize position dining table'),
(40, '2020-05-01', '12:45:35', 'Customize position dining table'),
(41, '2020-05-01', '12:45:35', 'Customize position dining table'),
(42, '2020-05-01', '12:45:48', 'Customize position dining table'),
(43, '2020-05-01', '12:46:02', 'Customize position dining table'),
(44, '2020-05-01', '12:46:09', 'Customize position dining table'),
(45, '2020-05-01', '12:46:09', 'Customize position dining table'),
(46, '2020-05-01', '12:46:20', 'Customize position dining table'),
(47, '2020-05-01', '12:46:20', 'Customize position dining table'),
(48, '2020-05-01', '12:47:32', 'Customize position dining table'),
(49, '2020-05-01', '12:47:32', 'Customize position dining table'),
(50, '2020-05-01', '12:48:08', 'Customize position dining table'),
(51, '2020-05-01', '12:48:08', 'Customize position dining table'),
(52, '2020-05-01', '12:48:08', 'Customize position dining table'),
(53, '2020-05-01', '12:49:23', 'Customize position dining table'),
(54, '2020-05-01', '12:49:23', 'Customize position dining table'),
(55, '2020-05-01', '12:49:40', 'Customize position dining table'),
(56, '2020-05-01', '12:49:40', 'Customize position dining table'),
(57, '2020-05-01', '12:49:40', 'Customize position dining table'),
(58, '2020-05-01', '12:49:53', 'Customize position dining table'),
(59, '2020-05-01', '12:49:53', 'Customize position dining table'),
(60, '2020-05-01', '12:49:53', 'Customize position dining table'),
(61, '2020-05-01', '12:51:15', 'Customize position dining table'),
(62, '2020-05-01', '12:51:15', 'Customize position dining table'),
(63, '2020-05-03', '09:24:05', 'Customize position dining table'),
(64, '2020-05-03', '09:24:05', 'Customize position dining table'),
(65, '2020-05-03', '09:24:20', 'Customize position dining table'),
(66, '2020-05-03', '09:24:20', 'Customize position dining table'),
(67, '2020-05-03', '09:24:20', 'Customize position dining table'),
(68, '2020-05-03', '09:24:34', 'Customize position dining table'),
(69, '2020-05-03', '09:24:34', 'Customize position dining table'),
(70, '2020-05-03', '09:24:34', 'Customize position dining table'),
(71, '2020-05-03', '10:50:02', 'Added data privilege'),
(72, '2020-05-03', '00:00:00', 'Deleted data privilege'),
(73, '2020-05-03', '10:51:58', 'Added data payment type'),
(74, '2020-05-03', '00:00:00', 'Deleted data payment type'),
(75, '2020-05-03', '10:59:53', 'Added data payment type'),
(76, '2020-05-03', '11:00:02', 'Updated data payment type'),
(77, '2020-05-03', '11:06:29', 'Added data dining table'),
(78, '2020-05-03', '11:07:30', 'Updated data dining table'),
(79, '2020-05-03', '11:10:50', 'Updated data dining table'),
(80, '2020-05-03', '11:14:30', 'Updated data dining table'),
(81, '2020-05-03', '11:16:34', 'Updated data dining table'),
(82, '2020-05-03', '11:17:37', 'Added data dining table'),
(83, '2020-05-03', '11:19:10', 'Updated data dining table'),
(84, '2020-05-03', '00:00:00', 'Deleted data dining table'),
(85, '2020-05-03', '11:23:37', 'Customize position dining table'),
(86, '2020-05-03', '11:23:37', 'Customize position dining table'),
(87, '2020-05-03', '11:23:37', 'Customize position dining table'),
(88, '2020-05-03', '11:23:49', 'Customize position dining table'),
(89, '2020-05-03', '11:23:49', 'Customize position dining table'),
(90, '2020-05-03', '11:24:03', 'Customize position dining table'),
(91, '2020-05-04', '05:57:03', 'Added data dining table'),
(92, '2020-05-04', '06:06:28', 'Added data dining table'),
(93, '2020-05-04', '06:09:15', 'Added data dining table'),
(94, '2020-05-04', '06:10:34', 'Added data dining table'),
(95, '2020-05-04', '06:18:52', 'Deleted data dining table'),
(96, '2020-05-04', '06:20:10', 'Deleted data dining table'),
(97, '2020-05-04', '06:20:10', 'Deleted data dining table'),
(98, '2020-05-04', '06:20:19', 'Updated data dining table'),
(99, '2020-05-04', '06:30:09', 'Deleted data dining table'),
(100, '2020-05-04', '06:30:09', 'Deleted data dining table'),
(101, '2020-05-04', '06:30:37', 'Added data kitchen type'),
(102, '2020-05-04', '06:30:41', 'Updated data kitchen-type'),
(103, '2020-05-04', '06:30:45', 'Deleted data kitchen type'),
(104, '2020-05-04', '06:36:05', 'Added data order status'),
(105, '2020-05-04', '06:36:48', 'Updated data order status'),
(106, '2020-05-04', '06:36:51', 'Deleted data order status'),
(107, '2020-05-04', '06:52:50', 'Updated data payment type'),
(108, '2020-05-04', '06:52:53', 'Deleted data payment type'),
(109, '2020-05-04', '06:53:00', 'Added data payment type'),
(110, '2020-05-04', '06:53:02', 'Deleted data payment type'),
(111, '2020-05-04', '07:08:18', 'Added data privilege'),
(112, '2020-05-04', '07:08:21', 'Updated data privilege'),
(113, '2020-05-04', '07:08:23', 'Deleted data privilege'),
(114, '2020-05-04', '10:18:03', 'Added data User'),
(115, '2020-05-04', '10:20:06', 'Added data User'),
(116, '2020-05-04', '10:20:30', 'Updated data Privilege'),
(117, '2020-05-04', '10:20:38', 'Deleted data Privilege'),
(118, '2020-05-04', '10:21:16', 'Added data product'),
(119, '2020-05-04', '10:21:52', 'Updated data Product'),
(120, '2020-05-04', '10:21:56', 'Deleted data Product'),
(121, '2020-05-04', '10:21:56', 'Deleted data Product'),
(122, '2020-05-04', '10:24:20', 'Deleted data Product'),
(123, '2020-05-04', '10:24:41', 'Added data product'),
(124, '2020-05-04', '10:25:08', 'Updated data Product'),
(125, '2020-05-04', '10:25:12', 'Deleted data Product'),
(126, '2020-05-04', '10:26:39', 'Added data product'),
(127, '2020-05-04', '10:26:57', 'Deleted data Product'),
(128, '2020-05-04', '10:27:25', 'Added data order status'),
(129, '2020-05-04', '10:27:28', 'Updated data order status'),
(130, '2020-05-04', '10:27:30', 'Deleted data order status'),
(131, '2020-05-04', '10:29:18', 'Added data order status'),
(132, '2020-05-04', '10:29:21', 'Updated data order status'),
(133, '2020-05-04', '10:29:23', 'Deleted data order status'),
(134, '2020-05-04', '12:27:08', 'Added data User'),
(135, '2020-05-04', '12:29:37', 'Deleted data Privilege'),
(136, '2020-05-04', '12:29:45', 'Added data privilege'),
(137, '2020-05-04', '12:29:50', 'Updated data privilege'),
(138, '2020-05-04', '12:29:52', 'Deleted data privilege'),
(139, '2020-05-04', '12:30:19', 'Added data User'),
(140, '2020-05-04', '12:30:35', 'Deleted data Privilege'),
(141, '2020-05-04', '12:31:35', 'Added data User'),
(142, '2020-05-04', '12:31:51', 'Updated data Privilege'),
(143, '2020-05-04', '12:32:45', 'Deleted data Privilege'),
(144, '2020-05-04', '12:35:52', 'Added data User'),
(145, '2020-05-04', '12:36:18', 'Updated data Privilege'),
(146, '2020-05-04', '12:37:29', 'Deleted data Privilege'),
(147, '2020-05-04', '12:37:45', 'Added data product'),
(148, '2020-05-04', '12:38:04', 'Updated data Product'),
(149, '2020-05-04', '12:46:54', 'Updated data Product'),
(150, '2020-05-04', '12:47:42', 'Updated data Product'),
(151, '2020-05-04', '12:48:27', 'Updated data dining table'),
(152, '2020-05-04', '12:48:31', 'Updated data dining table'),
(153, '2020-05-04', '12:51:42', 'Updated data Product'),
(154, '2020-05-04', '12:55:00', 'Updated data Product'),
(155, '2020-05-04', '12:55:16', 'Updated data Product'),
(156, '2020-05-04', '12:55:56', 'Deleted data Product'),
(157, '2020-05-04', '12:57:37', 'Added data product'),
(158, '2020-05-04', '02:03:41', 'Deleted data Product'),
(159, '2020-05-04', '02:03:41', 'Deleted data Product'),
(160, '2020-05-04', '02:05:18', 'Added data product'),
(161, '2020-05-04', '02:09:58', 'Added data product'),
(162, '2020-05-04', '02:10:22', 'Deleted data Product'),
(163, '2020-05-04', '02:12:29', 'Updated data Product'),
(164, '2020-05-04', '02:12:34', 'Deleted data Product'),
(165, '2020-05-04', '02:13:32', 'Added data product'),
(166, '2020-05-04', '02:13:50', 'Added data product'),
(167, '2020-05-04', '02:14:05', 'Updated data Product'),
(168, '2020-05-04', '02:14:51', 'Updated data Product'),
(169, '2020-05-04', '02:15:22', 'Updated data Product'),
(170, '2020-05-04', '02:16:27', 'Updated data Product'),
(171, '2020-05-04', '02:16:46', 'Added data User'),
(172, '2020-05-04', '02:16:55', 'Deleted data Privilege'),
(173, '2020-05-04', '02:17:28', 'Updated data Product'),
(174, '2020-05-04', '02:18:06', 'Updated data Product'),
(175, '2020-05-04', '02:19:19', 'Added data User'),
(176, '2020-05-04', '02:20:12', 'Updated data Privilege'),
(177, '2020-05-04', '02:21:55', 'Updated data Privilege'),
(178, '2020-05-04', '02:22:53', 'Updated data Product'),
(179, '2020-05-04', '02:27:29', 'Added data product'),
(180, '2020-05-04', '02:27:40', 'Deleted data Product'),
(181, '2020-05-04', '02:30:55', 'Added data product'),
(182, '2020-05-04', '02:31:08', 'Updated data Product'),
(183, '2020-05-04', '02:31:12', 'Deleted data Product'),
(184, '2020-05-04', '02:33:41', 'Updated data Product'),
(185, '2020-05-04', '02:35:09', 'Updated data Product'),
(186, '2020-05-04', '02:35:22', 'Updated data Product'),
(187, '2020-05-04', '02:35:29', 'Updated data Product'),
(188, '2020-05-04', '02:38:57', 'Updated data Privilege'),
(189, '2020-05-04', '02:39:09', 'Deleted data Privilege');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_profile`
--

CREATE TABLE `history_profile` (
  `historyProfileId` int(250) NOT NULL,
  `historyAppId` int(250) NOT NULL,
  `profileId` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `history_profile`
--

INSERT INTO `history_profile` (`historyProfileId`, `historyAppId`, `profileId`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 38, 1),
(5, 71, 1),
(6, 73, 1),
(7, 75, 1),
(8, 77, 1),
(9, 82, 1),
(10, 83, 1),
(11, 84, 1),
(12, 94, 1),
(13, 95, 1),
(14, 96, 1),
(15, 97, 1),
(16, 98, 1),
(17, 99, 1),
(18, 100, 1),
(19, 101, 1),
(20, 102, 1),
(21, 103, 1),
(22, 104, 1),
(23, 105, 1),
(24, 106, 1),
(25, 107, 1),
(26, 108, 1),
(27, 109, 1),
(28, 110, 1),
(29, 111, 1),
(30, 112, 1),
(31, 113, 1),
(32, 115, 1),
(33, 116, 1),
(34, 117, 1),
(35, 118, 1),
(36, 119, 1),
(37, 120, 1),
(38, 121, 1),
(39, 122, 1),
(40, 123, 1),
(41, 124, 1),
(42, 125, 1),
(43, 126, 1),
(44, 127, 1),
(45, 128, 1),
(46, 129, 1),
(47, 130, 1),
(48, 131, 1),
(49, 132, 1),
(50, 133, 1),
(51, 134, 1),
(52, 135, 1),
(53, 136, 1),
(54, 137, 1),
(55, 138, 1),
(56, 139, 1),
(57, 140, 1),
(58, 141, 1),
(59, 142, 1),
(60, 143, 1),
(61, 144, 1),
(62, 145, 1),
(63, 146, 1),
(64, 147, 1),
(65, 148, 1),
(66, 149, 1),
(67, 150, 1),
(68, 151, 1),
(69, 152, 1),
(70, 153, 1),
(71, 154, 1),
(72, 155, 1),
(73, 156, 1),
(74, 157, 1),
(75, 158, 1),
(76, 159, 1),
(77, 160, 1),
(78, 161, 1),
(79, 162, 1),
(80, 163, 1),
(81, 164, 1),
(82, 165, 1),
(83, 166, 1),
(84, 167, 1),
(85, 168, 1),
(86, 169, 1),
(87, 170, 1),
(88, 171, 1),
(89, 172, 1),
(90, 173, 1),
(91, 174, 1),
(92, 175, 1),
(93, 176, 1),
(94, 177, 1),
(95, 178, 1),
(96, 179, 1),
(97, 180, 1),
(98, 181, 1),
(99, 182, 1),
(100, 183, 1),
(101, 184, 1),
(102, 185, 1),
(103, 186, 1),
(104, 187, 1),
(105, 188, 1),
(106, 189, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kitchen_type`
--

CREATE TABLE `kitchen_type` (
  `kitchenTypeId` int(250) NOT NULL,
  `kitchenTypeName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kitchen_type`
--

INSERT INTO `kitchen_type` (`kitchenTypeId`, `kitchenTypeName`) VALUES
(5, 'main course'),
(6, 'appetizers'),
(7, 'dessert');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `orderId` int(250) NOT NULL,
  `customerId` int(250) DEFAULT NULL,
  `tableId` int(250) DEFAULT NULL,
  `orderStatusId` int(250) NOT NULL,
  `orderProduct` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`orderProduct`)),
  `paymentTypeId` int(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `ref` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`orderId`, `customerId`, `tableId`, `orderStatusId`, `orderProduct`, `paymentTypeId`, `amount`, `ref`) VALUES
(1, NULL, NULL, 2, '[{\"prodCatKitcId\":2,\"productId\":2,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es Cincau\",\"image\":\"cincau.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":10000,\"qty\":2,\"subTotal\":20000}]', 2, '20000', '{}'),
(2, NULL, NULL, 1, '[{\"prodCatKitcId\":3,\"productId\":3,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es dawet\",\"image\":\"dawet.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":25000,\"qty\":1,\"subTotal\":25000},{\"prodCatKitcId\":2,\"productId\":2,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es Cincau\",\"image\":\"cincau.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":10000,\"qty\":1,\"subTotal\":10000},{\"prodCatKitcId\":4,\"productId\":4,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"martabak telur\",\"image\":\"Martabak-telur.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":30000,\"qty\":1,\"subTotal\":30000}]', 0, '65000', '{\"bankName\":\"BCA\",\"bankNumber\":\"1234-43949-23823028\"}'),
(3, NULL, NULL, 2, '[{\"prodCatKitcId\":2,\"productId\":2,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es Cincau\",\"image\":\"cincau.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":10000,\"qty\":3,\"subTotal\":30000},{\"prodCatKitcId\":3,\"productId\":3,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es dawet\",\"image\":\"dawet.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":25000,\"qty\":2,\"subTotal\":50000},{\"prodCatKitcId\":4,\"productId\":4,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"martabak telur\",\"image\":\"Martabak-telur.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":30000,\"qty\":2,\"subTotal\":60000}]', 2, '140000', '{}'),
(4, NULL, 67, 1, '[{\"prodCatKitcId\":2,\"productId\":2,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es Cincau\",\"image\":\"cincau.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":10000,\"qty\":2,\"subTotal\":20000}]', 0, '20000', '{\"bankName\":\"BCA\",\"bankNumber\":\"1230-3040-39404\"}'),
(5, NULL, NULL, 2, '[{\"prodCatKitcId\":3,\"productId\":3,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es dawet\",\"image\":\"dawet.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":25000,\"qty\":1,\"subTotal\":25000},{\"prodCatKitcId\":2,\"productId\":2,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es Cincau\",\"image\":\"cincau.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":10000,\"qty\":1,\"subTotal\":10000}]', 4, '35000', '{}'),
(6, NULL, 66, 1, '[{\"prodCatKitcId\":2,\"productId\":2,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es Cincau\",\"image\":\"cincau.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":10000,\"qty\":1,\"subTotal\":10000},{\"prodCatKitcId\":3,\"productId\":3,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es dawet\",\"image\":\"dawet.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":25000,\"qty\":1,\"subTotal\":25000}]', 4, '35000', '{}'),
(7, NULL, NULL, 2, '[{\"prodCatKitcId\":2,\"productId\":2,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es Cincau\",\"image\":\"cincau.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":10000,\"qty\":2,\"subTotal\":20000}]', 4, '20000', '{}'),
(8, NULL, NULL, 2, '[{\"prodCatKitcId\":2,\"productId\":2,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es Cincau\",\"image\":\"cincau.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":10000,\"qty\":3,\"subTotal\":30000}]', 4, '30000', '{}'),
(9, NULL, NULL, 2, '[{\"prodCatKitcId\":2,\"productId\":2,\"productCategoryId\":4,\"kitchenTypeId\":7,\"displayName\":\"Es Cincau\",\"image\":\"cincau.jpg\",\"kitchen\":\"dessert\",\"category\":\"dessert\",\"price\":10000,\"qty\":1,\"subTotal\":10000}]', 4, '10000', '{}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_status`
--

CREATE TABLE `order_status` (
  `orderStatusId` int(250) NOT NULL,
  `orderStatusName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `order_status`
--

INSERT INTO `order_status` (`orderStatusId`, `orderStatusName`) VALUES
(1, 'dine in'),
(2, 'take away');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_type`
--

CREATE TABLE `payment_type` (
  `paymentTypeId` int(250) NOT NULL,
  `paymentTypeName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `payment_type`
--

INSERT INTO `payment_type` (`paymentTypeId`, `paymentTypeName`) VALUES
(2, 'debit'),
(3, 'credit'),
(4, 'cash');

-- --------------------------------------------------------

--
-- Struktur dari tabel `privilege`
--

CREATE TABLE `privilege` (
  `privilegeId` int(250) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `privilege`
--

INSERT INTO `privilege` (`privilegeId`, `name`) VALUES
(1, 'developer'),
(69, 'manager');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `productId` int(250) NOT NULL,
  `displayName` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `price` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`productId`, `displayName`, `image`, `price`) VALUES
(12, 'Burger', 'burger.jpg', 40000),
(13, 'Baso', 'baso.jpg', 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category`
--

CREATE TABLE `product_category` (
  `productCategoryId` int(250) NOT NULL,
  `productCategoryName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product_category`
--

INSERT INTO `product_category` (`productCategoryId`, `productCategoryName`) VALUES
(2, 'main course'),
(3, 'appetizers'),
(4, 'dessert');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category_kitchen`
--

CREATE TABLE `product_category_kitchen` (
  `prodCatKitcId` int(250) NOT NULL,
  `productCategoryId` int(250) NOT NULL,
  `productId` int(250) NOT NULL,
  `kitchenTypeId` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product_category_kitchen`
--

INSERT INTO `product_category_kitchen` (`prodCatKitcId`, `productCategoryId`, `productId`, `kitchenTypeId`) VALUES
(12, 2, 12, 5),
(13, 2, 13, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `profileId` int(250) NOT NULL,
  `displayName` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`profileId`, `displayName`, `email`, `address`, `image`) VALUES
(1, 'gigih', 'gigih985042@gmail.com', 'Jalan Pendidikan 1', 'placeholder.jpg'),
(15, 'Nita', 'fqonitah90@gmail.com', 'jalan pendidikan 1', 'placeholder.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `recycle_bin`
--

CREATE TABLE `recycle_bin` (
  `recycleBinId` int(250) NOT NULL,
  `recycleData` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `recycle_bin`
--

INSERT INTO `recycle_bin` (`recycleBinId`, `recycleData`) VALUES
(1, 'Kcg83YPWSamDeUa4UdA6GIT+dI0pKrqFSyTvnzyqYyh5JvxMMc4lhf2+CTP1w+CY'),
(2, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbjSayTERiYlRpPPxGtvRlJrCD///oE0n/RyybC9Q0pWfCLyIeQ+K1o1LJlq0MAGLdMgBr26Xh8Y8Ixm4psNVlY8A5T5jLpCDFt156pBCm3Qk4H0vODun3ydUX6X7hF/ealxZyL99Kf/tVQMvMHtc9K/ZI223HaAFOY7jUIb9kmok4FV3S/6BhsbVnuB88su4NF5TmDlR93GNiE6jhxiH/qHedw8AInxA7UVk4Wx1GukP05Lqgb4gWHcG9Q8gsEMnDZi1/BK8bWbzrfrUUvBh1Kn4GabmG1HtQCf97VVYff0Kw+2dczOvkGv15f/wEEaGNg569KMBrYHsyw/fCAcJhAw=='),
(3, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbjSayTERiYlRpPPxGtvRlJrCD///oE0n/RyybC9Q0pWfCLyIeQ+K1o1LJlq0MAGLdMgBr26Xh8Y8Ixm4psNVlY8A5T5jLpCDFt156pBCm3Qk4H0vODun3ydUX6X7hF/ealxZyL99Kf/tVQMvMHtc9K/ZI223HaAFOY7jUIb9kmok4FV3S/6BhsbVnuB88su4NF5TmDlR93GNiE6jhxiH/qHedw8AInxA7UVk4Wx1GukP05Lqgb4gWHcG9Q8gsEMnDZi1/BK8bWbzrfrUUvBh1Kn4GabmG1HtQCf97VVYff0Kw+2dczOvkGv15f/wEEaGNg569KMBrYHsyw/fCAcJhAw=='),
(4, 'data'),
(5, 'data'),
(6, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbG3PRiOLSuxPX22tyDOic1P13JvQkwv7LOdQ7fvK1S1AwF5eeve2iANXcYOe5TkFUAD5LjXHIpYp1x5w6cCACsW3l50aoX+NIJe56SG2q9lyGnKjX2L+sschGeZt/r73ZEdHkEps6XxnqXxZzyG52x2XNzFhpSPXPtWwM/Gdz1K/oVifJ36x9vp185Ypi5K4gybxIFAg1FGPWcf0CWu9en4q6BMBCkUsYXpwkGbIWfk5/hV1gi6cY1mZx32o6Wil+Yc9IVZdBFECTVn9JpLisJZbTqQrz8JCeXOyiWEeBGnAWYoIz68wmmsxOEwtaEYSw9dI2rwW9c+DIwTWXPc9MZ6ABXMijNPTJXv2jVKElsBw='),
(7, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbG3PRiOLSuxPX22tyDOic1P13JvQkwv7LOdQ7fvK1S1AwF5eeve2iANXcYOe5TkFUAD5LjXHIpYp1x5w6cCACsW3l50aoX+NIJe56SG2q9lyGnKjX2L+sschGeZt/r73ZEdHkEps6XxnqXxZzyG52x2XNzFhpSPXPtWwM/Gdz1K/oVifJ36x9vp185Ypi5K4gybxIFAg1FGPWcf0CWu9en4q6BMBCkUsYXpwkGbIWfk5/hV1gi6cY1mZx32o6Wil+Yc9IVZdBFECTVn9JpLisJZbTqQrz8JCeXOyiWEeBGnAWYoIz68wmmsxOEwtaEYSw9dI2rwW9c+DIwTWXPc9MZ6ABXMijNPTJXv2jVKElsBw='),
(8, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbfsKEmJPubkIDuy4GR8SWuv+3qZSr3IzMDp4+CSDIsDgLHBk/k1tkKtiEOe9gJulPLN7stc59Dku6g+BEEwkGIMeupng4+rydjVFA5EIn381fiOukNfcG5dBkZCg7KP3fIdNfwPYvM/g7MMJqPaALYzgD0vTYODxK+2K86gIkoLye/LBkyePe5b42aVEaFPPy9kjbbcdoAU5juNQhv2SaiTgVXdL/oGGxtWe4Hzyy7g0XlOYOVH3cY2ITqOHGIf+o7UNYs+S2Yas0L3mv2N5MlsJaa1fmtGOUE80/3zZB3xwBRfbuQge+vQc6fWg835/3wDLAKEehuCKP5svb8KboSUA9SR3uQg5+i5f+eQl5FUc='),
(9, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNG+FoWAmNEBzM2fdpk7S32eT5enCnb929ddDv+qFXrwrA7ESpD7yykvcsElZklxRc='),
(10, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNG+FoWAmNEBzM2fdpk7S32eT5enCnb929ddDv+qFXrwrA7ESpD7yykvcsElZklxRc='),
(11, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNG+FoWAmNEBzM2fdpk7S32eT5enCnb929ddDv+qFXrwrA7ESpD7yykvcsElZklxRc='),
(12, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuces3viu6pIeCvksjm87vjtrq4urSwZ6h6h5KbhwZ8Dw=='),
(13, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuces3viu6pIeCvksjm87vjtrq4urSwZ6h6h5KbhwZ8Dw=='),
(14, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNG+FoWAmNEBzM2fdpk7S32eT5enCnb929ddDv+qFXrwrA7ESpD7yykvcsElZklxRc='),
(15, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuces3viu6pIeCvksjm87vjtrq4urSwZ6h6h5KbhwZ8Dw=='),
(16, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNG+FoWAmNEBzM2fdpk7S32eT5enCnb929ddDv+qFXrwrA7ESpD7yykvcsElZklxRc='),
(17, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNG+FoWAmNEBzM2fdpk7S32eT5enCnb929ddDv+qFXrwrA7ESpD7yykvcsElZklxRc='),
(18, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRN9WaE3nIm7gb8au26jzPzPOCRSEvpaxUH9ud84occprYVdjMApOn3O1iUacncWoQ0='),
(19, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNG+FoWAmNEBzM2fdpk7S32eT5enCnb929ddDv+qFXrwrA7ESpD7yykvcsElZklxRc='),
(20, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRN9WaE3nIm7gb8au26jzPzPOCRSEvpaxUH9ud84occprYVdjMApOn3O1iUacncWoQ0='),
(21, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMRbjWJMsEVJoeaikSDlGftI4wFO4WFoHzuOmDY7yD1EoVdjMApOn3O1iUacncWoQ0='),
(22, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuces3viu6pIeCvksjm87vjtrq4urSwZ6h6h5KbhwZ8Dw=='),
(23, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuces3viu6pIeCvksjm87vjtrq4urSwZ6h6h5KbhwZ8Dw=='),
(24, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXshhJ8VNwadUj81wIgbvU3atrq4urSwZ6h6h5KbhwZ8Dw=='),
(25, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuces3viu6pIeCvksjm87vjtrq4urSwZ6h6h5KbhwZ8Dw=='),
(26, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXshhJ8VNwadUj81wIgbvU3atrq4urSwZ6h6h5KbhwZ8Dw=='),
(27, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuM5Xdp1kGJrBU5zdLsyHe9trq4urSwZ6h6h5KbhwZ8Dw=='),
(28, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPm7m/R1m/27ikwk+bhwPj0I4wFO4WFoHzuOmDY7yD1EoVdjMApOn3O1iUacncWoQ0='),
(29, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMTHfAUgp+LHFy/5j+BfKUdI4wFO4WFoHzuOmDY7yD1EoVdjMApOn3O1iUacncWoQ0='),
(30, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMTHfAUgp+LHFy/5j+BfKUdI4wFO4WFoHzuOmDY7yD1EoVdjMApOn3O1iUacncWoQ0='),
(31, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMirYfDAxvRh7MwGcwm1Xq/puYFHk6OHStNb71iEoEW/4VdjMApOn3O1iUacncWoQ0='),
(32, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROtLV4xjA1G/wAGejnuR9izpuYFHk6OHStNb71iEoEW/4VdjMApOn3O1iUacncWoQ0='),
(33, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROtLV4xjA1G/wAGejnuR9izpuYFHk6OHStNb71iEoEW/4VdjMApOn3O1iUacncWoQ0='),
(34, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRO8+aUQcMJYCwHSDlz20bvLI4wFO4WFoHzuOmDY7yD1EoVdjMApOn3O1iUacncWoQ0='),
(35, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNtZTG/tsToc0L6MIWye/vMAH1oJrdB8X3YCfs51kW8ZRwLkgfcN9XbNLjA98JBQXY='),
(36, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNtZTG/tsToc0L6MIWye/vMAH1oJrdB8X3YCfs51kW8ZRwLkgfcN9XbNLjA98JBQXY='),
(37, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRM9/No60nfN2ghmFQogNRzY/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(38, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNIXbw7akDT8hLwqXWrptGs/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(39, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNIXbw7akDT8hLwqXWrptGs/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(40, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRP4V24cTmk4pVXi+4z4dcAc9XW39L8/4ucm+Onw624vn+cxT6YdNq0wGNCjryBj2I8='),
(41, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRN2F4p9+pm2qniq5aWj6Vrt/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(42, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRN2F4p9+pm2qniq5aWj6Vrt/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(43, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROQUQqr+n0aXJd2Z0HYiRYYg63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(44, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPd1h7gm8BLeGupBJ0H8PTn/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(45, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPd1h7gm8BLeGupBJ0H8PTn/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(46, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMB9tov+Rm0yoqWo0n7DBd+g63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(47, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRN0PwCrUygLw5Aln/baw+NLJUxlZUJR1+vMSOurH1bdFecxT6YdNq0wGNCjryBj2I8='),
(48, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRN0PwCrUygLw5Aln/baw+NLJUxlZUJR1+vMSOurH1bdFecxT6YdNq0wGNCjryBj2I8='),
(49, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPVGF3eGZW65Jw6JlMgCDxCVYMok8Zy8Y+cg75OXpFWsucxT6YdNq0wGNCjryBj2I8='),
(50, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRN0PwCrUygLw5Aln/baw+NLJUxlZUJR1+vMSOurH1bdFecxT6YdNq0wGNCjryBj2I8='),
(51, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPVGF3eGZW65Jw6JlMgCDxCVYMok8Zy8Y+cg75OXpFWsucxT6YdNq0wGNCjryBj2I8='),
(52, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMBwrpk/chWnD98qT5FYH4F9XW39L8/4ucm+Onw624vn+cxT6YdNq0wGNCjryBj2I8='),
(53, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2Pb71UvpQXYa0oKf434jgW2oGFYjWly9mL6J0PlKDP7HWulTfCRQrdIzXCPJh8aN6MG1zGS2tPEzhd354sGxH67JdUOSSb4sDvickwENHoJpgHjTpxX+23EZn46c8jwjzDprDIxKY5ks5vocpyxBGb8Ems7kiTWwf5bnQHcjgXXFSh2kguAUROarP3Mjq4Wv0j+5pmdFVS3/dRGFbEBEXIqUGdSqcYE0sjey+6jCVoN9num1l2KIwJ63pOrQoC7mVOV5t/E8f+dnfP3FZR9jpn5OU7yg5/VXJwHN8n4tKfFeU8vp8wuq9LoSW4wdhtm+SkQQzi1kf1qnAnU03II3syurlTSd7Q5ixLNGJHEG8AQjNqFXYzAKTp9ztYlGnJ3FqEN'),
(54, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2Pbmp2Pqk8inHIEsR7ApiagRTmu6Rul8ZaSEv+6jHfXXJmdvzmBATYiTTThEMifBQIxljOUBqRZLgoLfMv+rBYU3oacqNfYv6yxyEZ5m3+vvdleHToQRFnKiu2LXmsqlhAyyKPWNHX4hefHm30HlUYmOuhehJmS4GTB25YvgUYWNvB9S99jgHY99l9dPFso2RDlLZ0HplcpF3vBsFgveBbyBMrxBLk65IfoQF9W2P8QLkVH/7mWjiyiC3OZZD0QK+XQM233URNCtxIq4k4HWNbWpxe7ymOrNHBIniQ8AjgGXDhJMVejacBuum8k6fnzK6QkWlPyY1e4V0X8FdZ457hntA=='),
(55, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2Pb71UvpQXYa0oKf434jgW2oGFYjWly9mL6J0PlKDP7HWulTfCRQrdIzXCPJh8aN6MG1zGS2tPEzhd354sGxH67JdUOSSb4sDvickwENHoJpgHjTpxX+23EZn46c8jwjzDprDIxKY5ks5vocpyxBGb8Ems7kiTWwf5bnQHcjgXXFSh2kguAUROarP3Mjq4Wv0j+5pmdFVS3/dRGFbEBEXIqUGdSqcYE0sjey+6jCVoN9num1l2KIwJ63pOrQoC7mVOV5t/E8f+dnfP3FZR9jpn5OU7yg5/VXJwHN8n4tKfFeU8vp8wuq9LoSW4wdhtm+SkQQzi1kf1qnAnU03II3syurlTSd7Q5ixLNGJHEG8AQjNqFXYzAKTp9ztYlGnJ3FqEN'),
(56, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMHeTGvyuHybadbQGnKURVI/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(57, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMHeTGvyuHybadbQGnKURVI/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(58, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNhhELPgp9xlylbvByK5l88g63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(59, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPGMd9X14SErDXd9ANIyXxC3sA2hsGkIX2/g0j6dX3EtkMHLQq7Px848gpHcNdwg4c='),
(60, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPGMd9X14SErDXd9ANIyXxC3sA2hsGkIX2/g0j6dX3EtkMHLQq7Px848gpHcNdwg4c='),
(61, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPGMd9X14SErDXd9ANIyXxC3sA2hsGkIX2/g0j6dX3EtkMHLQq7Px848gpHcNdwg4c='),
(62, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPZa7AOQO1vq9asCxX25SY3g63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(63, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPGMd9X14SErDXd9ANIyXxC3sA2hsGkIX2/g0j6dX3EtkMHLQq7Px848gpHcNdwg4c='),
(64, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPGMd9X14SErDXd9ANIyXxC3sA2hsGkIX2/g0j6dX3EtkMHLQq7Px848gpHcNdwg4c='),
(65, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPZa7AOQO1vq9asCxX25SY3g63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(66, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPZa7AOQO1vq9asCxX25SY3g63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(67, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRO+S8WxyVG1jkMaXL2F0Rik/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(68, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNvVJ8vt2UvgY41ptubvf7CAH1oJrdB8X3YCfs51kW8ZRwLkgfcN9XbNLjA98JBQXY='),
(69, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNvVJ8vt2UvgY41ptubvf7CAH1oJrdB8X3YCfs51kW8ZRwLkgfcN9XbNLjA98JBQXY='),
(70, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROJCXF6SbrfPosTh8u/fdi0XJQhOWI8KCn/EHESyScKfxwLkgfcN9XbNLjA98JBQXY='),
(71, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNvVJ8vt2UvgY41ptubvf7CAH1oJrdB8X3YCfs51kW8ZRwLkgfcN9XbNLjA98JBQXY='),
(72, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROJCXF6SbrfPosTh8u/fdi0XJQhOWI8KCn/EHESyScKfxwLkgfcN9XbNLjA98JBQXY='),
(73, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROhlN8weffPyJyIPIPwM7k7sDq+X+XCRPqjxlWSIegbXBwLkgfcN9XbNLjA98JBQXY='),
(74, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMyvRiNOqb3Fk9Ruf3KhEddWTAH6cYYxhQrDIJo0m5deBwLkgfcN9XbNLjA98JBQXY='),
(75, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMyvRiNOqb3Fk9Ruf3KhEddWTAH6cYYxhQrDIJo0m5deBwLkgfcN9XbNLjA98JBQXY='),
(76, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNidnnpjpWL98n5HsGTjTmZmybZEGiXVmVmtLHUGGxE+xwLkgfcN9XbNLjA98JBQXY='),
(77, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMyvRiNOqb3Fk9Ruf3KhEddWTAH6cYYxhQrDIJo0m5deBwLkgfcN9XbNLjA98JBQXY='),
(78, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNidnnpjpWL98n5HsGTjTmZmybZEGiXVmVmtLHUGGxE+xwLkgfcN9XbNLjA98JBQXY='),
(79, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMVlhjOQmrvMHFni76zh3W9alB4Dj8LCY2BryxKguJ2hRwLkgfcN9XbNLjA98JBQXY='),
(80, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRP41jCAMYq5dY96b5a5xtY/5JAcWGeJOwtjx0pFe9nqNpDK38oNjRCyCw4wQ9jnHyw='),
(81, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRP41jCAMYq5dY96b5a5xtY/5JAcWGeJOwtjx0pFe9nqNpDK38oNjRCyCw4wQ9jnHyw='),
(82, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRP41jCAMYq5dY96b5a5xtY/5JAcWGeJOwtjx0pFe9nqNpDK38oNjRCyCw4wQ9jnHyw='),
(83, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROaJT0tNGSdbDg2hgoAEUyo/Q80G+frYHxtsWloJy8r7JDK38oNjRCyCw4wQ9jnHyw='),
(84, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNFhC3Mo9/G40JPr4ZxJM02cx9mfrlj1JQ0D3qj28DsyJDK38oNjRCyCw4wQ9jnHyw='),
(85, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNFhC3Mo9/G40JPr4ZxJM02cx9mfrlj1JQ0D3qj28DsyJDK38oNjRCyCw4wQ9jnHyw='),
(86, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNDdQRug1wo7LQ/jOuYqQp9oFRLHAG/PIghECEkqpNVaRwLkgfcN9XbNLjA98JBQXY='),
(87, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNFhC3Mo9/G40JPr4ZxJM02cx9mfrlj1JQ0D3qj28DsyJDK38oNjRCyCw4wQ9jnHyw='),
(88, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNDdQRug1wo7LQ/jOuYqQp9oFRLHAG/PIghECEkqpNVaRwLkgfcN9XbNLjA98JBQXY='),
(89, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROgSYUD9vlWn5YB6wq4oR8Vg63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(90, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNFhC3Mo9/G40JPr4ZxJM02cx9mfrlj1JQ0D3qj28DsyJDK38oNjRCyCw4wQ9jnHyw='),
(91, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNDdQRug1wo7LQ/jOuYqQp9oFRLHAG/PIghECEkqpNVaRwLkgfcN9XbNLjA98JBQXY='),
(92, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROgSYUD9vlWn5YB6wq4oR8Vg63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(93, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMu3b1BMTMQeld8WPTzGoJd/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(94, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNFhC3Mo9/G40JPr4ZxJM02cx9mfrlj1JQ0D3qj28DsyJDK38oNjRCyCw4wQ9jnHyw='),
(95, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNDdQRug1wo7LQ/jOuYqQp9oFRLHAG/PIghECEkqpNVaRwLkgfcN9XbNLjA98JBQXY='),
(96, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROgSYUD9vlWn5YB6wq4oR8Vg63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(97, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMu3b1BMTMQeld8WPTzGoJd/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(98, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPx0BDGcO0M3WypD1VUG9x8AH1oJrdB8X3YCfs51kW8ZRwLkgfcN9XbNLjA98JBQXY='),
(99, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNFhC3Mo9/G40JPr4ZxJM02cx9mfrlj1JQ0D3qj28DsyJDK38oNjRCyCw4wQ9jnHyw='),
(100, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNDdQRug1wo7LQ/jOuYqQp9oFRLHAG/PIghECEkqpNVaRwLkgfcN9XbNLjA98JBQXY='),
(101, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROgSYUD9vlWn5YB6wq4oR8Vg63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(102, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMu3b1BMTMQeld8WPTzGoJd/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(103, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPx0BDGcO0M3WypD1VUG9x8AH1oJrdB8X3YCfs51kW8ZRwLkgfcN9XbNLjA98JBQXY='),
(104, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNlzYyCLn0kilmlPCeRgJXelqrVQxpyre2Yyo4skDCmeZDK38oNjRCyCw4wQ9jnHyw='),
(105, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROBzxWkNDv4fNy6fj3XIBiRg63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(106, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtt5oEH4e5jduAo1kOONgFutrq4urSwZ6h6h5KbhwZ8Dw=='),
(107, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNvLzSVcHYqiag8PAWMvvzzg63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(108, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvaqpWxFAK1REZwMMY2XQm0wkpgXglJh6ZUbADInoa35Q=='),
(109, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvaqpWxFAK1REZwMMY2XQm0wkpgXglJh6ZUbADInoa35Q=='),
(110, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvKI1AXqV+Em6bkmbf5xxrt4UJZ9Pv/G5pLyuc3+xTzHg=='),
(111, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMtBTWQCC4XKvXg7KajlhHBHbRba1a5kX2+K3+oMxODvg=='),
(112, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMtBTWQCC4XKvXg7KajlhHBHbRba1a5kX2+K3+oMxODvg=='),
(113, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPSvR7xWKS4Tv8wggjr9Up+7u/WLthHDtQoWLb7JwG3rRwLkgfcN9XbNLjA98JBQXY='),
(114, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMtBTWQCC4XKvXg7KajlhHBHbRba1a5kX2+K3+oMxODvg=='),
(115, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPSvR7xWKS4Tv8wggjr9Up+7u/WLthHDtQoWLb7JwG3rRwLkgfcN9XbNLjA98JBQXY='),
(116, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNUdnxYyEcVA7TehQC2+1ZumXYoXA2EP9Mjrg1MuAJ16hwLkgfcN9XbNLjA98JBQXY='),
(117, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMtBTWQCC4XKvXg7KajlhHBHbRba1a5kX2+K3+oMxODvg=='),
(118, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPSvR7xWKS4Tv8wggjr9Up+7u/WLthHDtQoWLb7JwG3rRwLkgfcN9XbNLjA98JBQXY='),
(119, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNUdnxYyEcVA7TehQC2+1ZumXYoXA2EP9Mjrg1MuAJ16hwLkgfcN9XbNLjA98JBQXY='),
(120, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNMgoolZnvq99acnsygdbBp5qoH0Iyc62rNk2rFx0O1eRwLkgfcN9XbNLjA98JBQXY='),
(121, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMtBTWQCC4XKvXg7KajlhHBHbRba1a5kX2+K3+oMxODvg=='),
(122, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPSvR7xWKS4Tv8wggjr9Up+7u/WLthHDtQoWLb7JwG3rRwLkgfcN9XbNLjA98JBQXY='),
(123, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNUdnxYyEcVA7TehQC2+1ZumXYoXA2EP9Mjrg1MuAJ16hwLkgfcN9XbNLjA98JBQXY='),
(124, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNMgoolZnvq99acnsygdbBp5qoH0Iyc62rNk2rFx0O1eRwLkgfcN9XbNLjA98JBQXY='),
(125, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMD6uF+1edz5GGEKW/FMyaXDMQ9lLMMsz8UIwIdzg6kNw=='),
(126, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMtBTWQCC4XKvXg7KajlhHBHbRba1a5kX2+K3+oMxODvg=='),
(127, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPSvR7xWKS4Tv8wggjr9Up+7u/WLthHDtQoWLb7JwG3rRwLkgfcN9XbNLjA98JBQXY='),
(128, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNUdnxYyEcVA7TehQC2+1ZumXYoXA2EP9Mjrg1MuAJ16hwLkgfcN9XbNLjA98JBQXY='),
(129, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNMgoolZnvq99acnsygdbBp5qoH0Iyc62rNk2rFx0O1eRwLkgfcN9XbNLjA98JBQXY='),
(130, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMD6uF+1edz5GGEKW/FMyaXDMQ9lLMMsz8UIwIdzg6kNw=='),
(131, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPPfCDLRFIRwi1QBgVg7dipwovzmrfo7vG1kffiZzYZDhwLkgfcN9XbNLjA98JBQXY='),
(132, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPKXfPbeVcjOKEN9BDygW4Z+y7EmtUoU8SgCOwYk5lhJHLD/vnhoWqu9upyRR61R4A='),
(133, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPKXfPbeVcjOKEN9BDygW4Z+y7EmtUoU8SgCOwYk5lhJHLD/vnhoWqu9upyRR61R4A='),
(134, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROWxv25TfWYcEgZObdFLIbAL25OIDYDEQR0rMdUHb4Q9hwLkgfcN9XbNLjA98JBQXY='),
(135, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPKXfPbeVcjOKEN9BDygW4Z+y7EmtUoU8SgCOwYk5lhJHLD/vnhoWqu9upyRR61R4A='),
(136, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROWxv25TfWYcEgZObdFLIbAL25OIDYDEQR0rMdUHb4Q9hwLkgfcN9XbNLjA98JBQXY='),
(137, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRO7UQIKTjg8tSoRY4mYBQCHp+LH+9f7kCxghpwwwkPTmA=='),
(138, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPKXfPbeVcjOKEN9BDygW4Z+y7EmtUoU8SgCOwYk5lhJHLD/vnhoWqu9upyRR61R4A='),
(139, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROWxv25TfWYcEgZObdFLIbAL25OIDYDEQR0rMdUHb4Q9hwLkgfcN9XbNLjA98JBQXY='),
(140, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRO7UQIKTjg8tSoRY4mYBQCHp+LH+9f7kCxghpwwwkPTmA=='),
(141, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPxQCglkC28r5Yrd1HU6Q/hgslG5EkxV7T0RB6S50r7C5DK38oNjRCyCw4wQ9jnHyw='),
(142, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPKXfPbeVcjOKEN9BDygW4Z+y7EmtUoU8SgCOwYk5lhJHLD/vnhoWqu9upyRR61R4A='),
(143, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROWxv25TfWYcEgZObdFLIbAL25OIDYDEQR0rMdUHb4Q9hwLkgfcN9XbNLjA98JBQXY='),
(144, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRO7UQIKTjg8tSoRY4mYBQCHp+LH+9f7kCxghpwwwkPTmA=='),
(145, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPxQCglkC28r5Yrd1HU6Q/hgslG5EkxV7T0RB6S50r7C5DK38oNjRCyCw4wQ9jnHyw='),
(146, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRP2mWqjaVzK/Xr95IowjxOQ/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(147, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvRrVJHGczbSmABzSqnd2c1m+0o1JKil/0MTJGpiGKE/A=='),
(148, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXumZGbOSsvzowXqzsLjuA0Ksm7D4uhL85QJo3NSmcixww=='),
(149, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtobycRDXoEv+iDnINpIXoFYQRxXT56WaWa7mfDfzvjWA=='),
(150, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXunjI4g6gjbd32g4CZJdvEsLTyAG5czlipQCoUJD6TtSA=='),
(151, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtHjwhcnkip+fso3nWl2KxNYQRxXT56WaWa7mfDfzvjWA=='),
(152, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRO7XDWK+wwWklO3VAEN18IrAH1oJrdB8X3YCfs51kW8ZRwLkgfcN9XbNLjA98JBQXY='),
(153, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRO7XDWK+wwWklO3VAEN18IrAH1oJrdB8X3YCfs51kW8ZRwLkgfcN9XbNLjA98JBQXY='),
(154, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPEOhD2OJjDiK2ArUHq5XvV/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(155, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXsJ0P2f22lzYvl6+UT7y5jrYQRxXT56WaWa7mfDfzvjWA=='),
(156, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtMil9DKskzpozhLLoxbNJONMzqg57A1bx7GqhUdk01tw=='),
(157, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvHpe1vDAWsdSnmYQTROyD6sm7D4uhL85QJo3NSmcixww=='),
(158, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXv+Kt63a9cemh6Qoxl1ZYXtzXjKONMLn7iZPDCEYu8xzg=='),
(159, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXv+Kt63a9cemh6Qoxl1ZYXtzXjKONMLn7iZPDCEYu8xzg=='),
(160, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtwRaceiF+Wex1h2TK6JZQc/PWIGQWiYyVc0IpFUQyBhw=='),
(161, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXv+Kt63a9cemh6Qoxl1ZYXtzXjKONMLn7iZPDCEYu8xzg=='),
(162, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtwRaceiF+Wex1h2TK6JZQc/PWIGQWiYyVc0IpFUQyBhw=='),
(163, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvTR3nCsgMsSigYJljWVO5XBVQTvx6wze7qxtY9o1a9GQ=='),
(164, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXv+Kt63a9cemh6Qoxl1ZYXtzXjKONMLn7iZPDCEYu8xzg=='),
(165, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtwRaceiF+Wex1h2TK6JZQc/PWIGQWiYyVc0IpFUQyBhw=='),
(166, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvTR3nCsgMsSigYJljWVO5XBVQTvx6wze7qxtY9o1a9GQ=='),
(167, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuhGjeqO2Uy7SD5JyOQAIMujJXiBOGOjNDpYnswoxtMz4VdjMApOn3O1iUacncWoQ0='),
(168, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvbxBOGnfleiUtCZz4+Vu3WW93kVm5v/qk8G8/x7NCYNg=='),
(169, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvbxBOGnfleiUtCZz4+Vu3WW93kVm5v/qk8G8/x7NCYNg=='),
(170, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtzvDzh3Kz1v+9NAsdSSKg2suKs81aM9mErHOkq1uFrQQ=='),
(171, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXsLB1GcE1FWBt5iYFUe+3NNgtE7duCFzNBrRIrqeN7U+Q=='),
(172, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXsLB1GcE1FWBt5iYFUe+3NNgtE7duCFzNBrRIrqeN7U+Q=='),
(173, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvHC6rRqJs2v8jcten1v/iitrq4urSwZ6h6h5KbhwZ8Dw=='),
(174, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuo1VjfPCchW7F/fiz8BEChT6kjk55nBlwZ30CtDw1+MQ=='),
(175, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuo1VjfPCchW7F/fiz8BEChT6kjk55nBlwZ30CtDw1+MQ=='),
(176, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtA2haU7+irqJM3nHocEhmlNHfKlGkKgd0bhyFDCJLeAg=='),
(177, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuo1VjfPCchW7F/fiz8BEChT6kjk55nBlwZ30CtDw1+MQ=='),
(178, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtA2haU7+irqJM3nHocEhmlNHfKlGkKgd0bhyFDCJLeAg=='),
(179, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvuShcfHgTmUIYKiA+z6ApPNHfKlGkKgd0bhyFDCJLeAg=='),
(180, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuo1VjfPCchW7F/fiz8BEChT6kjk55nBlwZ30CtDw1+MQ=='),
(181, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtA2haU7+irqJM3nHocEhmlNHfKlGkKgd0bhyFDCJLeAg=='),
(182, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvuShcfHgTmUIYKiA+z6ApPNHfKlGkKgd0bhyFDCJLeAg=='),
(183, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtJJHuMVYoWL8ns+SfTfJZ+mFSVjPzxGrxIjK7CzdnGDQ=='),
(184, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvpBRQ45ojWS5qgRF40uzkGsm7D4uhL85QJo3NSmcixww=='),
(185, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtEPqgxsAyYwhjRi0sExDuhZBIR40NrK7F3Qrb4NffSXg=='),
(186, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtEPqgxsAyYwhjRi0sExDuhZBIR40NrK7F3Qrb4NffSXg=='),
(187, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvMuN6gAbA68dZ7qgejOdBxsm7D4uhL85QJo3NSmcixww=='),
(188, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXv8sb4T7eu9Of1l5sLUxWzqcxX7ElpPgl+t0iC09jd97A=='),
(189, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXs7NrVEkvW1cl014P9tEh6vT2GOnh37qGMBkm1AmnIrlA=='),
(190, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvg6vNoV/1t/a3M8JLgj3F3HjSMWqg0SXI/3Fj+3/420A=='),
(191, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvW0lAEolkXFmbFzeaobnw5/a5QkYSjcEuy70QQSHCOJQ=='),
(192, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXt8fVr3ySKVfxpbVNgl445FMtt5CYRJzyHoNdftrjzz1w=='),
(193, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXt8fVr3ySKVfxpbVNgl445FMtt5CYRJzyHoNdftrjzz1w=='),
(194, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXstWM5Ozimb1pB9GVwzmBAHoNHH7y3nbNFhjGy3sEq8RQ=='),
(195, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtOEq5QGGvkOe7m8a6dVZxRlJ+hpteUOtXeTcDG3hPHOg=='),
(196, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXstWM5Ozimb1pB9GVwzmBAHoNHH7y3nbNFhjGy3sEq8RQ=='),
(197, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvkDFYqNQYCXwzq9NqlVTN0Dg2UL4S7l0XjKZG6zBmhqQ=='),
(198, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXstWM5Ozimb1pB9GVwzmBAHoNHH7y3nbNFhjGy3sEq8RQ=='),
(199, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvkDFYqNQYCXwzq9NqlVTN0Dg2UL4S7l0XjKZG6zBmhqQ=='),
(200, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvI5TxINfSevT9rIOvPTz84Dg2UL4S7l0XjKZG6zBmhqQ=='),
(201, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtjj6vXPFH+OCKqCVwBRXDqKamSfG4W+XD15k06yGkFGw=='),
(202, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtjj6vXPFH+OCKqCVwBRXDqKamSfG4W+XD15k06yGkFGw=='),
(203, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvebQzUXjaKHvATt881YCbGNHfKlGkKgd0bhyFDCJLeAg=='),
(204, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXu9cgTL8WwZqRBMKhBqHN8tC3BN2G41cjl154bgUpoK9w=='),
(205, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuQRzdlwPatIjtKGOYVuTcsC3BN2G41cjl154bgUpoK9w=='),
(206, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXs9ikX4tyNBurD4ZWHF0uwKC3BN2G41cjl154bgUpoK9w=='),
(207, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvS5ndvM8mnGR+0rJ2kPqc5Ji2T+R4WvCSHL8NPo4A+Hw=='),
(208, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvD3EeO9ZS0HwuenpQCpVu4Ji2T+R4WvCSHL8NPo4A+Hw=='),
(209, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvb9+Sq/x88Lc2ZyR66tbjEmic6U6tm3XvB7LBd+NdfeQ=='),
(210, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXsHQp3hxGlhUfNH3ltkgBK7vNd+NKwFBQ80RKmdA1QbKA=='),
(211, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuaqt17rCMzIZ4iuiYS44flCwqr7R9XMOAvY2k5M4lkTQ=='),
(212, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuQFjO7wHx0P00hKGyoBwYFlJ+hpteUOtXeTcDG3hPHOg=='),
(213, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXsHQp3hxGlhUfNH3ltkgBK7vNd+NKwFBQ80RKmdA1QbKA=='),
(214, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuaqt17rCMzIZ4iuiYS44flCwqr7R9XMOAvY2k5M4lkTQ=='),
(215, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuQFjO7wHx0P00hKGyoBwYFlJ+hpteUOtXeTcDG3hPHOg=='),
(216, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXv81pj7R6NGBGPN1h4NWeO6NHfKlGkKgd0bhyFDCJLeAg=='),
(217, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXsy89bgdrdIDiB5vcbPgFufNHfKlGkKgd0bhyFDCJLeAg=='),
(218, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtTwQcQJjF1EJ+7IrMGHE4xNHfKlGkKgd0bhyFDCJLeAg=='),
(219, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXs+2eYV6c3esskY1KeBnYGjCeRVoltYru1sjdIs/koaWA=='),
(220, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXva7QF35jhgAoCYju/QB54qbBYDPDDUCp897s4CLnHTcw=='),
(221, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXsdh8MBqQ/B9LeN1KIf0jjmeP/VrjD+kQA4aH3ecNjNww=='),
(222, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvykEsnjLTQf3sdn7xyS0GkWW3nU5l2BW4C74FRaLZetA=='),
(223, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXu3p25qb5JC5LNfG4mtRXL3sm7D4uhL85QJo3NSmcixww=='),
(224, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXu3XC5hsxzhG6PdMy2Qz2kCgtE7duCFzNBrRIrqeN7U+Q=='),
(225, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXsAaXWCrwqWlkHbS4hLC09tcxX7ElpPgl+t0iC09jd97A=='),
(226, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNsx3FSfWfJ16VkWJpt7LSUAH1oJrdB8X3YCfs51kW8ZRwLkgfcN9XbNLjA98JBQXY='),
(227, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNwU9PrCTYF0j4EvingfXCDg63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(228, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMTQ1y4wYIRySHZvFODsdoB/21bXk0rcHsB0FLHYE2FqhwLkgfcN9XbNLjA98JBQXY='),
(229, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbtzXuBfIsRs+zz/uJeAKj6yNWQRdq8mILedFXub8f2AOIB44fFgGRiOg5jJkNvyWZbVw2JBIfMBuc2LPZH8GIoP9BMm/ckt5HJjdCXzspsxLv16Is8inUGEypWxCajraF5SXuEi3VTczDw/5nwI+ogeOq67BNUnS1LoOsz0CeU5l0qivP21VoHa9OMCWEaksBBuuzBBA7UNC+1vZ2bd6efeH0MZkquytO3yJCplx2zNdc07O88SPSrorgRuwg4AwFCPHTTO9zEks2gP4CNZXA4kKjuxFZ0RNfhgn6S/eUuFQGN6sBrU/4FHltQ1we3JwLpQVHUg72f1879KOa7oKrH2FYrMEh7VLMXg423ukOrm4='),
(230, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2Pbmp2Pqk8inHIEsR7ApiagRbNgPpDFboCNJtg2tykh6+uIB44fFgGRiOg5jJkNvyWZbVw2JBIfMBuc2LPZH8GIoP9BMm/ckt5HJjdCXzspsxLv16Is8inUGEypWxCajraF5SXuEi3VTczDw/5nwI+ogeOq67BNUnS1LoOsz0CeU5l0qivP21VoHa9OMCWEaksBBuuzBBA7UNC+1vZ2bd6efeH0MZkquytO3yJCplx2zNdc07O88SPSrorgRuwg4AwFHfBPHFRPX6O/5xKwD/GuTNNW0StchD5YfCJRMr+pEJhE5KuVU7pFbW1J4+Yx2lQFnlIQ/+iAS6DLRNvk+/t1PfujRJKqFCmZQYXC+y16X+I='),
(231, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbMr3g+hqHsqlyjPzIW3LECXdLCdsblF1hZLFCwKAL4TwK6cUpzDmJ9Cpg7TVXl9bd+2dHlgRQ6To8DrVev1YUoNcWmReDVPUrNXqvKKxHhU8AaK3JERViP0fEExuFKuuQFiq74mqPedpLszgS46tqIn/JtmWs9sAexqXVXWhfNZfwzB0Y3icNJTKaP6Fw7OGwNWlO308hNq1MUECDmckZQ3/KVXoo+WoYV0Q13oGyYsHRSUAt49Fl7dZGL9rtscSiTSaosiGtRpO62aii/L05vw95dIVSLO1cwpHkBKOgVtcC7HTZxa+/8Sk1bEqJqKRm'),
(232, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbCrDHIJXwWXB/pmO+BqSPu39rH+xrVoqWg9DmWnJ9lO4qEQ5HWVNZt9mB/rZW7DymiAeOHxYBkYjoOYyZDb8lmW1cNiQSHzAbnNiz2R/BiKD/QTJv3JLeRyY3Ql87KbMS79eiLPIp1BhMqVsQmo62heUl7hIt1U3Mw8P+Z8CPqIHjquuwTVJ0tS6DrM9AnlOZdKorz9tVaB2vTjAlhGpLAQbrswQQO1DQvtb2dm3enn3h9DGZKrsrTt8iQqZcdszXXNOzvPEj0q6K4EbsIOAMBdjUdPAmBetAQGEzkTFtbJSbhzP77yMWS0BPumT8cgEWgHB+2qnkCl9k7bzTRNJfY7D7Z1zM6+Qa/Xl//AQRoY2Dnr0owGtgezLD98IBwmED'),
(233, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbTnzLgjTuXc5IO7PKQpcnNv13JvQkwv7LOdQ7fvK1S1AwF5eeve2iANXcYOe5TkFUAD5LjXHIpYp1x5w6cCACsW3l50aoX+NIJe56SG2q9lyGnKjX2L+sschGeZt/r73ZEdHkEps6XxnqXxZzyG52x2XNzFhpSPXPtWwM/Gdz1K9NFcNqQNlV6UUfzfgMHq3gH5hnF3MXgWvfl/9yX+S4gR92AEmUplNucvp+Q0qUGGLih3pkcSYtKOn3iLeIqV4SFZjwtFcfguT7d97ZQ97MsGViCN5NRMZkgfi1endg+AiYZCCA0QaaPno0iUPJccmM47EE8Qd13Jo1ieWNY9qe4kkxV6NpwG66byTp+fMrpCRaU/JjV7hXRfwV1njnuGe0'),
(234, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbmX7aM2JkU9Ocv4B+lhpjzA77j1OHTnygi0rGAg3TBReZK7nD6yIKoUst/CcdV0hxZ7i9nQN/s53rV2yhCSCPMGdq6UsqWrujKfFdJDB3crc1W0O6c5z5o0GGjqJCB/P944wCGc2IilE7UQX/qTTJs57ZxwyvpA29Pnp32YDhEzQVZPm22gDtVoMN4dj6ES2qd8h0ovsR7w/P/I80WNARwkW3MBfvj55Eb2pe7bB49vZ7GlXuL/39/QZPI+7U5u1beX0YGLgdVlSeEvLodqPPDiTjKaS+mrPxDJUX3/fvZDOVsyjwRWbqUFEdRbYyGF0OJXzA8SJSwbXdDPgTNXdg2ecxT6YdNq0wGNCjryBj2I8='),
(235, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbG9et4FZ4Hbes52TZZcmq5mFYjWly9mL6J0PlKDP7HWulTfCRQrdIzXCPJh8aN6MG1zGS2tPEzhd354sGxH67JdUOSSb4sDvickwENHoJpgHjTpxX+23EZn46c8jwjzDprDIxKY5ks5vocpyxBGb8Ems7kiTWwf5bnQHcjgXXFSh2kguAUROarP3Mjq4Wv0j+5pmdFVS3/dRGFbEBEXIqUGdSqcYE0sjey+6jCVoN9num1l2KIwJ63pOrQoC7mVOV5t/E8f+dnfP3FZR9jpn5OcG02YBjCQBJW+vTP1kOI/QiiruRrw3qODm9/Q1D5nrLJjif/nmjUZGVDMRb0Kw3yua0w2aNcbTc84JOOYLBUhbnMU+mHTatMBjQo68gY9iP'),
(236, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXsr69KMc5lVPuJ94AYGvFkPRcR/sAIofBCbtdTju+LwW9Hi6a8+ROrsEF7b06yjnSs='),
(237, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvGBVSi9gNcRsYKLx7is5K3cxX7ElpPgl+t0iC09jd97A=='),
(238, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtvzE6pWPQfINjTx77CSrALcxX7ElpPgl+t0iC09jd97A=='),
(239, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROvnST7eP1k2uUKZv2ZXn9mg63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(240, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRN6N7uJhgCVKeErdUZVTMzv4ouE8MXZ0Utad2tyW0vVyxwLkgfcN9XbNLjA98JBQXY='),
(241, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMFbXhu/3lzZ2jOeoXYRNYkCr2G9vwMDVuS5/8JCIOjNrA7ESpD7yykvcsElZklxRc='),
(242, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXvDXmtDGXnITNeGdlDnIRg4YQRxXT56WaWa7mfDfzvjWA=='),
(243, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXv+tSmHLs1LI6KaTZJFDuZwcxX7ElpPgl+t0iC09jd97A=='),
(244, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRO+xapreyWh3Y6gYcnFUsYfg63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(245, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNxmbxHfhPGVDUO0ZU8GuVNoFRLHAG/PIghECEkqpNVaRwLkgfcN9XbNLjA98JBQXY='),
(246, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPwZsQMliSd2+gcfYz8HGGAoFRLHAG/PIghECEkqpNVaRwLkgfcN9XbNLjA98JBQXY='),
(247, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPXFsvRAVeP8z8KlTHjS9TSoFRLHAG/PIghECEkqpNVaRwLkgfcN9XbNLjA98JBQXY='),
(248, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRO/n3dIQ7h5lri8uUVTX/Xcg63amzNgCzaAsflqsMBNMhwLkgfcN9XbNLjA98JBQXY='),
(249, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMVU3bL0NgIV2+gkkCMwEF/Cr2G9vwMDVuS5/8JCIOjNrA7ESpD7yykvcsElZklxRc='),
(250, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXt8Z3WzMxCw3CZs2ozNHHQtx7R8bGj9B1+dzGlNA4D2oQ=='),
(251, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXsXTJtk0/yVN9b4CAFfX/lsp6aw7L5hTnKQRgFrh0oWIA=='),
(252, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXu1Vi+1asfa0QJ0pzD5HKuYRHDYAIn0jOHMr3cdet6dRA=='),
(253, 'h9BMoTT8stdf5g32ZfsLBkZ1cLSUvCaqjpBzV/sbsFoirYfDAxvRh7MwGcwm1Xq/sXZjM2/GG7jcS2xj1IyQnucxT6YdNq0wGNCjryBj2I8='),
(254, 'h9BMoTT8stdf5g32ZfsLBkZ1cLSUvCaqjpBzV/sbsFpG+FoWAmNEBzM2fdpk7S32CSdafJ52pOicTZ4kmBH9mp2LR5N4IwmnELTAibaXVng='),
(255, 'h9BMoTT8stdf5g32ZfsLBkZ1cLSUvCaqjpBzV/sbsFp9WaE3nIm7gb8au26jzPzPUQCRddX4SZ0tOVN3EBXlboVdjMApOn3O1iUacncWoQ0='),
(256, 'h9BMoTT8stdf5g32ZfsLBkZ1cLSUvCaqjpBzV/sbsFoRbjWJMsEVJoeaikSDlGftKRHQwfzbcdV7Y7nJX3NqUZDK38oNjRCyCw4wQ9jnHyw='),
(257, 'FbablqRP7ZWlnjI4L4n7EIwdNutpSSznaIr4xtqix8fitWwR9QO82JefSzgrYaYwl02fbxvdi2phR1HjOyw1pucxT6YdNq0wGNCjryBj2I8='),
(258, 'FbablqRP7ZWlnjI4L4n7EIwdNutpSSznaIr4xtqix8fitWwR9QO82JefSzgrYaYwl02fbxvdi2phR1HjOyw1pucxT6YdNq0wGNCjryBj2I8='),
(259, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTlvlmu9c3/gkQOBl/8YwmSuo5yWvoqb6/Q2Xf3hRFOIsoyayBvV/mthUaBHqSKxvKd6G3GJXzEoy3ecciAdfmjzuJKZ18+Sr+M3V2/RjibJhr7aumBBxyM1AeqXc+KXjrlOBVd0v+gYbG1Z7gfPLLuDReU5g5UfdxjYhOo4cYh/6gKVhOOaxNp9oL1oGD8WM4dxBQnD6R27jC7YJ8AZ7JDF0xbmhRy4ZCSj6Vb7sfVEA6JnkNPAdghZ1sHFclVMO1XKBLJWMDvOgjtEootoqmgwhwLkgfcN9XbNLjA98JBQXY='),
(260, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbG9et4FZ4Hbes52TZZcmq5mFYjWly9mL6J0PlKDP7HWulTfCRQrdIzXCPJh8aN6MG1zGS2tPEzhd354sGxH67JdUOSSb4sDvickwENHoJpgHjTpxX+23EZn46c8jwjzDprDIxKY5ks5vocpyxBGb8Ems7kiTWwf5bnQHcjgXXFSgcfKqKfTEXr4ePypDDgzCLJOwIW8C7eRJ0FgF+uVlEXGh9ZzjMdXAp/Wq25Xiul9H9UcA9u3u1SEuxnnZciqCVsG52Yd+KiNFD9GIV/7+PE1DOS7BQkMmPRhWMbjhKwqg+khsHgVzcqXKrU5nh8pxFst//L8e0R5YOg7crpUukTLB2oyxHJHEwT6/Ywl3iqVE='),
(261, '/iosuVWVSV/YiOGAkCqn5paSMiLO0ZjJrLcfKMWEl8oirYfDAxvRh7MwGcwm1Xq/a4CIwFhJt2l35V5pHJpl4hwLkgfcN9XbNLjA98JBQXY='),
(262, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtHfqN2Hyn7GPgCbDOGI7W8YQRxXT56WaWa7mfDfzvjWA=='),
(263, '/iosuVWVSV/YiOGAkCqn5paSMiLO0ZjJrLcfKMWEl8rm7m/R1m/27ikwk+bhwPj0ETYmTKFkpNGRZ0SILUqlcQ=='),
(264, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPm7m/R1m/27ikwk+bhwPj0N/qwoY6l3WZ/Ohy1E2rOFecxT6YdNq0wGNCjryBj2I8='),
(265, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRPGMd9X14SErDXd9ANIyXxC9vFlOXggVANEcmkJ0D9rTYVdjMApOn3O1iUacncWoQ0='),
(266, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRO8+aUQcMJYCwHSDlz20bvLjqULdkBFm9/hVawF7d7VWYVdjMApOn3O1iUacncWoQ0='),
(267, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDROtLV4xjA1G/wAGejnuR9izPFua7cbBRMfFN5Gr6n2nxYVdjMApOn3O1iUacncWoQ0='),
(268, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRMTHfAUgp+LHFy/5j+BfKUd/mtjSWzOCeg3gqgaDoSy+IVdjMApOn3O1iUacncWoQ0='),
(269, 'U66hzyD2TKqr1U0ilYSskuz0mSm4rzs++aYFZ8rsDRNG+FoWAmNEBzM2fdpk7S32sucdkCC6hB9eXB2kfDxFeoVdjMApOn3O1iUacncWoQ0='),
(270, 'h9BMoTT8stdf5g32ZfsLBkZ1cLSUvCaqjpBzV/sbsFq8+aUQcMJYCwHSDlz20bvLRdU7I4Yg7JnkBUVkR2V85w=='),
(271, 'zdzqai0KLHy/hAZ+tDPOnX8sruQI9xwBD3MGopWMHqd9WaE3nIm7gb8au26jzPzP96gKmB4XD7OheWoev5ebfg=='),
(272, '/iosuVWVSV/YiOGAkCqn5paSMiLO0ZjJrLcfKMWEl8oTHfAUgp+LHFy/5j+BfKUddc4/QhCOvgJeF97gZ23w2OcxT6YdNq0wGNCjryBj2I8='),
(273, '/iosuVWVSV/YiOGAkCqn5paSMiLO0ZjJrLcfKMWEl8qtLV4xjA1G/wAGejnuR9izHy4drptBClSwPIzf2Gx0cQ=='),
(274, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXtjj6Bu9KXUKD7Bmn8bcvk6cmmQZn+iOMYb3v6nxAd+DY7rlgriXKjM25AvHXcSACw='),
(275, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2Pbvll01aqOiQy7BOsou7owMeWFdesy7QvPr8Uycz2l/2V/QkUvgC76VgF5nK524mqpshOQlDpYR2fdVVQVy8JXGGmUIVv4lRx/Ng9MzXocoCPhrvQTsl+0CefHA1lo15JgoPXxkrGaAeDwe5lIF+HeREmmiGrYGjoJfjt2JXHQ5atq2LOMNk9IEQMcQun5TkZ25pmdFVS3/dRGFbEBEXIqUGdSqcYE0sjey+6jCVoN9num1l2KIwJ63pOrQoC7mVOV5t/E8f+dnfP3FZR9jpn5OYYAX4OYskE8rCSBVLl4vAkqETvrVkHSsA56UYeswjrzsADPbDaTwaDZ4qDMzAuYZYmGpE8TmTJvLdihe85r4tTMnXKHoOSSZ93YqCQjm88e'),
(276, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTl7nPETruUXJc9jn66nLwkz4HPiK4oma62pVsoPHLui+avLJGgNteH4MyjUxBLRHlZzAa7+qiKuOBJFa+qho6swZwUsC8X3pm/FJf3uihhddil8+RINmy1C9ZCQnFeJQRDGnhHcH0D9scl1VfQo3K4AGKjbNd4jU+kk98L0eDZkHxt1Ix0vWYT2U0HCOEjTZA9wlprV+a0Y5QTzT/fNkHfHO2+LPME2ko6csbmvXy4yWr3iGjgTgX4VvoFw+yxrZx/pwgeecOqxEAvfQQ+7KRMzRwLkgfcN9XbNLjA98JBQXY='),
(277, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTldgnrMtAChL8emaGzIhoJWQPqfmYLsh0QSO9xMy9DldWZX/D8BZ5Wy8gVWMgvlz0ZoBMVlgLkjALg3BDfEyRClrbIshy29b70ysmvZ+MW02MKNNZ8cRl6f7WrmJ5QGiA0BuuzBBA7UNC+1vZ2bd6efeH0MZkquytO3yJCplx2zNfn2fW6ujdGyUlg4NkAnpGqYc9IVZdBFECTVn9JpLisJfv1o0dsHg3NU2EhSTkqYhZ2obnH+DtkQy9bLC77eo7tEbPeF331mQ3TcIUtnLO72QNJjA1N5GG6Ywrb4YB6GhE='),
(278, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTlROvnfCnHgvMJEwED7wkZZIHPiK4oma62pVsoPHLui+aBNCSkG5hvonppMa2hEw2bmXg9SI+Ps1xf9pLapFVdCyy+7sjGkecsLOsc+k7AjtvY+RkQU9iAEpOF3MVIIAexFASGSpqdR9kT34JVTYuvdrgwOPd84sRE22hIwnM8bLy9kS2bWnduyNrhoysR4SahZrjmUWOhnpptb8F8Bg3M4IZRZcBI/vABv+c0YPgOJbIPZsku6YPJEVQGuH8QhubQWlPyY1e4V0X8FdZ457hntA=='),
(279, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTlUbeP1nh4Iop36kIACZPVctg1n8L35W2768omxgeBLwyiLXHthBjyijvHlEhnlUr95Gnvw+/wfpZ8ASUnvQMnRtLcS7FjidP+EmWTI8g4+K0CKYSsOJ8qOos8Ebmpwusqn6qPFSiOSrFWn7wjIQyN+Gxs0jXkZbcnSe9k7oVSx6uqh7dNrYeK+KTI+IbPD9g9aPVV1A26pT9Uw11Y954DkAN4ltxvDv+lABSzcq7EYuMUMlCfahwdVfPccqIJTei5pUlyg40Mnu1mV0ULvOKSb4df57GzfxwlrtijiUfUn4o='),
(280, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTl4WbLTdcbeK6N5UVkPyCktDzSiA9MbUFHiC00EgjQ2LqxO9KHSjbdKxf1HCsYBIwRnyu5LXkVfd2SgitmkuyRfO9LSrzXWW9I07OC/HWYCDcJjFJkEb7M0yEil9gZlXVyn6qPFSiOSrFWn7wjIQyN+Gxs0jXkZbcnSe9k7oVSx6vUkw/QLZLna/zTv4x3kjuECFZGDqAxEWWszXBTfwcEtsUZXN6MMNpErqJTkBqfEsPPgZXw9iS8Ts/pRPLBuAdEEtw5Sm4iWg6dKTLHoEHxnw=='),
(281, 'zdzqai0KLHy/hAZ+tDPOnX8sruQI9xwBD3MGopWMHqdG+FoWAmNEBzM2fdpk7S320HNj2MnPw95mdwHPfRBwBZDK38oNjRCyCw4wQ9jnHyw='),
(282, 'zdzqai0KLHy/hAZ+tDPOnX8sruQI9xwBD3MGopWMHqfm7m/R1m/27ikwk+bhwPj0KY6wKKxloW6KbgCdAAtKgbsVLVQe7XiVr2qTXhXr2bs='),
(283, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbhQ6RHIRHph67gFDj/tvQPWFYjWly9mL6J0PlKDP7HWulTfCRQrdIzXCPJh8aN6MG1zGS2tPEzhd354sGxH67JdUOSSb4sDvickwENHoJpgHjTpxX+23EZn46c8jwjzDprDIxKY5ks5vocpyxBGb8Ems7kiTWwf5bnQHcjgXXFSgcfKqKfTEXr4ePypDDgzCLJOwIW8C7eRJ0FgF+uVlEXGh9ZzjMdXAp/Wq25Xiul9GfF4XunGuYVGyAt09cNlFwsRgODj7NGuc0LLz5a/2zCfq7aCp8lA24kDy9Baz07JuLWgE/aKvzpmcknKKtH3rz8GxgiXcbr+OYypkHIdrTxLaAnA/FRdDfwyhMMxhGJK8='),
(284, 'Kcg83YPWSamDeUa4UdA6GGB247Sa63L87PFvkaK/pXuDxWnNWHSHulToLm7oEf349ylCitmNJAAopiJ5rw3No7sVLVQe7XiVr2qTXhXr2bs='),
(285, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbDWJg/FQWvsISqT8Tbsn4Af13JvQkwv7LOdQ7fvK1S1AwF5eeve2iANXcYOe5TkFU/rtdzPHBBjLF5Mmm7GpuKPtBfz7xh96IwkWTMF5SGfSdUyPSSS3aRf0MAuZwW77Fvw8xYuDY/VdD7hNDG49bl+mLBUTKY7zzUwm9bbnwva9GaN+hUtK/eXjffgS4HVGb1VX79YBp9zkeWqh1/KME9Je2ve8tCfvIaMNcZr7UjZlMZxB34fbqJeEXrAnG+20FGRS/aAi7xNc6iPlPweDju1+U/qoEtvbkem56weXb4rM3VtsVJ+UPkMKpRfMZV4yhmNBkM85fhN1JPbDbsAiz7JDK38oNjRCyCw4wQ9jnHyw='),
(286, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbrlmKDoKyw2swbNbzh/Q+A3g7Z2GYAzDMwHDQslEp/P1n25NdQ2gS4vlOJuFYUHpBdMyhYXGeXn0TF/DJ/+MvGG0HrCu2xy5uRx4SX3YQPczWC21KmvFRucyPwDZmXEhbcKVG938+qEetrUqKMrgyTOqA0ziMe9qMDyn4Qu8iZfrbmV23TzmqoQkDWhJ1OM3Ef8m2Zaz2wB7GpdVdaF81l/DMHRjeJw0lMpo/oXDs4bDgLGT1T9/Rj9/5bNhZTEe0rCVaRzz/5wEyqPYtP1xZicfSqqg+hBGOZDdREGl2NE/DLs7xfkCz1H7BvJ7+uNmnDlZXFxLZlW+zi63dw4oeKlyGtqKBpVI/GEtvCXwdWH0cC5IH3DfV2zS4wPfCQUF2'),
(287, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbHWT+n+wQWVfk1UO0FTzY7ng7Z2GYAzDMwHDQslEp/P1n25NdQ2gS4vlOJuFYUHpBdMyhYXGeXn0TF/DJ/+MvGG0HrCu2xy5uRx4SX3YQPczWC21KmvFRucyPwDZmXEhbcKVG938+qEetrUqKMrgyTOqA0ziMe9qMDyn4Qu8iZfrbmV23TzmqoQkDWhJ1OM3Ef8m2Zaz2wB7GpdVdaF81l/DMHRjeJw0lMpo/oXDs4bC4o8h3vzuDJNtsX29BKRKvBK3JI76P2lkWQEIyvN0C7gwBQkA0R5KS033y8Y65kHvXg1SbEq91OmUwgzaD0+dF1eOt2y/ElgMtBAXVQAPjzaABXMijNPTJXv2jVKElsBw='),
(288, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTl9mCXFQxK4KT+9oLwThjaI3KJry/TRoYS2ARjGnm5d8fXDOsTN1oSYeoeIXmzGYNsn5mmgY9qnEeZSFchj5UcBWPIpaHiyeMRU6nb5SCs+KAqtjkMSd+B+dXhnl6UbEE/lgU9rrBRJIzA6tBJz7RIuR+YZxdzF4Fr35f/cl/kuIEfdgBJlKZTbnL6fkNKlBhiqCWlubHYT7OR+Dgqn2crQH5WUgxwoa5n5kj8tFZ0huvVdsMl18oLEqL0cP378u4PsZOT1+VlUlvMTOFyeSNCT9XjrdsvxJYDLQQF1UAD482gAVzIozT0yV79o1ShJbAc'),
(289, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTlH2SorYzfZxhx7D8D4nBsWIo+1e3rNRabAqS2aEBL3d/LAfS8XCCXPBko0DfTkquiYcCVtOYjKG1WAu5JQ2fiYVTnA5k2VrN04dn6YOoBqoMTHyWf5Y3FNB3Te2MI+QeD1VX79YBp9zkeWqh1/KME9HAiwBXtrC2mV77JUwP/JaaL8ZeaYIliNOAYFqntpij6k8h6c6/wMtrrh/gFcLpJX0uo/wy2Tqza5UWsDtdkqBZe2378tNGCy3qcHVRQ6xfya9stbsff8Th0YgPaRr/8ow=='),
(290, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTlhbXLjwzKpi9kzfCpFhEOGCAQ2d8s7yPiJpQlreZ2HIkcJ/s9HbNhIonPUQEz0IrSyDHCUsosCqyz5m78TjfYMZkewcJPQe7BdkTKgyhWvxUfmGcXcxeBa9+X/3Jf5LiBH3YASZSmU25y+n5DSpQYYmIYYz0uDFo9FcNWHZMFkDzNQIJ5oKdPYVe4qJLdSGZKXhjP8bj7AK5Yea8EZeDbXpfGcIw9mrBeDh1i4SMra5zCWxSNvz1D/uq4+Z3Beph6VUWkk+o/6Ijl2wdST42sGQ=='),
(291, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTl5rAza6LF2toaBB/DXG09K4eN5jm+BgHZDK5WHhjrUFBLBYMtxlFNZeyWwt4NVotbq02TBKcLqjhBkcfrAQZew31P7/ttz2HpILO1lveXOBUG+jpxRfnrpSB01jgcWE9EfUvfY4B2PfZfXTxbKNkQ5UmoJjL9NyK8xhig997PzlaA/PhGOzNULaxz7gdeZW8cALb+B1QLEDFT1LRsT34LCX2kkIaxWbk4WMZxw67b5PRhlX9II/vHQBdQLRLSIkoSJB/P/bo/O2CvMscEAjvSEw=='),
(292, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTlnzebgHRSoKTVspTmB1J/o/aTnDLQ5P9mSm5mW8pRTZnjl9H8rP/XEbNgELbaN7hWSl7gqmGS45pUKP5gHiiPJt481MCRWGbS4NXy1h3Z0CV3gR6yw0h6cBhlqSKziHaJBuuzBBA7UNC+1vZ2bd6efeH0MZkquytO3yJCplx2zNfn2fW6ujdGyUlg4NkAnpGq68BbdJaf9jKKrjNNBF1ohNV2wyXXygsSovRw/fvy7g+kmsUjJo1dsKITXE56cxt1xshNVS0EEReRRDJXm3MYqFhNsUgkIIFy5J6rZ3+vBGWFXYzAKTp9ztYlGnJ3FqEN'),
(293, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2PbHWT+n+wQWVfk1UO0FTzY7ng7Z2GYAzDMwHDQslEp/P1n25NdQ2gS4vlOJuFYUHpBdMyhYXGeXn0TF/DJ/+MvGG0HrCu2xy5uRx4SX3YQPczWC21KmvFRucyPwDZmXEhbcKVG938+qEetrUqKMrgyTOqA0ziMe9qMDyn4Qu8iZfrbmV23TzmqoQkDWhJ1OM3Ef8m2Zaz2wB7GpdVdaF81l/DMHRjeJw0lMpo/oXDs4bABtRos6PsEFWlfTbhCo+jsl8tydhwZy2UaCjT8ja2Jx3fruhHR7yvOEcGbsnXur3c+khsHgVzcqXKrU5nh8pxFT2KJFOKn9SjCuqQg7Cc+XlVFpJPqP+iI5dsHUk+NrBk='),
(294, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTlanuPHXjNpOQ2ceJV4gKrJVwrHwbw/KvQIJnVaAyPwvGSu1qAvlm5SCvOS/vk0PZBnbWPuy0mkX51k9rLhIJJzd481MCRWGbS4NXy1h3Z0CV3gR6yw0h6cBhlqSKziHaJBuuzBBA7UNC+1vZ2bd6efeH0MZkquytO3yJCplx2zNdc07O88SPSrorgRuwg4AwF4F6ACUkopLmL7eBkbVNJId5IKqtA6QIFkkpN6rOYF9kDZjxsnH83zIji9XB44KjqL5hq5yjUtwumC3BiPcI1awjOqGpD4DgnFTlswIqplqo='),
(295, 'FbablqRP7ZWlnjI4L4n7EOcuoPEn60AFPmmEAPw3sVWE7TdA3XQ7dQkJwC4ufaTlUhWaQbPligj6iNqFdFI8wAZpb92g5C5Am5vd1mHGab2BY5ci4Xj8LsQtLapj1oKZnbWPuy0mkX51k9rLhIJJzc8JdJVTIaZ3+ok6mMkymjCEHUw8lbF2MMYZEgOjEC+Ln6qPFSiOSrFWn7wjIQyN+Gxs0jXkZbcnSe9k7oVSx6tvibeHigqNRW0S/iLzodY68yHMCLo/5hlKWY1NZedFJg/oZ+s6VoK3bp6PyXJHxvaR8Hk6KIbRgXQt4Q3rsmPSZqQo4LlR6I2QPUIaex/K4w=='),
(296, 'OdXlMgBdYdM8pCGrZLStbtLEHdqQ1HvHBMjGbm5fIoTop0BERHMaeHr0oLYXC2Pb/hC2O1vnrgdFULGmVMTV/QypnVFh6N5P+ARM/PQgqvDjit6EIw4lpw1wdNwlCVIZrRgOqpM/vb8xunFyv41f/sEO0cea1aAEolILTqfkq/wycI1+sTsq45w13OR7TLuQQ6Ej9HykTScKi5D1C6k4xOK841E+hpZ34KXcOj9yHEb3+epNkiwL4nNRpfK70fsB2PkZEFPYgBKThdzFSCAHsRQEhkqanUfZE9+CVU2Lr3ZcUME4cuKOVVsKkWM/1IHywAFb5NEZRlGAELIOzBP35NTbTmYCVFfBiNuatTZCWvcnjQC/r3t8wUq2R94taF/TmvlP+pZVVg8Foj0ZyRWbRADsmHQy47y2ER0LRTwJlK+FXYzAKTp9ztYlGnJ3FqEN');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`authId`);

--
-- Indeks untuk tabel `auth_profile_privilege`
--
ALTER TABLE `auth_profile_privilege`
  ADD PRIMARY KEY (`authProfilePrivilegeId`);

--
-- Indeks untuk tabel `dining_table`
--
ALTER TABLE `dining_table`
  ADD PRIMARY KEY (`diningTableId`);

--
-- Indeks untuk tabel `history_app`
--
ALTER TABLE `history_app`
  ADD PRIMARY KEY (`historyAppId`);

--
-- Indeks untuk tabel `history_profile`
--
ALTER TABLE `history_profile`
  ADD PRIMARY KEY (`historyProfileId`);

--
-- Indeks untuk tabel `kitchen_type`
--
ALTER TABLE `kitchen_type`
  ADD PRIMARY KEY (`kitchenTypeId`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indeks untuk tabel `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`orderStatusId`);

--
-- Indeks untuk tabel `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`paymentTypeId`);

--
-- Indeks untuk tabel `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`privilegeId`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indeks untuk tabel `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`productCategoryId`);

--
-- Indeks untuk tabel `product_category_kitchen`
--
ALTER TABLE `product_category_kitchen`
  ADD PRIMARY KEY (`prodCatKitcId`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profileId`);

--
-- Indeks untuk tabel `recycle_bin`
--
ALTER TABLE `recycle_bin`
  ADD PRIMARY KEY (`recycleBinId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth`
--
ALTER TABLE `auth`
  MODIFY `authId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `auth_profile_privilege`
--
ALTER TABLE `auth_profile_privilege`
  MODIFY `authProfilePrivilegeId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `dining_table`
--
ALTER TABLE `dining_table`
  MODIFY `diningTableId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `history_app`
--
ALTER TABLE `history_app`
  MODIFY `historyAppId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT untuk tabel `history_profile`
--
ALTER TABLE `history_profile`
  MODIFY `historyProfileId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT untuk tabel `kitchen_type`
--
ALTER TABLE `kitchen_type`
  MODIFY `kitchenTypeId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `order_status`
--
ALTER TABLE `order_status`
  MODIFY `orderStatusId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `paymentTypeId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `privilege`
--
ALTER TABLE `privilege`
  MODIFY `privilegeId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `product_category`
--
ALTER TABLE `product_category`
  MODIFY `productCategoryId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `product_category_kitchen`
--
ALTER TABLE `product_category_kitchen`
  MODIFY `prodCatKitcId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `profileId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `recycle_bin`
--
ALTER TABLE `recycle_bin`
  MODIFY `recycleBinId` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
