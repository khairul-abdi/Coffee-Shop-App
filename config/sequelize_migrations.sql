-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 18, 2020 at 04:00 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sequelize_migrations`
--

-- --------------------------------------------------------

--
-- Table structure for table `coffees`
--

CREATE TABLE `coffees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `shopId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coffees`
--

INSERT INTO `coffees` (`id`, `name`, `type`, `createdAt`, `updatedAt`, `shopId`) VALUES
(1, 'Kopi Sumatera', 'Dark', '2020-02-18 02:57:01', '2020-02-18 02:57:01', 1),
(2, 'Columbia', 'Dark', '2020-02-18 02:57:17', '2020-02-18 02:57:17', 2),
(3, 'Kopi Aceh', 'Dark', '2020-02-18 02:57:31', '2020-02-18 02:57:31', 3),
(4, 'Kopi Sipirok', 'Dark', '2020-02-18 02:58:36', '2020-02-18 02:58:36', 1),
(5, 'Koupie Uenak', 'Dark', '2020-02-18 02:59:10', '2020-02-18 02:59:10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20180329033305-create-shop.js'),
('20180329034144-create-coffee.js');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Otten', '2020-02-18 02:57:01', '2020-02-18 02:57:01'),
(2, 'Starbuck', '2020-02-18 02:57:17', '2020-02-18 02:57:17'),
(3, 'Koupie', '2020-02-18 02:57:31', '2020-02-18 02:57:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coffees`
--
ALTER TABLE `coffees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coffees`
--
ALTER TABLE `coffees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
