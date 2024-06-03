-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 07:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vintage`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`, `user_id`) VALUES
(34, 'Vintage Bootleg Kurt Cobain', 40.00, 'Vintage Bootleg Kurt Cobain.jpg', 1, 10),
(97, '2002 Down', 3500.00, '2002 Down.jpg', 1, 7),
(98, '2002 Down', 3500.00, '2002 Down.jpg', 1, 9),
(99, '2020 Thy Art Is Murder Imminent World Tour', 25.00, '2020 Thy Art Is Murder Imminent World Tour.jpg', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `method` varchar(55) NOT NULL,
  `courier` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` float(7,2) NOT NULL,
  `order_status` int(11) NOT NULL,
  `cancel_status` int(11) NOT NULL DEFAULT 0,
  `payment_status` int(11) NOT NULL,
  `tracking_number` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` date NOT NULL DEFAULT current_timestamp(),
  `reference_number` varchar(255) NOT NULL,
  `gcash_amount` float(7,2) NOT NULL,
  `gcash_account_name` varchar(255) NOT NULL,
  `gcash_account_number` varchar(20) NOT NULL,
  `shipping_international` int(50) NOT NULL,
  `island` enum('Luzon','Visayas','Mindanao') NOT NULL DEFAULT 'Luzon'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone_number`, `method`, `courier`, `province`, `city`, `barangay`, `street`, `total_products`, `total_price`, `order_status`, `cancel_status`, `payment_status`, `tracking_number`, `user_id`, `order_date`, `reference_number`, `gcash_amount`, `gcash_account_name`, `gcash_account_number`, `shipping_international`, `island`) VALUES
(133, 'justine', '123', 'gcash', 'j&t', 'albay', 'ligao', 'visayas', 'p1', '2002 Down (1) ', 60.00, 1, 0, 1, 'YXN17J1CDR', 0, '2024-06-03', '100000', 60.00, 'john omar', '09215671', 0, ''),
(134, 'justine', '123', 'gcash', 'j&t', 'albay', 'ligao', 'visayas', 'p1', '', 0.00, 1, 0, 1, '3LC16669V1', 0, '2024-06-03', '100000', 60.00, 'john omar', '09215671', 0, ''),
(135, 'justine', '123', 'gcash', 'j&t', 'albay', 'ligao', 'visayas', 'p1', '', 0.00, 1, 0, 1, '5FWF21BVRX', 0, '2024-06-03', '100000', 60.00, 'john omar', '09215671', 0, ''),
(136, 'justine', '123', 'gcash', 'j&t', 'albay', 'ligao', 'visayas', 'p1', '', 0.00, 1, 0, 1, '2WSL462ZDU', 0, '2024-06-03', '100000', 60.00, 'john omar', '09215671', 0, ''),
(137, 'justine', '123', 'gcash', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '', 0.00, 1, 0, 1, '9R2KUISXAM', 0, '2024-06-03', '100000', 60.00, 'john omar', '09215671', 0, 'Visayas'),
(138, 'justine', '123', 'gcash', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '', 0.00, 1, 0, 1, '0PAIAIIH0V', 0, '2024-06-03', '100000', 60.00, 'john omar', '09215671', 0, 'Visayas'),
(139, 'justine', '123', 'gcash', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '', 0.00, 1, 0, 1, 'DOU9WKLCK3', 0, '2024-06-03', '100000', 60.00, 'john omar', '09215671', 0, 'Visayas'),
(140, 'justine', '123', 'gcash', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '', 0.00, 1, 0, 1, '5FPB9HJ900', 0, '2024-06-03', '100000', 60.00, 'john omar', '09215671', 0, 'Visayas'),
(141, 'justine', '123', 'gcash', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '2002 Down (1) ', 60.00, 1, 0, 1, 'HKH7MGNL8T', 0, '2024-06-03', '1234', 123.00, 'john', '09215671', 0, 'Mindanao'),
(142, 'justine', '124', 'cash on delivery', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '2002 Down (1) ', 3500.00, 1, 0, 1, 'YPYSCT6HJL', 0, '2024-06-03', '', 0.00, '', '', 0, 'Luzon'),
(143, 'justine', '124', 'cash on delivery', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '', 95.00, 1, 0, 1, 'YBT4W4AHCE', 0, '2024-06-03', '', 0.00, '', '', 0, 'Luzon'),
(144, 'justine', '123', 'gcash', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '2002 Down (1) ', 3595.00, 1, 0, 1, '6X2B4IW5PX', 0, '2024-06-03', '1234', 1234.00, 'john omar', '09215671', 0, 'Luzon'),
(145, 'justine', '21344', 'cash on delivery', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '2002 Down (1) ', 3595.00, 1, 0, 1, '5LAU3AM4M6', 0, '2024-06-03', '', 0.00, '', '', 0, 'Luzon'),
(146, 'justine', '123', 'cash on delivery', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '2002 Down (1) ', 3595.00, 1, 0, 1, '1UY7KV7TMY', 0, '2024-06-03', '', 0.00, '', '', 0, 'Luzon'),
(147, 'justine', '1234', 'cash on delivery', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '2002 Down (1) ', 3500.00, 1, 0, 1, 'WT54MO4HYE', 0, '2024-06-03', '', 0.00, '', '', 0, 'Luzon'),
(148, 'justine', '1234', 'cash on delivery', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '2002 Down (1) ', 3595.00, 1, 0, 1, 'NFVE35BL9S', 9, '2024-06-03', '', 0.00, '', '', 0, 'Luzon'),
(149, 'justine', '423', 'gcash', 'j&t', 'albay', 'ligao', 'oyama', 'p1', '2002 Down (1) ', 3595.00, 1, 0, 1, 'FFQLMSPEL6', 9, '2024-06-03', '100000', 3595.00, 'john omar', '09215671', 0, 'Luzon');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `price` float(7,2) NOT NULL,
  `image` varchar(55) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `status` char(1) NOT NULL DEFAULT 'a' COMMENT 'a - inactive i - inactive\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `quantity`, `status`) VALUES
(1, '2002 Down', 3500.00, '2002 Down.jpg', 3, 'a'),
(2, 'Vintage Bootleg Kurt Cobain', 40.00, 'Vintage Bootleg Kurt Cobain.jpg', -1, 'a'),
(3, '2000 Darkthrone Under a Funeral Moon', 40.00, 'product5.jpg', 0, 'a'),
(4, '2002 Deftones Def Leppard Inspired Logo', 200.00, 'product4.jpg', 0, 'a'),
(5, '2019 Knotfest', 35.00, '2019 Knotfest.jpg', 0, 'a'),
(6, '2003 Exhumed Anatomy is Destiny', 55.00, '2003 Exhumed Anatomy Is Destiny.jpg', 0, 'a'),
(7, '2020 Thy Art Is Murder Imminent World Tour', 25.00, '2020 Thy Art Is Murder Imminent World Tour.jpg', 1, 'a'),
(8, '1996 At The Gates Slaughter of the Soul', 100.00, '1996 At The Gates Slaughter of the Soul.jpg', 1, 'a'),
(9, '2009 Nirvana Bleach', 20.00, 'nirvana bleach.jpg', 0, 'a'),
(10, 'Gorillaz Humanz', 20.00, 'model6.jpg', 0, 'a'),
(27, 'John Doe', 40.00, 'model2.jpg', 0, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `user_type` char(1) NOT NULL DEFAULT 'u' COMMENT 'a - admin\r\nu - user',
  `user_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `user_type`, `user_name`) VALUES
(1, 'john ', 'johnomarclutario@yahoo.com', '12345678', 'u', ''),
(2, 'john omar', 'johnomarclutario69@yahoo.com', '1234', 'u', ''),
(3, 'john omar', 'johnomarclutario420@yahoo.com', '1234', 'u', ''),
(4, 'simone', 'simone420@gmail.com', '12345678', 'u', ''),
(5, 'jethroy', 'jethroytamulmol@gmail.com', '1234', 'u', ''),
(6, 'joshua obstaculo', 'joshuatulaybuhangin@gmail.com', '12345678', 'a', ''),
(7, 'Dexter Nero', 'dexternero123@gmail.com', 'dexpogi123', 'u', ''),
(8, 'manuel sapao', 'manuelsapao@gmail.com', 'killer31000', 'u', ''),
(9, 'john', 'johnomar@gmail.com', '1234', 'u', 'clutario'),
(10, 'simone', 'simone666@gmail.com', '6669420', 'u', ''),
(11, 'josha', 'josh@gmail.com', 'mobstaz', 'u', ''),
(12, 'reymar llagas', 'rllagas@gmail.com', '1234', 'u', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
