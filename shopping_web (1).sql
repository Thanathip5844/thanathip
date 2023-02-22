-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2023 at 08:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy_order`
--

CREATE TABLE `buy_order` (
  `O_id` int(11) NOT NULL,
  `O_email` varchar(255) NOT NULL,
  `O_address` varchar(255) NOT NULL,
  `O_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buy_order`
--

INSERT INTO `buy_order` (`O_id`, `O_email`, `O_address`, `O_time`) VALUES
(1, 'earthruri@gmail.com', '111222aaaaa', '2023-02-21 13:57:12'),
(11, 'asdfl', 'jkl;', '2023-02-21 16:43:27'),
(12, 'eartheueizz@gmail.com', 'ฟกหด่าสวฟกหา่ดวสฟกหา่ดสว', '2023-02-21 16:48:10'),
(13, 'eartheueizz@gmail.com', 'ฟกหด่าสวฟกหา่ดวสฟกหา่ดสว', '2023-02-21 16:48:34'),
(14, 'eartheueizz@gmail.com', 'ฟกหด่าสวฟกหา่ดวสฟกหา่ดสว', '2023-02-21 16:49:07'),
(15, '6414421002@rbru.ac.th', 'ฟasdfjk;ladsfkj;l', '2023-02-21 16:49:34'),
(16, '6414421002@rbru.ac.th', 'hhhhhhhhhhhhhhhhhhhhh', '2023-02-21 16:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL COMMENT 'ลำดับที่',
  `orderID` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'เลขที่ใบสั่งซื้อ',
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสสินค้า',
  `orderPrice` int(11) NOT NULL COMMENT 'ราคาสินค้า',
  `orderQty` int(11) NOT NULL COMMENT 'จำนวนที่สั่งซื้อ',
  `Total` float NOT NULL COMMENT 'ราคารวม'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'Shawn Michaels Model', 'aa', 'model.jfif', 1000.00),
(2, 'Hulk Hogan', 'ab', 'model2.jfif', 2000.00),
(3, 'Kane Model', 'ac', 'model3.jfif', 1500.00),
(4, 'The Ultimate Warrior Model', 'ad', 'model4.jfif', 3000.00),
(5, 'Roman Reigns Model', 'af', 'model5.jfif', 800.00);

-- --------------------------------------------------------

--
-- Table structure for table `tblshop2`
--

CREATE TABLE `tblshop2` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblshop2`
--

INSERT INTO `tblshop2` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'John cena GREEN', 'ba', 'shirt1.jfif', 500.00),
(2, 'Y2J Black', 'bb', 'shirt2.jfif', 500.00),
(3, 'Stone cole Black', 'bc', 'shirt3.jfif', 500.00),
(4, 'John cena Blue', 'bd', 'shirt4.jfif', 500.00),
(5, 'John cena Yellow', 'bf', 'shirt5.jfif', 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `tblshop3`
--

CREATE TABLE `tblshop3` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblshop3`
--

INSERT INTO `tblshop3` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'WWE Champion', 'ca', 'champ1.jfif', 2000.00),
(2, 'WWE Champion raw', 'cb', 'champ2.jfif', 2500.00),
(3, 'Inter Champion', 'cc', 'champ3.jfif', 2100.00),
(4, 'USA Champion', 'cd', 'champ4.jfif', 1000.00),
(5, 'WWE Champion smackdown', 'cf', 'champ5.jfif', 1800.00);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `orderID` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'เลขที่ใบสั่งซื้อ',
  `cus_name` varchar(60) NOT NULL COMMENT 'ชื่อลูกค้า',
  `address` text NOT NULL COMMENT 'ที่อยู่',
  `telephone` varchar(10) NOT NULL COMMENT 'เบอร์โทรศัพท์',
  `total_price` float NOT NULL COMMENT 'ราคารวมสุทธิ',
  `order_status` varchar(1) NOT NULL COMMENT 'สถานะการซื้อ',
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สั่งซื้อ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(10) NOT NULL,
  `u_firstname` varchar(255) NOT NULL,
  `u_lastname` varchar(255) NOT NULL,
  `u_telephone` int(10) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  `urole` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_firstname`, `u_lastname`, `u_telephone`, `u_email`, `u_password`, `urole`, `create_at`) VALUES
(4, 'ขวัญใจ', 'คนเดิม', 966848023, 'eartheueizz@gmail.com', '$2y$10$sSxNCRn1XF4tZm01vZFk.uV7EUFHuYSTav.3UoG20ChkJ0R8ycHWG', 'user', '2023-02-13 06:38:08'),
(7, 'นิว', 'จิ๋ว', 2147483647, '6414421001@rbru.ac.th', '$2y$10$5zBuWV27EhjC50uwbrY63ODC8agwoLBqXYPBo7P.hx.94SYy75be2', 'user', '2023-02-13 06:57:21'),
(8, 'ธนาธิป', 'ทองสอาด', 2147483647, '6414421002@rbru.ac.th', '$2y$10$iQtEW/9BB5NQs//BWFEZQeXZdS3g87cNvclsoxhsZYaK9V40Lhvti', 'admin', '2023-02-13 07:31:01'),
(9, 'หอมฉุย', 'คนเดิม', 2147483647, 'wave_rock555@hotmail.com', '$2y$10$y8CUYbQrZh0HmhbDZ7htDu4T5Rx9qmN85une7KVMpxkXwxknCayPG', 'user', '2023-02-21 16:57:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy_order`
--
ALTER TABLE `buy_order`
  ADD PRIMARY KEY (`O_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tblshop2`
--
ALTER TABLE `tblshop2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tblshop3`
--
ALTER TABLE `tblshop3`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buy_order`
--
ALTER TABLE `buy_order`
  MODIFY `O_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับที่', AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblshop2`
--
ALTER TABLE `tblshop2`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblshop3`
--
ALTER TABLE `tblshop3`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `orderID` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'เลขที่ใบสั่งซื้อ', AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
