-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 20, 2019 at 07:15 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bebas`
--

-- --------------------------------------------------------

--
-- Table structure for table `com_address`
--

CREATE TABLE `com_address` (
  `AddressID` int(11) NOT NULL,
  `Line1` text NOT NULL,
  `Line2` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `districtID` int(11) NOT NULL,
  `stateID` int(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `countryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `com_address`
--
ALTER TABLE `com_address`
  ADD PRIMARY KEY (`AddressID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `districtID` (`districtID`),
  ADD KEY `stateID` (`stateID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `com_address`
--
ALTER TABLE `com_address`
  ADD CONSTRAINT `com_address_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `com_countries` (`id`),
  ADD CONSTRAINT `com_address_ibfk_2` FOREIGN KEY (`districtID`) REFERENCES `com_districts` (`id`),
  ADD CONSTRAINT `com_address_ibfk_3` FOREIGN KEY (`stateID`) REFERENCES `com_states` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
