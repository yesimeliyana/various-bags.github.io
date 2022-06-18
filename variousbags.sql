-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2022 at 03:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `variousbags`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brd_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brd_id`, `brand`) VALUES
(1, 'Aesthetic Pleasure'),
(2, 'Byo'),
(3, 'Get Daily Gear'),
(4, 'S.rw'),
(5, 'Josvli'),
(6, 'Purotti'),
(7, 'Nase'),
(8, 'Clutches'),
(9, 'Lusso'),
(10, 'Nara');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `clr_id` int(11) NOT NULL,
  `color` varchar(30) NOT NULL,
  `color_cd` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`clr_id`, `color`, `color_cd`) VALUES
(0, 'No Color', ''),
(1, 'White', '#FFFFFF'),
(2, 'Black', '#000000'),
(3, 'Red', '#FF0000'),
(4, 'Yellow', '#FFFF00'),
(5, 'Navy Blue', '#000080'),
(6, 'Charcoal Gray', '#4D4E4F'),
(7, 'Brown', '#A52A2A');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `counter_id` int(11) NOT NULL,
  `counter_ip` varchar(50) NOT NULL,
  `counter_date` date NOT NULL,
  `counter_time` time NOT NULL,
  `counter_visit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`counter_id`, `counter_ip`, `counter_date`, `counter_time`, `counter_visit`) VALUES
(1, '::1', '2022-06-01', '15:38:44', 2),
(2, '::1', '2022-06-10', '17:33:36', 3);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` varchar(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `scat_id` int(11) NOT NULL,
  `brd_id` int(11) NOT NULL,
  `size` varchar(30) NOT NULL,
  `clr_id` varchar(11) NOT NULL,
  `bgimg` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `material_care` mediumtext NOT NULL,
  `price` varchar(11) NOT NULL,
  `discount` varchar(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `available` varchar(10) NOT NULL,
  `creation_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `cat_id`, `scat_id`, `brd_id`, `size`, `clr_id`, `bgimg`, `image`, `detail`, `material_care`, `price`, `discount`, `stock`, `available`, `creation_date`) VALUES
('0001', 'AUREL BAG PRINCE', 4, 13, 13, '', '0', 'tas2.jpg', 'tas2.jpg', 'AUREL BAG PRINCE', '', '60000', '0', 10, 'Ada', '2022-06-10'),
('0002', 'ISAURA BAG', 4, 13, 14, '', '', 'tas3.jpg', 'tas3.jpg', 'ISAURA BAG ', '', '45000', '0', 5, 'Ada', '2022-06-10'),
('0003', 'DINA BAG', 1, 1, 3, '', '0', 'tas4.jpg', 'tas4.jpg', 'DINA BAG', '', '58000', '0', 20, 'Ada', '2022-06-10'),
('0004', 'GENI BAG', 1, 1, 3, '', '0', 'tas5.jpg', 'tas5.jpg', 'GENI BAG', '', '60000', '0', 10, 'Ada', '2022-06-10'),
('0005', 'TAS FASHION IMPORT', 1, 1, 3, '', '0', 'tas6.jpg', 'tas6.jpg', 'TAS FASHION IMPORT\r\nkode  TB757 ', 'Bahan PU', '100000', '0', 10, 'Ada', '2022-06-10'),
('0006', 'MALIKA BAG', 4, 13, 13, '', '0', 'tas7.jpg', 'tas7.jpg', 'MALIKA BAG', '', '48000', '0', 20, 'Ada', '2022-06-10'),
('0007', 'MOYA BAG', 4, 13, 13, '', '0', 'tas10.jpg', 'tas10.jpg', 'MOYA BAG', '', '63000', '0', 20, 'Ada', '2022-06-10'),
('0008', 'NAINA BAG', 1, 2, 1, '', '0', 'tas11.jpg', 'tas11.jpg', 'NAINA BAG', '', '65000', '0', 30, 'Ada', '2022-06-10'),
('0009', 'NEA BAG', 1, 2, 7, '', '0', 'tas12.jpg', 'tas12.jpg', 'NEA BAG', '', '25000', '0', 50, 'Ada', '2022-06-10'),
('0010', 'SLING BAG', 1, 2, 7, '', '0', 'tas13.jpg', 'tas13.jpg', 'SLING BAG', '', '75000', '0', 10, 'Ada', '2022-06-10'),
('0011', 'TAS FASHION IMPORT AUREL BAG', 1, 2, 7, '', '0', 'tas15.jpg', 'tas15.jpg', 'TAS FASHION IMPORT AUREL BAG', '', '30000', '0', 20, 'Ada', '2022-06-10'),
('0012', 'TAS FASHION IMPORT', 4, 13, 15, '', '0', 'tas16.jpg', 'tas16.jpg', 'TAS FASHION IMPORT \r\nkode LC3685', ' bahan PU + bludru', '100000', '0', 30, 'Ada', '2022-06-10'),
('0013', 'TAS FASHION IMPORT', 4, 13, 15, '', '0', 'tas17.jpg', 'tas17.jpg', 'TAS FASHION IMPORT \r\nkode LC3691', 'bahan PU', '100000', '0', 10, 'Ada', '2022-06-10'),
('0014', 'TAS FASHION IMPORT', 4, 13, 15, '', '0', 'tas18.jpg', 'tas18.jpg', 'TAS FASHION IMPORT  \r\nkode LC3725', ' bahan PU', '100000', '0', 30, 'Ada', '2022-06-10'),
('0015', 'TAS FASHION IMPORT ', 4, 13, 15, '', '0', 'tas19.jpg', 'tas19.jpg', 'TAS FASHION IMPORT  \r\nkode TB702', ' bahan PU', '100000', '0', 10, 'Ada', '2022-06-10'),
('0016', 'TAS FASHION IMPORT', 4, 13, 15, '', '0', 'tas20.jpg', 'tas20.jpg', 'TAS FASHION IMPORT  \r\nkode TB714 ', '', '105000', '0', 20, 'Ada', '2022-06-10'),
('0017', 'TAS FASHION IMPORT  kode TB757', 4, 13, 15, '', '0', 'tas21.jpg', 'tas21.jpg', 'TAS FASHION IMPORT  \r\nkode TB757', ' bahan PU', '100000', '0', 10, 'Ada', '2022-06-10'),
('0018', 'TAS FASHION IMPORT', 1, 2, 15, '', '0', 'tas22.jpg', 'tas22.jpg', 'TAS FASHION IMPORT  \r\nkode TBP27', 'bahan PU', '105000', '0', 20, 'Ada', '2022-06-10'),
('0019', 'TAS FASHION IMPORTbahan', 1, 2, 15, '', '0', 'tas23.jpg', 'tas23.jpg', 'TAS FASHION IMPORT \r\nkode TBP48', ' bahan PU ', '105000', '0', 30, 'Ada', '2022-06-10'),
('0020', 'TAS FASHION', 1, 2, 15, '', '0', 'tas24.jpg', 'tas24.jpg', 'TAS FASHION', '', '100000', '0', 10, 'Ada', '2022-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` varchar(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(80) NOT NULL,
  `state` varchar(60) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `fullname`, `gender`, `address`, `city`, `state`, `zip_code`, `phone`, `email`, `password`, `reg_date`) VALUES
