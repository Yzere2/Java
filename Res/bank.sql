-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 07, 2022 at 07:59 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `Tokens`
--

CREATE TABLE `Tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `IsValid` tinyint(1) NOT NULL,
  `BlikToken` varchar(255) NOT NULL,
  `GuidToken` varchar(255) NOT NULL,
  `BlikCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Tokens`
--

INSERT INTO `Tokens` (`id`, `IsValid`, `BlikToken`, `GuidToken`, `BlikCode`) VALUES
(1, 0, 'MTIzNDU2', '0f28f65b-d74f-44da-9c2c-e78e31293b0e', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `Transactions`
--

CREATE TABLE `Transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `UserID` int(11) NOT NULL,
  `IsReceived` tinyint(1) NOT NULL,
  `Amount` double(8,2) NOT NULL,
  `Date` datetime NOT NULL,
  `BlikToken` varchar(255) NOT NULL,
  `Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Transactions`
--

INSERT INTO `Transactions` (`id`, `UserID`, `IsReceived`, `Amount`, `Date`, `BlikToken`, `Type`) VALUES
(1, 2, 1, 200.00, '2022-10-07 07:49:53', 'MTIzNDU2', 3),
(2, 1, 0, -200.00, '2022-10-07 07:51:44', 'MTIzNDU2', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL,
  `PrincipalName` varchar(255) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `GuidToken` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `Name`, `PrincipalName`, `PasswordHash`, `GuidToken`) VALUES
(1, 'john', 'john@company.com', 'babf825aee1479e9e1747b4f763c841f756e37e3e8bdff89c788532f6edfc130', '0f28f65b-d74f-44da-9c2c-e78e31293b0e'),
(2, 'wendy', 'wendy@company.com', 'abe31fe1a2113e7e8bf174164515802806d388cf4f394cceace7341a182271ab', '645bc16f-8b63-42f8-9260-b9b6f0c62388');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Tokens`
--
ALTER TABLE `Tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Transactions`
--
ALTER TABLE `Transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Tokens`
--
ALTER TABLE `Tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Transactions`
--
ALTER TABLE `Transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
