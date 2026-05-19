-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 06:07 AM
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
-- Database: `medical_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `pdate` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `pdate`, `cid`) VALUES
(52, '2024-12-24', 13),
(53, '2024-12-24', 2),
(54, '2024-12-24', 1),
(55, '2024-12-26', 2),
(56, '2024-12-27', 1),
(57, '2024-12-28', 1),
(58, '2024-12-30', 2),
(59, '2024-12-30', 1),
(60, '2024-12-30', 1),
(61, '2024-12-30', 2),
(63, '2024-12-30', 1),
(64, '2025-01-06', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bill_det`
--

CREATE TABLE `bill_det` (
  `id` int(11) NOT NULL,
  `disc` int(11) DEFAULT NULL,
  `ttl` int(11) DEFAULT NULL,
  `net_ttl` int(11) DEFAULT NULL,
  `pmtd` varchar(250) DEFAULT NULL,
  `psts` varchar(255) DEFAULT NULL,
  `pmny` int(11) DEFAULT NULL,
  `rmny` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `gst` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill_det`
--

INSERT INTO `bill_det` (`id`, `disc`, `ttl`, `net_ttl`, `pmtd`, `psts`, `pmny`, `rmny`, `bill_id`, `gst`) VALUES
(60, 10, 48, 43, 'Online', '', 0, 0, 52, 0),
(61, 3, 2400, 2760, '', '', 0, 0, 53, 18),
(62, 5, 288, 302, 'Online', '', 0, 0, 54, 10),
(63, 10, 30, 27, 'Online', '', 27, 0, 55, 0),
(64, 10, 9, 8, 'Online', 'Paid', 0, 0, 56, 0),
(65, 0, 425, 425, 'Online', 'Paid', 0, 0, 57, 0),
(66, 0, 15, 15, 'Online', 'Paid', 0, 0, 58, 0),
(67, 10, 85, 77, 'Online', '', 0, 0, 59, 0),
(68, 10, 85, 77, 'Online', 'Paid', 100, 24, 60, 0),
(69, 0, 12, 12, 'Online', '', 0, 0, 61, 0),
(70, 10, 250, 225, 'Cash', 'Paid', 225, 0, 62, 0),
(71, 0, 30, 30, 'Online', '', 0, 0, 63, 0),
(72, 0, 30, 30, 'Cash', '', 0, 0, 64, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cd_transaction`
--

CREATE TABLE `cd_transaction` (
  `cd_id` int(11) NOT NULL,
  `credit_id` int(11) DEFAULT NULL,
  `note` varchar(225) DEFAULT NULL,
  `credit_amount` int(11) DEFAULT NULL,
  `debit_amount` int(11) DEFAULT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cd_transaction`
--

INSERT INTO `cd_transaction` (`cd_id`, `credit_id`, `note`, `credit_amount`, `debit_amount`, `date`) VALUES
(1, 2, 'remaining cost', 500, 0, '2025-01-03'),
(2, 1, 'remaining cost', 5000, 0, '2025-01-03'),
(3, 1, 'return', 0, 5000, '2025-01-03'),
(4, 2, 'return', 0, 500, '2025-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

CREATE TABLE `credit` (
  `credit_id` int(11) NOT NULL,
  `c_name` varchar(100) DEFAULT NULL,
  `c_mobile` varchar(225) DEFAULT NULL,
  `c_add` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`credit_id`, `c_name`, `c_mobile`, `c_add`) VALUES
(1, 'Rohit', '987654321', 'Jamkhed'),
(2, 'pratik', '2147483647', 'nagar\r\n'),
(3, 'Om', '54654', 'hjgj'),
(4, 'Rohit', '9999999', 'kjh');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `ccontact` varchar(15) DEFAULT NULL,
  `cemail` varchar(255) DEFAULT NULL,
  `cadd` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `cname`, `ccontact`, `cemail`, `cadd`) VALUES
(1, NULL, '', '', ''),
(2, 'Akash', '741852960', 'a@gmail.com', 'Nagar '),
(3, 'Varad Jagtap ', '9876543210', 'v@gmail.com', 'Pipeline Road , Akashwani , Ahmednagar'),
(4, 'Om Surwase', '96385740', 'o@gmail.com', 'dshfksj'),
(5, 'ASDF', '8541852', 'r@gmail.com', ''),
(6, 'Om Surwase', '', 'v@gmail.com', 'sdfs'),
(7, 'Akash Sonuleundefineds', '09689864518', '', 'Bhenda\r\nKale vasti'),
(8, 'Akash Sonule\'s', '09689864518', '', 'Bhenda\r\nKale vasti'),
(9, 'sadfjkl????', '', '', ''),
(10, 'sadfjkl????', '', '', ''),
(11, 'sadfjkl ????', '', '', ''),
(12, 'sdfvsdcv ????', '', '', ''),
(13, 'Ganesh', '8975396487', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mdetails`
--

CREATE TABLE `mdetails` (
  `m_id` int(11) NOT NULL,
  `m_email` text DEFAULT NULL,
  `m_mobile` varchar(15) DEFAULT NULL,
  `m_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mdetails`
--

INSERT INTO `mdetails` (`m_id`, `m_email`, `m_mobile`, `m_address`) VALUES
(1, 'medical@gmail.com', '9876543210', 'Balikashram road , Sukade mala ,Ahilyanagar , Maharashtra\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `notify` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `isRead` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `name`, `mobile`, `person`, `address`, `payment_type`, `amount`, `notify`, `note`, `isRead`) VALUES
(1, 'Pratik chindhe', '07058451982', 'Customer', 'Newasa-fata road\r\nNewasa khurd', 'true', '200', '2025-12-19', 'nothing', 'false'),
(4, 'Akash Sonule', '09689864518', 'Customer', 'nagar', 'true', '200', '2024-12-20', 'ghjk', 'false'),
(5, 'Akash Sonule2', '09689864518', 'Customer', 'nagar\r\n', 'false', '200', '2024-12-20', 'kl;', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(11) NOT NULL,
  `product` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `mrp` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `up` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `product`, `bid`, `mrp`, `qty`, `total`, `bill_id`, `up`) VALUES
(7, 10, 123, 45, 2, 90, 3, NULL),
(8, 11, 0, 123, 1, 123, 3, NULL),
(9, 9, 45678, 56, 1, 56, 4, NULL),
(10, 11, 0, 123, 2, 246, 4, NULL),
(11, 10, 123, 45, 1, 45, 5, NULL),
(12, 7, 45678, 234, 2, 468, 5, NULL),
(13, 10, 123, 45, 1, 45, 6, NULL),
(14, 7, 45678, 234, 2, 468, 6, NULL),
(15, 9, 45678, 56, 1, 56, 7, NULL),
(16, 10, 123, 45, 2, 90, 7, NULL),
(17, 7, 45678, 234, 2, 52, 8, NULL),
(18, 10, 123, 45, 2, 90, 8, NULL),
(19, 15, 45678, 50, 6, 30, 9, NULL),
(20, 10, 123, 45, 2, 90, 9, NULL),
(21, 15, 45678, 50, 6, 30, 10, NULL),
(22, 10, 123, 45, 1, 45, 10, NULL),
(23, 15, 45678, 50, 6, 30, 11, '5 per/Tab'),
(24, 10, 123, 45, 2, 90, 11, '45 per/Pack'),
(25, 15, 45678, 50, 6, 30, 12, '5 per/Tab'),
(26, 15, 45678, 50, 6, 30, 13, '5 per/Tab'),
(27, 15, 45678, 50, 6, 30, 14, '5 per/Tab'),
(28, 15, 45678, 50, 6, 30, 15, '5 per/Tab'),
(29, 15, 45678, 50, 6, 30, 16, '5 per/Tab'),
(30, 15, 45678, 50, 6, 30, 17, '5 per/Tab'),
(31, 15, 45678, 50, 6, 30, 18, '5 per/Tab'),
(32, 15, 45678, 50, 4, 20, 19, '5 per/Tab'),
(33, 15, 45678, 50, 5, 25, 20, '5 per/Tab'),
(34, 15, 45678, 50, 4, 20, 21, '5 per/Tab'),
(35, 15, 45678, 50, 6, 30, 22, '5 per/Tab'),
(36, 15, 45678, 50, 4, 20, 23, '5 per/Tab'),
(37, 15, 45678, 50, 6, 30, 24, '5 per/Tab'),
(38, 15, 45678, 50, 4, 20, 25, '5 per/Tab'),
(39, 15, 45678, 50, 4, 20, 26, '5 per/Tab'),
(40, 15, 45678, 50, 4, 20, 27, '5 per/Tab'),
(41, 15, 45678, 50, 4, 20, 28, '5 per/Tab'),
(42, 15, 45678, 50, 4, 20, 29, '5 per/Tab'),
(43, 10, 123, 45, 1, 45, 30, '45 per/Pack'),
(44, 15, 45678, 50, 6, 30, 31, '5 per/Tab'),
(45, 10, 123, 45, 2, 90, 31, '45 per/Pack'),
(46, 15, 45678, 50, 4, 20, 32, '5 per/Tab'),
(47, 10, 123, 45, 2, 90, 32, '45 per/Pack'),
(48, 15, 45678, 50, 6, 30, 33, '5 per/Tab'),
(49, 10, 123, 45, 2, 90, 33, '45 per/Pack'),
(50, 15, 45678, 50, 8, 40, 34, '5 per/Tab'),
(51, 10, 123, 45, 1, 45, 34, '45 per/Pack'),
(52, 7, 45678, 234, 122, 3172, 5, '26 per/Tab'),
(53, 7, 45678, 234, 0, 234, 6, '0 per/Tab'),
(54, 10, 123, 45, 1, 45, 6, '45 per/Pack'),
(55, 7, 45678, 234, 1, 26, 38, '26 per/Tab'),
(56, 10, 123, 45, 12, 540, 39, '45 per/Pack'),
(57, 7, 45678, 234, 1, 26, 40, '26 per/Tab'),
(58, 10, 123, 45, 2, 90, 41, '45 per/Pack'),
(59, 10, 123, 45, 1, 45, 42, '45 per/Pack'),
(60, 10, 123, 45, 1, 45, 43, '45 per/Pack'),
(61, 7, 45678, 234, 11, 286, 44, '26 per/Tab'),
(62, 7, 45678, 234, 0, 234, 44, '0 per/Tab'),
(63, 10, 123, 45, 1, 45, 44, '45 per/Pack'),
(64, 10, 123, 45, 1, 45, 45, '45 per/Pack'),
(65, 10, 123, 45, 10, 450, 46, '45 per/Pack'),
(66, 7, 45678, 234, 5, 130, 47, '26 per/Tab'),
(67, 3, 0, 12, 100, 240, 48, '2.4 per/Tab'),
(68, 1, 45678, 46, 2, 18, 49, '9.2 per/Tab'),
(69, 1, 45678, 46, 10, 92, 50, '9.2 per/Tab'),
(70, 1, 45678, 46, 0, 46, 51, '0 per/Tab'),
(71, 6, 0, 120, 2, 48, 52, '24 per/Tab'),
(72, 6, 0, 120, 100, 2400, 53, '24 per/Tab'),
(73, 6, 0, 120, 12, 288, 54, '24 per/Tab'),
(74, 16, 23, 12, 10, 30, 55, '3 per/Tab'),
(75, 17, 0, 12, 5, 9, 56, '1.7142857142857142 per/Tab'),
(76, 11, 0, 85, 5, 425, 57, '85 per/Pack'),
(77, 16, 23, 12, 5, 15, 58, '3 per/Tab'),
(78, 11, 0, 85, 1, 85, 59, '85 per/Pack'),
(79, 11, 0, 85, 1, 85, 60, '85 per/Pack'),
(80, 8, 0, 12, 6, 12, 61, '2 per/Tab'),
(81, 20, 0, 50, 5, 250, 62, '50 per/Tab'),
(82, 23, 0, 20, 15, 30, 63, '2 per/Tab'),
(83, 16, 23, 12, 10, 30, 64, '3 per/Tab');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `packing` varchar(255) DEFAULT NULL,
  `batchId` int(11) DEFAULT NULL,
  `exp` varchar(255) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `mrp` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `amt` int(11) DEFAULT NULL,
  `adddate` varchar(255) DEFAULT NULL,
  `isExpired` tinyint(1) DEFAULT NULL,
  `party` int(11) DEFAULT NULL,
  `p_billid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `packing`, `batchId`, `exp`, `qty`, `mrp`, `rate`, `amt`, `adddate`, `isExpired`, `party`, `p_billid`) VALUES
(21, 'qwerth', '5 Tab', 45678, '2036-09', 45, 46, 45, 2025, '2024-12-20', 0, 5, 2),
(22, 'qwerth', '4 Tab', 45678, '2025-09', 45, 45, 45, 2025, '2024-12-20', 0, 5, 3),
(23, 'combiflame 1', '5 Tab', 0, '2025-02', 10, 12, 10, 100, '2024-12-23', 0, 12, 10),
(24, 'paracetamol', '10 Tab', 0, '2025-05', 100, 12, 10, 1000, '2024-12-22', 0, 9, 11),
(25, 'combiflame 1', '10 Tab', 0, '2026-06', 100, 12, 10, 1000, '2024-12-20', 0, 9, 12),
(26, 'levocit m', '5 Tab', 0, '2025-06', 100, 120, 35, 3500, '2024-12-24', 0, 5, 14),
(27, 'rabez dsr', '5 Tab', 0, '2025-06', 100, 130, 40, 4000, '2024-12-23', 0, 11, 15),
(28, 'combiflame 1', '6 Tab', 0, '2025-03', 100, 12, 10, 1000, '2024-12-22', 0, 10, 16),
(29, 'Azee 500', '10 Tab', 0, '2025-09', 100, 12, 10, 1000, '2024-12-12', 0, 10, 17),
(30, 'dolo 650', '10 Tab', 0, '2025-05', 999, 80, 75, 74925, '2024-12-23', 0, 11, 18),
(31, 'Adulsa ', '250 ml', 0, '2026-06', 75, 85, 53, 3975, '2024-12-24', 0, 12, 19),
(32, 'hjkl', '6 Tab', 0, '2025-06', 100, 12, 10, 1000, '2025-12-26', 0, 11, 20),
(33, 'combiflame 1', '3 Tab', 0, '2025-06', 100, 12, 10, 1000, '2024-12-12', 0, 12, 21),
(34, 'combiflame 1', '3 Tab', 0, '2025-03', 100, 12, 12, 1200, '2024-12-24', 0, 11, 22),
(35, 'combiflame 1', '4 Tab', 0, '2025-03', 100, 12, 12, 1200, '2024-12-24', 0, 12, 23),
(36, 'combiflame 1', '4 Tab', 23, '2025-06', 100, 12, 12, 1200, '2024-12-24', 0, 11, 24),
(37, 'nicip plus', '7 Tab', 0, '2025-09', 100, 12, 10, 1000, '2024-12-24', 0, 12, 25),
(38, 'nice 100', '10 Tab', 0, '2025-09', 100, 12, 12, 1200, '2024-12-23', 0, 12, 26),
(39, 'benadril ', '250 ml', 0, '2025-02', 100, 12, 10, 1000, '2024-12-26', 0, 10, 27),
(41, 'sumocold ', '10 Tab', 0, '2024-12', 100, 20, 10, 1000, '2024-12-30', 0, 11, 29),
(42, 'sumocold ', '10 Tab', 2656, '2024-12', 100, 20, 10, 1000, '2024-12-30', 0, 11, 30),
(43, 'lomo D', '10 Tab', 0, '2025-12', 100, 20, 10, 1000, '2024-12-30', 0, 11, 31),
(44, 'sumocold ', '15 Tab', 0, '2025-01', 200, 250, 50, 10000, '2025-01-03', 0, 11, 32),
(45, 'sumocold 2222', '3 Tab', 0, '2025-07', 22, 22, 22, 484, '2025-01-03', 0, 11, 33),
(46, 'asdf;lkj', '2 Tab', 0, '2025-12', 100, 12, 10, 1000, '2025-01-06', 0, 11, 34);

-- --------------------------------------------------------

--
-- Table structure for table `product_bill`
--

CREATE TABLE `product_bill` (
  `id` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `idate` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `discount` int(20) NOT NULL,
  `gst` int(11) DEFAULT NULL,
  `net_ttl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_bill`
--

INSERT INTO `product_bill` (`id`, `vendor`, `idate`, `total`, `discount`, `gst`, `net_ttl`) VALUES
(1, 5, '2024-12-20', '2025', 0, 0, '2025'),
(2, 5, '2024-12-20', '2025', 0, 0, '2025'),
(4, 5, '2024-12-21', '4000', 0, 0, '4000'),
(5, 5, '2024-12-21', '5000', 0, 0, '5000'),
(6, 5, '2024-12-21', '4000', 0, 0, '4000'),
(7, 5, '2024-12-21', '22000', 0, 0, '22000'),
(8, 5, '2024-12-21', '9250', 0, 0, '9250'),
(9, 5, '2024-12-22', '800', 0, 18, '944'),
(10, 12, '2024-12-23', '100', 0, 18, '118'),
(11, 9, '2024-12-24', '1000', 0, 18, '1144.60'),
(12, 9, '2024-12-24', '1000', 0, 10, '1045.00'),
(13, 10, '2024-12-24', '1000', 0, 12, '1064.00'),
(14, 5, '2024-12-24', '3500', 0, 12, '3724.00'),
(15, 11, '2024-12-24', '4000', 0, 18, '4248.00'),
(16, 10, '2024-12-22', '1000', 0, 0, '1000.00'),
(17, 10, 'undefined', '1000', 0, 18, '1062.00'),
(18, 11, 'undefined', '74925', 0, 18, '79570.35'),
(19, 12, 'undefined', '3975', 0, 18, '4221.45'),
(20, 11, 'undefined', '1000', 0, 18, '1062.00'),
(21, 12, '2024-12-24', '1000', 0, 12, '1008.00'),
(22, 11, 'undefined', '1200', 0, 12, '1209.60'),
(23, 12, 'undefined', '1200', 0, 12, '1209.60'),
(24, 11, 'undefined', '1200', 0, 10, '1188.00'),
(25, 12, '2024-12-24', '1000', 0, 10, '990.00'),
(26, 12, '2024-12-23', '1200', 0, 10, '1188.00'),
(27, 10, '2024-12-26', '1000', 10, 18, '1062.00'),
(28, 9, '2024-12-18', '4000', 10, 18, '4248.00'),
(29, 11, '2024-12-30', '1000', 0, 0, ''),
(30, 11, '2024-12-30', '1000', 0, 0, '1000.00'),
(31, 11, '2024-12-30', '1000', 0, 0, '1000.00'),
(32, 11, '2025-01-03', '10000', 10, 18, '10620.00'),
(33, 11, '2025-01-03', '484', 22, 22, '460.57'),
(34, 11, '2025-01-06', '1000', 10, 10, '990.00');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `packing` varchar(255) DEFAULT NULL,
  `batchid` varchar(255) DEFAULT NULL,
  `exp` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `mrp` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `amt` int(11) DEFAULT NULL,
  `adddate` varchar(255) DEFAULT NULL,
  `isExpired` tinyint(1) DEFAULT NULL,
  `party` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `pname`, `packing`, `batchid`, `exp`, `qty`, `mrp`, `rate`, `amt`, `adddate`, `isExpired`, `party`) VALUES
(1, 'qwerth', '5 Tab', '45678', '2022-09', 42, 46, 45, 2025, '2024-12-20', 1, 5),
(2, 'qwerth123', '4 Tab', '45678', '2025-09', 0, 45, 45, 2025, '2024-12-20', 0, 5),
(3, 'combiflame 1', '5 Tab', 'fghj', '2024-02', -10, 12, 10, 100, '2024-12-23', 1, 12),
(4, 'paracetamol', '10 Tab', 'dfghjk', '2025-05', 100, 12, 10, 1000, '2024-12-24', 0, 9),
(5, 'combiflame 1', '10 Tab', 'fty', '2026-06', 100, 12, 10, 1000, '2024-12-24', 0, 9),
(6, 'levocit m', '5 Tab', 'fghj', '2025-06', 78, 120, 35, 3500, '2024-12-24', 0, 5),
(7, 'rabez dsr', '5 Tab', 'hj', '2025-06', 100, 130, 40, 4000, '2024-12-24', 0, 11),
(8, 'combiflame 1', '6 Tab', 'bvc', '2025-03', 99, 12, 10, 1000, '2024-12-24', 0, 10),
(9, 'Azee 500', '10 Tab', 'hjkl', '2025-09', 100, 12, 10, 1000, '2024-12-24', 0, 10),
(10, 'dolo 650', '10 Tab', 'sadkjf', '2025-05', 999, 80, 75, 74925, '2024-12-24', 0, 11),
(11, 'Adulsa ', '250 ml', 'sdf', '2026-06', 68, 85, 53, 3975, '2024-12-24', 0, 12),
(12, 'hjkl', '6 Tab', 'hjk', '2025-06', 100, 12, 10, 1000, '2024-12-24', 0, 11),
(13, 'combiflame 1', '3 Tab', 'fghj', '2025-06', 100, 12, 10, 1000, '2024-12-24', 0, 12),
(14, 'combiflame 1', '3 Tab', ',kj', '2025-03', 100, 12, 12, 1200, '2024-12-24', 0, 11),
(15, 'combiflame 1', '4 Tab', 'vvv', '2025-03', 100, 12, 12, 1200, '2024-12-24', 0, 12),
(16, 'combiflame 1', '4 Tab', '23kjhjkf', '2025-06', 95, 12, 12, 1200, '2024-12-24', 0, 11),
(17, 'nicip plus', '7 Tab', 'hdfsf', '2025-09', 99, 12, 10, 1000, '2024-12-24', 0, 12),
(18, 'nice 100', '10 Tab', 'fg', '2025-09', 100, 12, 12, 1200, '2024-12-24', 0, 12),
(19, 'benadril ', '250 ml', 'rtyui', '2025-02', 100, 12, 10, 1000, '2024-12-26', 0, 10),
(20, 'combifame', '1 Tab', 'fghjk', '2024-12', 95, 50, 40, 4000, '2024-12-30', 1, 9),
(21, 'sumocold ', '10 Tab', 'sdfghjk5453', '2024-12', 100, 20, 10, 1000, '2024-12-30', 1, 11),
(22, 'sumocold ', '10 Tab', 'ghjk', '2024-12', 100, 20, 10, 1000, '2024-12-30', 1, 11),
(23, 'lomo D', '10 Tab', 'sdkjf', '2025-12', 99, 20, 10, 1000, '2024-12-30', 0, 11),
(24, 'sumocold ', '15 Tab', 'fghjk', '2025-01', 200, 250, 50, 10000, '2025-01-03', 1, 11),
(25, 'sumocold 2222', '3 Tab', 'fdd', '2025-07', 22, 22, 22, 484, '2025-01-03', 0, 11),
(26, 'asdf;lkj', '2 Tab', 'sad', '2025-12', 100, 12, 10, 1000, '2025-01-06', 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `username`, `password`, `image`) VALUES
(1, 'Akash', '123456', '1733824859304admin 3.png');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `ttl_purchases` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `contract_start` varchar(255) DEFAULT NULL,
  `contract_end` varchar(255) DEFAULT NULL,
  `contract_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `email`, `contact`, `ttl_purchases`, `website`, `contract_start`, `contract_end`, `contract_status`) VALUES
(4, 'Pratik chindhe', 'pratikchindhe44@gmail.com', '7058451982', 2, '', '2024-12-11', 'null', 'active'),
(5, 'A2Z IT Hub ', 'a2z@gmail.com', '9876543210', 1, 'Balikashram Road , Nagar', '2024-12-11', 'null', 'active'),
(6, 'Varad', 'v@gmail.com', '74185960', 1, 'Pipeline Road', '2024-12-11', 'null', 'active'),
(7, 'Sushant ', 's@gmail.com', '9876543210', 0, 'Nalegaon', '2024-12-11', 'null', 'active'),
(8, 'Ganesh', 'g@gmail.com', '2583691470', 0, 'Zakas vadapav', '2024-12-11', 'null', 'active'),
(9, 'Kiran Tupe', 'k@gmail.com', '54329870', 3, 'Hostel', '2024-12-11', 'null', 'active'),
(10, 'Om surwase', 'o@gmail.com', '8529637410', 4, 'nagar college', '2024-12-11', 'null', 'active'),
(11, 'Rohit Mhaske', 'r@gmail.com', '98774563210', 11, 'nagar college', '2024-12-11', 'null', 'active'),
(12, 'Akash', 'a@gmail.com', '9876543210', 6, 'nagar', '2024-12-12', 'null', 'active'),
(13, 'asf asdflkj', 'a@gmail.com', '9638527410', 0, 'sdfasdf', '2025-01-06', 'null', 'active'),
(14, 'Last try', 'l@gmail.com', '9516238740', 0, 'dfg', '2025-01-06', 'null', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_det`
--
ALTER TABLE `bill_det`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cd_transaction`
--
ALTER TABLE `cd_transaction`
  ADD PRIMARY KEY (`cd_id`);

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`credit_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `mdetails`
--
ALTER TABLE `mdetails`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_bill`
--
ALTER TABLE `product_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `bill_det`
--
ALTER TABLE `bill_det`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `cd_transaction`
--
ALTER TABLE `cd_transaction`
  MODIFY `cd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `credit`
--
ALTER TABLE `credit`
  MODIFY `credit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mdetails`
--
ALTER TABLE `mdetails`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_bill`
--
ALTER TABLE `product_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
