-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 08:58 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `json`
--

-- --------------------------------------------------------

--
-- Table structure for table `drzchat`
--

CREATE TABLE `drzchat` (
  `nomor` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pesan` varchar(200) NOT NULL,
  `waktu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drzchat`
--

INSERT INTO `drzchat` (`nomor`, `nama`, `pesan`, `waktu`) VALUES
(845, 'Admin', 'Andi bergabung dalam chat', '02 Decembe'),
(846, 'Andi', 'jdaj', '02 Decembe'),
(847, 'Andi', 'jkadj', '02 Decembe'),
(848, 'Admin', 'Andi bergabung dalam chat', '02 Decembe'),
(849, 'Andi', 'hay', '02 Decembe'),
(850, 'Andi', 'hay', '02 Decembe'),
(851, 'Admin', 'Dian bergabung dalam chat', '02 Decembe'),
(852, 'Dian', 'hay', '02 Decembe'),
(853, 'Admin', 'EGI bergabung dalam chat', '02 Decembe'),
(854, 'EGI', 'hay', '02 Decembe'),
(855, 'EGI', 'hay', '02 Decembe'),
(856, 'EGI', 'hay', '02 Decembe'),
(857, 'EGI', 'hay', '02 Decembe'),
(858, 'Admin', 'ANDI bergabung dalam chat', '02 Decembe'),
(859, 'ANDI', 'HAY', '02 Decembe');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(64) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `post_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `chat_id`, `user_id`, `user_name`, `message`, `post_time`) VALUES
(1, 1, 1, 'Nurmi', 'HALLO APA KABAR', '2019-11-13 14:03:16'),
(2, 1, 2, 'Desrizal', 'Kabar Baik', '2019-11-13 14:05:00'),
(3, 1, 1, 'Nurmi', 'LAGI DIMANA???', '2019-11-13 13:05:00'),
(4, 1, 2, 'Desrizal', 'Belitung', '2019-11-13 14:06:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drzchat`
--
ALTER TABLE `drzchat`
  ADD PRIMARY KEY (`nomor`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drzchat`
--
ALTER TABLE `drzchat`
  MODIFY `nomor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=860;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
