-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 08, 2020 at 08:07 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `firstname` varchar(10) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(10) COLLATE utf8_bin NOT NULL,
  `email` varchar(20) COLLATE utf8_bin NOT NULL,
  `username` varchar(10) COLLATE utf8_bin NOT NULL,
  `password` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`firstname`, `lastname`, `email`, `username`, `password`) VALUES
('Công', 'Phan', 'cong@gmail.com', 'cong', 'cong123'),
('Giang', 'Phạm', 'giang@gmail.com', 'giang', 'giang123'),
('Dung', 'Ngô', 'dung@gmail.com', 'dung', 'dung123'),
('Ruby', 'Lai', 'ruby@gmail.com', 'ruby', 'ruby123'),
('Long', 'Phạm', 'long@gmail.com', 'long', 'long123'),
('Oanh', 'Lê', 'oanh@gmail.com', 'oanh', 'oanh123'),
('Huyền', 'Phạm', 'huyen@gmail.com', 'huyen', 'huyen123'),
('Hy', 'Trác', 'hy@gmail.com', 'hy', 'hy123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