('0001', 'Aplora Sanerati', 'Perempuan', 'Perum Karanglo', 'Malang', 'Jawa Timur', '65112', '+6282345678910', 'iamaplora@gmail.com', '849f6a6ce05b17d5e5351044f1378f47', '2017-10-11');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(11) NOT NULL,
  `customer_id` varchar(11) NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `cardbank_type` varchar(12) NOT NULL,
  `card_number` varchar(100) NOT NULL,
  `payment_status` varchar(11) NOT NULL,
  `totals` varchar(11) NOT NULL,
  `creation_date` date NOT NULL,
  `creation_time` time NOT NULL DEFAULT '00:00:00',
  `order_status` varchar(11) NOT NULL,
  `order_valid_date` date NOT NULL,
  `order_valid_time` time NOT NULL DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `owner_name`, `cardbank_type`, `card_number`, `payment_status`, `totals`, `creation_date`, `creation_time`, `order_status`, `order_valid_date`, `order_valid_time`) VALUES
('0001', '0001', 'Aplora Sanerati', 'Bank BNI', '327381983', 'PAID', '198400', '2017-10-11', '19:27:17', 'SENT', '2017-10-11', '19:38:13'),
('0002', '0001', 'Aplora Sanerati', 'Bank BNI', '327381983', 'PAID', '103200', '2018-01-04', '18:07:24', 'SENT', '2018-01-05', '19:05:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `detail_id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `bgimg` varchar(100) NOT NULL,
  `item_code` varchar(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `disc` int(3) NOT NULL,
  `price` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`detail_id`, `order_id`, `bgimg`, `item_code`, `item_name`, `qty`, `disc`, `price`) VALUES
(1, '0001', 'tas13.jpg', '0007', 'SLING BAG', 1, 0, '75000'),
(2, '0001', 'tas15.jpg', '0002', 'TAS FASHION IMPORT AUREL BAG', 1, 0, '30000'),
(3, '0002', 'tas3.jpg', '0002', 'ISAURA BAG', 1, 0, '45000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user` varchar(30) CHARACTER SET latin1 NOT NULL,
  `pass` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `user`, `pass`) VALUES
(1, 'Victory Webstore', 'admin', '0192023a7bbd73250516f069df18b500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brd_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`clr_id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`counter_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `clr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `counter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
